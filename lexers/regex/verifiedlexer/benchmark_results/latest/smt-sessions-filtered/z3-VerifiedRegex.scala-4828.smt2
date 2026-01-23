; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!248264 () Bool)

(assert start!248264)

(declare-fun b!2568070 () Bool)

(declare-fun e!1621111 () Bool)

(declare-fun tp!817434 () Bool)

(declare-fun tp!817429 () Bool)

(assert (=> b!2568070 (= e!1621111 (and tp!817434 tp!817429))))

(declare-fun b!2568071 () Bool)

(declare-fun res!1080424 () Bool)

(declare-fun e!1621108 () Bool)

(assert (=> b!2568071 (=> (not res!1080424) (not e!1621108))))

(declare-datatypes ((C!15420 0))(
  ( (C!15421 (val!9362 Int)) )
))
(declare-datatypes ((Regex!7631 0))(
  ( (ElementMatch!7631 (c!413111 C!15420)) (Concat!12327 (regOne!15774 Regex!7631) (regTwo!15774 Regex!7631)) (EmptyExpr!7631) (Star!7631 (reg!7960 Regex!7631)) (EmptyLang!7631) (Union!7631 (regOne!15775 Regex!7631) (regTwo!15775 Regex!7631)) )
))
(declare-fun r!27340 () Regex!7631)

(get-info :version)

(assert (=> b!2568071 (= res!1080424 (and (not ((_ is EmptyExpr!7631) r!27340)) (not ((_ is EmptyLang!7631) r!27340)) (not ((_ is ElementMatch!7631) r!27340)) (not ((_ is Union!7631) r!27340)) (not ((_ is Star!7631) r!27340))))))

(declare-fun b!2568072 () Bool)

(declare-fun e!1621112 () Bool)

(declare-fun tp_is_empty!13117 () Bool)

(declare-fun tp!817432 () Bool)

(assert (=> b!2568072 (= e!1621112 (and tp_is_empty!13117 tp!817432))))

(declare-fun res!1080421 () Bool)

(assert (=> start!248264 (=> (not res!1080421) (not e!1621108))))

(declare-fun validRegex!3257 (Regex!7631) Bool)

(assert (=> start!248264 (= res!1080421 (validRegex!3257 r!27340))))

(assert (=> start!248264 e!1621108))

(assert (=> start!248264 e!1621111))

(assert (=> start!248264 tp_is_empty!13117))

(assert (=> start!248264 e!1621112))

(declare-fun b!2568073 () Bool)

(declare-fun e!1621110 () Bool)

(declare-fun lt!905417 () Regex!7631)

(assert (=> b!2568073 (= e!1621110 (validRegex!3257 lt!905417))))

(declare-fun b!2568074 () Bool)

(declare-fun tp!817431 () Bool)

(declare-fun tp!817433 () Bool)

(assert (=> b!2568074 (= e!1621111 (and tp!817431 tp!817433))))

(declare-fun b!2568075 () Bool)

(declare-fun res!1080425 () Bool)

(assert (=> b!2568075 (=> (not res!1080425) (not e!1621108))))

(declare-datatypes ((List!29696 0))(
  ( (Nil!29596) (Cons!29596 (h!35016 C!15420) (t!211395 List!29696)) )
))
(declare-fun tl!4068 () List!29696)

(declare-fun c!14016 () C!15420)

(declare-fun nullable!2548 (Regex!7631) Bool)

(declare-fun derivative!326 (Regex!7631 List!29696) Regex!7631)

(declare-fun derivativeStep!2200 (Regex!7631 C!15420) Regex!7631)

(assert (=> b!2568075 (= res!1080425 (nullable!2548 (derivative!326 (derivativeStep!2200 r!27340 c!14016) tl!4068)))))

(declare-fun b!2568076 () Bool)

(assert (=> b!2568076 (= e!1621108 (not e!1621110))))

(declare-fun res!1080426 () Bool)

(assert (=> b!2568076 (=> res!1080426 e!1621110)))

(declare-fun lt!905418 () Bool)

(assert (=> b!2568076 (= res!1080426 (not lt!905418))))

(assert (=> b!2568076 (= (derivative!326 EmptyLang!7631 tl!4068) EmptyLang!7631)))

(declare-datatypes ((Unit!43443 0))(
  ( (Unit!43444) )
))
(declare-fun lt!905419 () Unit!43443)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!60 (Regex!7631 List!29696) Unit!43443)

(assert (=> b!2568076 (= lt!905419 (lemmaEmptyLangDerivativeIsAFixPoint!60 EmptyLang!7631 tl!4068))))

(declare-fun e!1621109 () Bool)

(assert (=> b!2568076 e!1621109))

(declare-fun res!1080422 () Bool)

(assert (=> b!2568076 (=> res!1080422 e!1621109)))

(assert (=> b!2568076 (= res!1080422 lt!905418)))

(declare-fun lt!905414 () Regex!7631)

(declare-fun matchR!3574 (Regex!7631 List!29696) Bool)

(assert (=> b!2568076 (= lt!905418 (matchR!3574 lt!905414 tl!4068))))

(declare-fun lt!905416 () Unit!43443)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!220 (Regex!7631 Regex!7631 List!29696) Unit!43443)

(assert (=> b!2568076 (= lt!905416 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!220 lt!905414 EmptyLang!7631 tl!4068))))

(declare-fun lt!905420 () Regex!7631)

(assert (=> b!2568076 (= (matchR!3574 lt!905420 tl!4068) (matchR!3574 (derivative!326 lt!905420 tl!4068) Nil!29596))))

(declare-fun lt!905415 () Unit!43443)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!220 (Regex!7631 List!29696) Unit!43443)

(assert (=> b!2568076 (= lt!905415 (lemmaMatchRIsSameAsWholeDerivativeAndNil!220 lt!905420 tl!4068))))

(assert (=> b!2568076 (= lt!905420 (Union!7631 lt!905414 EmptyLang!7631))))

(assert (=> b!2568076 (= lt!905414 (Concat!12327 lt!905417 (regTwo!15774 r!27340)))))

(assert (=> b!2568076 (= lt!905417 (derivativeStep!2200 (regOne!15774 r!27340) c!14016))))

(declare-fun b!2568077 () Bool)

(assert (=> b!2568077 (= e!1621109 (matchR!3574 EmptyLang!7631 tl!4068))))

(declare-fun b!2568078 () Bool)

(declare-fun res!1080423 () Bool)

(assert (=> b!2568078 (=> (not res!1080423) (not e!1621108))))

(assert (=> b!2568078 (= res!1080423 (not (nullable!2548 (regOne!15774 r!27340))))))

(declare-fun b!2568079 () Bool)

(declare-fun tp!817430 () Bool)

(assert (=> b!2568079 (= e!1621111 tp!817430)))

(declare-fun b!2568080 () Bool)

(assert (=> b!2568080 (= e!1621111 tp_is_empty!13117)))

(assert (= (and start!248264 res!1080421) b!2568075))

(assert (= (and b!2568075 res!1080425) b!2568071))

(assert (= (and b!2568071 res!1080424) b!2568078))

(assert (= (and b!2568078 res!1080423) b!2568076))

(assert (= (and b!2568076 (not res!1080422)) b!2568077))

(assert (= (and b!2568076 (not res!1080426)) b!2568073))

(assert (= (and start!248264 ((_ is ElementMatch!7631) r!27340)) b!2568080))

(assert (= (and start!248264 ((_ is Concat!12327) r!27340)) b!2568070))

(assert (= (and start!248264 ((_ is Star!7631) r!27340)) b!2568079))

(assert (= (and start!248264 ((_ is Union!7631) r!27340)) b!2568074))

(assert (= (and start!248264 ((_ is Cons!29596) tl!4068)) b!2568072))

(declare-fun m!2905321 () Bool)

(assert (=> start!248264 m!2905321))

(declare-fun m!2905323 () Bool)

(assert (=> b!2568073 m!2905323))

(declare-fun m!2905325 () Bool)

(assert (=> b!2568076 m!2905325))

(declare-fun m!2905327 () Bool)

(assert (=> b!2568076 m!2905327))

(declare-fun m!2905329 () Bool)

(assert (=> b!2568076 m!2905329))

(declare-fun m!2905331 () Bool)

(assert (=> b!2568076 m!2905331))

(declare-fun m!2905333 () Bool)

(assert (=> b!2568076 m!2905333))

(declare-fun m!2905335 () Bool)

(assert (=> b!2568076 m!2905335))

(declare-fun m!2905337 () Bool)

(assert (=> b!2568076 m!2905337))

(assert (=> b!2568076 m!2905337))

(declare-fun m!2905339 () Bool)

(assert (=> b!2568076 m!2905339))

(declare-fun m!2905341 () Bool)

(assert (=> b!2568076 m!2905341))

(declare-fun m!2905343 () Bool)

(assert (=> b!2568078 m!2905343))

(declare-fun m!2905345 () Bool)

(assert (=> b!2568077 m!2905345))

(declare-fun m!2905347 () Bool)

(assert (=> b!2568075 m!2905347))

(assert (=> b!2568075 m!2905347))

(declare-fun m!2905349 () Bool)

(assert (=> b!2568075 m!2905349))

(assert (=> b!2568075 m!2905349))

(declare-fun m!2905351 () Bool)

(assert (=> b!2568075 m!2905351))

(check-sat tp_is_empty!13117 (not b!2568078) (not b!2568070) (not b!2568077) (not start!248264) (not b!2568074) (not b!2568072) (not b!2568075) (not b!2568076) (not b!2568079) (not b!2568073))
(check-sat)
(get-model)

(declare-fun d!726889 () Bool)

(declare-fun nullableFct!773 (Regex!7631) Bool)

(assert (=> d!726889 (= (nullable!2548 (regOne!15774 r!27340)) (nullableFct!773 (regOne!15774 r!27340)))))

(declare-fun bs!469969 () Bool)

(assert (= bs!469969 d!726889))

(declare-fun m!2905355 () Bool)

(assert (=> bs!469969 m!2905355))

(assert (=> b!2568078 d!726889))

(declare-fun bm!165487 () Bool)

(declare-fun call!165495 () Bool)

(declare-fun call!165494 () Bool)

(assert (=> bm!165487 (= call!165495 call!165494)))

(declare-fun b!2568125 () Bool)

(declare-fun e!1621144 () Bool)

(declare-fun e!1621141 () Bool)

(assert (=> b!2568125 (= e!1621144 e!1621141)))

(declare-fun c!413129 () Bool)

(assert (=> b!2568125 (= c!413129 ((_ is Union!7631) lt!905417))))

(declare-fun d!726891 () Bool)

(declare-fun res!1080437 () Bool)

(declare-fun e!1621145 () Bool)

(assert (=> d!726891 (=> res!1080437 e!1621145)))

(assert (=> d!726891 (= res!1080437 ((_ is ElementMatch!7631) lt!905417))))

(assert (=> d!726891 (= (validRegex!3257 lt!905417) e!1621145)))

(declare-fun b!2568126 () Bool)

(declare-fun e!1621143 () Bool)

(assert (=> b!2568126 (= e!1621144 e!1621143)))

(declare-fun res!1080440 () Bool)

(assert (=> b!2568126 (= res!1080440 (not (nullable!2548 (reg!7960 lt!905417))))))

(assert (=> b!2568126 (=> (not res!1080440) (not e!1621143))))

(declare-fun b!2568127 () Bool)

(assert (=> b!2568127 (= e!1621143 call!165494)))

(declare-fun b!2568128 () Bool)

(assert (=> b!2568128 (= e!1621145 e!1621144)))

(declare-fun c!413130 () Bool)

(assert (=> b!2568128 (= c!413130 ((_ is Star!7631) lt!905417))))

(declare-fun b!2568129 () Bool)

(declare-fun e!1621140 () Bool)

(assert (=> b!2568129 (= e!1621140 call!165495)))

(declare-fun b!2568130 () Bool)

(declare-fun res!1080438 () Bool)

(declare-fun e!1621146 () Bool)

(assert (=> b!2568130 (=> (not res!1080438) (not e!1621146))))

(assert (=> b!2568130 (= res!1080438 call!165495)))

(assert (=> b!2568130 (= e!1621141 e!1621146)))

(declare-fun bm!165488 () Bool)

(assert (=> bm!165488 (= call!165494 (validRegex!3257 (ite c!413130 (reg!7960 lt!905417) (ite c!413129 (regOne!15775 lt!905417) (regTwo!15774 lt!905417)))))))

(declare-fun bm!165489 () Bool)

(declare-fun call!165496 () Bool)

(assert (=> bm!165489 (= call!165496 (validRegex!3257 (ite c!413129 (regTwo!15775 lt!905417) (regOne!15774 lt!905417))))))

(declare-fun b!2568131 () Bool)

(declare-fun e!1621142 () Bool)

(assert (=> b!2568131 (= e!1621142 e!1621140)))

(declare-fun res!1080439 () Bool)

(assert (=> b!2568131 (=> (not res!1080439) (not e!1621140))))

(assert (=> b!2568131 (= res!1080439 call!165496)))

(declare-fun b!2568132 () Bool)

(assert (=> b!2568132 (= e!1621146 call!165496)))

(declare-fun b!2568133 () Bool)

(declare-fun res!1080441 () Bool)

(assert (=> b!2568133 (=> res!1080441 e!1621142)))

(assert (=> b!2568133 (= res!1080441 (not ((_ is Concat!12327) lt!905417)))))

(assert (=> b!2568133 (= e!1621141 e!1621142)))

(assert (= (and d!726891 (not res!1080437)) b!2568128))

(assert (= (and b!2568128 c!413130) b!2568126))

(assert (= (and b!2568128 (not c!413130)) b!2568125))

(assert (= (and b!2568126 res!1080440) b!2568127))

(assert (= (and b!2568125 c!413129) b!2568130))

(assert (= (and b!2568125 (not c!413129)) b!2568133))

(assert (= (and b!2568130 res!1080438) b!2568132))

(assert (= (and b!2568133 (not res!1080441)) b!2568131))

(assert (= (and b!2568131 res!1080439) b!2568129))

(assert (= (or b!2568130 b!2568129) bm!165487))

(assert (= (or b!2568132 b!2568131) bm!165489))

(assert (= (or b!2568127 bm!165487) bm!165488))

(declare-fun m!2905365 () Bool)

(assert (=> b!2568126 m!2905365))

(declare-fun m!2905367 () Bool)

(assert (=> bm!165488 m!2905367))

(declare-fun m!2905369 () Bool)

(assert (=> bm!165489 m!2905369))

(assert (=> b!2568073 d!726891))

(declare-fun bm!165494 () Bool)

(declare-fun call!165500 () Bool)

(declare-fun call!165499 () Bool)

(assert (=> bm!165494 (= call!165500 call!165499)))

(declare-fun b!2568134 () Bool)

(declare-fun e!1621151 () Bool)

(declare-fun e!1621148 () Bool)

(assert (=> b!2568134 (= e!1621151 e!1621148)))

(declare-fun c!413131 () Bool)

(assert (=> b!2568134 (= c!413131 ((_ is Union!7631) r!27340))))

(declare-fun d!726895 () Bool)

(declare-fun res!1080442 () Bool)

(declare-fun e!1621152 () Bool)

(assert (=> d!726895 (=> res!1080442 e!1621152)))

(assert (=> d!726895 (= res!1080442 ((_ is ElementMatch!7631) r!27340))))

(assert (=> d!726895 (= (validRegex!3257 r!27340) e!1621152)))

(declare-fun b!2568135 () Bool)

(declare-fun e!1621150 () Bool)

(assert (=> b!2568135 (= e!1621151 e!1621150)))

(declare-fun res!1080445 () Bool)

(assert (=> b!2568135 (= res!1080445 (not (nullable!2548 (reg!7960 r!27340))))))

(assert (=> b!2568135 (=> (not res!1080445) (not e!1621150))))

(declare-fun b!2568136 () Bool)

(assert (=> b!2568136 (= e!1621150 call!165499)))

(declare-fun b!2568137 () Bool)

(assert (=> b!2568137 (= e!1621152 e!1621151)))

(declare-fun c!413132 () Bool)

(assert (=> b!2568137 (= c!413132 ((_ is Star!7631) r!27340))))

(declare-fun b!2568138 () Bool)

(declare-fun e!1621147 () Bool)

(assert (=> b!2568138 (= e!1621147 call!165500)))

(declare-fun b!2568139 () Bool)

(declare-fun res!1080443 () Bool)

(declare-fun e!1621153 () Bool)

(assert (=> b!2568139 (=> (not res!1080443) (not e!1621153))))

(assert (=> b!2568139 (= res!1080443 call!165500)))

(assert (=> b!2568139 (= e!1621148 e!1621153)))

(declare-fun bm!165495 () Bool)

(assert (=> bm!165495 (= call!165499 (validRegex!3257 (ite c!413132 (reg!7960 r!27340) (ite c!413131 (regOne!15775 r!27340) (regTwo!15774 r!27340)))))))

(declare-fun bm!165496 () Bool)

(declare-fun call!165501 () Bool)

(assert (=> bm!165496 (= call!165501 (validRegex!3257 (ite c!413131 (regTwo!15775 r!27340) (regOne!15774 r!27340))))))

(declare-fun b!2568140 () Bool)

(declare-fun e!1621149 () Bool)

(assert (=> b!2568140 (= e!1621149 e!1621147)))

(declare-fun res!1080444 () Bool)

(assert (=> b!2568140 (=> (not res!1080444) (not e!1621147))))

(assert (=> b!2568140 (= res!1080444 call!165501)))

(declare-fun b!2568141 () Bool)

(assert (=> b!2568141 (= e!1621153 call!165501)))

(declare-fun b!2568142 () Bool)

(declare-fun res!1080446 () Bool)

(assert (=> b!2568142 (=> res!1080446 e!1621149)))

(assert (=> b!2568142 (= res!1080446 (not ((_ is Concat!12327) r!27340)))))

(assert (=> b!2568142 (= e!1621148 e!1621149)))

(assert (= (and d!726895 (not res!1080442)) b!2568137))

(assert (= (and b!2568137 c!413132) b!2568135))

(assert (= (and b!2568137 (not c!413132)) b!2568134))

(assert (= (and b!2568135 res!1080445) b!2568136))

(assert (= (and b!2568134 c!413131) b!2568139))

(assert (= (and b!2568134 (not c!413131)) b!2568142))

(assert (= (and b!2568139 res!1080443) b!2568141))

(assert (= (and b!2568142 (not res!1080446)) b!2568140))

(assert (= (and b!2568140 res!1080444) b!2568138))

(assert (= (or b!2568139 b!2568138) bm!165494))

(assert (= (or b!2568141 b!2568140) bm!165496))

(assert (= (or b!2568136 bm!165494) bm!165495))

(declare-fun m!2905371 () Bool)

(assert (=> b!2568135 m!2905371))

(declare-fun m!2905373 () Bool)

(assert (=> bm!165495 m!2905373))

(declare-fun m!2905375 () Bool)

(assert (=> bm!165496 m!2905375))

(assert (=> start!248264 d!726895))

(declare-fun d!726897 () Bool)

(assert (=> d!726897 (= (nullable!2548 (derivative!326 (derivativeStep!2200 r!27340 c!14016) tl!4068)) (nullableFct!773 (derivative!326 (derivativeStep!2200 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469970 () Bool)

(assert (= bs!469970 d!726897))

(assert (=> bs!469970 m!2905349))

(declare-fun m!2905377 () Bool)

(assert (=> bs!469970 m!2905377))

(assert (=> b!2568075 d!726897))

(declare-fun d!726899 () Bool)

(declare-fun lt!905428 () Regex!7631)

(assert (=> d!726899 (validRegex!3257 lt!905428)))

(declare-fun e!1621156 () Regex!7631)

(assert (=> d!726899 (= lt!905428 e!1621156)))

(declare-fun c!413135 () Bool)

(assert (=> d!726899 (= c!413135 ((_ is Cons!29596) tl!4068))))

(assert (=> d!726899 (validRegex!3257 (derivativeStep!2200 r!27340 c!14016))))

(assert (=> d!726899 (= (derivative!326 (derivativeStep!2200 r!27340 c!14016) tl!4068) lt!905428)))

(declare-fun b!2568147 () Bool)

(assert (=> b!2568147 (= e!1621156 (derivative!326 (derivativeStep!2200 (derivativeStep!2200 r!27340 c!14016) (h!35016 tl!4068)) (t!211395 tl!4068)))))

(declare-fun b!2568148 () Bool)

(assert (=> b!2568148 (= e!1621156 (derivativeStep!2200 r!27340 c!14016))))

(assert (= (and d!726899 c!413135) b!2568147))

(assert (= (and d!726899 (not c!413135)) b!2568148))

(declare-fun m!2905379 () Bool)

(assert (=> d!726899 m!2905379))

(assert (=> d!726899 m!2905347))

(declare-fun m!2905381 () Bool)

(assert (=> d!726899 m!2905381))

(assert (=> b!2568147 m!2905347))

(declare-fun m!2905383 () Bool)

(assert (=> b!2568147 m!2905383))

(assert (=> b!2568147 m!2905383))

(declare-fun m!2905385 () Bool)

(assert (=> b!2568147 m!2905385))

(assert (=> b!2568075 d!726899))

(declare-fun b!2568207 () Bool)

(declare-fun e!1621188 () Regex!7631)

(declare-fun e!1621189 () Regex!7631)

(assert (=> b!2568207 (= e!1621188 e!1621189)))

(declare-fun c!413158 () Bool)

(assert (=> b!2568207 (= c!413158 ((_ is ElementMatch!7631) r!27340))))

(declare-fun b!2568208 () Bool)

(assert (=> b!2568208 (= e!1621188 EmptyLang!7631)))

(declare-fun bm!165515 () Bool)

(declare-fun call!165521 () Regex!7631)

(declare-fun call!165523 () Regex!7631)

(assert (=> bm!165515 (= call!165521 call!165523)))

(declare-fun d!726901 () Bool)

(declare-fun lt!905434 () Regex!7631)

(assert (=> d!726901 (validRegex!3257 lt!905434)))

(assert (=> d!726901 (= lt!905434 e!1621188)))

(declare-fun c!413157 () Bool)

(assert (=> d!726901 (= c!413157 (or ((_ is EmptyExpr!7631) r!27340) ((_ is EmptyLang!7631) r!27340)))))

(assert (=> d!726901 (validRegex!3257 r!27340)))

(assert (=> d!726901 (= (derivativeStep!2200 r!27340 c!14016) lt!905434)))

(declare-fun b!2568209 () Bool)

(declare-fun c!413160 () Bool)

(assert (=> b!2568209 (= c!413160 ((_ is Union!7631) r!27340))))

(declare-fun e!1621190 () Regex!7631)

(assert (=> b!2568209 (= e!1621189 e!1621190)))

(declare-fun b!2568210 () Bool)

(assert (=> b!2568210 (= e!1621189 (ite (= c!14016 (c!413111 r!27340)) EmptyExpr!7631 EmptyLang!7631))))

(declare-fun b!2568211 () Bool)

(declare-fun c!413161 () Bool)

(assert (=> b!2568211 (= c!413161 (nullable!2548 (regOne!15774 r!27340)))))

(declare-fun e!1621186 () Regex!7631)

(declare-fun e!1621187 () Regex!7631)

(assert (=> b!2568211 (= e!1621186 e!1621187)))

(declare-fun b!2568212 () Bool)

(declare-fun call!165522 () Regex!7631)

(assert (=> b!2568212 (= e!1621187 (Union!7631 (Concat!12327 call!165521 (regTwo!15774 r!27340)) call!165522))))

(declare-fun call!165520 () Regex!7631)

(declare-fun bm!165516 () Bool)

(declare-fun c!413159 () Bool)

(assert (=> bm!165516 (= call!165520 (derivativeStep!2200 (ite c!413160 (regTwo!15775 r!27340) (ite c!413159 (reg!7960 r!27340) (regOne!15774 r!27340))) c!14016))))

(declare-fun b!2568213 () Bool)

(assert (=> b!2568213 (= e!1621190 (Union!7631 call!165522 call!165520))))

(declare-fun b!2568214 () Bool)

(assert (=> b!2568214 (= e!1621187 (Union!7631 (Concat!12327 call!165521 (regTwo!15774 r!27340)) EmptyLang!7631))))

(declare-fun b!2568215 () Bool)

(assert (=> b!2568215 (= e!1621186 (Concat!12327 call!165523 r!27340))))

(declare-fun b!2568216 () Bool)

(assert (=> b!2568216 (= e!1621190 e!1621186)))

(assert (=> b!2568216 (= c!413159 ((_ is Star!7631) r!27340))))

(declare-fun bm!165517 () Bool)

(assert (=> bm!165517 (= call!165523 call!165520)))

(declare-fun bm!165518 () Bool)

(assert (=> bm!165518 (= call!165522 (derivativeStep!2200 (ite c!413160 (regOne!15775 r!27340) (regTwo!15774 r!27340)) c!14016))))

(assert (= (and d!726901 c!413157) b!2568208))

(assert (= (and d!726901 (not c!413157)) b!2568207))

(assert (= (and b!2568207 c!413158) b!2568210))

(assert (= (and b!2568207 (not c!413158)) b!2568209))

(assert (= (and b!2568209 c!413160) b!2568213))

(assert (= (and b!2568209 (not c!413160)) b!2568216))

(assert (= (and b!2568216 c!413159) b!2568215))

(assert (= (and b!2568216 (not c!413159)) b!2568211))

(assert (= (and b!2568211 c!413161) b!2568212))

(assert (= (and b!2568211 (not c!413161)) b!2568214))

(assert (= (or b!2568212 b!2568214) bm!165515))

(assert (= (or b!2568215 bm!165515) bm!165517))

(assert (= (or b!2568213 bm!165517) bm!165516))

(assert (= (or b!2568213 b!2568212) bm!165518))

(declare-fun m!2905393 () Bool)

(assert (=> d!726901 m!2905393))

(assert (=> d!726901 m!2905321))

(assert (=> b!2568211 m!2905343))

(declare-fun m!2905395 () Bool)

(assert (=> bm!165516 m!2905395))

(declare-fun m!2905397 () Bool)

(assert (=> bm!165518 m!2905397))

(assert (=> b!2568075 d!726901))

(declare-fun b!2568231 () Bool)

(declare-fun e!1621200 () Regex!7631)

(declare-fun e!1621201 () Regex!7631)

(assert (=> b!2568231 (= e!1621200 e!1621201)))

(declare-fun c!413166 () Bool)

(assert (=> b!2568231 (= c!413166 ((_ is ElementMatch!7631) (regOne!15774 r!27340)))))

(declare-fun b!2568232 () Bool)

(assert (=> b!2568232 (= e!1621200 EmptyLang!7631)))

(declare-fun bm!165520 () Bool)

(declare-fun call!165526 () Regex!7631)

(declare-fun call!165528 () Regex!7631)

(assert (=> bm!165520 (= call!165526 call!165528)))

(declare-fun d!726905 () Bool)

(declare-fun lt!905436 () Regex!7631)

(assert (=> d!726905 (validRegex!3257 lt!905436)))

(assert (=> d!726905 (= lt!905436 e!1621200)))

(declare-fun c!413165 () Bool)

(assert (=> d!726905 (= c!413165 (or ((_ is EmptyExpr!7631) (regOne!15774 r!27340)) ((_ is EmptyLang!7631) (regOne!15774 r!27340))))))

(assert (=> d!726905 (validRegex!3257 (regOne!15774 r!27340))))

(assert (=> d!726905 (= (derivativeStep!2200 (regOne!15774 r!27340) c!14016) lt!905436)))

(declare-fun b!2568233 () Bool)

(declare-fun c!413168 () Bool)

(assert (=> b!2568233 (= c!413168 ((_ is Union!7631) (regOne!15774 r!27340)))))

(declare-fun e!1621202 () Regex!7631)

(assert (=> b!2568233 (= e!1621201 e!1621202)))

(declare-fun b!2568234 () Bool)

(assert (=> b!2568234 (= e!1621201 (ite (= c!14016 (c!413111 (regOne!15774 r!27340))) EmptyExpr!7631 EmptyLang!7631))))

(declare-fun b!2568235 () Bool)

(declare-fun c!413169 () Bool)

(assert (=> b!2568235 (= c!413169 (nullable!2548 (regOne!15774 (regOne!15774 r!27340))))))

(declare-fun e!1621198 () Regex!7631)

(declare-fun e!1621199 () Regex!7631)

(assert (=> b!2568235 (= e!1621198 e!1621199)))

(declare-fun b!2568236 () Bool)

(declare-fun call!165527 () Regex!7631)

(assert (=> b!2568236 (= e!1621199 (Union!7631 (Concat!12327 call!165526 (regTwo!15774 (regOne!15774 r!27340))) call!165527))))

(declare-fun bm!165521 () Bool)

(declare-fun call!165525 () Regex!7631)

(declare-fun c!413167 () Bool)

(assert (=> bm!165521 (= call!165525 (derivativeStep!2200 (ite c!413168 (regTwo!15775 (regOne!15774 r!27340)) (ite c!413167 (reg!7960 (regOne!15774 r!27340)) (regOne!15774 (regOne!15774 r!27340)))) c!14016))))

(declare-fun b!2568237 () Bool)

(assert (=> b!2568237 (= e!1621202 (Union!7631 call!165527 call!165525))))

(declare-fun b!2568238 () Bool)

(assert (=> b!2568238 (= e!1621199 (Union!7631 (Concat!12327 call!165526 (regTwo!15774 (regOne!15774 r!27340))) EmptyLang!7631))))

(declare-fun b!2568239 () Bool)

(assert (=> b!2568239 (= e!1621198 (Concat!12327 call!165528 (regOne!15774 r!27340)))))

(declare-fun b!2568240 () Bool)

(assert (=> b!2568240 (= e!1621202 e!1621198)))

(assert (=> b!2568240 (= c!413167 ((_ is Star!7631) (regOne!15774 r!27340)))))

(declare-fun bm!165522 () Bool)

(assert (=> bm!165522 (= call!165528 call!165525)))

(declare-fun bm!165523 () Bool)

(assert (=> bm!165523 (= call!165527 (derivativeStep!2200 (ite c!413168 (regOne!15775 (regOne!15774 r!27340)) (regTwo!15774 (regOne!15774 r!27340))) c!14016))))

(assert (= (and d!726905 c!413165) b!2568232))

(assert (= (and d!726905 (not c!413165)) b!2568231))

(assert (= (and b!2568231 c!413166) b!2568234))

(assert (= (and b!2568231 (not c!413166)) b!2568233))

(assert (= (and b!2568233 c!413168) b!2568237))

(assert (= (and b!2568233 (not c!413168)) b!2568240))

(assert (= (and b!2568240 c!413167) b!2568239))

(assert (= (and b!2568240 (not c!413167)) b!2568235))

(assert (= (and b!2568235 c!413169) b!2568236))

(assert (= (and b!2568235 (not c!413169)) b!2568238))

(assert (= (or b!2568236 b!2568238) bm!165520))

(assert (= (or b!2568239 bm!165520) bm!165522))

(assert (= (or b!2568237 bm!165522) bm!165521))

(assert (= (or b!2568237 b!2568236) bm!165523))

(declare-fun m!2905403 () Bool)

(assert (=> d!726905 m!2905403))

(declare-fun m!2905405 () Bool)

(assert (=> d!726905 m!2905405))

(declare-fun m!2905411 () Bool)

(assert (=> b!2568235 m!2905411))

(declare-fun m!2905415 () Bool)

(assert (=> bm!165521 m!2905415))

(declare-fun m!2905417 () Bool)

(assert (=> bm!165523 m!2905417))

(assert (=> b!2568076 d!726905))

(declare-fun b!2568308 () Bool)

(declare-fun e!1621250 () Bool)

(declare-fun head!5836 (List!29696) C!15420)

(assert (=> b!2568308 (= e!1621250 (= (head!5836 tl!4068) (c!413111 lt!905414)))))

(declare-fun b!2568309 () Bool)

(declare-fun e!1621244 () Bool)

(assert (=> b!2568309 (= e!1621244 (nullable!2548 lt!905414))))

(declare-fun b!2568310 () Bool)

(declare-fun res!1080503 () Bool)

(assert (=> b!2568310 (=> (not res!1080503) (not e!1621250))))

(declare-fun call!165544 () Bool)

(assert (=> b!2568310 (= res!1080503 (not call!165544))))

(declare-fun b!2568312 () Bool)

(declare-fun res!1080506 () Bool)

(declare-fun e!1621245 () Bool)

(assert (=> b!2568312 (=> res!1080506 e!1621245)))

(declare-fun isEmpty!17052 (List!29696) Bool)

(declare-fun tail!4111 (List!29696) List!29696)

(assert (=> b!2568312 (= res!1080506 (not (isEmpty!17052 (tail!4111 tl!4068))))))

(declare-fun b!2568313 () Bool)

(declare-fun e!1621246 () Bool)

(declare-fun lt!905446 () Bool)

(assert (=> b!2568313 (= e!1621246 (not lt!905446))))

(declare-fun b!2568314 () Bool)

(declare-fun e!1621249 () Bool)

(assert (=> b!2568314 (= e!1621249 e!1621246)))

(declare-fun c!413190 () Bool)

(assert (=> b!2568314 (= c!413190 ((_ is EmptyLang!7631) lt!905414))))

(declare-fun bm!165539 () Bool)

(assert (=> bm!165539 (= call!165544 (isEmpty!17052 tl!4068))))

(declare-fun b!2568315 () Bool)

(declare-fun e!1621248 () Bool)

(declare-fun e!1621247 () Bool)

(assert (=> b!2568315 (= e!1621248 e!1621247)))

(declare-fun res!1080504 () Bool)

(assert (=> b!2568315 (=> (not res!1080504) (not e!1621247))))

(assert (=> b!2568315 (= res!1080504 (not lt!905446))))

(declare-fun b!2568316 () Bool)

(declare-fun res!1080507 () Bool)

(assert (=> b!2568316 (=> res!1080507 e!1621248)))

(assert (=> b!2568316 (= res!1080507 e!1621250)))

(declare-fun res!1080509 () Bool)

(assert (=> b!2568316 (=> (not res!1080509) (not e!1621250))))

(assert (=> b!2568316 (= res!1080509 lt!905446)))

(declare-fun b!2568317 () Bool)

(assert (=> b!2568317 (= e!1621247 e!1621245)))

(declare-fun res!1080508 () Bool)

(assert (=> b!2568317 (=> res!1080508 e!1621245)))

(assert (=> b!2568317 (= res!1080508 call!165544)))

(declare-fun b!2568318 () Bool)

(declare-fun res!1080505 () Bool)

(assert (=> b!2568318 (=> (not res!1080505) (not e!1621250))))

(assert (=> b!2568318 (= res!1080505 (isEmpty!17052 (tail!4111 tl!4068)))))

(declare-fun b!2568319 () Bool)

(assert (=> b!2568319 (= e!1621249 (= lt!905446 call!165544))))

(declare-fun b!2568320 () Bool)

(assert (=> b!2568320 (= e!1621244 (matchR!3574 (derivativeStep!2200 lt!905414 (head!5836 tl!4068)) (tail!4111 tl!4068)))))

(declare-fun b!2568321 () Bool)

(assert (=> b!2568321 (= e!1621245 (not (= (head!5836 tl!4068) (c!413111 lt!905414))))))

(declare-fun b!2568311 () Bool)

(declare-fun res!1080502 () Bool)

(assert (=> b!2568311 (=> res!1080502 e!1621248)))

(assert (=> b!2568311 (= res!1080502 (not ((_ is ElementMatch!7631) lt!905414)))))

(assert (=> b!2568311 (= e!1621246 e!1621248)))

(declare-fun d!726907 () Bool)

(assert (=> d!726907 e!1621249))

(declare-fun c!413188 () Bool)

(assert (=> d!726907 (= c!413188 ((_ is EmptyExpr!7631) lt!905414))))

(assert (=> d!726907 (= lt!905446 e!1621244)))

(declare-fun c!413189 () Bool)

(assert (=> d!726907 (= c!413189 (isEmpty!17052 tl!4068))))

(assert (=> d!726907 (validRegex!3257 lt!905414)))

(assert (=> d!726907 (= (matchR!3574 lt!905414 tl!4068) lt!905446)))

(assert (= (and d!726907 c!413189) b!2568309))

(assert (= (and d!726907 (not c!413189)) b!2568320))

(assert (= (and d!726907 c!413188) b!2568319))

(assert (= (and d!726907 (not c!413188)) b!2568314))

(assert (= (and b!2568314 c!413190) b!2568313))

(assert (= (and b!2568314 (not c!413190)) b!2568311))

(assert (= (and b!2568311 (not res!1080502)) b!2568316))

(assert (= (and b!2568316 res!1080509) b!2568310))

(assert (= (and b!2568310 res!1080503) b!2568318))

(assert (= (and b!2568318 res!1080505) b!2568308))

(assert (= (and b!2568316 (not res!1080507)) b!2568315))

(assert (= (and b!2568315 res!1080504) b!2568317))

(assert (= (and b!2568317 (not res!1080508)) b!2568312))

(assert (= (and b!2568312 (not res!1080506)) b!2568321))

(assert (= (or b!2568319 b!2568310 b!2568317) bm!165539))

(declare-fun m!2905459 () Bool)

(assert (=> b!2568320 m!2905459))

(assert (=> b!2568320 m!2905459))

(declare-fun m!2905461 () Bool)

(assert (=> b!2568320 m!2905461))

(declare-fun m!2905463 () Bool)

(assert (=> b!2568320 m!2905463))

(assert (=> b!2568320 m!2905461))

(assert (=> b!2568320 m!2905463))

(declare-fun m!2905465 () Bool)

(assert (=> b!2568320 m!2905465))

(assert (=> b!2568321 m!2905459))

(declare-fun m!2905467 () Bool)

(assert (=> b!2568309 m!2905467))

(declare-fun m!2905469 () Bool)

(assert (=> bm!165539 m!2905469))

(assert (=> b!2568318 m!2905463))

(assert (=> b!2568318 m!2905463))

(declare-fun m!2905471 () Bool)

(assert (=> b!2568318 m!2905471))

(assert (=> b!2568312 m!2905463))

(assert (=> b!2568312 m!2905463))

(assert (=> b!2568312 m!2905471))

(assert (=> d!726907 m!2905469))

(declare-fun m!2905473 () Bool)

(assert (=> d!726907 m!2905473))

(assert (=> b!2568308 m!2905459))

(assert (=> b!2568076 d!726907))

(declare-fun b!2568338 () Bool)

(declare-fun e!1621265 () Bool)

(assert (=> b!2568338 (= e!1621265 (= (head!5836 Nil!29596) (c!413111 (derivative!326 lt!905420 tl!4068))))))

(declare-fun b!2568339 () Bool)

(declare-fun e!1621259 () Bool)

(assert (=> b!2568339 (= e!1621259 (nullable!2548 (derivative!326 lt!905420 tl!4068)))))

(declare-fun b!2568340 () Bool)

(declare-fun res!1080519 () Bool)

(assert (=> b!2568340 (=> (not res!1080519) (not e!1621265))))

(declare-fun call!165546 () Bool)

(assert (=> b!2568340 (= res!1080519 (not call!165546))))

(declare-fun b!2568342 () Bool)

(declare-fun res!1080522 () Bool)

(declare-fun e!1621260 () Bool)

(assert (=> b!2568342 (=> res!1080522 e!1621260)))

(assert (=> b!2568342 (= res!1080522 (not (isEmpty!17052 (tail!4111 Nil!29596))))))

(declare-fun b!2568343 () Bool)

(declare-fun e!1621261 () Bool)

(declare-fun lt!905450 () Bool)

(assert (=> b!2568343 (= e!1621261 (not lt!905450))))

(declare-fun b!2568344 () Bool)

(declare-fun e!1621264 () Bool)

(assert (=> b!2568344 (= e!1621264 e!1621261)))

(declare-fun c!413197 () Bool)

(assert (=> b!2568344 (= c!413197 ((_ is EmptyLang!7631) (derivative!326 lt!905420 tl!4068)))))

(declare-fun bm!165541 () Bool)

(assert (=> bm!165541 (= call!165546 (isEmpty!17052 Nil!29596))))

(declare-fun b!2568345 () Bool)

(declare-fun e!1621263 () Bool)

(declare-fun e!1621262 () Bool)

(assert (=> b!2568345 (= e!1621263 e!1621262)))

(declare-fun res!1080520 () Bool)

(assert (=> b!2568345 (=> (not res!1080520) (not e!1621262))))

(assert (=> b!2568345 (= res!1080520 (not lt!905450))))

(declare-fun b!2568346 () Bool)

(declare-fun res!1080523 () Bool)

(assert (=> b!2568346 (=> res!1080523 e!1621263)))

(assert (=> b!2568346 (= res!1080523 e!1621265)))

(declare-fun res!1080525 () Bool)

(assert (=> b!2568346 (=> (not res!1080525) (not e!1621265))))

(assert (=> b!2568346 (= res!1080525 lt!905450)))

(declare-fun b!2568347 () Bool)

(assert (=> b!2568347 (= e!1621262 e!1621260)))

(declare-fun res!1080524 () Bool)

(assert (=> b!2568347 (=> res!1080524 e!1621260)))

(assert (=> b!2568347 (= res!1080524 call!165546)))

(declare-fun b!2568348 () Bool)

(declare-fun res!1080521 () Bool)

(assert (=> b!2568348 (=> (not res!1080521) (not e!1621265))))

(assert (=> b!2568348 (= res!1080521 (isEmpty!17052 (tail!4111 Nil!29596)))))

(declare-fun b!2568349 () Bool)

(assert (=> b!2568349 (= e!1621264 (= lt!905450 call!165546))))

(declare-fun b!2568350 () Bool)

(assert (=> b!2568350 (= e!1621259 (matchR!3574 (derivativeStep!2200 (derivative!326 lt!905420 tl!4068) (head!5836 Nil!29596)) (tail!4111 Nil!29596)))))

(declare-fun b!2568351 () Bool)

(assert (=> b!2568351 (= e!1621260 (not (= (head!5836 Nil!29596) (c!413111 (derivative!326 lt!905420 tl!4068)))))))

(declare-fun b!2568341 () Bool)

(declare-fun res!1080518 () Bool)

(assert (=> b!2568341 (=> res!1080518 e!1621263)))

(assert (=> b!2568341 (= res!1080518 (not ((_ is ElementMatch!7631) (derivative!326 lt!905420 tl!4068))))))

(assert (=> b!2568341 (= e!1621261 e!1621263)))

(declare-fun d!726923 () Bool)

(assert (=> d!726923 e!1621264))

(declare-fun c!413195 () Bool)

(assert (=> d!726923 (= c!413195 ((_ is EmptyExpr!7631) (derivative!326 lt!905420 tl!4068)))))

(assert (=> d!726923 (= lt!905450 e!1621259)))

(declare-fun c!413196 () Bool)

(assert (=> d!726923 (= c!413196 (isEmpty!17052 Nil!29596))))

(assert (=> d!726923 (validRegex!3257 (derivative!326 lt!905420 tl!4068))))

(assert (=> d!726923 (= (matchR!3574 (derivative!326 lt!905420 tl!4068) Nil!29596) lt!905450)))

(assert (= (and d!726923 c!413196) b!2568339))

(assert (= (and d!726923 (not c!413196)) b!2568350))

(assert (= (and d!726923 c!413195) b!2568349))

(assert (= (and d!726923 (not c!413195)) b!2568344))

(assert (= (and b!2568344 c!413197) b!2568343))

(assert (= (and b!2568344 (not c!413197)) b!2568341))

(assert (= (and b!2568341 (not res!1080518)) b!2568346))

(assert (= (and b!2568346 res!1080525) b!2568340))

(assert (= (and b!2568340 res!1080519) b!2568348))

(assert (= (and b!2568348 res!1080521) b!2568338))

(assert (= (and b!2568346 (not res!1080523)) b!2568345))

(assert (= (and b!2568345 res!1080520) b!2568347))

(assert (= (and b!2568347 (not res!1080524)) b!2568342))

(assert (= (and b!2568342 (not res!1080522)) b!2568351))

(assert (= (or b!2568349 b!2568340 b!2568347) bm!165541))

(declare-fun m!2905483 () Bool)

(assert (=> b!2568350 m!2905483))

(assert (=> b!2568350 m!2905337))

(assert (=> b!2568350 m!2905483))

(declare-fun m!2905487 () Bool)

(assert (=> b!2568350 m!2905487))

(declare-fun m!2905489 () Bool)

(assert (=> b!2568350 m!2905489))

(assert (=> b!2568350 m!2905487))

(assert (=> b!2568350 m!2905489))

(declare-fun m!2905493 () Bool)

(assert (=> b!2568350 m!2905493))

(assert (=> b!2568351 m!2905483))

(assert (=> b!2568339 m!2905337))

(declare-fun m!2905497 () Bool)

(assert (=> b!2568339 m!2905497))

(declare-fun m!2905499 () Bool)

(assert (=> bm!165541 m!2905499))

(assert (=> b!2568348 m!2905489))

(assert (=> b!2568348 m!2905489))

(declare-fun m!2905501 () Bool)

(assert (=> b!2568348 m!2905501))

(assert (=> b!2568342 m!2905489))

(assert (=> b!2568342 m!2905489))

(assert (=> b!2568342 m!2905501))

(assert (=> d!726923 m!2905499))

(assert (=> d!726923 m!2905337))

(declare-fun m!2905503 () Bool)

(assert (=> d!726923 m!2905503))

(assert (=> b!2568338 m!2905483))

(assert (=> b!2568076 d!726923))

(declare-fun d!726929 () Bool)

(declare-fun e!1621288 () Bool)

(assert (=> d!726929 e!1621288))

(declare-fun res!1080550 () Bool)

(assert (=> d!726929 (=> res!1080550 e!1621288)))

(assert (=> d!726929 (= res!1080550 (matchR!3574 lt!905414 tl!4068))))

(declare-fun lt!905457 () Unit!43443)

(declare-fun choose!15135 (Regex!7631 Regex!7631 List!29696) Unit!43443)

(assert (=> d!726929 (= lt!905457 (choose!15135 lt!905414 EmptyLang!7631 tl!4068))))

(declare-fun e!1621289 () Bool)

(assert (=> d!726929 e!1621289))

(declare-fun res!1080551 () Bool)

(assert (=> d!726929 (=> (not res!1080551) (not e!1621289))))

(assert (=> d!726929 (= res!1080551 (validRegex!3257 lt!905414))))

(assert (=> d!726929 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!220 lt!905414 EmptyLang!7631 tl!4068) lt!905457)))

(declare-fun b!2568388 () Bool)

(assert (=> b!2568388 (= e!1621289 (validRegex!3257 EmptyLang!7631))))

(declare-fun b!2568389 () Bool)

(assert (=> b!2568389 (= e!1621288 (matchR!3574 EmptyLang!7631 tl!4068))))

(assert (= (and d!726929 res!1080551) b!2568388))

(assert (= (and d!726929 (not res!1080550)) b!2568389))

(assert (=> d!726929 m!2905341))

(declare-fun m!2905521 () Bool)

(assert (=> d!726929 m!2905521))

(assert (=> d!726929 m!2905473))

(declare-fun m!2905523 () Bool)

(assert (=> b!2568388 m!2905523))

(assert (=> b!2568389 m!2905345))

(assert (=> b!2568076 d!726929))

(declare-fun d!726933 () Bool)

(declare-fun lt!905459 () Regex!7631)

(assert (=> d!726933 (validRegex!3257 lt!905459)))

(declare-fun e!1621292 () Regex!7631)

(assert (=> d!726933 (= lt!905459 e!1621292)))

(declare-fun c!413204 () Bool)

(assert (=> d!726933 (= c!413204 ((_ is Cons!29596) tl!4068))))

(assert (=> d!726933 (validRegex!3257 lt!905420)))

(assert (=> d!726933 (= (derivative!326 lt!905420 tl!4068) lt!905459)))

(declare-fun b!2568392 () Bool)

(assert (=> b!2568392 (= e!1621292 (derivative!326 (derivativeStep!2200 lt!905420 (h!35016 tl!4068)) (t!211395 tl!4068)))))

(declare-fun b!2568393 () Bool)

(assert (=> b!2568393 (= e!1621292 lt!905420)))

(assert (= (and d!726933 c!413204) b!2568392))

(assert (= (and d!726933 (not c!413204)) b!2568393))

(declare-fun m!2905527 () Bool)

(assert (=> d!726933 m!2905527))

(declare-fun m!2905529 () Bool)

(assert (=> d!726933 m!2905529))

(declare-fun m!2905531 () Bool)

(assert (=> b!2568392 m!2905531))

(assert (=> b!2568392 m!2905531))

(declare-fun m!2905533 () Bool)

(assert (=> b!2568392 m!2905533))

(assert (=> b!2568076 d!726933))

(declare-fun d!726937 () Bool)

(assert (=> d!726937 (= (derivative!326 EmptyLang!7631 tl!4068) EmptyLang!7631)))

(declare-fun lt!905462 () Unit!43443)

(declare-fun choose!15136 (Regex!7631 List!29696) Unit!43443)

(assert (=> d!726937 (= lt!905462 (choose!15136 EmptyLang!7631 tl!4068))))

(assert (=> d!726937 (= EmptyLang!7631 EmptyLang!7631)))

(assert (=> d!726937 (= (lemmaEmptyLangDerivativeIsAFixPoint!60 EmptyLang!7631 tl!4068) lt!905462)))

(declare-fun bs!469974 () Bool)

(assert (= bs!469974 d!726937))

(assert (=> bs!469974 m!2905327))

(declare-fun m!2905543 () Bool)

(assert (=> bs!469974 m!2905543))

(assert (=> b!2568076 d!726937))

(declare-fun d!726941 () Bool)

(assert (=> d!726941 (= (matchR!3574 lt!905420 tl!4068) (matchR!3574 (derivative!326 lt!905420 tl!4068) Nil!29596))))

(declare-fun lt!905465 () Unit!43443)

(declare-fun choose!15137 (Regex!7631 List!29696) Unit!43443)

(assert (=> d!726941 (= lt!905465 (choose!15137 lt!905420 tl!4068))))

(assert (=> d!726941 (validRegex!3257 lt!905420)))

(assert (=> d!726941 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!220 lt!905420 tl!4068) lt!905465)))

(declare-fun bs!469975 () Bool)

(assert (= bs!469975 d!726941))

(assert (=> bs!469975 m!2905337))

(declare-fun m!2905545 () Bool)

(assert (=> bs!469975 m!2905545))

(assert (=> bs!469975 m!2905331))

(assert (=> bs!469975 m!2905529))

(assert (=> bs!469975 m!2905337))

(assert (=> bs!469975 m!2905339))

(assert (=> b!2568076 d!726941))

(declare-fun b!2568438 () Bool)

(declare-fun e!1621316 () Bool)

(assert (=> b!2568438 (= e!1621316 (= (head!5836 tl!4068) (c!413111 lt!905420)))))

(declare-fun b!2568439 () Bool)

(declare-fun e!1621310 () Bool)

(assert (=> b!2568439 (= e!1621310 (nullable!2548 lt!905420))))

(declare-fun b!2568440 () Bool)

(declare-fun res!1080560 () Bool)

(assert (=> b!2568440 (=> (not res!1080560) (not e!1621316))))

(declare-fun call!165552 () Bool)

(assert (=> b!2568440 (= res!1080560 (not call!165552))))

(declare-fun b!2568442 () Bool)

(declare-fun res!1080563 () Bool)

(declare-fun e!1621311 () Bool)

(assert (=> b!2568442 (=> res!1080563 e!1621311)))

(assert (=> b!2568442 (= res!1080563 (not (isEmpty!17052 (tail!4111 tl!4068))))))

(declare-fun b!2568443 () Bool)

(declare-fun e!1621312 () Bool)

(declare-fun lt!905466 () Bool)

(assert (=> b!2568443 (= e!1621312 (not lt!905466))))

(declare-fun b!2568444 () Bool)

(declare-fun e!1621315 () Bool)

(assert (=> b!2568444 (= e!1621315 e!1621312)))

(declare-fun c!413209 () Bool)

(assert (=> b!2568444 (= c!413209 ((_ is EmptyLang!7631) lt!905420))))

(declare-fun bm!165547 () Bool)

(assert (=> bm!165547 (= call!165552 (isEmpty!17052 tl!4068))))

(declare-fun b!2568445 () Bool)

(declare-fun e!1621314 () Bool)

(declare-fun e!1621313 () Bool)

(assert (=> b!2568445 (= e!1621314 e!1621313)))

(declare-fun res!1080561 () Bool)

(assert (=> b!2568445 (=> (not res!1080561) (not e!1621313))))

(assert (=> b!2568445 (= res!1080561 (not lt!905466))))

(declare-fun b!2568446 () Bool)

(declare-fun res!1080564 () Bool)

(assert (=> b!2568446 (=> res!1080564 e!1621314)))

(assert (=> b!2568446 (= res!1080564 e!1621316)))

(declare-fun res!1080566 () Bool)

(assert (=> b!2568446 (=> (not res!1080566) (not e!1621316))))

(assert (=> b!2568446 (= res!1080566 lt!905466)))

(declare-fun b!2568447 () Bool)

(assert (=> b!2568447 (= e!1621313 e!1621311)))

(declare-fun res!1080565 () Bool)

(assert (=> b!2568447 (=> res!1080565 e!1621311)))

(assert (=> b!2568447 (= res!1080565 call!165552)))

(declare-fun b!2568448 () Bool)

(declare-fun res!1080562 () Bool)

(assert (=> b!2568448 (=> (not res!1080562) (not e!1621316))))

(assert (=> b!2568448 (= res!1080562 (isEmpty!17052 (tail!4111 tl!4068)))))

(declare-fun b!2568449 () Bool)

(assert (=> b!2568449 (= e!1621315 (= lt!905466 call!165552))))

(declare-fun b!2568450 () Bool)

(assert (=> b!2568450 (= e!1621310 (matchR!3574 (derivativeStep!2200 lt!905420 (head!5836 tl!4068)) (tail!4111 tl!4068)))))

(declare-fun b!2568451 () Bool)

(assert (=> b!2568451 (= e!1621311 (not (= (head!5836 tl!4068) (c!413111 lt!905420))))))

(declare-fun b!2568441 () Bool)

(declare-fun res!1080559 () Bool)

(assert (=> b!2568441 (=> res!1080559 e!1621314)))

(assert (=> b!2568441 (= res!1080559 (not ((_ is ElementMatch!7631) lt!905420)))))

(assert (=> b!2568441 (= e!1621312 e!1621314)))

(declare-fun d!726943 () Bool)

(assert (=> d!726943 e!1621315))

(declare-fun c!413207 () Bool)

(assert (=> d!726943 (= c!413207 ((_ is EmptyExpr!7631) lt!905420))))

(assert (=> d!726943 (= lt!905466 e!1621310)))

(declare-fun c!413208 () Bool)

(assert (=> d!726943 (= c!413208 (isEmpty!17052 tl!4068))))

(assert (=> d!726943 (validRegex!3257 lt!905420)))

(assert (=> d!726943 (= (matchR!3574 lt!905420 tl!4068) lt!905466)))

(assert (= (and d!726943 c!413208) b!2568439))

(assert (= (and d!726943 (not c!413208)) b!2568450))

(assert (= (and d!726943 c!413207) b!2568449))

(assert (= (and d!726943 (not c!413207)) b!2568444))

(assert (= (and b!2568444 c!413209) b!2568443))

(assert (= (and b!2568444 (not c!413209)) b!2568441))

(assert (= (and b!2568441 (not res!1080559)) b!2568446))

(assert (= (and b!2568446 res!1080566) b!2568440))

(assert (= (and b!2568440 res!1080560) b!2568448))

(assert (= (and b!2568448 res!1080562) b!2568438))

(assert (= (and b!2568446 (not res!1080564)) b!2568445))

(assert (= (and b!2568445 res!1080561) b!2568447))

(assert (= (and b!2568447 (not res!1080565)) b!2568442))

(assert (= (and b!2568442 (not res!1080563)) b!2568451))

(assert (= (or b!2568449 b!2568440 b!2568447) bm!165547))

(assert (=> b!2568450 m!2905459))

(assert (=> b!2568450 m!2905459))

(declare-fun m!2905547 () Bool)

(assert (=> b!2568450 m!2905547))

(assert (=> b!2568450 m!2905463))

(assert (=> b!2568450 m!2905547))

(assert (=> b!2568450 m!2905463))

(declare-fun m!2905549 () Bool)

(assert (=> b!2568450 m!2905549))

(assert (=> b!2568451 m!2905459))

(declare-fun m!2905551 () Bool)

(assert (=> b!2568439 m!2905551))

(assert (=> bm!165547 m!2905469))

(assert (=> b!2568448 m!2905463))

(assert (=> b!2568448 m!2905463))

(assert (=> b!2568448 m!2905471))

(assert (=> b!2568442 m!2905463))

(assert (=> b!2568442 m!2905463))

(assert (=> b!2568442 m!2905471))

(assert (=> d!726943 m!2905469))

(assert (=> d!726943 m!2905529))

(assert (=> b!2568438 m!2905459))

(assert (=> b!2568076 d!726943))

(declare-fun d!726945 () Bool)

(declare-fun lt!905467 () Regex!7631)

(assert (=> d!726945 (validRegex!3257 lt!905467)))

(declare-fun e!1621317 () Regex!7631)

(assert (=> d!726945 (= lt!905467 e!1621317)))

(declare-fun c!413210 () Bool)

(assert (=> d!726945 (= c!413210 ((_ is Cons!29596) tl!4068))))

(assert (=> d!726945 (validRegex!3257 EmptyLang!7631)))

(assert (=> d!726945 (= (derivative!326 EmptyLang!7631 tl!4068) lt!905467)))

(declare-fun b!2568452 () Bool)

(assert (=> b!2568452 (= e!1621317 (derivative!326 (derivativeStep!2200 EmptyLang!7631 (h!35016 tl!4068)) (t!211395 tl!4068)))))

(declare-fun b!2568453 () Bool)

(assert (=> b!2568453 (= e!1621317 EmptyLang!7631)))

(assert (= (and d!726945 c!413210) b!2568452))

(assert (= (and d!726945 (not c!413210)) b!2568453))

(declare-fun m!2905553 () Bool)

(assert (=> d!726945 m!2905553))

(assert (=> d!726945 m!2905523))

(declare-fun m!2905555 () Bool)

(assert (=> b!2568452 m!2905555))

(assert (=> b!2568452 m!2905555))

(declare-fun m!2905557 () Bool)

(assert (=> b!2568452 m!2905557))

(assert (=> b!2568076 d!726945))

(declare-fun b!2568454 () Bool)

(declare-fun e!1621324 () Bool)

(assert (=> b!2568454 (= e!1621324 (= (head!5836 tl!4068) (c!413111 EmptyLang!7631)))))

(declare-fun b!2568455 () Bool)

(declare-fun e!1621318 () Bool)

(assert (=> b!2568455 (= e!1621318 (nullable!2548 EmptyLang!7631))))

(declare-fun b!2568456 () Bool)

(declare-fun res!1080568 () Bool)

(assert (=> b!2568456 (=> (not res!1080568) (not e!1621324))))

(declare-fun call!165553 () Bool)

(assert (=> b!2568456 (= res!1080568 (not call!165553))))

(declare-fun b!2568458 () Bool)

(declare-fun res!1080571 () Bool)

(declare-fun e!1621319 () Bool)

(assert (=> b!2568458 (=> res!1080571 e!1621319)))

(assert (=> b!2568458 (= res!1080571 (not (isEmpty!17052 (tail!4111 tl!4068))))))

(declare-fun b!2568459 () Bool)

(declare-fun e!1621320 () Bool)

(declare-fun lt!905468 () Bool)

(assert (=> b!2568459 (= e!1621320 (not lt!905468))))

(declare-fun b!2568460 () Bool)

(declare-fun e!1621323 () Bool)

(assert (=> b!2568460 (= e!1621323 e!1621320)))

(declare-fun c!413213 () Bool)

(assert (=> b!2568460 (= c!413213 ((_ is EmptyLang!7631) EmptyLang!7631))))

(declare-fun bm!165548 () Bool)

(assert (=> bm!165548 (= call!165553 (isEmpty!17052 tl!4068))))

(declare-fun b!2568461 () Bool)

(declare-fun e!1621322 () Bool)

(declare-fun e!1621321 () Bool)

(assert (=> b!2568461 (= e!1621322 e!1621321)))

(declare-fun res!1080569 () Bool)

(assert (=> b!2568461 (=> (not res!1080569) (not e!1621321))))

(assert (=> b!2568461 (= res!1080569 (not lt!905468))))

(declare-fun b!2568462 () Bool)

(declare-fun res!1080572 () Bool)

(assert (=> b!2568462 (=> res!1080572 e!1621322)))

(assert (=> b!2568462 (= res!1080572 e!1621324)))

(declare-fun res!1080574 () Bool)

(assert (=> b!2568462 (=> (not res!1080574) (not e!1621324))))

(assert (=> b!2568462 (= res!1080574 lt!905468)))

(declare-fun b!2568463 () Bool)

(assert (=> b!2568463 (= e!1621321 e!1621319)))

(declare-fun res!1080573 () Bool)

(assert (=> b!2568463 (=> res!1080573 e!1621319)))

(assert (=> b!2568463 (= res!1080573 call!165553)))

(declare-fun b!2568464 () Bool)

(declare-fun res!1080570 () Bool)

(assert (=> b!2568464 (=> (not res!1080570) (not e!1621324))))

(assert (=> b!2568464 (= res!1080570 (isEmpty!17052 (tail!4111 tl!4068)))))

(declare-fun b!2568465 () Bool)

(assert (=> b!2568465 (= e!1621323 (= lt!905468 call!165553))))

(declare-fun b!2568466 () Bool)

(assert (=> b!2568466 (= e!1621318 (matchR!3574 (derivativeStep!2200 EmptyLang!7631 (head!5836 tl!4068)) (tail!4111 tl!4068)))))

(declare-fun b!2568467 () Bool)

(assert (=> b!2568467 (= e!1621319 (not (= (head!5836 tl!4068) (c!413111 EmptyLang!7631))))))

(declare-fun b!2568457 () Bool)

(declare-fun res!1080567 () Bool)

(assert (=> b!2568457 (=> res!1080567 e!1621322)))

(assert (=> b!2568457 (= res!1080567 (not ((_ is ElementMatch!7631) EmptyLang!7631)))))

(assert (=> b!2568457 (= e!1621320 e!1621322)))

(declare-fun d!726947 () Bool)

(assert (=> d!726947 e!1621323))

(declare-fun c!413211 () Bool)

(assert (=> d!726947 (= c!413211 ((_ is EmptyExpr!7631) EmptyLang!7631))))

(assert (=> d!726947 (= lt!905468 e!1621318)))

(declare-fun c!413212 () Bool)

(assert (=> d!726947 (= c!413212 (isEmpty!17052 tl!4068))))

(assert (=> d!726947 (validRegex!3257 EmptyLang!7631)))

(assert (=> d!726947 (= (matchR!3574 EmptyLang!7631 tl!4068) lt!905468)))

(assert (= (and d!726947 c!413212) b!2568455))

(assert (= (and d!726947 (not c!413212)) b!2568466))

(assert (= (and d!726947 c!413211) b!2568465))

(assert (= (and d!726947 (not c!413211)) b!2568460))

(assert (= (and b!2568460 c!413213) b!2568459))

(assert (= (and b!2568460 (not c!413213)) b!2568457))

(assert (= (and b!2568457 (not res!1080567)) b!2568462))

(assert (= (and b!2568462 res!1080574) b!2568456))

(assert (= (and b!2568456 res!1080568) b!2568464))

(assert (= (and b!2568464 res!1080570) b!2568454))

(assert (= (and b!2568462 (not res!1080572)) b!2568461))

(assert (= (and b!2568461 res!1080569) b!2568463))

(assert (= (and b!2568463 (not res!1080573)) b!2568458))

(assert (= (and b!2568458 (not res!1080571)) b!2568467))

(assert (= (or b!2568465 b!2568456 b!2568463) bm!165548))

(assert (=> b!2568466 m!2905459))

(assert (=> b!2568466 m!2905459))

(declare-fun m!2905559 () Bool)

(assert (=> b!2568466 m!2905559))

(assert (=> b!2568466 m!2905463))

(assert (=> b!2568466 m!2905559))

(assert (=> b!2568466 m!2905463))

(declare-fun m!2905561 () Bool)

(assert (=> b!2568466 m!2905561))

(assert (=> b!2568467 m!2905459))

(declare-fun m!2905563 () Bool)

(assert (=> b!2568455 m!2905563))

(assert (=> bm!165548 m!2905469))

(assert (=> b!2568464 m!2905463))

(assert (=> b!2568464 m!2905463))

(assert (=> b!2568464 m!2905471))

(assert (=> b!2568458 m!2905463))

(assert (=> b!2568458 m!2905463))

(assert (=> b!2568458 m!2905471))

(assert (=> d!726947 m!2905469))

(assert (=> d!726947 m!2905523))

(assert (=> b!2568454 m!2905459))

(assert (=> b!2568077 d!726947))

(declare-fun b!2568480 () Bool)

(declare-fun e!1621327 () Bool)

(declare-fun tp!817484 () Bool)

(assert (=> b!2568480 (= e!1621327 tp!817484)))

(declare-fun b!2568479 () Bool)

(declare-fun tp!817485 () Bool)

(declare-fun tp!817486 () Bool)

(assert (=> b!2568479 (= e!1621327 (and tp!817485 tp!817486))))

(declare-fun b!2568478 () Bool)

(assert (=> b!2568478 (= e!1621327 tp_is_empty!13117)))

(declare-fun b!2568481 () Bool)

(declare-fun tp!817487 () Bool)

(declare-fun tp!817483 () Bool)

(assert (=> b!2568481 (= e!1621327 (and tp!817487 tp!817483))))

(assert (=> b!2568074 (= tp!817431 e!1621327)))

(assert (= (and b!2568074 ((_ is ElementMatch!7631) (regOne!15775 r!27340))) b!2568478))

(assert (= (and b!2568074 ((_ is Concat!12327) (regOne!15775 r!27340))) b!2568479))

(assert (= (and b!2568074 ((_ is Star!7631) (regOne!15775 r!27340))) b!2568480))

(assert (= (and b!2568074 ((_ is Union!7631) (regOne!15775 r!27340))) b!2568481))

(declare-fun b!2568484 () Bool)

(declare-fun e!1621328 () Bool)

(declare-fun tp!817489 () Bool)

(assert (=> b!2568484 (= e!1621328 tp!817489)))

(declare-fun b!2568483 () Bool)

(declare-fun tp!817490 () Bool)

(declare-fun tp!817491 () Bool)

(assert (=> b!2568483 (= e!1621328 (and tp!817490 tp!817491))))

(declare-fun b!2568482 () Bool)

(assert (=> b!2568482 (= e!1621328 tp_is_empty!13117)))

(declare-fun b!2568485 () Bool)

(declare-fun tp!817492 () Bool)

(declare-fun tp!817488 () Bool)

(assert (=> b!2568485 (= e!1621328 (and tp!817492 tp!817488))))

(assert (=> b!2568074 (= tp!817433 e!1621328)))

(assert (= (and b!2568074 ((_ is ElementMatch!7631) (regTwo!15775 r!27340))) b!2568482))

(assert (= (and b!2568074 ((_ is Concat!12327) (regTwo!15775 r!27340))) b!2568483))

(assert (= (and b!2568074 ((_ is Star!7631) (regTwo!15775 r!27340))) b!2568484))

(assert (= (and b!2568074 ((_ is Union!7631) (regTwo!15775 r!27340))) b!2568485))

(declare-fun b!2568488 () Bool)

(declare-fun e!1621329 () Bool)

(declare-fun tp!817494 () Bool)

(assert (=> b!2568488 (= e!1621329 tp!817494)))

(declare-fun b!2568487 () Bool)

(declare-fun tp!817495 () Bool)

(declare-fun tp!817496 () Bool)

(assert (=> b!2568487 (= e!1621329 (and tp!817495 tp!817496))))

(declare-fun b!2568486 () Bool)

(assert (=> b!2568486 (= e!1621329 tp_is_empty!13117)))

(declare-fun b!2568489 () Bool)

(declare-fun tp!817497 () Bool)

(declare-fun tp!817493 () Bool)

(assert (=> b!2568489 (= e!1621329 (and tp!817497 tp!817493))))

(assert (=> b!2568079 (= tp!817430 e!1621329)))

(assert (= (and b!2568079 ((_ is ElementMatch!7631) (reg!7960 r!27340))) b!2568486))

(assert (= (and b!2568079 ((_ is Concat!12327) (reg!7960 r!27340))) b!2568487))

(assert (= (and b!2568079 ((_ is Star!7631) (reg!7960 r!27340))) b!2568488))

(assert (= (and b!2568079 ((_ is Union!7631) (reg!7960 r!27340))) b!2568489))

(declare-fun b!2568492 () Bool)

(declare-fun e!1621330 () Bool)

(declare-fun tp!817499 () Bool)

(assert (=> b!2568492 (= e!1621330 tp!817499)))

(declare-fun b!2568491 () Bool)

(declare-fun tp!817500 () Bool)

(declare-fun tp!817501 () Bool)

(assert (=> b!2568491 (= e!1621330 (and tp!817500 tp!817501))))

(declare-fun b!2568490 () Bool)

(assert (=> b!2568490 (= e!1621330 tp_is_empty!13117)))

(declare-fun b!2568493 () Bool)

(declare-fun tp!817502 () Bool)

(declare-fun tp!817498 () Bool)

(assert (=> b!2568493 (= e!1621330 (and tp!817502 tp!817498))))

(assert (=> b!2568070 (= tp!817434 e!1621330)))

(assert (= (and b!2568070 ((_ is ElementMatch!7631) (regOne!15774 r!27340))) b!2568490))

(assert (= (and b!2568070 ((_ is Concat!12327) (regOne!15774 r!27340))) b!2568491))

(assert (= (and b!2568070 ((_ is Star!7631) (regOne!15774 r!27340))) b!2568492))

(assert (= (and b!2568070 ((_ is Union!7631) (regOne!15774 r!27340))) b!2568493))

(declare-fun b!2568496 () Bool)

(declare-fun e!1621331 () Bool)

(declare-fun tp!817504 () Bool)

(assert (=> b!2568496 (= e!1621331 tp!817504)))

(declare-fun b!2568495 () Bool)

(declare-fun tp!817505 () Bool)

(declare-fun tp!817506 () Bool)

(assert (=> b!2568495 (= e!1621331 (and tp!817505 tp!817506))))

(declare-fun b!2568494 () Bool)

(assert (=> b!2568494 (= e!1621331 tp_is_empty!13117)))

(declare-fun b!2568497 () Bool)

(declare-fun tp!817507 () Bool)

(declare-fun tp!817503 () Bool)

(assert (=> b!2568497 (= e!1621331 (and tp!817507 tp!817503))))

(assert (=> b!2568070 (= tp!817429 e!1621331)))

(assert (= (and b!2568070 ((_ is ElementMatch!7631) (regTwo!15774 r!27340))) b!2568494))

(assert (= (and b!2568070 ((_ is Concat!12327) (regTwo!15774 r!27340))) b!2568495))

(assert (= (and b!2568070 ((_ is Star!7631) (regTwo!15774 r!27340))) b!2568496))

(assert (= (and b!2568070 ((_ is Union!7631) (regTwo!15774 r!27340))) b!2568497))

(declare-fun b!2568502 () Bool)

(declare-fun e!1621334 () Bool)

(declare-fun tp!817510 () Bool)

(assert (=> b!2568502 (= e!1621334 (and tp_is_empty!13117 tp!817510))))

(assert (=> b!2568072 (= tp!817432 e!1621334)))

(assert (= (and b!2568072 ((_ is Cons!29596) (t!211395 tl!4068))) b!2568502))

(check-sat (not b!2568312) (not b!2568339) tp_is_empty!13117 (not bm!165488) (not b!2568484) (not b!2568351) (not b!2568502) (not b!2568496) (not b!2568235) (not b!2568479) (not b!2568321) (not b!2568350) (not b!2568488) (not bm!165516) (not b!2568495) (not b!2568454) (not b!2568497) (not b!2568439) (not b!2568308) (not b!2568467) (not bm!165496) (not bm!165518) (not b!2568455) (not d!726947) (not b!2568320) (not b!2568464) (not b!2568487) (not b!2568392) (not bm!165489) (not b!2568342) (not b!2568348) (not b!2568451) (not bm!165523) (not b!2568135) (not d!726933) (not b!2568442) (not d!726907) (not b!2568489) (not bm!165539) (not bm!165521) (not b!2568491) (not bm!165541) (not d!726899) (not b!2568448) (not b!2568388) (not d!726897) (not b!2568493) (not b!2568450) (not d!726889) (not d!726901) (not b!2568481) (not b!2568309) (not d!726941) (not b!2568126) (not b!2568480) (not b!2568338) (not b!2568389) (not bm!165547) (not b!2568452) (not d!726905) (not b!2568211) (not bm!165495) (not d!726943) (not b!2568147) (not b!2568492) (not d!726937) (not d!726923) (not d!726929) (not b!2568318) (not b!2568485) (not bm!165548) (not d!726945) (not b!2568466) (not b!2568458) (not b!2568483) (not b!2568438))
(check-sat)
