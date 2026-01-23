; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243988 () Bool)

(assert start!243988)

(declare-fun b!2498826 () Bool)

(declare-fun e!1585216 () Bool)

(declare-fun tp_is_empty!12645 () Bool)

(declare-fun tp!800089 () Bool)

(assert (=> b!2498826 (= e!1585216 (and tp_is_empty!12645 tp!800089))))

(declare-fun b!2498827 () Bool)

(declare-fun res!1056866 () Bool)

(declare-fun e!1585215 () Bool)

(assert (=> b!2498827 (=> (not res!1056866) (not e!1585215))))

(declare-datatypes ((C!14948 0))(
  ( (C!14949 (val!9126 Int)) )
))
(declare-datatypes ((Regex!7395 0))(
  ( (ElementMatch!7395 (c!397465 C!14948)) (Concat!12091 (regOne!15302 Regex!7395) (regTwo!15302 Regex!7395)) (EmptyExpr!7395) (Star!7395 (reg!7724 Regex!7395)) (EmptyLang!7395) (Union!7395 (regOne!15303 Regex!7395) (regTwo!15303 Regex!7395)) )
))
(declare-fun r!27340 () Regex!7395)

(declare-fun nullable!2312 (Regex!7395) Bool)

(assert (=> b!2498827 (= res!1056866 (nullable!2312 (regOne!15302 r!27340)))))

(declare-fun res!1056864 () Bool)

(assert (=> start!243988 (=> (not res!1056864) (not e!1585215))))

(declare-fun validRegex!3021 (Regex!7395) Bool)

(assert (=> start!243988 (= res!1056864 (validRegex!3021 r!27340))))

(assert (=> start!243988 e!1585215))

(declare-fun e!1585214 () Bool)

(assert (=> start!243988 e!1585214))

(assert (=> start!243988 tp_is_empty!12645))

(assert (=> start!243988 e!1585216))

(declare-fun b!2498828 () Bool)

(declare-fun tp!800092 () Bool)

(declare-fun tp!800091 () Bool)

(assert (=> b!2498828 (= e!1585214 (and tp!800092 tp!800091))))

(declare-fun b!2498829 () Bool)

(assert (=> b!2498829 (= e!1585215 (not (validRegex!3021 (regOne!15302 r!27340))))))

(declare-fun b!2498830 () Bool)

(declare-fun res!1056865 () Bool)

(assert (=> b!2498830 (=> (not res!1056865) (not e!1585215))))

(declare-datatypes ((List!29460 0))(
  ( (Nil!29360) (Cons!29360 (h!34780 C!14948) (t!211159 List!29460)) )
))
(declare-fun tl!4068 () List!29460)

(declare-fun c!14016 () C!14948)

(declare-fun derivative!90 (Regex!7395 List!29460) Regex!7395)

(declare-fun derivativeStep!1964 (Regex!7395 C!14948) Regex!7395)

(assert (=> b!2498830 (= res!1056865 (nullable!2312 (derivative!90 (derivativeStep!1964 r!27340 c!14016) tl!4068)))))

(declare-fun b!2498831 () Bool)

(assert (=> b!2498831 (= e!1585214 tp_is_empty!12645)))

(declare-fun b!2498832 () Bool)

(declare-fun res!1056863 () Bool)

(assert (=> b!2498832 (=> (not res!1056863) (not e!1585215))))

(get-info :version)

(assert (=> b!2498832 (= res!1056863 (and (not ((_ is EmptyExpr!7395) r!27340)) (not ((_ is EmptyLang!7395) r!27340)) (not ((_ is ElementMatch!7395) r!27340)) (not ((_ is Union!7395) r!27340)) (not ((_ is Star!7395) r!27340))))))

(declare-fun b!2498833 () Bool)

(declare-fun tp!800094 () Bool)

(assert (=> b!2498833 (= e!1585214 tp!800094)))

(declare-fun b!2498834 () Bool)

(declare-fun tp!800093 () Bool)

(declare-fun tp!800090 () Bool)

(assert (=> b!2498834 (= e!1585214 (and tp!800093 tp!800090))))

(assert (= (and start!243988 res!1056864) b!2498830))

(assert (= (and b!2498830 res!1056865) b!2498832))

(assert (= (and b!2498832 res!1056863) b!2498827))

(assert (= (and b!2498827 res!1056866) b!2498829))

(assert (= (and start!243988 ((_ is ElementMatch!7395) r!27340)) b!2498831))

(assert (= (and start!243988 ((_ is Concat!12091) r!27340)) b!2498828))

(assert (= (and start!243988 ((_ is Star!7395) r!27340)) b!2498833))

(assert (= (and start!243988 ((_ is Union!7395) r!27340)) b!2498834))

(assert (= (and start!243988 ((_ is Cons!29360) tl!4068)) b!2498826))

(declare-fun m!2862397 () Bool)

(assert (=> b!2498827 m!2862397))

(declare-fun m!2862399 () Bool)

(assert (=> start!243988 m!2862399))

(declare-fun m!2862401 () Bool)

(assert (=> b!2498829 m!2862401))

(declare-fun m!2862403 () Bool)

(assert (=> b!2498830 m!2862403))

(assert (=> b!2498830 m!2862403))

(declare-fun m!2862405 () Bool)

(assert (=> b!2498830 m!2862405))

(assert (=> b!2498830 m!2862405))

(declare-fun m!2862407 () Bool)

(assert (=> b!2498830 m!2862407))

(check-sat (not b!2498827) tp_is_empty!12645 (not b!2498834) (not b!2498826) (not b!2498828) (not b!2498830) (not start!243988) (not b!2498829) (not b!2498833))
(check-sat)
(get-model)

(declare-fun b!2498859 () Bool)

(declare-fun res!1056879 () Bool)

(declare-fun e!1585236 () Bool)

(assert (=> b!2498859 (=> (not res!1056879) (not e!1585236))))

(declare-fun call!154135 () Bool)

(assert (=> b!2498859 (= res!1056879 call!154135)))

(declare-fun e!1585235 () Bool)

(assert (=> b!2498859 (= e!1585235 e!1585236)))

(declare-fun bm!154129 () Bool)

(declare-fun c!397473 () Bool)

(declare-fun call!154136 () Bool)

(declare-fun c!397474 () Bool)

(assert (=> bm!154129 (= call!154136 (validRegex!3021 (ite c!397473 (reg!7724 (regOne!15302 r!27340)) (ite c!397474 (regOne!15303 (regOne!15302 r!27340)) (regTwo!15302 (regOne!15302 r!27340))))))))

(declare-fun b!2498860 () Bool)

(declare-fun res!1056880 () Bool)

(declare-fun e!1585234 () Bool)

(assert (=> b!2498860 (=> res!1056880 e!1585234)))

(assert (=> b!2498860 (= res!1056880 (not ((_ is Concat!12091) (regOne!15302 r!27340))))))

(assert (=> b!2498860 (= e!1585235 e!1585234)))

(declare-fun b!2498861 () Bool)

(declare-fun e!1585240 () Bool)

(assert (=> b!2498861 (= e!1585240 call!154136)))

(declare-fun b!2498862 () Bool)

(declare-fun e!1585237 () Bool)

(declare-fun e!1585238 () Bool)

(assert (=> b!2498862 (= e!1585237 e!1585238)))

(assert (=> b!2498862 (= c!397473 ((_ is Star!7395) (regOne!15302 r!27340)))))

(declare-fun b!2498863 () Bool)

(assert (=> b!2498863 (= e!1585238 e!1585240)))

(declare-fun res!1056878 () Bool)

(assert (=> b!2498863 (= res!1056878 (not (nullable!2312 (reg!7724 (regOne!15302 r!27340)))))))

(assert (=> b!2498863 (=> (not res!1056878) (not e!1585240))))

(declare-fun b!2498864 () Bool)

(declare-fun call!154134 () Bool)

(assert (=> b!2498864 (= e!1585236 call!154134)))

(declare-fun bm!154130 () Bool)

(assert (=> bm!154130 (= call!154135 call!154136)))

(declare-fun b!2498865 () Bool)

(assert (=> b!2498865 (= e!1585238 e!1585235)))

(assert (=> b!2498865 (= c!397474 ((_ is Union!7395) (regOne!15302 r!27340)))))

(declare-fun bm!154131 () Bool)

(assert (=> bm!154131 (= call!154134 (validRegex!3021 (ite c!397474 (regTwo!15303 (regOne!15302 r!27340)) (regOne!15302 (regOne!15302 r!27340)))))))

(declare-fun b!2498867 () Bool)

(declare-fun e!1585239 () Bool)

(assert (=> b!2498867 (= e!1585234 e!1585239)))

(declare-fun res!1056877 () Bool)

(assert (=> b!2498867 (=> (not res!1056877) (not e!1585239))))

(assert (=> b!2498867 (= res!1056877 call!154134)))

(declare-fun b!2498866 () Bool)

(assert (=> b!2498866 (= e!1585239 call!154135)))

(declare-fun d!715195 () Bool)

(declare-fun res!1056881 () Bool)

(assert (=> d!715195 (=> res!1056881 e!1585237)))

(assert (=> d!715195 (= res!1056881 ((_ is ElementMatch!7395) (regOne!15302 r!27340)))))

(assert (=> d!715195 (= (validRegex!3021 (regOne!15302 r!27340)) e!1585237)))

(assert (= (and d!715195 (not res!1056881)) b!2498862))

(assert (= (and b!2498862 c!397473) b!2498863))

(assert (= (and b!2498862 (not c!397473)) b!2498865))

(assert (= (and b!2498863 res!1056878) b!2498861))

(assert (= (and b!2498865 c!397474) b!2498859))

(assert (= (and b!2498865 (not c!397474)) b!2498860))

(assert (= (and b!2498859 res!1056879) b!2498864))

(assert (= (and b!2498860 (not res!1056880)) b!2498867))

(assert (= (and b!2498867 res!1056877) b!2498866))

(assert (= (or b!2498859 b!2498866) bm!154130))

(assert (= (or b!2498864 b!2498867) bm!154131))

(assert (= (or b!2498861 bm!154130) bm!154129))

(declare-fun m!2862421 () Bool)

(assert (=> bm!154129 m!2862421))

(declare-fun m!2862423 () Bool)

(assert (=> b!2498863 m!2862423))

(declare-fun m!2862425 () Bool)

(assert (=> bm!154131 m!2862425))

(assert (=> b!2498829 d!715195))

(declare-fun d!715205 () Bool)

(declare-fun nullableFct!585 (Regex!7395) Bool)

(assert (=> d!715205 (= (nullable!2312 (regOne!15302 r!27340)) (nullableFct!585 (regOne!15302 r!27340)))))

(declare-fun bs!468530 () Bool)

(assert (= bs!468530 d!715205))

(declare-fun m!2862427 () Bool)

(assert (=> bs!468530 m!2862427))

(assert (=> b!2498827 d!715205))

(declare-fun b!2498868 () Bool)

(declare-fun res!1056884 () Bool)

(declare-fun e!1585243 () Bool)

(assert (=> b!2498868 (=> (not res!1056884) (not e!1585243))))

(declare-fun call!154138 () Bool)

(assert (=> b!2498868 (= res!1056884 call!154138)))

(declare-fun e!1585242 () Bool)

(assert (=> b!2498868 (= e!1585242 e!1585243)))

(declare-fun call!154139 () Bool)

(declare-fun c!397476 () Bool)

(declare-fun c!397475 () Bool)

(declare-fun bm!154132 () Bool)

(assert (=> bm!154132 (= call!154139 (validRegex!3021 (ite c!397475 (reg!7724 r!27340) (ite c!397476 (regOne!15303 r!27340) (regTwo!15302 r!27340)))))))

(declare-fun b!2498869 () Bool)

(declare-fun res!1056885 () Bool)

(declare-fun e!1585241 () Bool)

(assert (=> b!2498869 (=> res!1056885 e!1585241)))

(assert (=> b!2498869 (= res!1056885 (not ((_ is Concat!12091) r!27340)))))

(assert (=> b!2498869 (= e!1585242 e!1585241)))

(declare-fun b!2498870 () Bool)

(declare-fun e!1585247 () Bool)

(assert (=> b!2498870 (= e!1585247 call!154139)))

(declare-fun b!2498871 () Bool)

(declare-fun e!1585244 () Bool)

(declare-fun e!1585245 () Bool)

(assert (=> b!2498871 (= e!1585244 e!1585245)))

(assert (=> b!2498871 (= c!397475 ((_ is Star!7395) r!27340))))

(declare-fun b!2498872 () Bool)

(assert (=> b!2498872 (= e!1585245 e!1585247)))

(declare-fun res!1056883 () Bool)

(assert (=> b!2498872 (= res!1056883 (not (nullable!2312 (reg!7724 r!27340))))))

(assert (=> b!2498872 (=> (not res!1056883) (not e!1585247))))

(declare-fun b!2498873 () Bool)

(declare-fun call!154137 () Bool)

(assert (=> b!2498873 (= e!1585243 call!154137)))

(declare-fun bm!154133 () Bool)

(assert (=> bm!154133 (= call!154138 call!154139)))

(declare-fun b!2498874 () Bool)

(assert (=> b!2498874 (= e!1585245 e!1585242)))

(assert (=> b!2498874 (= c!397476 ((_ is Union!7395) r!27340))))

(declare-fun bm!154134 () Bool)

(assert (=> bm!154134 (= call!154137 (validRegex!3021 (ite c!397476 (regTwo!15303 r!27340) (regOne!15302 r!27340))))))

(declare-fun b!2498876 () Bool)

(declare-fun e!1585246 () Bool)

(assert (=> b!2498876 (= e!1585241 e!1585246)))

(declare-fun res!1056882 () Bool)

(assert (=> b!2498876 (=> (not res!1056882) (not e!1585246))))

(assert (=> b!2498876 (= res!1056882 call!154137)))

(declare-fun b!2498875 () Bool)

(assert (=> b!2498875 (= e!1585246 call!154138)))

(declare-fun d!715207 () Bool)

(declare-fun res!1056886 () Bool)

(assert (=> d!715207 (=> res!1056886 e!1585244)))

(assert (=> d!715207 (= res!1056886 ((_ is ElementMatch!7395) r!27340))))

(assert (=> d!715207 (= (validRegex!3021 r!27340) e!1585244)))

(assert (= (and d!715207 (not res!1056886)) b!2498871))

(assert (= (and b!2498871 c!397475) b!2498872))

(assert (= (and b!2498871 (not c!397475)) b!2498874))

(assert (= (and b!2498872 res!1056883) b!2498870))

(assert (= (and b!2498874 c!397476) b!2498868))

(assert (= (and b!2498874 (not c!397476)) b!2498869))

(assert (= (and b!2498868 res!1056884) b!2498873))

(assert (= (and b!2498869 (not res!1056885)) b!2498876))

(assert (= (and b!2498876 res!1056882) b!2498875))

(assert (= (or b!2498868 b!2498875) bm!154133))

(assert (= (or b!2498873 b!2498876) bm!154134))

(assert (= (or b!2498870 bm!154133) bm!154132))

(declare-fun m!2862429 () Bool)

(assert (=> bm!154132 m!2862429))

(declare-fun m!2862431 () Bool)

(assert (=> b!2498872 m!2862431))

(declare-fun m!2862433 () Bool)

(assert (=> bm!154134 m!2862433))

(assert (=> start!243988 d!715207))

(declare-fun d!715209 () Bool)

(assert (=> d!715209 (= (nullable!2312 (derivative!90 (derivativeStep!1964 r!27340 c!14016) tl!4068)) (nullableFct!585 (derivative!90 (derivativeStep!1964 r!27340 c!14016) tl!4068)))))

(declare-fun bs!468531 () Bool)

(assert (= bs!468531 d!715209))

(assert (=> bs!468531 m!2862405))

(declare-fun m!2862435 () Bool)

(assert (=> bs!468531 m!2862435))

(assert (=> b!2498830 d!715209))

(declare-fun d!715211 () Bool)

(declare-fun lt!895392 () Regex!7395)

(assert (=> d!715211 (validRegex!3021 lt!895392)))

(declare-fun e!1585260 () Regex!7395)

(assert (=> d!715211 (= lt!895392 e!1585260)))

(declare-fun c!397489 () Bool)

(assert (=> d!715211 (= c!397489 ((_ is Cons!29360) tl!4068))))

(assert (=> d!715211 (validRegex!3021 (derivativeStep!1964 r!27340 c!14016))))

(assert (=> d!715211 (= (derivative!90 (derivativeStep!1964 r!27340 c!14016) tl!4068) lt!895392)))

(declare-fun b!2498901 () Bool)

(assert (=> b!2498901 (= e!1585260 (derivative!90 (derivativeStep!1964 (derivativeStep!1964 r!27340 c!14016) (h!34780 tl!4068)) (t!211159 tl!4068)))))

(declare-fun b!2498902 () Bool)

(assert (=> b!2498902 (= e!1585260 (derivativeStep!1964 r!27340 c!14016))))

(assert (= (and d!715211 c!397489) b!2498901))

(assert (= (and d!715211 (not c!397489)) b!2498902))

(declare-fun m!2862437 () Bool)

(assert (=> d!715211 m!2862437))

(assert (=> d!715211 m!2862403))

(declare-fun m!2862439 () Bool)

(assert (=> d!715211 m!2862439))

(assert (=> b!2498901 m!2862403))

(declare-fun m!2862441 () Bool)

(assert (=> b!2498901 m!2862441))

(assert (=> b!2498901 m!2862441))

(declare-fun m!2862443 () Bool)

(assert (=> b!2498901 m!2862443))

(assert (=> b!2498830 d!715211))

(declare-fun b!2498951 () Bool)

(declare-fun e!1585294 () Regex!7395)

(declare-fun call!154166 () Regex!7395)

(assert (=> b!2498951 (= e!1585294 (Union!7395 (Concat!12091 call!154166 (regTwo!15302 r!27340)) EmptyLang!7395))))

(declare-fun bm!154162 () Bool)

(declare-fun call!154168 () Regex!7395)

(declare-fun c!397513 () Bool)

(assert (=> bm!154162 (= call!154168 (derivativeStep!1964 (ite c!397513 (regOne!15303 r!27340) (regTwo!15302 r!27340)) c!14016))))

(declare-fun b!2498952 () Bool)

(assert (=> b!2498952 (= c!397513 ((_ is Union!7395) r!27340))))

(declare-fun e!1585293 () Regex!7395)

(declare-fun e!1585292 () Regex!7395)

(assert (=> b!2498952 (= e!1585293 e!1585292)))

(declare-fun b!2498953 () Bool)

(assert (=> b!2498953 (= e!1585293 (ite (= c!14016 (c!397465 r!27340)) EmptyExpr!7395 EmptyLang!7395))))

(declare-fun b!2498954 () Bool)

(declare-fun e!1585290 () Regex!7395)

(assert (=> b!2498954 (= e!1585290 e!1585293)))

(declare-fun c!397510 () Bool)

(assert (=> b!2498954 (= c!397510 ((_ is ElementMatch!7395) r!27340))))

(declare-fun b!2498955 () Bool)

(declare-fun e!1585291 () Regex!7395)

(declare-fun call!154167 () Regex!7395)

(assert (=> b!2498955 (= e!1585291 (Concat!12091 call!154167 r!27340))))

(declare-fun c!397511 () Bool)

(declare-fun call!154169 () Regex!7395)

(declare-fun bm!154163 () Bool)

(assert (=> bm!154163 (= call!154169 (derivativeStep!1964 (ite c!397513 (regTwo!15303 r!27340) (ite c!397511 (reg!7724 r!27340) (regOne!15302 r!27340))) c!14016))))

(declare-fun bm!154161 () Bool)

(assert (=> bm!154161 (= call!154167 call!154169)))

(declare-fun d!715213 () Bool)

(declare-fun lt!895396 () Regex!7395)

(assert (=> d!715213 (validRegex!3021 lt!895396)))

(assert (=> d!715213 (= lt!895396 e!1585290)))

(declare-fun c!397512 () Bool)

(assert (=> d!715213 (= c!397512 (or ((_ is EmptyExpr!7395) r!27340) ((_ is EmptyLang!7395) r!27340)))))

(assert (=> d!715213 (validRegex!3021 r!27340)))

(assert (=> d!715213 (= (derivativeStep!1964 r!27340 c!14016) lt!895396)))

(declare-fun b!2498956 () Bool)

(assert (=> b!2498956 (= e!1585292 (Union!7395 call!154168 call!154169))))

(declare-fun b!2498957 () Bool)

(assert (=> b!2498957 (= e!1585290 EmptyLang!7395)))

(declare-fun b!2498958 () Bool)

(declare-fun c!397509 () Bool)

(assert (=> b!2498958 (= c!397509 (nullable!2312 (regOne!15302 r!27340)))))

(assert (=> b!2498958 (= e!1585291 e!1585294)))

(declare-fun bm!154164 () Bool)

(assert (=> bm!154164 (= call!154166 call!154167)))

(declare-fun b!2498959 () Bool)

(assert (=> b!2498959 (= e!1585292 e!1585291)))

(assert (=> b!2498959 (= c!397511 ((_ is Star!7395) r!27340))))

(declare-fun b!2498960 () Bool)

(assert (=> b!2498960 (= e!1585294 (Union!7395 (Concat!12091 call!154166 (regTwo!15302 r!27340)) call!154168))))

(assert (= (and d!715213 c!397512) b!2498957))

(assert (= (and d!715213 (not c!397512)) b!2498954))

(assert (= (and b!2498954 c!397510) b!2498953))

(assert (= (and b!2498954 (not c!397510)) b!2498952))

(assert (= (and b!2498952 c!397513) b!2498956))

(assert (= (and b!2498952 (not c!397513)) b!2498959))

(assert (= (and b!2498959 c!397511) b!2498955))

(assert (= (and b!2498959 (not c!397511)) b!2498958))

(assert (= (and b!2498958 c!397509) b!2498960))

(assert (= (and b!2498958 (not c!397509)) b!2498951))

(assert (= (or b!2498960 b!2498951) bm!154164))

(assert (= (or b!2498955 bm!154164) bm!154161))

(assert (= (or b!2498956 bm!154161) bm!154163))

(assert (= (or b!2498956 b!2498960) bm!154162))

(declare-fun m!2862451 () Bool)

(assert (=> bm!154162 m!2862451))

(declare-fun m!2862453 () Bool)

(assert (=> bm!154163 m!2862453))

(declare-fun m!2862455 () Bool)

(assert (=> d!715213 m!2862455))

(assert (=> d!715213 m!2862399))

(assert (=> b!2498958 m!2862397))

(assert (=> b!2498830 d!715213))

(declare-fun b!2498998 () Bool)

(declare-fun e!1585313 () Bool)

(declare-fun tp!800111 () Bool)

(declare-fun tp!800113 () Bool)

(assert (=> b!2498998 (= e!1585313 (and tp!800111 tp!800113))))

(declare-fun b!2498999 () Bool)

(declare-fun tp!800114 () Bool)

(assert (=> b!2498999 (= e!1585313 tp!800114)))

(assert (=> b!2498828 (= tp!800092 e!1585313)))

(declare-fun b!2499000 () Bool)

(declare-fun tp!800115 () Bool)

(declare-fun tp!800112 () Bool)

(assert (=> b!2499000 (= e!1585313 (and tp!800115 tp!800112))))

(declare-fun b!2498997 () Bool)

(assert (=> b!2498997 (= e!1585313 tp_is_empty!12645)))

(assert (= (and b!2498828 ((_ is ElementMatch!7395) (regOne!15302 r!27340))) b!2498997))

(assert (= (and b!2498828 ((_ is Concat!12091) (regOne!15302 r!27340))) b!2498998))

(assert (= (and b!2498828 ((_ is Star!7395) (regOne!15302 r!27340))) b!2498999))

(assert (= (and b!2498828 ((_ is Union!7395) (regOne!15302 r!27340))) b!2499000))

(declare-fun b!2499004 () Bool)

(declare-fun e!1585314 () Bool)

(declare-fun tp!800120 () Bool)

(declare-fun tp!800122 () Bool)

(assert (=> b!2499004 (= e!1585314 (and tp!800120 tp!800122))))

(declare-fun b!2499005 () Bool)

(declare-fun tp!800123 () Bool)

(assert (=> b!2499005 (= e!1585314 tp!800123)))

(assert (=> b!2498828 (= tp!800091 e!1585314)))

(declare-fun b!2499006 () Bool)

(declare-fun tp!800124 () Bool)

(declare-fun tp!800121 () Bool)

(assert (=> b!2499006 (= e!1585314 (and tp!800124 tp!800121))))

(declare-fun b!2499003 () Bool)

(assert (=> b!2499003 (= e!1585314 tp_is_empty!12645)))

(assert (= (and b!2498828 ((_ is ElementMatch!7395) (regTwo!15302 r!27340))) b!2499003))

(assert (= (and b!2498828 ((_ is Concat!12091) (regTwo!15302 r!27340))) b!2499004))

(assert (= (and b!2498828 ((_ is Star!7395) (regTwo!15302 r!27340))) b!2499005))

(assert (= (and b!2498828 ((_ is Union!7395) (regTwo!15302 r!27340))) b!2499006))

(declare-fun b!2499008 () Bool)

(declare-fun e!1585315 () Bool)

(declare-fun tp!800125 () Bool)

(declare-fun tp!800127 () Bool)

(assert (=> b!2499008 (= e!1585315 (and tp!800125 tp!800127))))

(declare-fun b!2499009 () Bool)

(declare-fun tp!800128 () Bool)

(assert (=> b!2499009 (= e!1585315 tp!800128)))

(assert (=> b!2498834 (= tp!800093 e!1585315)))

(declare-fun b!2499010 () Bool)

(declare-fun tp!800129 () Bool)

(declare-fun tp!800126 () Bool)

(assert (=> b!2499010 (= e!1585315 (and tp!800129 tp!800126))))

(declare-fun b!2499007 () Bool)

(assert (=> b!2499007 (= e!1585315 tp_is_empty!12645)))

(assert (= (and b!2498834 ((_ is ElementMatch!7395) (regOne!15303 r!27340))) b!2499007))

(assert (= (and b!2498834 ((_ is Concat!12091) (regOne!15303 r!27340))) b!2499008))

(assert (= (and b!2498834 ((_ is Star!7395) (regOne!15303 r!27340))) b!2499009))

(assert (= (and b!2498834 ((_ is Union!7395) (regOne!15303 r!27340))) b!2499010))

(declare-fun b!2499012 () Bool)

(declare-fun e!1585316 () Bool)

(declare-fun tp!800130 () Bool)

(declare-fun tp!800132 () Bool)

(assert (=> b!2499012 (= e!1585316 (and tp!800130 tp!800132))))

(declare-fun b!2499013 () Bool)

(declare-fun tp!800133 () Bool)

(assert (=> b!2499013 (= e!1585316 tp!800133)))

(assert (=> b!2498834 (= tp!800090 e!1585316)))

(declare-fun b!2499014 () Bool)

(declare-fun tp!800134 () Bool)

(declare-fun tp!800131 () Bool)

(assert (=> b!2499014 (= e!1585316 (and tp!800134 tp!800131))))

(declare-fun b!2499011 () Bool)

(assert (=> b!2499011 (= e!1585316 tp_is_empty!12645)))

(assert (= (and b!2498834 ((_ is ElementMatch!7395) (regTwo!15303 r!27340))) b!2499011))

(assert (= (and b!2498834 ((_ is Concat!12091) (regTwo!15303 r!27340))) b!2499012))

(assert (= (and b!2498834 ((_ is Star!7395) (regTwo!15303 r!27340))) b!2499013))

(assert (= (and b!2498834 ((_ is Union!7395) (regTwo!15303 r!27340))) b!2499014))

(declare-fun b!2499020 () Bool)

(declare-fun e!1585318 () Bool)

(declare-fun tp!800140 () Bool)

(declare-fun tp!800142 () Bool)

(assert (=> b!2499020 (= e!1585318 (and tp!800140 tp!800142))))

(declare-fun b!2499021 () Bool)

(declare-fun tp!800143 () Bool)

(assert (=> b!2499021 (= e!1585318 tp!800143)))

(assert (=> b!2498833 (= tp!800094 e!1585318)))

(declare-fun b!2499022 () Bool)

(declare-fun tp!800144 () Bool)

(declare-fun tp!800141 () Bool)

(assert (=> b!2499022 (= e!1585318 (and tp!800144 tp!800141))))

(declare-fun b!2499019 () Bool)

(assert (=> b!2499019 (= e!1585318 tp_is_empty!12645)))

(assert (= (and b!2498833 ((_ is ElementMatch!7395) (reg!7724 r!27340))) b!2499019))

(assert (= (and b!2498833 ((_ is Concat!12091) (reg!7724 r!27340))) b!2499020))

(assert (= (and b!2498833 ((_ is Star!7395) (reg!7724 r!27340))) b!2499021))

(assert (= (and b!2498833 ((_ is Union!7395) (reg!7724 r!27340))) b!2499022))

(declare-fun b!2499035 () Bool)

(declare-fun e!1585324 () Bool)

(declare-fun tp!800154 () Bool)

(assert (=> b!2499035 (= e!1585324 (and tp_is_empty!12645 tp!800154))))

(assert (=> b!2498826 (= tp!800089 e!1585324)))

(assert (= (and b!2498826 ((_ is Cons!29360) (t!211159 tl!4068))) b!2499035))

(check-sat (not b!2499013) (not b!2498863) (not b!2498998) (not b!2499010) (not bm!154129) (not d!715211) (not b!2498901) (not b!2499009) (not b!2498958) (not b!2499021) (not b!2498999) (not b!2499035) (not bm!154131) (not b!2499014) (not b!2498872) (not b!2499012) (not bm!154132) tp_is_empty!12645 (not b!2499020) (not bm!154134) (not b!2499008) (not d!715205) (not d!715209) (not b!2499004) (not bm!154162) (not b!2499022) (not d!715213) (not b!2499005) (not b!2499006) (not bm!154163) (not b!2499000))
(check-sat)
