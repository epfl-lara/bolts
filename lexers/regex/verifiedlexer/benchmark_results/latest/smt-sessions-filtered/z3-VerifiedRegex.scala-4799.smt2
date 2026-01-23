; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!246928 () Bool)

(assert start!246928)

(declare-fun b!2543309 () Bool)

(declare-fun e!1608030 () Bool)

(declare-datatypes ((C!15304 0))(
  ( (C!15305 (val!9304 Int)) )
))
(declare-datatypes ((Regex!7573 0))(
  ( (ElementMatch!7573 (c!407237 C!15304)) (Concat!12269 (regOne!15658 Regex!7573) (regTwo!15658 Regex!7573)) (EmptyExpr!7573) (Star!7573 (reg!7902 Regex!7573)) (EmptyLang!7573) (Union!7573 (regOne!15659 Regex!7573) (regTwo!15659 Regex!7573)) )
))
(declare-fun r!27340 () Regex!7573)

(declare-fun RegexPrimitiveSize!116 (Regex!7573) Int)

(assert (=> b!2543309 (= e!1608030 (>= (RegexPrimitiveSize!116 (reg!7902 r!27340)) (RegexPrimitiveSize!116 r!27340)))))

(declare-fun b!2543310 () Bool)

(declare-fun e!1608033 () Bool)

(declare-fun tp_is_empty!13001 () Bool)

(assert (=> b!2543310 (= e!1608033 tp_is_empty!13001)))

(declare-fun b!2543311 () Bool)

(declare-fun e!1608031 () Bool)

(assert (=> b!2543311 (= e!1608031 e!1608030)))

(declare-fun res!1071847 () Bool)

(assert (=> b!2543311 (=> (not res!1071847) (not e!1608030))))

(declare-fun lt!902207 () Regex!7573)

(declare-fun lt!902208 () Regex!7573)

(assert (=> b!2543311 (= res!1071847 (= lt!902207 (Concat!12269 lt!902208 (Star!7573 (reg!7902 r!27340)))))))

(declare-fun c!14016 () C!15304)

(declare-fun derivativeStep!2142 (Regex!7573 C!15304) Regex!7573)

(assert (=> b!2543311 (= lt!902208 (derivativeStep!2142 (reg!7902 r!27340) c!14016))))

(declare-fun b!2543312 () Bool)

(declare-fun tp!812067 () Bool)

(declare-fun tp!812068 () Bool)

(assert (=> b!2543312 (= e!1608033 (and tp!812067 tp!812068))))

(declare-fun b!2543313 () Bool)

(declare-fun res!1071846 () Bool)

(assert (=> b!2543313 (=> (not res!1071846) (not e!1608030))))

(declare-fun validRegex!3199 (Regex!7573) Bool)

(assert (=> b!2543313 (= res!1071846 (validRegex!3199 (reg!7902 r!27340)))))

(declare-fun b!2543314 () Bool)

(declare-fun res!1071845 () Bool)

(assert (=> b!2543314 (=> (not res!1071845) (not e!1608030))))

(declare-datatypes ((List!29638 0))(
  ( (Nil!29538) (Cons!29538 (h!34958 C!15304) (t!211337 List!29638)) )
))
(declare-fun tl!4068 () List!29638)

(declare-fun nullable!2490 (Regex!7573) Bool)

(declare-fun derivative!268 (Regex!7573 List!29638) Regex!7573)

(assert (=> b!2543314 (= res!1071845 (nullable!2490 (derivative!268 lt!902208 tl!4068)))))

(declare-fun b!2543308 () Bool)

(declare-fun res!1071849 () Bool)

(assert (=> b!2543308 (=> (not res!1071849) (not e!1608031))))

(get-info :version)

(assert (=> b!2543308 (= res!1071849 (and (not ((_ is EmptyExpr!7573) r!27340)) (not ((_ is EmptyLang!7573) r!27340)) (not ((_ is ElementMatch!7573) r!27340)) (not ((_ is Union!7573) r!27340)) ((_ is Star!7573) r!27340)))))

(declare-fun res!1071850 () Bool)

(declare-fun e!1608032 () Bool)

(assert (=> start!246928 (=> (not res!1071850) (not e!1608032))))

(assert (=> start!246928 (= res!1071850 (validRegex!3199 r!27340))))

(assert (=> start!246928 e!1608032))

(assert (=> start!246928 e!1608033))

(assert (=> start!246928 tp_is_empty!13001))

(declare-fun e!1608034 () Bool)

(assert (=> start!246928 e!1608034))

(declare-fun b!2543315 () Bool)

(declare-fun tp!812065 () Bool)

(assert (=> b!2543315 (= e!1608034 (and tp_is_empty!13001 tp!812065))))

(declare-fun b!2543316 () Bool)

(declare-fun tp!812069 () Bool)

(assert (=> b!2543316 (= e!1608033 tp!812069)))

(declare-fun b!2543317 () Bool)

(assert (=> b!2543317 (= e!1608032 e!1608031)))

(declare-fun res!1071848 () Bool)

(assert (=> b!2543317 (=> (not res!1071848) (not e!1608031))))

(assert (=> b!2543317 (= res!1071848 (nullable!2490 (derivative!268 lt!902207 tl!4068)))))

(assert (=> b!2543317 (= lt!902207 (derivativeStep!2142 r!27340 c!14016))))

(declare-fun b!2543318 () Bool)

(declare-fun tp!812070 () Bool)

(declare-fun tp!812066 () Bool)

(assert (=> b!2543318 (= e!1608033 (and tp!812070 tp!812066))))

(assert (= (and start!246928 res!1071850) b!2543317))

(assert (= (and b!2543317 res!1071848) b!2543308))

(assert (= (and b!2543308 res!1071849) b!2543311))

(assert (= (and b!2543311 res!1071847) b!2543314))

(assert (= (and b!2543314 res!1071845) b!2543313))

(assert (= (and b!2543313 res!1071846) b!2543309))

(assert (= (and start!246928 ((_ is ElementMatch!7573) r!27340)) b!2543310))

(assert (= (and start!246928 ((_ is Concat!12269) r!27340)) b!2543312))

(assert (= (and start!246928 ((_ is Star!7573) r!27340)) b!2543316))

(assert (= (and start!246928 ((_ is Union!7573) r!27340)) b!2543318))

(assert (= (and start!246928 ((_ is Cons!29538) tl!4068)) b!2543315))

(declare-fun m!2889369 () Bool)

(assert (=> b!2543317 m!2889369))

(assert (=> b!2543317 m!2889369))

(declare-fun m!2889371 () Bool)

(assert (=> b!2543317 m!2889371))

(declare-fun m!2889373 () Bool)

(assert (=> b!2543317 m!2889373))

(declare-fun m!2889375 () Bool)

(assert (=> b!2543309 m!2889375))

(declare-fun m!2889377 () Bool)

(assert (=> b!2543309 m!2889377))

(declare-fun m!2889379 () Bool)

(assert (=> start!246928 m!2889379))

(declare-fun m!2889381 () Bool)

(assert (=> b!2543311 m!2889381))

(declare-fun m!2889383 () Bool)

(assert (=> b!2543314 m!2889383))

(assert (=> b!2543314 m!2889383))

(declare-fun m!2889385 () Bool)

(assert (=> b!2543314 m!2889385))

(declare-fun m!2889387 () Bool)

(assert (=> b!2543313 m!2889387))

(check-sat (not b!2543315) (not b!2543317) tp_is_empty!13001 (not start!246928) (not b!2543313) (not b!2543314) (not b!2543312) (not b!2543316) (not b!2543311) (not b!2543318) (not b!2543309))
(check-sat)
(get-model)

(declare-fun d!722072 () Bool)

(declare-fun res!1071863 () Bool)

(declare-fun e!1608054 () Bool)

(assert (=> d!722072 (=> res!1071863 e!1608054)))

(assert (=> d!722072 (= res!1071863 ((_ is ElementMatch!7573) (reg!7902 r!27340)))))

(assert (=> d!722072 (= (validRegex!3199 (reg!7902 r!27340)) e!1608054)))

(declare-fun b!2543337 () Bool)

(declare-fun e!1608049 () Bool)

(declare-fun e!1608051 () Bool)

(assert (=> b!2543337 (= e!1608049 e!1608051)))

(declare-fun res!1071864 () Bool)

(assert (=> b!2543337 (= res!1071864 (not (nullable!2490 (reg!7902 (reg!7902 r!27340)))))))

(assert (=> b!2543337 (=> (not res!1071864) (not e!1608051))))

(declare-fun bm!161109 () Bool)

(declare-fun call!161115 () Bool)

(declare-fun c!407242 () Bool)

(assert (=> bm!161109 (= call!161115 (validRegex!3199 (ite c!407242 (regOne!15659 (reg!7902 r!27340)) (regTwo!15658 (reg!7902 r!27340)))))))

(declare-fun b!2543338 () Bool)

(assert (=> b!2543338 (= e!1608054 e!1608049)))

(declare-fun c!407243 () Bool)

(assert (=> b!2543338 (= c!407243 ((_ is Star!7573) (reg!7902 r!27340)))))

(declare-fun b!2543339 () Bool)

(declare-fun e!1608055 () Bool)

(assert (=> b!2543339 (= e!1608049 e!1608055)))

(assert (=> b!2543339 (= c!407242 ((_ is Union!7573) (reg!7902 r!27340)))))

(declare-fun b!2543340 () Bool)

(declare-fun res!1071862 () Bool)

(declare-fun e!1608052 () Bool)

(assert (=> b!2543340 (=> (not res!1071862) (not e!1608052))))

(assert (=> b!2543340 (= res!1071862 call!161115)))

(assert (=> b!2543340 (= e!1608055 e!1608052)))

(declare-fun bm!161110 () Bool)

(declare-fun call!161116 () Bool)

(declare-fun call!161114 () Bool)

(assert (=> bm!161110 (= call!161116 call!161114)))

(declare-fun b!2543341 () Bool)

(declare-fun e!1608053 () Bool)

(assert (=> b!2543341 (= e!1608053 call!161115)))

(declare-fun b!2543342 () Bool)

(assert (=> b!2543342 (= e!1608051 call!161114)))

(declare-fun b!2543343 () Bool)

(declare-fun e!1608050 () Bool)

(assert (=> b!2543343 (= e!1608050 e!1608053)))

(declare-fun res!1071861 () Bool)

(assert (=> b!2543343 (=> (not res!1071861) (not e!1608053))))

(assert (=> b!2543343 (= res!1071861 call!161116)))

(declare-fun b!2543344 () Bool)

(assert (=> b!2543344 (= e!1608052 call!161116)))

(declare-fun bm!161111 () Bool)

(assert (=> bm!161111 (= call!161114 (validRegex!3199 (ite c!407243 (reg!7902 (reg!7902 r!27340)) (ite c!407242 (regTwo!15659 (reg!7902 r!27340)) (regOne!15658 (reg!7902 r!27340))))))))

(declare-fun b!2543345 () Bool)

(declare-fun res!1071865 () Bool)

(assert (=> b!2543345 (=> res!1071865 e!1608050)))

(assert (=> b!2543345 (= res!1071865 (not ((_ is Concat!12269) (reg!7902 r!27340))))))

(assert (=> b!2543345 (= e!1608055 e!1608050)))

(assert (= (and d!722072 (not res!1071863)) b!2543338))

(assert (= (and b!2543338 c!407243) b!2543337))

(assert (= (and b!2543338 (not c!407243)) b!2543339))

(assert (= (and b!2543337 res!1071864) b!2543342))

(assert (= (and b!2543339 c!407242) b!2543340))

(assert (= (and b!2543339 (not c!407242)) b!2543345))

(assert (= (and b!2543340 res!1071862) b!2543344))

(assert (= (and b!2543345 (not res!1071865)) b!2543343))

(assert (= (and b!2543343 res!1071861) b!2543341))

(assert (= (or b!2543340 b!2543341) bm!161109))

(assert (= (or b!2543344 b!2543343) bm!161110))

(assert (= (or b!2543342 bm!161110) bm!161111))

(declare-fun m!2889389 () Bool)

(assert (=> b!2543337 m!2889389))

(declare-fun m!2889391 () Bool)

(assert (=> bm!161109 m!2889391))

(declare-fun m!2889393 () Bool)

(assert (=> bm!161111 m!2889393))

(assert (=> b!2543313 d!722072))

(declare-fun d!722076 () Bool)

(declare-fun nullableFct!718 (Regex!7573) Bool)

(assert (=> d!722076 (= (nullable!2490 (derivative!268 lt!902208 tl!4068)) (nullableFct!718 (derivative!268 lt!902208 tl!4068)))))

(declare-fun bs!469454 () Bool)

(assert (= bs!469454 d!722076))

(assert (=> bs!469454 m!2889383))

(declare-fun m!2889395 () Bool)

(assert (=> bs!469454 m!2889395))

(assert (=> b!2543314 d!722076))

(declare-fun d!722078 () Bool)

(declare-fun lt!902213 () Regex!7573)

(assert (=> d!722078 (validRegex!3199 lt!902213)))

(declare-fun e!1608068 () Regex!7573)

(assert (=> d!722078 (= lt!902213 e!1608068)))

(declare-fun c!407256 () Bool)

(assert (=> d!722078 (= c!407256 ((_ is Cons!29538) tl!4068))))

(assert (=> d!722078 (validRegex!3199 lt!902208)))

(assert (=> d!722078 (= (derivative!268 lt!902208 tl!4068) lt!902213)))

(declare-fun b!2543370 () Bool)

(assert (=> b!2543370 (= e!1608068 (derivative!268 (derivativeStep!2142 lt!902208 (h!34958 tl!4068)) (t!211337 tl!4068)))))

(declare-fun b!2543371 () Bool)

(assert (=> b!2543371 (= e!1608068 lt!902208)))

(assert (= (and d!722078 c!407256) b!2543370))

(assert (= (and d!722078 (not c!407256)) b!2543371))

(declare-fun m!2889397 () Bool)

(assert (=> d!722078 m!2889397))

(declare-fun m!2889399 () Bool)

(assert (=> d!722078 m!2889399))

(declare-fun m!2889401 () Bool)

(assert (=> b!2543370 m!2889401))

(assert (=> b!2543370 m!2889401))

(declare-fun m!2889403 () Bool)

(assert (=> b!2543370 m!2889403))

(assert (=> b!2543314 d!722078))

(declare-fun d!722080 () Bool)

(assert (=> d!722080 (= (nullable!2490 (derivative!268 lt!902207 tl!4068)) (nullableFct!718 (derivative!268 lt!902207 tl!4068)))))

(declare-fun bs!469455 () Bool)

(assert (= bs!469455 d!722080))

(assert (=> bs!469455 m!2889369))

(declare-fun m!2889405 () Bool)

(assert (=> bs!469455 m!2889405))

(assert (=> b!2543317 d!722080))

(declare-fun d!722082 () Bool)

(declare-fun lt!902214 () Regex!7573)

(assert (=> d!722082 (validRegex!3199 lt!902214)))

(declare-fun e!1608069 () Regex!7573)

(assert (=> d!722082 (= lt!902214 e!1608069)))

(declare-fun c!407257 () Bool)

(assert (=> d!722082 (= c!407257 ((_ is Cons!29538) tl!4068))))

(assert (=> d!722082 (validRegex!3199 lt!902207)))

(assert (=> d!722082 (= (derivative!268 lt!902207 tl!4068) lt!902214)))

(declare-fun b!2543372 () Bool)

(assert (=> b!2543372 (= e!1608069 (derivative!268 (derivativeStep!2142 lt!902207 (h!34958 tl!4068)) (t!211337 tl!4068)))))

(declare-fun b!2543373 () Bool)

(assert (=> b!2543373 (= e!1608069 lt!902207)))

(assert (= (and d!722082 c!407257) b!2543372))

(assert (= (and d!722082 (not c!407257)) b!2543373))

(declare-fun m!2889407 () Bool)

(assert (=> d!722082 m!2889407))

(declare-fun m!2889409 () Bool)

(assert (=> d!722082 m!2889409))

(declare-fun m!2889411 () Bool)

(assert (=> b!2543372 m!2889411))

(assert (=> b!2543372 m!2889411))

(declare-fun m!2889413 () Bool)

(assert (=> b!2543372 m!2889413))

(assert (=> b!2543317 d!722082))

(declare-fun bm!161136 () Bool)

(declare-fun call!161141 () Regex!7573)

(declare-fun call!161142 () Regex!7573)

(assert (=> bm!161136 (= call!161141 call!161142)))

(declare-fun b!2543429 () Bool)

(declare-fun e!1608102 () Regex!7573)

(declare-fun e!1608104 () Regex!7573)

(assert (=> b!2543429 (= e!1608102 e!1608104)))

(declare-fun c!407280 () Bool)

(assert (=> b!2543429 (= c!407280 ((_ is Star!7573) r!27340))))

(declare-fun bm!161137 () Bool)

(declare-fun call!161144 () Regex!7573)

(declare-fun c!407282 () Bool)

(assert (=> bm!161137 (= call!161144 (derivativeStep!2142 (ite c!407282 (regTwo!15659 r!27340) (regTwo!15658 r!27340)) c!14016))))

(declare-fun b!2543430 () Bool)

(declare-fun e!1608106 () Regex!7573)

(assert (=> b!2543430 (= e!1608106 (Union!7573 (Concat!12269 call!161141 (regTwo!15658 r!27340)) call!161144))))

(declare-fun b!2543431 () Bool)

(declare-fun c!407283 () Bool)

(assert (=> b!2543431 (= c!407283 (nullable!2490 (regOne!15658 r!27340)))))

(assert (=> b!2543431 (= e!1608104 e!1608106)))

(declare-fun b!2543432 () Bool)

(declare-fun e!1608103 () Regex!7573)

(assert (=> b!2543432 (= e!1608103 EmptyLang!7573)))

(declare-fun bm!161138 () Bool)

(declare-fun call!161143 () Regex!7573)

(assert (=> bm!161138 (= call!161143 (derivativeStep!2142 (ite c!407282 (regOne!15659 r!27340) (ite c!407280 (reg!7902 r!27340) (regOne!15658 r!27340))) c!14016))))

(declare-fun d!722084 () Bool)

(declare-fun lt!902221 () Regex!7573)

(assert (=> d!722084 (validRegex!3199 lt!902221)))

(assert (=> d!722084 (= lt!902221 e!1608103)))

(declare-fun c!407284 () Bool)

(assert (=> d!722084 (= c!407284 (or ((_ is EmptyExpr!7573) r!27340) ((_ is EmptyLang!7573) r!27340)))))

(assert (=> d!722084 (validRegex!3199 r!27340)))

(assert (=> d!722084 (= (derivativeStep!2142 r!27340 c!14016) lt!902221)))

(declare-fun b!2543428 () Bool)

(assert (=> b!2543428 (= e!1608102 (Union!7573 call!161143 call!161144))))

(declare-fun b!2543433 () Bool)

(assert (=> b!2543433 (= c!407282 ((_ is Union!7573) r!27340))))

(declare-fun e!1608105 () Regex!7573)

(assert (=> b!2543433 (= e!1608105 e!1608102)))

(declare-fun b!2543434 () Bool)

(assert (=> b!2543434 (= e!1608105 (ite (= c!14016 (c!407237 r!27340)) EmptyExpr!7573 EmptyLang!7573))))

(declare-fun b!2543435 () Bool)

(assert (=> b!2543435 (= e!1608104 (Concat!12269 call!161142 r!27340))))

(declare-fun b!2543436 () Bool)

(assert (=> b!2543436 (= e!1608103 e!1608105)))

(declare-fun c!407281 () Bool)

(assert (=> b!2543436 (= c!407281 ((_ is ElementMatch!7573) r!27340))))

(declare-fun b!2543437 () Bool)

(assert (=> b!2543437 (= e!1608106 (Union!7573 (Concat!12269 call!161141 (regTwo!15658 r!27340)) EmptyLang!7573))))

(declare-fun bm!161139 () Bool)

(assert (=> bm!161139 (= call!161142 call!161143)))

(assert (= (and d!722084 c!407284) b!2543432))

(assert (= (and d!722084 (not c!407284)) b!2543436))

(assert (= (and b!2543436 c!407281) b!2543434))

(assert (= (and b!2543436 (not c!407281)) b!2543433))

(assert (= (and b!2543433 c!407282) b!2543428))

(assert (= (and b!2543433 (not c!407282)) b!2543429))

(assert (= (and b!2543429 c!407280) b!2543435))

(assert (= (and b!2543429 (not c!407280)) b!2543431))

(assert (= (and b!2543431 c!407283) b!2543430))

(assert (= (and b!2543431 (not c!407283)) b!2543437))

(assert (= (or b!2543430 b!2543437) bm!161136))

(assert (= (or b!2543435 bm!161136) bm!161139))

(assert (= (or b!2543428 b!2543430) bm!161137))

(assert (= (or b!2543428 bm!161139) bm!161138))

(declare-fun m!2889433 () Bool)

(assert (=> bm!161137 m!2889433))

(declare-fun m!2889435 () Bool)

(assert (=> b!2543431 m!2889435))

(declare-fun m!2889437 () Bool)

(assert (=> bm!161138 m!2889437))

(declare-fun m!2889439 () Bool)

(assert (=> d!722084 m!2889439))

(assert (=> d!722084 m!2889379))

(assert (=> b!2543317 d!722084))

(declare-fun d!722092 () Bool)

(declare-fun res!1071878 () Bool)

(declare-fun e!1608112 () Bool)

(assert (=> d!722092 (=> res!1071878 e!1608112)))

(assert (=> d!722092 (= res!1071878 ((_ is ElementMatch!7573) r!27340))))

(assert (=> d!722092 (= (validRegex!3199 r!27340) e!1608112)))

(declare-fun b!2543438 () Bool)

(declare-fun e!1608107 () Bool)

(declare-fun e!1608109 () Bool)

(assert (=> b!2543438 (= e!1608107 e!1608109)))

(declare-fun res!1071879 () Bool)

(assert (=> b!2543438 (= res!1071879 (not (nullable!2490 (reg!7902 r!27340))))))

(assert (=> b!2543438 (=> (not res!1071879) (not e!1608109))))

(declare-fun bm!161142 () Bool)

(declare-fun call!161148 () Bool)

(declare-fun c!407285 () Bool)

(assert (=> bm!161142 (= call!161148 (validRegex!3199 (ite c!407285 (regOne!15659 r!27340) (regTwo!15658 r!27340))))))

(declare-fun b!2543439 () Bool)

(assert (=> b!2543439 (= e!1608112 e!1608107)))

(declare-fun c!407286 () Bool)

(assert (=> b!2543439 (= c!407286 ((_ is Star!7573) r!27340))))

(declare-fun b!2543440 () Bool)

(declare-fun e!1608113 () Bool)

(assert (=> b!2543440 (= e!1608107 e!1608113)))

(assert (=> b!2543440 (= c!407285 ((_ is Union!7573) r!27340))))

(declare-fun b!2543441 () Bool)

(declare-fun res!1071877 () Bool)

(declare-fun e!1608110 () Bool)

(assert (=> b!2543441 (=> (not res!1071877) (not e!1608110))))

(assert (=> b!2543441 (= res!1071877 call!161148)))

(assert (=> b!2543441 (= e!1608113 e!1608110)))

(declare-fun bm!161143 () Bool)

(declare-fun call!161149 () Bool)

(declare-fun call!161147 () Bool)

(assert (=> bm!161143 (= call!161149 call!161147)))

(declare-fun b!2543442 () Bool)

(declare-fun e!1608111 () Bool)

(assert (=> b!2543442 (= e!1608111 call!161148)))

(declare-fun b!2543443 () Bool)

(assert (=> b!2543443 (= e!1608109 call!161147)))

(declare-fun b!2543444 () Bool)

(declare-fun e!1608108 () Bool)

(assert (=> b!2543444 (= e!1608108 e!1608111)))

(declare-fun res!1071876 () Bool)

(assert (=> b!2543444 (=> (not res!1071876) (not e!1608111))))

(assert (=> b!2543444 (= res!1071876 call!161149)))

(declare-fun b!2543445 () Bool)

(assert (=> b!2543445 (= e!1608110 call!161149)))

(declare-fun bm!161144 () Bool)

(assert (=> bm!161144 (= call!161147 (validRegex!3199 (ite c!407286 (reg!7902 r!27340) (ite c!407285 (regTwo!15659 r!27340) (regOne!15658 r!27340)))))))

(declare-fun b!2543446 () Bool)

(declare-fun res!1071880 () Bool)

(assert (=> b!2543446 (=> res!1071880 e!1608108)))

(assert (=> b!2543446 (= res!1071880 (not ((_ is Concat!12269) r!27340)))))

(assert (=> b!2543446 (= e!1608113 e!1608108)))

(assert (= (and d!722092 (not res!1071878)) b!2543439))

(assert (= (and b!2543439 c!407286) b!2543438))

(assert (= (and b!2543439 (not c!407286)) b!2543440))

(assert (= (and b!2543438 res!1071879) b!2543443))

(assert (= (and b!2543440 c!407285) b!2543441))

(assert (= (and b!2543440 (not c!407285)) b!2543446))

(assert (= (and b!2543441 res!1071877) b!2543445))

(assert (= (and b!2543446 (not res!1071880)) b!2543444))

(assert (= (and b!2543444 res!1071876) b!2543442))

(assert (= (or b!2543441 b!2543442) bm!161142))

(assert (= (or b!2543445 b!2543444) bm!161143))

(assert (= (or b!2543443 bm!161143) bm!161144))

(declare-fun m!2889441 () Bool)

(assert (=> b!2543438 m!2889441))

(declare-fun m!2889443 () Bool)

(assert (=> bm!161142 m!2889443))

(declare-fun m!2889445 () Bool)

(assert (=> bm!161144 m!2889445))

(assert (=> start!246928 d!722092))

(declare-fun bm!161145 () Bool)

(declare-fun call!161150 () Regex!7573)

(declare-fun call!161151 () Regex!7573)

(assert (=> bm!161145 (= call!161150 call!161151)))

(declare-fun b!2543448 () Bool)

(declare-fun e!1608114 () Regex!7573)

(declare-fun e!1608116 () Regex!7573)

(assert (=> b!2543448 (= e!1608114 e!1608116)))

(declare-fun c!407287 () Bool)

(assert (=> b!2543448 (= c!407287 ((_ is Star!7573) (reg!7902 r!27340)))))

(declare-fun c!407289 () Bool)

(declare-fun call!161153 () Regex!7573)

(declare-fun bm!161146 () Bool)

(assert (=> bm!161146 (= call!161153 (derivativeStep!2142 (ite c!407289 (regTwo!15659 (reg!7902 r!27340)) (regTwo!15658 (reg!7902 r!27340))) c!14016))))

(declare-fun b!2543449 () Bool)

(declare-fun e!1608118 () Regex!7573)

(assert (=> b!2543449 (= e!1608118 (Union!7573 (Concat!12269 call!161150 (regTwo!15658 (reg!7902 r!27340))) call!161153))))

(declare-fun b!2543450 () Bool)

(declare-fun c!407290 () Bool)

(assert (=> b!2543450 (= c!407290 (nullable!2490 (regOne!15658 (reg!7902 r!27340))))))

(assert (=> b!2543450 (= e!1608116 e!1608118)))

(declare-fun b!2543451 () Bool)

(declare-fun e!1608115 () Regex!7573)

(assert (=> b!2543451 (= e!1608115 EmptyLang!7573)))

(declare-fun call!161152 () Regex!7573)

(declare-fun bm!161147 () Bool)

(assert (=> bm!161147 (= call!161152 (derivativeStep!2142 (ite c!407289 (regOne!15659 (reg!7902 r!27340)) (ite c!407287 (reg!7902 (reg!7902 r!27340)) (regOne!15658 (reg!7902 r!27340)))) c!14016))))

(declare-fun d!722094 () Bool)

(declare-fun lt!902222 () Regex!7573)

(assert (=> d!722094 (validRegex!3199 lt!902222)))

(assert (=> d!722094 (= lt!902222 e!1608115)))

(declare-fun c!407291 () Bool)

(assert (=> d!722094 (= c!407291 (or ((_ is EmptyExpr!7573) (reg!7902 r!27340)) ((_ is EmptyLang!7573) (reg!7902 r!27340))))))

(assert (=> d!722094 (validRegex!3199 (reg!7902 r!27340))))

(assert (=> d!722094 (= (derivativeStep!2142 (reg!7902 r!27340) c!14016) lt!902222)))

(declare-fun b!2543447 () Bool)

(assert (=> b!2543447 (= e!1608114 (Union!7573 call!161152 call!161153))))

(declare-fun b!2543452 () Bool)

(assert (=> b!2543452 (= c!407289 ((_ is Union!7573) (reg!7902 r!27340)))))

(declare-fun e!1608117 () Regex!7573)

(assert (=> b!2543452 (= e!1608117 e!1608114)))

(declare-fun b!2543453 () Bool)

(assert (=> b!2543453 (= e!1608117 (ite (= c!14016 (c!407237 (reg!7902 r!27340))) EmptyExpr!7573 EmptyLang!7573))))

(declare-fun b!2543454 () Bool)

(assert (=> b!2543454 (= e!1608116 (Concat!12269 call!161151 (reg!7902 r!27340)))))

(declare-fun b!2543455 () Bool)

(assert (=> b!2543455 (= e!1608115 e!1608117)))

(declare-fun c!407288 () Bool)

(assert (=> b!2543455 (= c!407288 ((_ is ElementMatch!7573) (reg!7902 r!27340)))))

(declare-fun b!2543456 () Bool)

(assert (=> b!2543456 (= e!1608118 (Union!7573 (Concat!12269 call!161150 (regTwo!15658 (reg!7902 r!27340))) EmptyLang!7573))))

(declare-fun bm!161148 () Bool)

(assert (=> bm!161148 (= call!161151 call!161152)))

(assert (= (and d!722094 c!407291) b!2543451))

(assert (= (and d!722094 (not c!407291)) b!2543455))

(assert (= (and b!2543455 c!407288) b!2543453))

(assert (= (and b!2543455 (not c!407288)) b!2543452))

(assert (= (and b!2543452 c!407289) b!2543447))

(assert (= (and b!2543452 (not c!407289)) b!2543448))

(assert (= (and b!2543448 c!407287) b!2543454))

(assert (= (and b!2543448 (not c!407287)) b!2543450))

(assert (= (and b!2543450 c!407290) b!2543449))

(assert (= (and b!2543450 (not c!407290)) b!2543456))

(assert (= (or b!2543449 b!2543456) bm!161145))

(assert (= (or b!2543454 bm!161145) bm!161148))

(assert (= (or b!2543447 b!2543449) bm!161146))

(assert (= (or b!2543447 bm!161148) bm!161147))

(declare-fun m!2889447 () Bool)

(assert (=> bm!161146 m!2889447))

(declare-fun m!2889449 () Bool)

(assert (=> b!2543450 m!2889449))

(declare-fun m!2889451 () Bool)

(assert (=> bm!161147 m!2889451))

(declare-fun m!2889453 () Bool)

(assert (=> d!722094 m!2889453))

(assert (=> d!722094 m!2889387))

(assert (=> b!2543311 d!722094))

(declare-fun b!2543506 () Bool)

(declare-fun e!1608149 () Int)

(declare-fun e!1608146 () Int)

(assert (=> b!2543506 (= e!1608149 e!1608146)))

(declare-fun c!407318 () Bool)

(assert (=> b!2543506 (= c!407318 ((_ is Star!7573) (reg!7902 r!27340)))))

(declare-fun d!722096 () Bool)

(declare-fun lt!902227 () Int)

(assert (=> d!722096 (>= lt!902227 0)))

(declare-fun e!1608150 () Int)

(assert (=> d!722096 (= lt!902227 e!1608150)))

(declare-fun c!407315 () Bool)

(assert (=> d!722096 (= c!407315 ((_ is ElementMatch!7573) (reg!7902 r!27340)))))

(assert (=> d!722096 (= (RegexPrimitiveSize!116 (reg!7902 r!27340)) lt!902227)))

(declare-fun call!161170 () Int)

(declare-fun bm!161164 () Bool)

(declare-fun c!407316 () Bool)

(assert (=> bm!161164 (= call!161170 (RegexPrimitiveSize!116 (ite c!407316 (regTwo!15658 (reg!7902 r!27340)) (ite c!407318 (reg!7902 (reg!7902 r!27340)) (regOne!15659 (reg!7902 r!27340))))))))

(declare-fun b!2543507 () Bool)

(declare-fun c!407317 () Bool)

(assert (=> b!2543507 (= c!407317 ((_ is EmptyExpr!7573) (reg!7902 r!27340)))))

(declare-fun e!1608147 () Int)

(assert (=> b!2543507 (= e!1608147 e!1608149)))

(declare-fun bm!161165 () Bool)

(declare-fun call!161169 () Int)

(assert (=> bm!161165 (= call!161169 (RegexPrimitiveSize!116 (ite c!407316 (regOne!15658 (reg!7902 r!27340)) (regTwo!15659 (reg!7902 r!27340)))))))

(declare-fun b!2543508 () Bool)

(declare-fun e!1608148 () Int)

(assert (=> b!2543508 (= e!1608148 0)))

(declare-fun b!2543509 () Bool)

(assert (=> b!2543509 (= e!1608147 (+ 1 call!161169 call!161170))))

(declare-fun b!2543510 () Bool)

(declare-fun call!161171 () Int)

(assert (=> b!2543510 (= e!1608146 (+ 1 call!161171))))

(declare-fun b!2543511 () Bool)

(declare-fun c!407314 () Bool)

(assert (=> b!2543511 (= c!407314 ((_ is EmptyLang!7573) (reg!7902 r!27340)))))

(assert (=> b!2543511 (= e!1608146 e!1608148)))

(declare-fun b!2543512 () Bool)

(assert (=> b!2543512 (= e!1608150 1)))

(declare-fun b!2543513 () Bool)

(assert (=> b!2543513 (= e!1608148 (+ 1 call!161171 call!161169))))

(declare-fun b!2543514 () Bool)

(assert (=> b!2543514 (= e!1608150 e!1608147)))

(assert (=> b!2543514 (= c!407316 ((_ is Concat!12269) (reg!7902 r!27340)))))

(declare-fun b!2543515 () Bool)

(assert (=> b!2543515 (= e!1608149 0)))

(declare-fun bm!161166 () Bool)

(assert (=> bm!161166 (= call!161171 call!161170)))

(assert (= (and d!722096 c!407315) b!2543512))

(assert (= (and d!722096 (not c!407315)) b!2543514))

(assert (= (and b!2543514 c!407316) b!2543509))

(assert (= (and b!2543514 (not c!407316)) b!2543507))

(assert (= (and b!2543507 c!407317) b!2543515))

(assert (= (and b!2543507 (not c!407317)) b!2543506))

(assert (= (and b!2543506 c!407318) b!2543510))

(assert (= (and b!2543506 (not c!407318)) b!2543511))

(assert (= (and b!2543511 c!407314) b!2543508))

(assert (= (and b!2543511 (not c!407314)) b!2543513))

(assert (= (or b!2543510 b!2543513) bm!161166))

(assert (= (or b!2543509 bm!161166) bm!161164))

(assert (= (or b!2543509 b!2543513) bm!161165))

(declare-fun m!2889461 () Bool)

(assert (=> bm!161164 m!2889461))

(declare-fun m!2889463 () Bool)

(assert (=> bm!161165 m!2889463))

(assert (=> b!2543309 d!722096))

(declare-fun b!2543516 () Bool)

(declare-fun e!1608154 () Int)

(declare-fun e!1608151 () Int)

(assert (=> b!2543516 (= e!1608154 e!1608151)))

(declare-fun c!407323 () Bool)

(assert (=> b!2543516 (= c!407323 ((_ is Star!7573) r!27340))))

(declare-fun d!722100 () Bool)

(declare-fun lt!902228 () Int)

(assert (=> d!722100 (>= lt!902228 0)))

(declare-fun e!1608155 () Int)

(assert (=> d!722100 (= lt!902228 e!1608155)))

(declare-fun c!407320 () Bool)

(assert (=> d!722100 (= c!407320 ((_ is ElementMatch!7573) r!27340))))

(assert (=> d!722100 (= (RegexPrimitiveSize!116 r!27340) lt!902228)))

(declare-fun bm!161167 () Bool)

(declare-fun c!407321 () Bool)

(declare-fun call!161173 () Int)

(assert (=> bm!161167 (= call!161173 (RegexPrimitiveSize!116 (ite c!407321 (regTwo!15658 r!27340) (ite c!407323 (reg!7902 r!27340) (regOne!15659 r!27340)))))))

(declare-fun b!2543517 () Bool)

(declare-fun c!407322 () Bool)

(assert (=> b!2543517 (= c!407322 ((_ is EmptyExpr!7573) r!27340))))

(declare-fun e!1608152 () Int)

(assert (=> b!2543517 (= e!1608152 e!1608154)))

(declare-fun bm!161168 () Bool)

(declare-fun call!161172 () Int)

(assert (=> bm!161168 (= call!161172 (RegexPrimitiveSize!116 (ite c!407321 (regOne!15658 r!27340) (regTwo!15659 r!27340))))))

(declare-fun b!2543518 () Bool)

(declare-fun e!1608153 () Int)

(assert (=> b!2543518 (= e!1608153 0)))

(declare-fun b!2543519 () Bool)

(assert (=> b!2543519 (= e!1608152 (+ 1 call!161172 call!161173))))

(declare-fun b!2543520 () Bool)

(declare-fun call!161174 () Int)

(assert (=> b!2543520 (= e!1608151 (+ 1 call!161174))))

(declare-fun b!2543521 () Bool)

(declare-fun c!407319 () Bool)

(assert (=> b!2543521 (= c!407319 ((_ is EmptyLang!7573) r!27340))))

(assert (=> b!2543521 (= e!1608151 e!1608153)))

(declare-fun b!2543522 () Bool)

(assert (=> b!2543522 (= e!1608155 1)))

(declare-fun b!2543523 () Bool)

(assert (=> b!2543523 (= e!1608153 (+ 1 call!161174 call!161172))))

(declare-fun b!2543524 () Bool)

(assert (=> b!2543524 (= e!1608155 e!1608152)))

(assert (=> b!2543524 (= c!407321 ((_ is Concat!12269) r!27340))))

(declare-fun b!2543525 () Bool)

(assert (=> b!2543525 (= e!1608154 0)))

(declare-fun bm!161169 () Bool)

(assert (=> bm!161169 (= call!161174 call!161173)))

(assert (= (and d!722100 c!407320) b!2543522))

(assert (= (and d!722100 (not c!407320)) b!2543524))

(assert (= (and b!2543524 c!407321) b!2543519))

(assert (= (and b!2543524 (not c!407321)) b!2543517))

(assert (= (and b!2543517 c!407322) b!2543525))

(assert (= (and b!2543517 (not c!407322)) b!2543516))

(assert (= (and b!2543516 c!407323) b!2543520))

(assert (= (and b!2543516 (not c!407323)) b!2543521))

(assert (= (and b!2543521 c!407319) b!2543518))

(assert (= (and b!2543521 (not c!407319)) b!2543523))

(assert (= (or b!2543520 b!2543523) bm!161169))

(assert (= (or b!2543519 bm!161169) bm!161167))

(assert (= (or b!2543519 b!2543523) bm!161168))

(declare-fun m!2889465 () Bool)

(assert (=> bm!161167 m!2889465))

(declare-fun m!2889467 () Bool)

(assert (=> bm!161168 m!2889467))

(assert (=> b!2543309 d!722100))

(declare-fun b!2543557 () Bool)

(declare-fun e!1608168 () Bool)

(declare-fun tp!812081 () Bool)

(declare-fun tp!812084 () Bool)

(assert (=> b!2543557 (= e!1608168 (and tp!812081 tp!812084))))

(assert (=> b!2543312 (= tp!812067 e!1608168)))

(declare-fun b!2543559 () Bool)

(declare-fun tp!812085 () Bool)

(declare-fun tp!812083 () Bool)

(assert (=> b!2543559 (= e!1608168 (and tp!812085 tp!812083))))

(declare-fun b!2543556 () Bool)

(assert (=> b!2543556 (= e!1608168 tp_is_empty!13001)))

(declare-fun b!2543558 () Bool)

(declare-fun tp!812082 () Bool)

(assert (=> b!2543558 (= e!1608168 tp!812082)))

(assert (= (and b!2543312 ((_ is ElementMatch!7573) (regOne!15658 r!27340))) b!2543556))

(assert (= (and b!2543312 ((_ is Concat!12269) (regOne!15658 r!27340))) b!2543557))

(assert (= (and b!2543312 ((_ is Star!7573) (regOne!15658 r!27340))) b!2543558))

(assert (= (and b!2543312 ((_ is Union!7573) (regOne!15658 r!27340))) b!2543559))

(declare-fun b!2543563 () Bool)

(declare-fun e!1608170 () Bool)

(declare-fun tp!812086 () Bool)

(declare-fun tp!812089 () Bool)

(assert (=> b!2543563 (= e!1608170 (and tp!812086 tp!812089))))

(assert (=> b!2543312 (= tp!812068 e!1608170)))

(declare-fun b!2543565 () Bool)

(declare-fun tp!812090 () Bool)

(declare-fun tp!812088 () Bool)

(assert (=> b!2543565 (= e!1608170 (and tp!812090 tp!812088))))

(declare-fun b!2543562 () Bool)

(assert (=> b!2543562 (= e!1608170 tp_is_empty!13001)))

(declare-fun b!2543564 () Bool)

(declare-fun tp!812087 () Bool)

(assert (=> b!2543564 (= e!1608170 tp!812087)))

(assert (= (and b!2543312 ((_ is ElementMatch!7573) (regTwo!15658 r!27340))) b!2543562))

(assert (= (and b!2543312 ((_ is Concat!12269) (regTwo!15658 r!27340))) b!2543563))

(assert (= (and b!2543312 ((_ is Star!7573) (regTwo!15658 r!27340))) b!2543564))

(assert (= (and b!2543312 ((_ is Union!7573) (regTwo!15658 r!27340))) b!2543565))

(declare-fun b!2543567 () Bool)

(declare-fun e!1608171 () Bool)

(declare-fun tp!812091 () Bool)

(declare-fun tp!812094 () Bool)

(assert (=> b!2543567 (= e!1608171 (and tp!812091 tp!812094))))

(assert (=> b!2543318 (= tp!812070 e!1608171)))

(declare-fun b!2543569 () Bool)

(declare-fun tp!812095 () Bool)

(declare-fun tp!812093 () Bool)

(assert (=> b!2543569 (= e!1608171 (and tp!812095 tp!812093))))

(declare-fun b!2543566 () Bool)

(assert (=> b!2543566 (= e!1608171 tp_is_empty!13001)))

(declare-fun b!2543568 () Bool)

(declare-fun tp!812092 () Bool)

(assert (=> b!2543568 (= e!1608171 tp!812092)))

(assert (= (and b!2543318 ((_ is ElementMatch!7573) (regOne!15659 r!27340))) b!2543566))

(assert (= (and b!2543318 ((_ is Concat!12269) (regOne!15659 r!27340))) b!2543567))

(assert (= (and b!2543318 ((_ is Star!7573) (regOne!15659 r!27340))) b!2543568))

(assert (= (and b!2543318 ((_ is Union!7573) (regOne!15659 r!27340))) b!2543569))

(declare-fun b!2543581 () Bool)

(declare-fun e!1608177 () Bool)

(declare-fun tp!812096 () Bool)

(declare-fun tp!812099 () Bool)

(assert (=> b!2543581 (= e!1608177 (and tp!812096 tp!812099))))

(assert (=> b!2543318 (= tp!812066 e!1608177)))

(declare-fun b!2543583 () Bool)

(declare-fun tp!812100 () Bool)

(declare-fun tp!812098 () Bool)

(assert (=> b!2543583 (= e!1608177 (and tp!812100 tp!812098))))

(declare-fun b!2543580 () Bool)

(assert (=> b!2543580 (= e!1608177 tp_is_empty!13001)))

(declare-fun b!2543582 () Bool)

(declare-fun tp!812097 () Bool)

(assert (=> b!2543582 (= e!1608177 tp!812097)))

(assert (= (and b!2543318 ((_ is ElementMatch!7573) (regTwo!15659 r!27340))) b!2543580))

(assert (= (and b!2543318 ((_ is Concat!12269) (regTwo!15659 r!27340))) b!2543581))

(assert (= (and b!2543318 ((_ is Star!7573) (regTwo!15659 r!27340))) b!2543582))

(assert (= (and b!2543318 ((_ is Union!7573) (regTwo!15659 r!27340))) b!2543583))

(declare-fun b!2543585 () Bool)

(declare-fun e!1608178 () Bool)

(declare-fun tp!812101 () Bool)

(declare-fun tp!812104 () Bool)

(assert (=> b!2543585 (= e!1608178 (and tp!812101 tp!812104))))

(assert (=> b!2543316 (= tp!812069 e!1608178)))

(declare-fun b!2543587 () Bool)

(declare-fun tp!812105 () Bool)

(declare-fun tp!812103 () Bool)

(assert (=> b!2543587 (= e!1608178 (and tp!812105 tp!812103))))

(declare-fun b!2543584 () Bool)

(assert (=> b!2543584 (= e!1608178 tp_is_empty!13001)))

(declare-fun b!2543586 () Bool)

(declare-fun tp!812102 () Bool)

(assert (=> b!2543586 (= e!1608178 tp!812102)))

(assert (= (and b!2543316 ((_ is ElementMatch!7573) (reg!7902 r!27340))) b!2543584))

(assert (= (and b!2543316 ((_ is Concat!12269) (reg!7902 r!27340))) b!2543585))

(assert (= (and b!2543316 ((_ is Star!7573) (reg!7902 r!27340))) b!2543586))

(assert (= (and b!2543316 ((_ is Union!7573) (reg!7902 r!27340))) b!2543587))

(declare-fun b!2543592 () Bool)

(declare-fun e!1608181 () Bool)

(declare-fun tp!812108 () Bool)

(assert (=> b!2543592 (= e!1608181 (and tp_is_empty!13001 tp!812108))))

(assert (=> b!2543315 (= tp!812065 e!1608181)))

(assert (= (and b!2543315 ((_ is Cons!29538) (t!211337 tl!4068))) b!2543592))

(check-sat (not d!722094) (not b!2543592) (not d!722078) (not bm!161109) (not b!2543563) (not bm!161137) (not d!722076) (not b!2543431) (not b!2543450) (not b!2543557) (not bm!161165) (not b!2543567) (not b!2543372) (not b!2543564) (not b!2543568) (not b!2543438) (not b!2543370) (not b!2543558) (not bm!161144) (not bm!161147) (not b!2543587) (not d!722082) (not b!2543581) (not d!722084) (not b!2543583) (not bm!161146) tp_is_empty!13001 (not bm!161167) (not bm!161164) (not bm!161111) (not b!2543582) (not bm!161168) (not b!2543559) (not bm!161142) (not b!2543585) (not b!2543565) (not bm!161138) (not b!2543586) (not b!2543337) (not d!722080) (not b!2543569))
(check-sat)
