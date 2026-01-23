; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739760 () Bool)

(assert start!739760)

(declare-fun b!7766217 () Bool)

(declare-fun e!4601997 () Bool)

(declare-fun tp!2281429 () Bool)

(assert (=> b!7766217 (= e!4601997 tp!2281429)))

(declare-fun b!7766218 () Bool)

(declare-fun tp_is_empty!51817 () Bool)

(assert (=> b!7766218 (= e!4601997 tp_is_empty!51817)))

(declare-fun b!7766220 () Bool)

(declare-fun e!4601996 () Bool)

(declare-fun tp!2281431 () Bool)

(assert (=> b!7766220 (= e!4601996 (and tp_is_empty!51817 tp!2281431))))

(declare-fun b!7766221 () Bool)

(declare-fun res!3096077 () Bool)

(declare-fun e!4601998 () Bool)

(assert (=> b!7766221 (=> (not res!3096077) (not e!4601998))))

(declare-datatypes ((C!41788 0))(
  ( (C!41789 (val!31334 Int)) )
))
(declare-datatypes ((Regex!20731 0))(
  ( (ElementMatch!20731 (c!1431354 C!41788)) (Concat!29576 (regOne!41974 Regex!20731) (regTwo!41974 Regex!20731)) (EmptyExpr!20731) (Star!20731 (reg!21060 Regex!20731)) (EmptyLang!20731) (Union!20731 (regOne!41975 Regex!20731) (regTwo!41975 Regex!20731)) )
))
(declare-fun lt!2670886 () Regex!20731)

(declare-datatypes ((List!73572 0))(
  ( (Nil!73448) (Cons!73448 (h!79896 C!41788) (t!388307 List!73572)) )
))
(declare-fun s!14904 () List!73572)

(declare-fun matchR!10193 (Regex!20731 List!73572) Bool)

(assert (=> b!7766221 (= res!3096077 (matchR!10193 lt!2670886 s!14904))))

(declare-fun b!7766222 () Bool)

(declare-fun tp!2281428 () Bool)

(declare-fun tp!2281433 () Bool)

(assert (=> b!7766222 (= e!4601997 (and tp!2281428 tp!2281433))))

(declare-fun b!7766223 () Bool)

(declare-fun tp!2281432 () Bool)

(declare-fun tp!2281430 () Bool)

(assert (=> b!7766223 (= e!4601997 (and tp!2281432 tp!2281430))))

(declare-fun b!7766224 () Bool)

(declare-fun e!4601999 () Bool)

(assert (=> b!7766224 (= e!4601998 e!4601999)))

(declare-fun res!3096076 () Bool)

(assert (=> b!7766224 (=> (not res!3096076) (not e!4601999))))

(declare-fun lt!2670887 () Regex!20731)

(declare-fun derivativeStep!6076 (Regex!20731 C!41788) Regex!20731)

(assert (=> b!7766224 (= res!3096076 (= (derivativeStep!6076 lt!2670886 (h!79896 s!14904)) (Concat!29576 lt!2670887 lt!2670886)))))

(declare-fun r!25924 () Regex!20731)

(assert (=> b!7766224 (= lt!2670887 (derivativeStep!6076 r!25924 (h!79896 s!14904)))))

(declare-fun b!7766225 () Bool)

(declare-fun validRegex!11145 (Regex!20731) Bool)

(assert (=> b!7766225 (= e!4601999 (not (validRegex!11145 lt!2670887)))))

(declare-datatypes ((tuple2!69828 0))(
  ( (tuple2!69829 (_1!38217 List!73572) (_2!38217 List!73572)) )
))
(declare-datatypes ((Option!17708 0))(
  ( (None!17707) (Some!17707 (v!54842 tuple2!69828)) )
))
(declare-fun isDefined!14320 (Option!17708) Bool)

(declare-fun findConcatSeparation!3738 (Regex!20731 Regex!20731 List!73572 List!73572 List!73572) Option!17708)

(assert (=> b!7766225 (isDefined!14320 (findConcatSeparation!3738 lt!2670887 lt!2670886 Nil!73448 (t!388307 s!14904) (t!388307 s!14904)))))

(declare-datatypes ((Unit!168424 0))(
  ( (Unit!168425) )
))
(declare-fun lt!2670888 () Unit!168424)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!328 (Regex!20731 Regex!20731 List!73572) Unit!168424)

(assert (=> b!7766225 (= lt!2670888 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!328 lt!2670887 lt!2670886 (t!388307 s!14904)))))

(declare-fun b!7766219 () Bool)

(declare-fun res!3096078 () Bool)

(assert (=> b!7766219 (=> (not res!3096078) (not e!4601998))))

(get-info :version)

(assert (=> b!7766219 (= res!3096078 ((_ is Cons!73448) s!14904))))

(declare-fun res!3096075 () Bool)

(assert (=> start!739760 (=> (not res!3096075) (not e!4601998))))

(assert (=> start!739760 (= res!3096075 (validRegex!11145 lt!2670886))))

(assert (=> start!739760 (= lt!2670886 (Star!20731 r!25924))))

(assert (=> start!739760 e!4601998))

(assert (=> start!739760 e!4601997))

(assert (=> start!739760 e!4601996))

(assert (= (and start!739760 res!3096075) b!7766221))

(assert (= (and b!7766221 res!3096077) b!7766219))

(assert (= (and b!7766219 res!3096078) b!7766224))

(assert (= (and b!7766224 res!3096076) b!7766225))

(assert (= (and start!739760 ((_ is ElementMatch!20731) r!25924)) b!7766218))

(assert (= (and start!739760 ((_ is Concat!29576) r!25924)) b!7766223))

(assert (= (and start!739760 ((_ is Star!20731) r!25924)) b!7766217))

(assert (= (and start!739760 ((_ is Union!20731) r!25924)) b!7766222))

(assert (= (and start!739760 ((_ is Cons!73448) s!14904)) b!7766220))

(declare-fun m!8222730 () Bool)

(assert (=> b!7766221 m!8222730))

(declare-fun m!8222732 () Bool)

(assert (=> b!7766224 m!8222732))

(declare-fun m!8222734 () Bool)

(assert (=> b!7766224 m!8222734))

(declare-fun m!8222736 () Bool)

(assert (=> b!7766225 m!8222736))

(declare-fun m!8222738 () Bool)

(assert (=> b!7766225 m!8222738))

(assert (=> b!7766225 m!8222738))

(declare-fun m!8222740 () Bool)

(assert (=> b!7766225 m!8222740))

(declare-fun m!8222742 () Bool)

(assert (=> b!7766225 m!8222742))

(declare-fun m!8222744 () Bool)

(assert (=> start!739760 m!8222744))

(check-sat (not b!7766217) (not b!7766224) (not b!7766221) tp_is_empty!51817 (not b!7766225) (not start!739760) (not b!7766222) (not b!7766220) (not b!7766223))
(check-sat)
(get-model)

(declare-fun b!7766254 () Bool)

(declare-fun res!3096097 () Bool)

(declare-fun e!4602018 () Bool)

(assert (=> b!7766254 (=> (not res!3096097) (not e!4602018))))

(declare-fun call!719515 () Bool)

(assert (=> b!7766254 (= res!3096097 (not call!719515))))

(declare-fun b!7766255 () Bool)

(declare-fun e!4602019 () Bool)

(declare-fun e!4602016 () Bool)

(assert (=> b!7766255 (= e!4602019 e!4602016)))

(declare-fun c!1431363 () Bool)

(assert (=> b!7766255 (= c!1431363 ((_ is EmptyLang!20731) lt!2670886))))

(declare-fun b!7766256 () Bool)

(declare-fun e!4602017 () Bool)

(declare-fun e!4602014 () Bool)

(assert (=> b!7766256 (= e!4602017 e!4602014)))

(declare-fun res!3096102 () Bool)

(assert (=> b!7766256 (=> res!3096102 e!4602014)))

(assert (=> b!7766256 (= res!3096102 call!719515)))

(declare-fun d!2343953 () Bool)

(assert (=> d!2343953 e!4602019))

(declare-fun c!1431361 () Bool)

(assert (=> d!2343953 (= c!1431361 ((_ is EmptyExpr!20731) lt!2670886))))

(declare-fun lt!2670891 () Bool)

(declare-fun e!4602020 () Bool)

(assert (=> d!2343953 (= lt!2670891 e!4602020)))

(declare-fun c!1431362 () Bool)

(declare-fun isEmpty!42120 (List!73572) Bool)

(assert (=> d!2343953 (= c!1431362 (isEmpty!42120 s!14904))))

(assert (=> d!2343953 (validRegex!11145 lt!2670886)))

(assert (=> d!2343953 (= (matchR!10193 lt!2670886 s!14904) lt!2670891)))

(declare-fun bm!719510 () Bool)

(assert (=> bm!719510 (= call!719515 (isEmpty!42120 s!14904))))

(declare-fun b!7766257 () Bool)

(declare-fun head!15868 (List!73572) C!41788)

(assert (=> b!7766257 (= e!4602014 (not (= (head!15868 s!14904) (c!1431354 lt!2670886))))))

(declare-fun b!7766258 () Bool)

(declare-fun tail!15408 (List!73572) List!73572)

(assert (=> b!7766258 (= e!4602020 (matchR!10193 (derivativeStep!6076 lt!2670886 (head!15868 s!14904)) (tail!15408 s!14904)))))

(declare-fun b!7766259 () Bool)

(declare-fun res!3096099 () Bool)

(assert (=> b!7766259 (=> (not res!3096099) (not e!4602018))))

(assert (=> b!7766259 (= res!3096099 (isEmpty!42120 (tail!15408 s!14904)))))

(declare-fun b!7766260 () Bool)

(declare-fun res!3096100 () Bool)

(declare-fun e!4602015 () Bool)

(assert (=> b!7766260 (=> res!3096100 e!4602015)))

(assert (=> b!7766260 (= res!3096100 e!4602018)))

(declare-fun res!3096095 () Bool)

(assert (=> b!7766260 (=> (not res!3096095) (not e!4602018))))

(assert (=> b!7766260 (= res!3096095 lt!2670891)))

(declare-fun b!7766261 () Bool)

(assert (=> b!7766261 (= e!4602015 e!4602017)))

(declare-fun res!3096096 () Bool)

(assert (=> b!7766261 (=> (not res!3096096) (not e!4602017))))

(assert (=> b!7766261 (= res!3096096 (not lt!2670891))))

(declare-fun b!7766262 () Bool)

(declare-fun res!3096101 () Bool)

(assert (=> b!7766262 (=> res!3096101 e!4602014)))

(assert (=> b!7766262 (= res!3096101 (not (isEmpty!42120 (tail!15408 s!14904))))))

(declare-fun b!7766263 () Bool)

(declare-fun res!3096098 () Bool)

(assert (=> b!7766263 (=> res!3096098 e!4602015)))

(assert (=> b!7766263 (= res!3096098 (not ((_ is ElementMatch!20731) lt!2670886)))))

(assert (=> b!7766263 (= e!4602016 e!4602015)))

(declare-fun b!7766264 () Bool)

(assert (=> b!7766264 (= e!4602016 (not lt!2670891))))

(declare-fun b!7766265 () Bool)

(assert (=> b!7766265 (= e!4602018 (= (head!15868 s!14904) (c!1431354 lt!2670886)))))

(declare-fun b!7766266 () Bool)

(declare-fun nullable!9130 (Regex!20731) Bool)

(assert (=> b!7766266 (= e!4602020 (nullable!9130 lt!2670886))))

(declare-fun b!7766267 () Bool)

(assert (=> b!7766267 (= e!4602019 (= lt!2670891 call!719515))))

(assert (= (and d!2343953 c!1431362) b!7766266))

(assert (= (and d!2343953 (not c!1431362)) b!7766258))

(assert (= (and d!2343953 c!1431361) b!7766267))

(assert (= (and d!2343953 (not c!1431361)) b!7766255))

(assert (= (and b!7766255 c!1431363) b!7766264))

(assert (= (and b!7766255 (not c!1431363)) b!7766263))

(assert (= (and b!7766263 (not res!3096098)) b!7766260))

(assert (= (and b!7766260 res!3096095) b!7766254))

(assert (= (and b!7766254 res!3096097) b!7766259))

(assert (= (and b!7766259 res!3096099) b!7766265))

(assert (= (and b!7766260 (not res!3096100)) b!7766261))

(assert (= (and b!7766261 res!3096096) b!7766256))

(assert (= (and b!7766256 (not res!3096102)) b!7766262))

(assert (= (and b!7766262 (not res!3096101)) b!7766257))

(assert (= (or b!7766267 b!7766254 b!7766256) bm!719510))

(declare-fun m!8222746 () Bool)

(assert (=> b!7766258 m!8222746))

(assert (=> b!7766258 m!8222746))

(declare-fun m!8222748 () Bool)

(assert (=> b!7766258 m!8222748))

(declare-fun m!8222750 () Bool)

(assert (=> b!7766258 m!8222750))

(assert (=> b!7766258 m!8222748))

(assert (=> b!7766258 m!8222750))

(declare-fun m!8222752 () Bool)

(assert (=> b!7766258 m!8222752))

(declare-fun m!8222754 () Bool)

(assert (=> bm!719510 m!8222754))

(assert (=> b!7766259 m!8222750))

(assert (=> b!7766259 m!8222750))

(declare-fun m!8222756 () Bool)

(assert (=> b!7766259 m!8222756))

(declare-fun m!8222758 () Bool)

(assert (=> b!7766266 m!8222758))

(assert (=> b!7766262 m!8222750))

(assert (=> b!7766262 m!8222750))

(assert (=> b!7766262 m!8222756))

(assert (=> b!7766265 m!8222746))

(assert (=> b!7766257 m!8222746))

(assert (=> d!2343953 m!8222754))

(assert (=> d!2343953 m!8222744))

(assert (=> b!7766221 d!2343953))

(declare-fun b!7766298 () Bool)

(declare-fun e!4602043 () Bool)

(declare-fun e!4602045 () Bool)

(assert (=> b!7766298 (= e!4602043 e!4602045)))

(declare-fun c!1431374 () Bool)

(assert (=> b!7766298 (= c!1431374 ((_ is Union!20731) lt!2670887))))

(declare-fun bm!719517 () Bool)

(declare-fun call!719522 () Bool)

(declare-fun call!719523 () Bool)

(assert (=> bm!719517 (= call!719522 call!719523)))

(declare-fun b!7766299 () Bool)

(declare-fun e!4602046 () Bool)

(assert (=> b!7766299 (= e!4602046 call!719523)))

(declare-fun bm!719518 () Bool)

(declare-fun call!719524 () Bool)

(assert (=> bm!719518 (= call!719524 (validRegex!11145 (ite c!1431374 (regOne!41975 lt!2670887) (regTwo!41974 lt!2670887))))))

(declare-fun b!7766301 () Bool)

(declare-fun e!4602042 () Bool)

(assert (=> b!7766301 (= e!4602042 call!719524)))

(declare-fun b!7766302 () Bool)

(declare-fun e!4602041 () Bool)

(assert (=> b!7766302 (= e!4602041 e!4602042)))

(declare-fun res!3096113 () Bool)

(assert (=> b!7766302 (=> (not res!3096113) (not e!4602042))))

(assert (=> b!7766302 (= res!3096113 call!719522)))

(declare-fun b!7766303 () Bool)

(declare-fun e!4602044 () Bool)

(assert (=> b!7766303 (= e!4602044 call!719522)))

(declare-fun b!7766304 () Bool)

(declare-fun e!4602047 () Bool)

(assert (=> b!7766304 (= e!4602047 e!4602043)))

(declare-fun c!1431375 () Bool)

(assert (=> b!7766304 (= c!1431375 ((_ is Star!20731) lt!2670887))))

(declare-fun b!7766305 () Bool)

(declare-fun res!3096114 () Bool)

(assert (=> b!7766305 (=> (not res!3096114) (not e!4602044))))

(assert (=> b!7766305 (= res!3096114 call!719524)))

(assert (=> b!7766305 (= e!4602045 e!4602044)))

(declare-fun bm!719519 () Bool)

(assert (=> bm!719519 (= call!719523 (validRegex!11145 (ite c!1431375 (reg!21060 lt!2670887) (ite c!1431374 (regTwo!41975 lt!2670887) (regOne!41974 lt!2670887)))))))

(declare-fun b!7766306 () Bool)

(assert (=> b!7766306 (= e!4602043 e!4602046)))

(declare-fun res!3096116 () Bool)

(assert (=> b!7766306 (= res!3096116 (not (nullable!9130 (reg!21060 lt!2670887))))))

(assert (=> b!7766306 (=> (not res!3096116) (not e!4602046))))

(declare-fun d!2343957 () Bool)

(declare-fun res!3096117 () Bool)

(assert (=> d!2343957 (=> res!3096117 e!4602047)))

(assert (=> d!2343957 (= res!3096117 ((_ is ElementMatch!20731) lt!2670887))))

(assert (=> d!2343957 (= (validRegex!11145 lt!2670887) e!4602047)))

(declare-fun b!7766300 () Bool)

(declare-fun res!3096115 () Bool)

(assert (=> b!7766300 (=> res!3096115 e!4602041)))

(assert (=> b!7766300 (= res!3096115 (not ((_ is Concat!29576) lt!2670887)))))

(assert (=> b!7766300 (= e!4602045 e!4602041)))

(assert (= (and d!2343957 (not res!3096117)) b!7766304))

(assert (= (and b!7766304 c!1431375) b!7766306))

(assert (= (and b!7766304 (not c!1431375)) b!7766298))

(assert (= (and b!7766306 res!3096116) b!7766299))

(assert (= (and b!7766298 c!1431374) b!7766305))

(assert (= (and b!7766298 (not c!1431374)) b!7766300))

(assert (= (and b!7766305 res!3096114) b!7766303))

(assert (= (and b!7766300 (not res!3096115)) b!7766302))

(assert (= (and b!7766302 res!3096113) b!7766301))

(assert (= (or b!7766303 b!7766302) bm!719517))

(assert (= (or b!7766305 b!7766301) bm!719518))

(assert (= (or b!7766299 bm!719517) bm!719519))

(declare-fun m!8222760 () Bool)

(assert (=> bm!719518 m!8222760))

(declare-fun m!8222762 () Bool)

(assert (=> bm!719519 m!8222762))

(declare-fun m!8222764 () Bool)

(assert (=> b!7766306 m!8222764))

(assert (=> b!7766225 d!2343957))

(declare-fun d!2343959 () Bool)

(declare-fun isEmpty!42121 (Option!17708) Bool)

(assert (=> d!2343959 (= (isDefined!14320 (findConcatSeparation!3738 lt!2670887 lt!2670886 Nil!73448 (t!388307 s!14904) (t!388307 s!14904))) (not (isEmpty!42121 (findConcatSeparation!3738 lt!2670887 lt!2670886 Nil!73448 (t!388307 s!14904) (t!388307 s!14904)))))))

(declare-fun bs!1966041 () Bool)

(assert (= bs!1966041 d!2343959))

(assert (=> bs!1966041 m!8222738))

(declare-fun m!8222766 () Bool)

(assert (=> bs!1966041 m!8222766))

(assert (=> b!7766225 d!2343959))

(declare-fun b!7766355 () Bool)

(declare-fun e!4602077 () Option!17708)

(assert (=> b!7766355 (= e!4602077 (Some!17707 (tuple2!69829 Nil!73448 (t!388307 s!14904))))))

(declare-fun b!7766356 () Bool)

(declare-fun e!4602073 () Option!17708)

(assert (=> b!7766356 (= e!4602077 e!4602073)))

(declare-fun c!1431383 () Bool)

(assert (=> b!7766356 (= c!1431383 ((_ is Nil!73448) (t!388307 s!14904)))))

(declare-fun d!2343961 () Bool)

(declare-fun e!4602076 () Bool)

(assert (=> d!2343961 e!4602076))

(declare-fun res!3096156 () Bool)

(assert (=> d!2343961 (=> res!3096156 e!4602076)))

(declare-fun e!4602074 () Bool)

(assert (=> d!2343961 (= res!3096156 e!4602074)))

(declare-fun res!3096152 () Bool)

(assert (=> d!2343961 (=> (not res!3096152) (not e!4602074))))

(declare-fun lt!2670903 () Option!17708)

(assert (=> d!2343961 (= res!3096152 (isDefined!14320 lt!2670903))))

(assert (=> d!2343961 (= lt!2670903 e!4602077)))

(declare-fun c!1431384 () Bool)

(declare-fun e!4602075 () Bool)

(assert (=> d!2343961 (= c!1431384 e!4602075)))

(declare-fun res!3096155 () Bool)

(assert (=> d!2343961 (=> (not res!3096155) (not e!4602075))))

(assert (=> d!2343961 (= res!3096155 (matchR!10193 lt!2670887 Nil!73448))))

(assert (=> d!2343961 (validRegex!11145 lt!2670887)))

(assert (=> d!2343961 (= (findConcatSeparation!3738 lt!2670887 lt!2670886 Nil!73448 (t!388307 s!14904) (t!388307 s!14904)) lt!2670903)))

(declare-fun b!7766357 () Bool)

(assert (=> b!7766357 (= e!4602075 (matchR!10193 lt!2670886 (t!388307 s!14904)))))

(declare-fun b!7766358 () Bool)

(declare-fun res!3096153 () Bool)

(assert (=> b!7766358 (=> (not res!3096153) (not e!4602074))))

(declare-fun get!26212 (Option!17708) tuple2!69828)

(assert (=> b!7766358 (= res!3096153 (matchR!10193 lt!2670886 (_2!38217 (get!26212 lt!2670903))))))

(declare-fun b!7766359 () Bool)

(declare-fun res!3096154 () Bool)

(assert (=> b!7766359 (=> (not res!3096154) (not e!4602074))))

(assert (=> b!7766359 (= res!3096154 (matchR!10193 lt!2670887 (_1!38217 (get!26212 lt!2670903))))))

(declare-fun b!7766360 () Bool)

(assert (=> b!7766360 (= e!4602076 (not (isDefined!14320 lt!2670903)))))

(declare-fun b!7766361 () Bool)

(assert (=> b!7766361 (= e!4602073 None!17707)))

(declare-fun b!7766362 () Bool)

(declare-fun ++!17893 (List!73572 List!73572) List!73572)

(assert (=> b!7766362 (= e!4602074 (= (++!17893 (_1!38217 (get!26212 lt!2670903)) (_2!38217 (get!26212 lt!2670903))) (t!388307 s!14904)))))

(declare-fun b!7766363 () Bool)

(declare-fun lt!2670902 () Unit!168424)

(declare-fun lt!2670901 () Unit!168424)

(assert (=> b!7766363 (= lt!2670902 lt!2670901)))

(assert (=> b!7766363 (= (++!17893 (++!17893 Nil!73448 (Cons!73448 (h!79896 (t!388307 s!14904)) Nil!73448)) (t!388307 (t!388307 s!14904))) (t!388307 s!14904))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3377 (List!73572 C!41788 List!73572 List!73572) Unit!168424)

(assert (=> b!7766363 (= lt!2670901 (lemmaMoveElementToOtherListKeepsConcatEq!3377 Nil!73448 (h!79896 (t!388307 s!14904)) (t!388307 (t!388307 s!14904)) (t!388307 s!14904)))))

(assert (=> b!7766363 (= e!4602073 (findConcatSeparation!3738 lt!2670887 lt!2670886 (++!17893 Nil!73448 (Cons!73448 (h!79896 (t!388307 s!14904)) Nil!73448)) (t!388307 (t!388307 s!14904)) (t!388307 s!14904)))))

(assert (= (and d!2343961 res!3096155) b!7766357))

(assert (= (and d!2343961 c!1431384) b!7766355))

(assert (= (and d!2343961 (not c!1431384)) b!7766356))

(assert (= (and b!7766356 c!1431383) b!7766361))

(assert (= (and b!7766356 (not c!1431383)) b!7766363))

(assert (= (and d!2343961 res!3096152) b!7766359))

(assert (= (and b!7766359 res!3096154) b!7766358))

(assert (= (and b!7766358 res!3096153) b!7766362))

(assert (= (and d!2343961 (not res!3096156)) b!7766360))

(declare-fun m!8222782 () Bool)

(assert (=> b!7766357 m!8222782))

(declare-fun m!8222784 () Bool)

(assert (=> b!7766363 m!8222784))

(assert (=> b!7766363 m!8222784))

(declare-fun m!8222786 () Bool)

(assert (=> b!7766363 m!8222786))

(declare-fun m!8222788 () Bool)

(assert (=> b!7766363 m!8222788))

(assert (=> b!7766363 m!8222784))

(declare-fun m!8222790 () Bool)

(assert (=> b!7766363 m!8222790))

(declare-fun m!8222792 () Bool)

(assert (=> b!7766360 m!8222792))

(declare-fun m!8222794 () Bool)

(assert (=> b!7766358 m!8222794))

(declare-fun m!8222796 () Bool)

(assert (=> b!7766358 m!8222796))

(assert (=> b!7766359 m!8222794))

(declare-fun m!8222798 () Bool)

(assert (=> b!7766359 m!8222798))

(assert (=> b!7766362 m!8222794))

(declare-fun m!8222800 () Bool)

(assert (=> b!7766362 m!8222800))

(assert (=> d!2343961 m!8222792))

(declare-fun m!8222802 () Bool)

(assert (=> d!2343961 m!8222802))

(assert (=> d!2343961 m!8222736))

(assert (=> b!7766225 d!2343961))

(declare-fun d!2343965 () Bool)

(assert (=> d!2343965 (isDefined!14320 (findConcatSeparation!3738 lt!2670887 lt!2670886 Nil!73448 (t!388307 s!14904) (t!388307 s!14904)))))

(declare-fun lt!2670906 () Unit!168424)

(declare-fun choose!59463 (Regex!20731 Regex!20731 List!73572) Unit!168424)

(assert (=> d!2343965 (= lt!2670906 (choose!59463 lt!2670887 lt!2670886 (t!388307 s!14904)))))

(assert (=> d!2343965 (validRegex!11145 lt!2670887)))

(assert (=> d!2343965 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!328 lt!2670887 lt!2670886 (t!388307 s!14904)) lt!2670906)))

(declare-fun bs!1966042 () Bool)

(assert (= bs!1966042 d!2343965))

(assert (=> bs!1966042 m!8222738))

(assert (=> bs!1966042 m!8222738))

(assert (=> bs!1966042 m!8222740))

(declare-fun m!8222804 () Bool)

(assert (=> bs!1966042 m!8222804))

(assert (=> bs!1966042 m!8222736))

(assert (=> b!7766225 d!2343965))

(declare-fun b!7766382 () Bool)

(declare-fun e!4602094 () Bool)

(declare-fun e!4602096 () Bool)

(assert (=> b!7766382 (= e!4602094 e!4602096)))

(declare-fun c!1431389 () Bool)

(assert (=> b!7766382 (= c!1431389 ((_ is Union!20731) lt!2670886))))

(declare-fun bm!719529 () Bool)

(declare-fun call!719534 () Bool)

(declare-fun call!719535 () Bool)

(assert (=> bm!719529 (= call!719534 call!719535)))

(declare-fun b!7766383 () Bool)

(declare-fun e!4602097 () Bool)

(assert (=> b!7766383 (= e!4602097 call!719535)))

(declare-fun bm!719530 () Bool)

(declare-fun call!719536 () Bool)

(assert (=> bm!719530 (= call!719536 (validRegex!11145 (ite c!1431389 (regOne!41975 lt!2670886) (regTwo!41974 lt!2670886))))))

(declare-fun b!7766385 () Bool)

(declare-fun e!4602093 () Bool)

(assert (=> b!7766385 (= e!4602093 call!719536)))

(declare-fun b!7766386 () Bool)

(declare-fun e!4602092 () Bool)

(assert (=> b!7766386 (= e!4602092 e!4602093)))

(declare-fun res!3096167 () Bool)

(assert (=> b!7766386 (=> (not res!3096167) (not e!4602093))))

(assert (=> b!7766386 (= res!3096167 call!719534)))

(declare-fun b!7766387 () Bool)

(declare-fun e!4602095 () Bool)

(assert (=> b!7766387 (= e!4602095 call!719534)))

(declare-fun b!7766388 () Bool)

(declare-fun e!4602098 () Bool)

(assert (=> b!7766388 (= e!4602098 e!4602094)))

(declare-fun c!1431390 () Bool)

(assert (=> b!7766388 (= c!1431390 ((_ is Star!20731) lt!2670886))))

(declare-fun b!7766389 () Bool)

(declare-fun res!3096168 () Bool)

(assert (=> b!7766389 (=> (not res!3096168) (not e!4602095))))

(assert (=> b!7766389 (= res!3096168 call!719536)))

(assert (=> b!7766389 (= e!4602096 e!4602095)))

(declare-fun bm!719531 () Bool)

(assert (=> bm!719531 (= call!719535 (validRegex!11145 (ite c!1431390 (reg!21060 lt!2670886) (ite c!1431389 (regTwo!41975 lt!2670886) (regOne!41974 lt!2670886)))))))

(declare-fun b!7766390 () Bool)

(assert (=> b!7766390 (= e!4602094 e!4602097)))

(declare-fun res!3096170 () Bool)

(assert (=> b!7766390 (= res!3096170 (not (nullable!9130 (reg!21060 lt!2670886))))))

(assert (=> b!7766390 (=> (not res!3096170) (not e!4602097))))

(declare-fun d!2343967 () Bool)

(declare-fun res!3096171 () Bool)

(assert (=> d!2343967 (=> res!3096171 e!4602098)))

(assert (=> d!2343967 (= res!3096171 ((_ is ElementMatch!20731) lt!2670886))))

(assert (=> d!2343967 (= (validRegex!11145 lt!2670886) e!4602098)))

(declare-fun b!7766384 () Bool)

(declare-fun res!3096169 () Bool)

(assert (=> b!7766384 (=> res!3096169 e!4602092)))

(assert (=> b!7766384 (= res!3096169 (not ((_ is Concat!29576) lt!2670886)))))

(assert (=> b!7766384 (= e!4602096 e!4602092)))

(assert (= (and d!2343967 (not res!3096171)) b!7766388))

(assert (= (and b!7766388 c!1431390) b!7766390))

(assert (= (and b!7766388 (not c!1431390)) b!7766382))

(assert (= (and b!7766390 res!3096170) b!7766383))

(assert (= (and b!7766382 c!1431389) b!7766389))

(assert (= (and b!7766382 (not c!1431389)) b!7766384))

(assert (= (and b!7766389 res!3096168) b!7766387))

(assert (= (and b!7766384 (not res!3096169)) b!7766386))

(assert (= (and b!7766386 res!3096167) b!7766385))

(assert (= (or b!7766387 b!7766386) bm!719529))

(assert (= (or b!7766389 b!7766385) bm!719530))

(assert (= (or b!7766383 bm!719529) bm!719531))

(declare-fun m!8222806 () Bool)

(assert (=> bm!719530 m!8222806))

(declare-fun m!8222808 () Bool)

(assert (=> bm!719531 m!8222808))

(declare-fun m!8222810 () Bool)

(assert (=> b!7766390 m!8222810))

(assert (=> start!739760 d!2343967))

(declare-fun b!7766429 () Bool)

(declare-fun e!4602123 () Regex!20731)

(assert (=> b!7766429 (= e!4602123 (ite (= (h!79896 s!14904) (c!1431354 lt!2670886)) EmptyExpr!20731 EmptyLang!20731))))

(declare-fun d!2343969 () Bool)

(declare-fun lt!2670909 () Regex!20731)

(assert (=> d!2343969 (validRegex!11145 lt!2670909)))

(declare-fun e!4602126 () Regex!20731)

(assert (=> d!2343969 (= lt!2670909 e!4602126)))

(declare-fun c!1431408 () Bool)

(assert (=> d!2343969 (= c!1431408 (or ((_ is EmptyExpr!20731) lt!2670886) ((_ is EmptyLang!20731) lt!2670886)))))

(assert (=> d!2343969 (validRegex!11145 lt!2670886)))

(assert (=> d!2343969 (= (derivativeStep!6076 lt!2670886 (h!79896 s!14904)) lt!2670909)))

(declare-fun bm!719546 () Bool)

(declare-fun call!719552 () Regex!20731)

(declare-fun call!719553 () Regex!20731)

(assert (=> bm!719546 (= call!719552 call!719553)))

(declare-fun c!1431409 () Bool)

(declare-fun bm!719547 () Bool)

(declare-fun call!719554 () Regex!20731)

(assert (=> bm!719547 (= call!719554 (derivativeStep!6076 (ite c!1431409 (regTwo!41975 lt!2670886) (regTwo!41974 lt!2670886)) (h!79896 s!14904)))))

(declare-fun b!7766430 () Bool)

(assert (=> b!7766430 (= e!4602126 e!4602123)))

(declare-fun c!1431405 () Bool)

(assert (=> b!7766430 (= c!1431405 ((_ is ElementMatch!20731) lt!2670886))))

(declare-fun b!7766431 () Bool)

(assert (=> b!7766431 (= e!4602126 EmptyLang!20731)))

(declare-fun b!7766432 () Bool)

(declare-fun c!1431406 () Bool)

(assert (=> b!7766432 (= c!1431406 (nullable!9130 (regOne!41974 lt!2670886)))))

(declare-fun e!4602124 () Regex!20731)

(declare-fun e!4602125 () Regex!20731)

(assert (=> b!7766432 (= e!4602124 e!4602125)))

(declare-fun bm!719548 () Bool)

(declare-fun call!719551 () Regex!20731)

(assert (=> bm!719548 (= call!719553 call!719551)))

(declare-fun b!7766433 () Bool)

(assert (=> b!7766433 (= e!4602125 (Union!20731 (Concat!29576 call!719552 (regTwo!41974 lt!2670886)) call!719554))))

(declare-fun b!7766434 () Bool)

(assert (=> b!7766434 (= e!4602124 (Concat!29576 call!719553 lt!2670886))))

(declare-fun b!7766435 () Bool)

(declare-fun e!4602127 () Regex!20731)

(assert (=> b!7766435 (= e!4602127 (Union!20731 call!719551 call!719554))))

(declare-fun b!7766436 () Bool)

(assert (=> b!7766436 (= e!4602127 e!4602124)))

(declare-fun c!1431407 () Bool)

(assert (=> b!7766436 (= c!1431407 ((_ is Star!20731) lt!2670886))))

(declare-fun b!7766437 () Bool)

(assert (=> b!7766437 (= e!4602125 (Union!20731 (Concat!29576 call!719552 (regTwo!41974 lt!2670886)) EmptyLang!20731))))

(declare-fun bm!719549 () Bool)

(assert (=> bm!719549 (= call!719551 (derivativeStep!6076 (ite c!1431409 (regOne!41975 lt!2670886) (ite c!1431407 (reg!21060 lt!2670886) (regOne!41974 lt!2670886))) (h!79896 s!14904)))))

(declare-fun b!7766438 () Bool)

(assert (=> b!7766438 (= c!1431409 ((_ is Union!20731) lt!2670886))))

(assert (=> b!7766438 (= e!4602123 e!4602127)))

(assert (= (and d!2343969 c!1431408) b!7766431))

(assert (= (and d!2343969 (not c!1431408)) b!7766430))

(assert (= (and b!7766430 c!1431405) b!7766429))

(assert (= (and b!7766430 (not c!1431405)) b!7766438))

(assert (= (and b!7766438 c!1431409) b!7766435))

(assert (= (and b!7766438 (not c!1431409)) b!7766436))

(assert (= (and b!7766436 c!1431407) b!7766434))

(assert (= (and b!7766436 (not c!1431407)) b!7766432))

(assert (= (and b!7766432 c!1431406) b!7766433))

(assert (= (and b!7766432 (not c!1431406)) b!7766437))

(assert (= (or b!7766433 b!7766437) bm!719546))

(assert (= (or b!7766434 bm!719546) bm!719548))

(assert (= (or b!7766435 b!7766433) bm!719547))

(assert (= (or b!7766435 bm!719548) bm!719549))

(declare-fun m!8222826 () Bool)

(assert (=> d!2343969 m!8222826))

(assert (=> d!2343969 m!8222744))

(declare-fun m!8222828 () Bool)

(assert (=> bm!719547 m!8222828))

(declare-fun m!8222830 () Bool)

(assert (=> b!7766432 m!8222830))

(declare-fun m!8222832 () Bool)

(assert (=> bm!719549 m!8222832))

(assert (=> b!7766224 d!2343969))

(declare-fun b!7766439 () Bool)

(declare-fun e!4602128 () Regex!20731)

(assert (=> b!7766439 (= e!4602128 (ite (= (h!79896 s!14904) (c!1431354 r!25924)) EmptyExpr!20731 EmptyLang!20731))))

(declare-fun d!2343977 () Bool)

(declare-fun lt!2670910 () Regex!20731)

(assert (=> d!2343977 (validRegex!11145 lt!2670910)))

(declare-fun e!4602131 () Regex!20731)

(assert (=> d!2343977 (= lt!2670910 e!4602131)))

(declare-fun c!1431413 () Bool)

(assert (=> d!2343977 (= c!1431413 (or ((_ is EmptyExpr!20731) r!25924) ((_ is EmptyLang!20731) r!25924)))))

(assert (=> d!2343977 (validRegex!11145 r!25924)))

(assert (=> d!2343977 (= (derivativeStep!6076 r!25924 (h!79896 s!14904)) lt!2670910)))

(declare-fun bm!719550 () Bool)

(declare-fun call!719556 () Regex!20731)

(declare-fun call!719557 () Regex!20731)

(assert (=> bm!719550 (= call!719556 call!719557)))

(declare-fun call!719558 () Regex!20731)

(declare-fun c!1431414 () Bool)

(declare-fun bm!719551 () Bool)

(assert (=> bm!719551 (= call!719558 (derivativeStep!6076 (ite c!1431414 (regTwo!41975 r!25924) (regTwo!41974 r!25924)) (h!79896 s!14904)))))

(declare-fun b!7766440 () Bool)

(assert (=> b!7766440 (= e!4602131 e!4602128)))

(declare-fun c!1431410 () Bool)

(assert (=> b!7766440 (= c!1431410 ((_ is ElementMatch!20731) r!25924))))

(declare-fun b!7766441 () Bool)

(assert (=> b!7766441 (= e!4602131 EmptyLang!20731)))

(declare-fun b!7766442 () Bool)

(declare-fun c!1431411 () Bool)

(assert (=> b!7766442 (= c!1431411 (nullable!9130 (regOne!41974 r!25924)))))

(declare-fun e!4602129 () Regex!20731)

(declare-fun e!4602130 () Regex!20731)

(assert (=> b!7766442 (= e!4602129 e!4602130)))

(declare-fun bm!719552 () Bool)

(declare-fun call!719555 () Regex!20731)

(assert (=> bm!719552 (= call!719557 call!719555)))

(declare-fun b!7766443 () Bool)

(assert (=> b!7766443 (= e!4602130 (Union!20731 (Concat!29576 call!719556 (regTwo!41974 r!25924)) call!719558))))

(declare-fun b!7766444 () Bool)

(assert (=> b!7766444 (= e!4602129 (Concat!29576 call!719557 r!25924))))

(declare-fun b!7766445 () Bool)

(declare-fun e!4602132 () Regex!20731)

(assert (=> b!7766445 (= e!4602132 (Union!20731 call!719555 call!719558))))

(declare-fun b!7766446 () Bool)

(assert (=> b!7766446 (= e!4602132 e!4602129)))

(declare-fun c!1431412 () Bool)

(assert (=> b!7766446 (= c!1431412 ((_ is Star!20731) r!25924))))

(declare-fun b!7766447 () Bool)

(assert (=> b!7766447 (= e!4602130 (Union!20731 (Concat!29576 call!719556 (regTwo!41974 r!25924)) EmptyLang!20731))))

(declare-fun bm!719553 () Bool)

(assert (=> bm!719553 (= call!719555 (derivativeStep!6076 (ite c!1431414 (regOne!41975 r!25924) (ite c!1431412 (reg!21060 r!25924) (regOne!41974 r!25924))) (h!79896 s!14904)))))

(declare-fun b!7766448 () Bool)

(assert (=> b!7766448 (= c!1431414 ((_ is Union!20731) r!25924))))

(assert (=> b!7766448 (= e!4602128 e!4602132)))

(assert (= (and d!2343977 c!1431413) b!7766441))

(assert (= (and d!2343977 (not c!1431413)) b!7766440))

(assert (= (and b!7766440 c!1431410) b!7766439))

(assert (= (and b!7766440 (not c!1431410)) b!7766448))

(assert (= (and b!7766448 c!1431414) b!7766445))

(assert (= (and b!7766448 (not c!1431414)) b!7766446))

(assert (= (and b!7766446 c!1431412) b!7766444))

(assert (= (and b!7766446 (not c!1431412)) b!7766442))

(assert (= (and b!7766442 c!1431411) b!7766443))

(assert (= (and b!7766442 (not c!1431411)) b!7766447))

(assert (= (or b!7766443 b!7766447) bm!719550))

(assert (= (or b!7766444 bm!719550) bm!719552))

(assert (= (or b!7766445 b!7766443) bm!719551))

(assert (= (or b!7766445 bm!719552) bm!719553))

(declare-fun m!8222834 () Bool)

(assert (=> d!2343977 m!8222834))

(declare-fun m!8222836 () Bool)

(assert (=> d!2343977 m!8222836))

(declare-fun m!8222838 () Bool)

(assert (=> bm!719551 m!8222838))

(declare-fun m!8222840 () Bool)

(assert (=> b!7766442 m!8222840))

(declare-fun m!8222842 () Bool)

(assert (=> bm!719553 m!8222842))

(assert (=> b!7766224 d!2343977))

(declare-fun b!7766453 () Bool)

(declare-fun e!4602135 () Bool)

(declare-fun tp!2281436 () Bool)

(assert (=> b!7766453 (= e!4602135 (and tp_is_empty!51817 tp!2281436))))

(assert (=> b!7766220 (= tp!2281431 e!4602135)))

(assert (= (and b!7766220 ((_ is Cons!73448) (t!388307 s!14904))) b!7766453))

(declare-fun e!4602138 () Bool)

(assert (=> b!7766223 (= tp!2281432 e!4602138)))

(declare-fun b!7766464 () Bool)

(assert (=> b!7766464 (= e!4602138 tp_is_empty!51817)))

(declare-fun b!7766467 () Bool)

(declare-fun tp!2281448 () Bool)

(declare-fun tp!2281450 () Bool)

(assert (=> b!7766467 (= e!4602138 (and tp!2281448 tp!2281450))))

(declare-fun b!7766465 () Bool)

(declare-fun tp!2281447 () Bool)

(declare-fun tp!2281449 () Bool)

(assert (=> b!7766465 (= e!4602138 (and tp!2281447 tp!2281449))))

(declare-fun b!7766466 () Bool)

(declare-fun tp!2281451 () Bool)

(assert (=> b!7766466 (= e!4602138 tp!2281451)))

(assert (= (and b!7766223 ((_ is ElementMatch!20731) (regOne!41974 r!25924))) b!7766464))

(assert (= (and b!7766223 ((_ is Concat!29576) (regOne!41974 r!25924))) b!7766465))

(assert (= (and b!7766223 ((_ is Star!20731) (regOne!41974 r!25924))) b!7766466))

(assert (= (and b!7766223 ((_ is Union!20731) (regOne!41974 r!25924))) b!7766467))

(declare-fun e!4602139 () Bool)

(assert (=> b!7766223 (= tp!2281430 e!4602139)))

(declare-fun b!7766468 () Bool)

(assert (=> b!7766468 (= e!4602139 tp_is_empty!51817)))

(declare-fun b!7766471 () Bool)

(declare-fun tp!2281453 () Bool)

(declare-fun tp!2281455 () Bool)

(assert (=> b!7766471 (= e!4602139 (and tp!2281453 tp!2281455))))

(declare-fun b!7766469 () Bool)

(declare-fun tp!2281452 () Bool)

(declare-fun tp!2281454 () Bool)

(assert (=> b!7766469 (= e!4602139 (and tp!2281452 tp!2281454))))

(declare-fun b!7766470 () Bool)

(declare-fun tp!2281456 () Bool)

(assert (=> b!7766470 (= e!4602139 tp!2281456)))

(assert (= (and b!7766223 ((_ is ElementMatch!20731) (regTwo!41974 r!25924))) b!7766468))

(assert (= (and b!7766223 ((_ is Concat!29576) (regTwo!41974 r!25924))) b!7766469))

(assert (= (and b!7766223 ((_ is Star!20731) (regTwo!41974 r!25924))) b!7766470))

(assert (= (and b!7766223 ((_ is Union!20731) (regTwo!41974 r!25924))) b!7766471))

(declare-fun e!4602140 () Bool)

(assert (=> b!7766217 (= tp!2281429 e!4602140)))

(declare-fun b!7766472 () Bool)

(assert (=> b!7766472 (= e!4602140 tp_is_empty!51817)))

(declare-fun b!7766475 () Bool)

(declare-fun tp!2281458 () Bool)

(declare-fun tp!2281460 () Bool)

(assert (=> b!7766475 (= e!4602140 (and tp!2281458 tp!2281460))))

(declare-fun b!7766473 () Bool)

(declare-fun tp!2281457 () Bool)

(declare-fun tp!2281459 () Bool)

(assert (=> b!7766473 (= e!4602140 (and tp!2281457 tp!2281459))))

(declare-fun b!7766474 () Bool)

(declare-fun tp!2281461 () Bool)

(assert (=> b!7766474 (= e!4602140 tp!2281461)))

(assert (= (and b!7766217 ((_ is ElementMatch!20731) (reg!21060 r!25924))) b!7766472))

(assert (= (and b!7766217 ((_ is Concat!29576) (reg!21060 r!25924))) b!7766473))

(assert (= (and b!7766217 ((_ is Star!20731) (reg!21060 r!25924))) b!7766474))

(assert (= (and b!7766217 ((_ is Union!20731) (reg!21060 r!25924))) b!7766475))

(declare-fun e!4602141 () Bool)

(assert (=> b!7766222 (= tp!2281428 e!4602141)))

(declare-fun b!7766476 () Bool)

(assert (=> b!7766476 (= e!4602141 tp_is_empty!51817)))

(declare-fun b!7766479 () Bool)

(declare-fun tp!2281463 () Bool)

(declare-fun tp!2281465 () Bool)

(assert (=> b!7766479 (= e!4602141 (and tp!2281463 tp!2281465))))

(declare-fun b!7766477 () Bool)

(declare-fun tp!2281462 () Bool)

(declare-fun tp!2281464 () Bool)

(assert (=> b!7766477 (= e!4602141 (and tp!2281462 tp!2281464))))

(declare-fun b!7766478 () Bool)

(declare-fun tp!2281466 () Bool)

(assert (=> b!7766478 (= e!4602141 tp!2281466)))

(assert (= (and b!7766222 ((_ is ElementMatch!20731) (regOne!41975 r!25924))) b!7766476))

(assert (= (and b!7766222 ((_ is Concat!29576) (regOne!41975 r!25924))) b!7766477))

(assert (= (and b!7766222 ((_ is Star!20731) (regOne!41975 r!25924))) b!7766478))

(assert (= (and b!7766222 ((_ is Union!20731) (regOne!41975 r!25924))) b!7766479))

(declare-fun e!4602142 () Bool)

(assert (=> b!7766222 (= tp!2281433 e!4602142)))

(declare-fun b!7766480 () Bool)

(assert (=> b!7766480 (= e!4602142 tp_is_empty!51817)))

(declare-fun b!7766483 () Bool)

(declare-fun tp!2281468 () Bool)

(declare-fun tp!2281470 () Bool)

(assert (=> b!7766483 (= e!4602142 (and tp!2281468 tp!2281470))))

(declare-fun b!7766481 () Bool)

(declare-fun tp!2281467 () Bool)

(declare-fun tp!2281469 () Bool)

(assert (=> b!7766481 (= e!4602142 (and tp!2281467 tp!2281469))))

(declare-fun b!7766482 () Bool)

(declare-fun tp!2281471 () Bool)

(assert (=> b!7766482 (= e!4602142 tp!2281471)))

(assert (= (and b!7766222 ((_ is ElementMatch!20731) (regTwo!41975 r!25924))) b!7766480))

(assert (= (and b!7766222 ((_ is Concat!29576) (regTwo!41975 r!25924))) b!7766481))

(assert (= (and b!7766222 ((_ is Star!20731) (regTwo!41975 r!25924))) b!7766482))

(assert (= (and b!7766222 ((_ is Union!20731) (regTwo!41975 r!25924))) b!7766483))

(check-sat (not b!7766266) (not b!7766265) (not b!7766481) (not bm!719551) (not b!7766482) (not b!7766390) (not bm!719519) (not b!7766357) (not b!7766477) (not b!7766466) (not d!2343961) (not b!7766259) (not b!7766475) (not d!2343977) (not bm!719530) (not b!7766467) (not bm!719510) (not b!7766474) (not b!7766465) (not b!7766473) (not b!7766360) (not b!7766258) (not bm!719531) (not b!7766478) (not bm!719518) (not b!7766469) (not b!7766483) (not b!7766359) (not b!7766358) (not b!7766257) (not b!7766442) (not b!7766471) (not b!7766479) (not b!7766362) (not d!2343969) (not bm!719553) tp_is_empty!51817 (not d!2343965) (not b!7766262) (not b!7766470) (not d!2343959) (not b!7766432) (not d!2343953) (not b!7766363) (not bm!719547) (not b!7766306) (not b!7766453) (not bm!719549))
(check-sat)
