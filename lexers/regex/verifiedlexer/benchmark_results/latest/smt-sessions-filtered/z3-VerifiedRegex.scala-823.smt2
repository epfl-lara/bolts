; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45516 () Bool)

(assert start!45516)

(declare-fun b!474336 () Bool)

(declare-fun e!289809 () Bool)

(declare-fun tp_is_empty!2283 () Bool)

(assert (=> b!474336 (= e!289809 tp_is_empty!2283)))

(declare-fun b!474337 () Bool)

(declare-fun tp!131871 () Bool)

(declare-fun tp!131870 () Bool)

(assert (=> b!474337 (= e!289809 (and tp!131871 tp!131870))))

(declare-fun b!474338 () Bool)

(declare-fun res!210534 () Bool)

(declare-fun e!289808 () Bool)

(assert (=> b!474338 (=> (not res!210534) (not e!289808))))

(declare-datatypes ((C!3208 0))(
  ( (C!3209 (val!1590 Int)) )
))
(declare-datatypes ((Regex!1143 0))(
  ( (ElementMatch!1143 (c!95028 C!3208)) (Concat!2043 (regOne!2798 Regex!1143) (regTwo!2798 Regex!1143)) (EmptyExpr!1143) (Star!1143 (reg!1472 Regex!1143)) (EmptyLang!1143) (Union!1143 (regOne!2799 Regex!1143) (regTwo!2799 Regex!1143)) )
))
(declare-fun r!20230 () Regex!1143)

(declare-fun lostCause!137 (Regex!1143) Bool)

(assert (=> b!474338 (= res!210534 (lostCause!137 r!20230))))

(declare-fun b!474339 () Bool)

(declare-fun res!210533 () Bool)

(assert (=> b!474339 (=> (not res!210533) (not e!289808))))

(get-info :version)

(assert (=> b!474339 (= res!210533 ((_ is EmptyLang!1143) r!20230))))

(declare-fun b!474340 () Bool)

(declare-fun tp!131867 () Bool)

(assert (=> b!474340 (= e!289809 tp!131867)))

(declare-fun b!474341 () Bool)

(declare-fun tp!131869 () Bool)

(declare-fun tp!131868 () Bool)

(assert (=> b!474341 (= e!289809 (and tp!131869 tp!131868))))

(declare-fun b!474342 () Bool)

(declare-fun c!12526 () C!3208)

(declare-fun derivativeStep!235 (Regex!1143 C!3208) Regex!1143)

(assert (=> b!474342 (= e!289808 (not (lostCause!137 (derivativeStep!235 r!20230 c!12526))))))

(declare-fun res!210535 () Bool)

(assert (=> start!45516 (=> (not res!210535) (not e!289808))))

(declare-fun validRegex!371 (Regex!1143) Bool)

(assert (=> start!45516 (= res!210535 (validRegex!371 r!20230))))

(assert (=> start!45516 e!289808))

(assert (=> start!45516 e!289809))

(assert (=> start!45516 tp_is_empty!2283))

(assert (= (and start!45516 res!210535) b!474338))

(assert (= (and b!474338 res!210534) b!474339))

(assert (= (and b!474339 res!210533) b!474342))

(assert (= (and start!45516 ((_ is ElementMatch!1143) r!20230)) b!474336))

(assert (= (and start!45516 ((_ is Concat!2043) r!20230)) b!474337))

(assert (= (and start!45516 ((_ is Star!1143) r!20230)) b!474340))

(assert (= (and start!45516 ((_ is Union!1143) r!20230)) b!474341))

(declare-fun m!746879 () Bool)

(assert (=> b!474338 m!746879))

(declare-fun m!746881 () Bool)

(assert (=> b!474342 m!746881))

(assert (=> b!474342 m!746881))

(declare-fun m!746883 () Bool)

(assert (=> b!474342 m!746883))

(declare-fun m!746885 () Bool)

(assert (=> start!45516 m!746885))

(check-sat tp_is_empty!2283 (not b!474337) (not start!45516) (not b!474338) (not b!474340) (not b!474341) (not b!474342))
(check-sat)
(get-model)

(declare-fun d!179794 () Bool)

(declare-fun lostCauseFct!47 (Regex!1143) Bool)

(assert (=> d!179794 (= (lostCause!137 r!20230) (lostCauseFct!47 r!20230))))

(declare-fun bs!58674 () Bool)

(assert (= bs!58674 d!179794))

(declare-fun m!746888 () Bool)

(assert (=> bs!58674 m!746888))

(assert (=> b!474338 d!179794))

(declare-fun d!179798 () Bool)

(assert (=> d!179798 (= (lostCause!137 (derivativeStep!235 r!20230 c!12526)) (lostCauseFct!47 (derivativeStep!235 r!20230 c!12526)))))

(declare-fun bs!58677 () Bool)

(assert (= bs!58677 d!179798))

(assert (=> bs!58677 m!746881))

(declare-fun m!746893 () Bool)

(assert (=> bs!58677 m!746893))

(assert (=> b!474342 d!179798))

(declare-fun c!95050 () Bool)

(declare-fun c!95049 () Bool)

(declare-fun call!32947 () Regex!1143)

(declare-fun bm!32939 () Bool)

(assert (=> bm!32939 (= call!32947 (derivativeStep!235 (ite c!95049 (regTwo!2799 r!20230) (ite c!95050 (reg!1472 r!20230) (regOne!2798 r!20230))) c!12526))))

(declare-fun b!474383 () Bool)

(declare-fun e!289834 () Regex!1143)

(assert (=> b!474383 (= e!289834 EmptyLang!1143)))

(declare-fun b!474384 () Bool)

(declare-fun c!95051 () Bool)

(declare-fun nullable!277 (Regex!1143) Bool)

(assert (=> b!474384 (= c!95051 (nullable!277 (regOne!2798 r!20230)))))

(declare-fun e!289830 () Regex!1143)

(declare-fun e!289831 () Regex!1143)

(assert (=> b!474384 (= e!289830 e!289831)))

(declare-fun b!474386 () Bool)

(declare-fun e!289832 () Regex!1143)

(assert (=> b!474386 (= e!289832 e!289830)))

(assert (=> b!474386 (= c!95050 ((_ is Star!1143) r!20230))))

(declare-fun bm!32940 () Bool)

(declare-fun call!32944 () Regex!1143)

(assert (=> bm!32940 (= call!32944 (derivativeStep!235 (ite c!95049 (regOne!2799 r!20230) (regTwo!2798 r!20230)) c!12526))))

(declare-fun b!474387 () Bool)

(declare-fun call!32946 () Regex!1143)

(assert (=> b!474387 (= e!289831 (Union!1143 (Concat!2043 call!32946 (regTwo!2798 r!20230)) call!32944))))

(declare-fun bm!32941 () Bool)

(declare-fun call!32945 () Regex!1143)

(assert (=> bm!32941 (= call!32946 call!32945)))

(declare-fun b!474388 () Bool)

(declare-fun e!289833 () Regex!1143)

(assert (=> b!474388 (= e!289834 e!289833)))

(declare-fun c!95053 () Bool)

(assert (=> b!474388 (= c!95053 ((_ is ElementMatch!1143) r!20230))))

(declare-fun b!474389 () Bool)

(assert (=> b!474389 (= e!289832 (Union!1143 call!32944 call!32947))))

(declare-fun d!179802 () Bool)

(declare-fun lt!210691 () Regex!1143)

(assert (=> d!179802 (validRegex!371 lt!210691)))

(assert (=> d!179802 (= lt!210691 e!289834)))

(declare-fun c!95052 () Bool)

(assert (=> d!179802 (= c!95052 (or ((_ is EmptyExpr!1143) r!20230) ((_ is EmptyLang!1143) r!20230)))))

(assert (=> d!179802 (validRegex!371 r!20230)))

(assert (=> d!179802 (= (derivativeStep!235 r!20230 c!12526) lt!210691)))

(declare-fun b!474385 () Bool)

(assert (=> b!474385 (= e!289833 (ite (= c!12526 (c!95028 r!20230)) EmptyExpr!1143 EmptyLang!1143))))

(declare-fun b!474390 () Bool)

(assert (=> b!474390 (= e!289830 (Concat!2043 call!32945 r!20230))))

(declare-fun bm!32942 () Bool)

(assert (=> bm!32942 (= call!32945 call!32947)))

(declare-fun b!474391 () Bool)

(assert (=> b!474391 (= e!289831 (Union!1143 (Concat!2043 call!32946 (regTwo!2798 r!20230)) EmptyLang!1143))))

(declare-fun b!474392 () Bool)

(assert (=> b!474392 (= c!95049 ((_ is Union!1143) r!20230))))

(assert (=> b!474392 (= e!289833 e!289832)))

(assert (= (and d!179802 c!95052) b!474383))

(assert (= (and d!179802 (not c!95052)) b!474388))

(assert (= (and b!474388 c!95053) b!474385))

(assert (= (and b!474388 (not c!95053)) b!474392))

(assert (= (and b!474392 c!95049) b!474389))

(assert (= (and b!474392 (not c!95049)) b!474386))

(assert (= (and b!474386 c!95050) b!474390))

(assert (= (and b!474386 (not c!95050)) b!474384))

(assert (= (and b!474384 c!95051) b!474387))

(assert (= (and b!474384 (not c!95051)) b!474391))

(assert (= (or b!474387 b!474391) bm!32941))

(assert (= (or b!474390 bm!32941) bm!32942))

(assert (= (or b!474389 bm!32942) bm!32939))

(assert (= (or b!474389 b!474387) bm!32940))

(declare-fun m!746895 () Bool)

(assert (=> bm!32939 m!746895))

(declare-fun m!746899 () Bool)

(assert (=> b!474384 m!746899))

(declare-fun m!746901 () Bool)

(assert (=> bm!32940 m!746901))

(declare-fun m!746903 () Bool)

(assert (=> d!179802 m!746903))

(assert (=> d!179802 m!746885))

(assert (=> b!474342 d!179802))

(declare-fun b!474448 () Bool)

(declare-fun e!289880 () Bool)

(declare-fun call!32967 () Bool)

(assert (=> b!474448 (= e!289880 call!32967)))

(declare-fun b!474449 () Bool)

(declare-fun e!289881 () Bool)

(declare-fun e!289877 () Bool)

(assert (=> b!474449 (= e!289881 e!289877)))

(declare-fun c!95070 () Bool)

(assert (=> b!474449 (= c!95070 ((_ is Union!1143) r!20230))))

(declare-fun call!32968 () Bool)

(declare-fun c!95069 () Bool)

(declare-fun bm!32962 () Bool)

(assert (=> bm!32962 (= call!32968 (validRegex!371 (ite c!95069 (reg!1472 r!20230) (ite c!95070 (regOne!2799 r!20230) (regTwo!2798 r!20230)))))))

(declare-fun b!474450 () Bool)

(declare-fun e!289875 () Bool)

(declare-fun e!289879 () Bool)

(assert (=> b!474450 (= e!289875 e!289879)))

(declare-fun res!210565 () Bool)

(assert (=> b!474450 (=> (not res!210565) (not e!289879))))

(assert (=> b!474450 (= res!210565 call!32967)))

(declare-fun b!474451 () Bool)

(declare-fun res!210561 () Bool)

(assert (=> b!474451 (=> (not res!210561) (not e!289880))))

(declare-fun call!32969 () Bool)

(assert (=> b!474451 (= res!210561 call!32969)))

(assert (=> b!474451 (= e!289877 e!289880)))

(declare-fun d!179804 () Bool)

(declare-fun res!210563 () Bool)

(declare-fun e!289878 () Bool)

(assert (=> d!179804 (=> res!210563 e!289878)))

(assert (=> d!179804 (= res!210563 ((_ is ElementMatch!1143) r!20230))))

(assert (=> d!179804 (= (validRegex!371 r!20230) e!289878)))

(declare-fun b!474452 () Bool)

(assert (=> b!474452 (= e!289878 e!289881)))

(assert (=> b!474452 (= c!95069 ((_ is Star!1143) r!20230))))

(declare-fun bm!32963 () Bool)

(assert (=> bm!32963 (= call!32967 (validRegex!371 (ite c!95070 (regTwo!2799 r!20230) (regOne!2798 r!20230))))))

(declare-fun b!474453 () Bool)

(declare-fun e!289876 () Bool)

(assert (=> b!474453 (= e!289876 call!32968)))

(declare-fun b!474454 () Bool)

(assert (=> b!474454 (= e!289879 call!32969)))

(declare-fun b!474455 () Bool)

(declare-fun res!210564 () Bool)

(assert (=> b!474455 (=> res!210564 e!289875)))

(assert (=> b!474455 (= res!210564 (not ((_ is Concat!2043) r!20230)))))

(assert (=> b!474455 (= e!289877 e!289875)))

(declare-fun b!474456 () Bool)

(assert (=> b!474456 (= e!289881 e!289876)))

(declare-fun res!210562 () Bool)

(assert (=> b!474456 (= res!210562 (not (nullable!277 (reg!1472 r!20230))))))

(assert (=> b!474456 (=> (not res!210562) (not e!289876))))

(declare-fun bm!32964 () Bool)

(assert (=> bm!32964 (= call!32969 call!32968)))

(assert (= (and d!179804 (not res!210563)) b!474452))

(assert (= (and b!474452 c!95069) b!474456))

(assert (= (and b!474452 (not c!95069)) b!474449))

(assert (= (and b!474456 res!210562) b!474453))

(assert (= (and b!474449 c!95070) b!474451))

(assert (= (and b!474449 (not c!95070)) b!474455))

(assert (= (and b!474451 res!210561) b!474448))

(assert (= (and b!474455 (not res!210564)) b!474450))

(assert (= (and b!474450 res!210565) b!474454))

(assert (= (or b!474448 b!474450) bm!32963))

(assert (= (or b!474451 b!474454) bm!32964))

(assert (= (or b!474453 bm!32964) bm!32962))

(declare-fun m!746913 () Bool)

(assert (=> bm!32962 m!746913))

(declare-fun m!746917 () Bool)

(assert (=> bm!32963 m!746917))

(declare-fun m!746921 () Bool)

(assert (=> b!474456 m!746921))

(assert (=> start!45516 d!179804))

(declare-fun e!289887 () Bool)

(assert (=> b!474337 (= tp!131871 e!289887)))

(declare-fun b!474481 () Bool)

(declare-fun tp!131900 () Bool)

(declare-fun tp!131901 () Bool)

(assert (=> b!474481 (= e!289887 (and tp!131900 tp!131901))))

(declare-fun b!474484 () Bool)

(declare-fun tp!131897 () Bool)

(declare-fun tp!131894 () Bool)

(assert (=> b!474484 (= e!289887 (and tp!131897 tp!131894))))

(declare-fun b!474479 () Bool)

(assert (=> b!474479 (= e!289887 tp_is_empty!2283)))

(declare-fun b!474483 () Bool)

(declare-fun tp!131896 () Bool)

(assert (=> b!474483 (= e!289887 tp!131896)))

(assert (= (and b!474337 ((_ is ElementMatch!1143) (regOne!2798 r!20230))) b!474479))

(assert (= (and b!474337 ((_ is Concat!2043) (regOne!2798 r!20230))) b!474481))

(assert (= (and b!474337 ((_ is Star!1143) (regOne!2798 r!20230))) b!474483))

(assert (= (and b!474337 ((_ is Union!1143) (regOne!2798 r!20230))) b!474484))

(declare-fun e!289889 () Bool)

(assert (=> b!474337 (= tp!131870 e!289889)))

(declare-fun b!474489 () Bool)

(declare-fun tp!131910 () Bool)

(declare-fun tp!131911 () Bool)

(assert (=> b!474489 (= e!289889 (and tp!131910 tp!131911))))

(declare-fun b!474492 () Bool)

(declare-fun tp!131907 () Bool)

(declare-fun tp!131904 () Bool)

(assert (=> b!474492 (= e!289889 (and tp!131907 tp!131904))))

(declare-fun b!474487 () Bool)

(assert (=> b!474487 (= e!289889 tp_is_empty!2283)))

(declare-fun b!474491 () Bool)

(declare-fun tp!131906 () Bool)

(assert (=> b!474491 (= e!289889 tp!131906)))

(assert (= (and b!474337 ((_ is ElementMatch!1143) (regTwo!2798 r!20230))) b!474487))

(assert (= (and b!474337 ((_ is Concat!2043) (regTwo!2798 r!20230))) b!474489))

(assert (= (and b!474337 ((_ is Star!1143) (regTwo!2798 r!20230))) b!474491))

(assert (= (and b!474337 ((_ is Union!1143) (regTwo!2798 r!20230))) b!474492))

(declare-fun e!289891 () Bool)

(assert (=> b!474341 (= tp!131869 e!289891)))

(declare-fun b!474498 () Bool)

(declare-fun tp!131920 () Bool)

(declare-fun tp!131921 () Bool)

(assert (=> b!474498 (= e!289891 (and tp!131920 tp!131921))))

(declare-fun b!474500 () Bool)

(declare-fun tp!131919 () Bool)

(declare-fun tp!131917 () Bool)

(assert (=> b!474500 (= e!289891 (and tp!131919 tp!131917))))

(declare-fun b!474497 () Bool)

(assert (=> b!474497 (= e!289891 tp_is_empty!2283)))

(declare-fun b!474499 () Bool)

(declare-fun tp!131918 () Bool)

(assert (=> b!474499 (= e!289891 tp!131918)))

(assert (= (and b!474341 ((_ is ElementMatch!1143) (regOne!2799 r!20230))) b!474497))

(assert (= (and b!474341 ((_ is Concat!2043) (regOne!2799 r!20230))) b!474498))

(assert (= (and b!474341 ((_ is Star!1143) (regOne!2799 r!20230))) b!474499))

(assert (= (and b!474341 ((_ is Union!1143) (regOne!2799 r!20230))) b!474500))

(declare-fun e!289893 () Bool)

(assert (=> b!474341 (= tp!131868 e!289893)))

(declare-fun b!474506 () Bool)

(declare-fun tp!131930 () Bool)

(declare-fun tp!131931 () Bool)

(assert (=> b!474506 (= e!289893 (and tp!131930 tp!131931))))

(declare-fun b!474508 () Bool)

(declare-fun tp!131929 () Bool)

(declare-fun tp!131927 () Bool)

(assert (=> b!474508 (= e!289893 (and tp!131929 tp!131927))))

(declare-fun b!474505 () Bool)

(assert (=> b!474505 (= e!289893 tp_is_empty!2283)))

(declare-fun b!474507 () Bool)

(declare-fun tp!131928 () Bool)

(assert (=> b!474507 (= e!289893 tp!131928)))

(assert (= (and b!474341 ((_ is ElementMatch!1143) (regTwo!2799 r!20230))) b!474505))

(assert (= (and b!474341 ((_ is Concat!2043) (regTwo!2799 r!20230))) b!474506))

(assert (= (and b!474341 ((_ is Star!1143) (regTwo!2799 r!20230))) b!474507))

(assert (= (and b!474341 ((_ is Union!1143) (regTwo!2799 r!20230))) b!474508))

(declare-fun e!289895 () Bool)

(assert (=> b!474340 (= tp!131867 e!289895)))

(declare-fun b!474514 () Bool)

(declare-fun tp!131940 () Bool)

(declare-fun tp!131941 () Bool)

(assert (=> b!474514 (= e!289895 (and tp!131940 tp!131941))))

(declare-fun b!474516 () Bool)

(declare-fun tp!131939 () Bool)

(declare-fun tp!131937 () Bool)

(assert (=> b!474516 (= e!289895 (and tp!131939 tp!131937))))

(declare-fun b!474513 () Bool)

(assert (=> b!474513 (= e!289895 tp_is_empty!2283)))

(declare-fun b!474515 () Bool)

(declare-fun tp!131938 () Bool)

(assert (=> b!474515 (= e!289895 tp!131938)))

(assert (= (and b!474340 ((_ is ElementMatch!1143) (reg!1472 r!20230))) b!474513))

(assert (= (and b!474340 ((_ is Concat!2043) (reg!1472 r!20230))) b!474514))

(assert (= (and b!474340 ((_ is Star!1143) (reg!1472 r!20230))) b!474515))

(assert (= (and b!474340 ((_ is Union!1143) (reg!1472 r!20230))) b!474516))

(check-sat (not b!474506) (not b!474498) (not b!474456) (not b!474500) (not b!474484) (not d!179794) (not d!179802) (not b!474492) (not bm!32963) (not b!474508) (not b!474514) (not b!474483) (not b!474491) (not bm!32939) tp_is_empty!2283 (not b!474384) (not d!179798) (not b!474489) (not bm!32940) (not b!474481) (not b!474499) (not b!474516) (not bm!32962) (not b!474507) (not b!474515))
(check-sat)
