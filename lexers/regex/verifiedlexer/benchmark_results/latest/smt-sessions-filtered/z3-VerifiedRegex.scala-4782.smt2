; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!246440 () Bool)

(assert start!246440)

(declare-fun b!2531392 () Bool)

(declare-fun e!1601842 () Bool)

(declare-fun tp_is_empty!12933 () Bool)

(declare-fun tp!808376 () Bool)

(assert (=> b!2531392 (= e!1601842 (and tp_is_empty!12933 tp!808376))))

(declare-fun res!1068668 () Bool)

(declare-fun e!1601841 () Bool)

(assert (=> start!246440 (=> (not res!1068668) (not e!1601841))))

(declare-datatypes ((C!15236 0))(
  ( (C!15237 (val!9270 Int)) )
))
(declare-datatypes ((Regex!7539 0))(
  ( (ElementMatch!7539 (c!404379 C!15236)) (Concat!12235 (regOne!15590 Regex!7539) (regTwo!15590 Regex!7539)) (EmptyExpr!7539) (Star!7539 (reg!7868 Regex!7539)) (EmptyLang!7539) (Union!7539 (regOne!15591 Regex!7539) (regTwo!15591 Regex!7539)) )
))
(declare-fun r!27340 () Regex!7539)

(declare-fun validRegex!3165 (Regex!7539) Bool)

(assert (=> start!246440 (= res!1068668 (validRegex!3165 r!27340))))

(assert (=> start!246440 e!1601841))

(declare-fun e!1601843 () Bool)

(assert (=> start!246440 e!1601843))

(assert (=> start!246440 tp_is_empty!12933))

(assert (=> start!246440 e!1601842))

(declare-fun b!2531393 () Bool)

(declare-fun tp!808375 () Bool)

(assert (=> b!2531393 (= e!1601843 tp!808375)))

(declare-fun b!2531394 () Bool)

(assert (=> b!2531394 (= e!1601843 tp_is_empty!12933)))

(declare-fun b!2531395 () Bool)

(declare-fun tp!808378 () Bool)

(declare-fun tp!808374 () Bool)

(assert (=> b!2531395 (= e!1601843 (and tp!808378 tp!808374))))

(declare-fun b!2531396 () Bool)

(declare-fun res!1068667 () Bool)

(declare-fun e!1601844 () Bool)

(assert (=> b!2531396 (=> (not res!1068667) (not e!1601844))))

(declare-fun lt!901232 () Regex!7539)

(declare-fun c!14016 () C!15236)

(get-info :version)

(assert (=> b!2531396 (= res!1068667 (and (not ((_ is EmptyExpr!7539) r!27340)) (not ((_ is EmptyLang!7539) r!27340)) ((_ is ElementMatch!7539) r!27340) (= c!14016 (c!404379 r!27340)) (= lt!901232 EmptyExpr!7539)))))

(declare-fun b!2531397 () Bool)

(declare-fun res!1068669 () Bool)

(assert (=> b!2531397 (=> (not res!1068669) (not e!1601844))))

(declare-datatypes ((List!29604 0))(
  ( (Nil!29504) (Cons!29504 (h!34924 C!15236) (t!211303 List!29604)) )
))
(declare-fun tl!4068 () List!29604)

(declare-fun isEmpty!16974 (List!29604) Bool)

(assert (=> b!2531397 (= res!1068669 (not (isEmpty!16974 tl!4068)))))

(declare-fun b!2531398 () Bool)

(assert (=> b!2531398 (= e!1601844 (not false))))

(declare-fun lt!901229 () Regex!7539)

(declare-fun lt!901230 () List!29604)

(declare-fun derivative!234 (Regex!7539 List!29604) Regex!7539)

(assert (=> b!2531398 (= (derivative!234 lt!901229 lt!901230) lt!901229)))

(declare-datatypes ((Unit!43295 0))(
  ( (Unit!43296) )
))
(declare-fun lt!901231 () Unit!43295)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!52 (Regex!7539 List!29604) Unit!43295)

(assert (=> b!2531398 (= lt!901231 (lemmaEmptyLangDerivativeIsAFixPoint!52 lt!901229 lt!901230))))

(declare-fun tail!4053 (List!29604) List!29604)

(assert (=> b!2531398 (= lt!901230 (tail!4053 tl!4068))))

(declare-fun derivativeStep!2108 (Regex!7539 C!15236) Regex!7539)

(declare-fun head!5778 (List!29604) C!15236)

(assert (=> b!2531398 (= lt!901229 (derivativeStep!2108 lt!901232 (head!5778 tl!4068)))))

(declare-fun b!2531399 () Bool)

(declare-fun tp!808373 () Bool)

(declare-fun tp!808377 () Bool)

(assert (=> b!2531399 (= e!1601843 (and tp!808373 tp!808377))))

(declare-fun b!2531400 () Bool)

(assert (=> b!2531400 (= e!1601841 e!1601844)))

(declare-fun res!1068670 () Bool)

(assert (=> b!2531400 (=> (not res!1068670) (not e!1601844))))

(declare-fun nullable!2456 (Regex!7539) Bool)

(assert (=> b!2531400 (= res!1068670 (nullable!2456 (derivative!234 lt!901232 tl!4068)))))

(assert (=> b!2531400 (= lt!901232 (derivativeStep!2108 r!27340 c!14016))))

(assert (= (and start!246440 res!1068668) b!2531400))

(assert (= (and b!2531400 res!1068670) b!2531396))

(assert (= (and b!2531396 res!1068667) b!2531397))

(assert (= (and b!2531397 res!1068669) b!2531398))

(assert (= (and start!246440 ((_ is ElementMatch!7539) r!27340)) b!2531394))

(assert (= (and start!246440 ((_ is Concat!12235) r!27340)) b!2531395))

(assert (= (and start!246440 ((_ is Star!7539) r!27340)) b!2531393))

(assert (= (and start!246440 ((_ is Union!7539) r!27340)) b!2531399))

(assert (= (and start!246440 ((_ is Cons!29504) tl!4068)) b!2531392))

(declare-fun m!2882309 () Bool)

(assert (=> start!246440 m!2882309))

(declare-fun m!2882311 () Bool)

(assert (=> b!2531397 m!2882311))

(declare-fun m!2882313 () Bool)

(assert (=> b!2531398 m!2882313))

(declare-fun m!2882315 () Bool)

(assert (=> b!2531398 m!2882315))

(declare-fun m!2882317 () Bool)

(assert (=> b!2531398 m!2882317))

(declare-fun m!2882319 () Bool)

(assert (=> b!2531398 m!2882319))

(declare-fun m!2882321 () Bool)

(assert (=> b!2531398 m!2882321))

(assert (=> b!2531398 m!2882319))

(declare-fun m!2882323 () Bool)

(assert (=> b!2531400 m!2882323))

(assert (=> b!2531400 m!2882323))

(declare-fun m!2882325 () Bool)

(assert (=> b!2531400 m!2882325))

(declare-fun m!2882327 () Bool)

(assert (=> b!2531400 m!2882327))

(check-sat (not b!2531397) (not start!246440) (not b!2531392) (not b!2531398) (not b!2531393) tp_is_empty!12933 (not b!2531399) (not b!2531395) (not b!2531400))
(check-sat)
(get-model)

(declare-fun b!2531419 () Bool)

(declare-fun e!1601864 () Bool)

(declare-fun e!1601862 () Bool)

(assert (=> b!2531419 (= e!1601864 e!1601862)))

(declare-fun c!404385 () Bool)

(assert (=> b!2531419 (= c!404385 ((_ is Union!7539) r!27340))))

(declare-fun b!2531420 () Bool)

(declare-fun e!1601860 () Bool)

(declare-fun call!158647 () Bool)

(assert (=> b!2531420 (= e!1601860 call!158647)))

(declare-fun b!2531422 () Bool)

(declare-fun res!1068683 () Bool)

(declare-fun e!1601859 () Bool)

(assert (=> b!2531422 (=> res!1068683 e!1601859)))

(assert (=> b!2531422 (= res!1068683 (not ((_ is Concat!12235) r!27340)))))

(assert (=> b!2531422 (= e!1601862 e!1601859)))

(declare-fun b!2531423 () Bool)

(declare-fun e!1601865 () Bool)

(declare-fun call!158648 () Bool)

(assert (=> b!2531423 (= e!1601865 call!158648)))

(declare-fun b!2531424 () Bool)

(declare-fun e!1601863 () Bool)

(assert (=> b!2531424 (= e!1601859 e!1601863)))

(declare-fun res!1068684 () Bool)

(assert (=> b!2531424 (=> (not res!1068684) (not e!1601863))))

(assert (=> b!2531424 (= res!1068684 call!158647)))

(declare-fun b!2531425 () Bool)

(declare-fun res!1068685 () Bool)

(assert (=> b!2531425 (=> (not res!1068685) (not e!1601860))))

(declare-fun call!158646 () Bool)

(assert (=> b!2531425 (= res!1068685 call!158646)))

(assert (=> b!2531425 (= e!1601862 e!1601860)))

(declare-fun b!2531426 () Bool)

(assert (=> b!2531426 (= e!1601863 call!158646)))

(declare-fun b!2531421 () Bool)

(assert (=> b!2531421 (= e!1601864 e!1601865)))

(declare-fun res!1068681 () Bool)

(assert (=> b!2531421 (= res!1068681 (not (nullable!2456 (reg!7868 r!27340))))))

(assert (=> b!2531421 (=> (not res!1068681) (not e!1601865))))

(declare-fun d!719927 () Bool)

(declare-fun res!1068682 () Bool)

(declare-fun e!1601861 () Bool)

(assert (=> d!719927 (=> res!1068682 e!1601861)))

(assert (=> d!719927 (= res!1068682 ((_ is ElementMatch!7539) r!27340))))

(assert (=> d!719927 (= (validRegex!3165 r!27340) e!1601861)))

(declare-fun bm!158641 () Bool)

(assert (=> bm!158641 (= call!158646 call!158648)))

(declare-fun c!404384 () Bool)

(declare-fun bm!158642 () Bool)

(assert (=> bm!158642 (= call!158648 (validRegex!3165 (ite c!404384 (reg!7868 r!27340) (ite c!404385 (regOne!15591 r!27340) (regTwo!15590 r!27340)))))))

(declare-fun bm!158643 () Bool)

(assert (=> bm!158643 (= call!158647 (validRegex!3165 (ite c!404385 (regTwo!15591 r!27340) (regOne!15590 r!27340))))))

(declare-fun b!2531427 () Bool)

(assert (=> b!2531427 (= e!1601861 e!1601864)))

(assert (=> b!2531427 (= c!404384 ((_ is Star!7539) r!27340))))

(assert (= (and d!719927 (not res!1068682)) b!2531427))

(assert (= (and b!2531427 c!404384) b!2531421))

(assert (= (and b!2531427 (not c!404384)) b!2531419))

(assert (= (and b!2531421 res!1068681) b!2531423))

(assert (= (and b!2531419 c!404385) b!2531425))

(assert (= (and b!2531419 (not c!404385)) b!2531422))

(assert (= (and b!2531425 res!1068685) b!2531420))

(assert (= (and b!2531422 (not res!1068683)) b!2531424))

(assert (= (and b!2531424 res!1068684) b!2531426))

(assert (= (or b!2531425 b!2531426) bm!158641))

(assert (= (or b!2531420 b!2531424) bm!158643))

(assert (= (or b!2531423 bm!158641) bm!158642))

(declare-fun m!2882331 () Bool)

(assert (=> b!2531421 m!2882331))

(declare-fun m!2882333 () Bool)

(assert (=> bm!158642 m!2882333))

(declare-fun m!2882335 () Bool)

(assert (=> bm!158643 m!2882335))

(assert (=> start!246440 d!719927))

(declare-fun d!719933 () Bool)

(assert (=> d!719933 (= (isEmpty!16974 tl!4068) ((_ is Nil!29504) tl!4068))))

(assert (=> b!2531397 d!719933))

(declare-fun d!719935 () Bool)

(assert (=> d!719935 (= (head!5778 tl!4068) (h!34924 tl!4068))))

(assert (=> b!2531398 d!719935))

(declare-fun d!719937 () Bool)

(declare-fun lt!901238 () Regex!7539)

(assert (=> d!719937 (validRegex!3165 lt!901238)))

(declare-fun e!1601871 () Regex!7539)

(assert (=> d!719937 (= lt!901238 e!1601871)))

(declare-fun c!404391 () Bool)

(assert (=> d!719937 (= c!404391 ((_ is Cons!29504) lt!901230))))

(assert (=> d!719937 (validRegex!3165 lt!901229)))

(assert (=> d!719937 (= (derivative!234 lt!901229 lt!901230) lt!901238)))

(declare-fun b!2531438 () Bool)

(assert (=> b!2531438 (= e!1601871 (derivative!234 (derivativeStep!2108 lt!901229 (h!34924 lt!901230)) (t!211303 lt!901230)))))

(declare-fun b!2531439 () Bool)

(assert (=> b!2531439 (= e!1601871 lt!901229)))

(assert (= (and d!719937 c!404391) b!2531438))

(assert (= (and d!719937 (not c!404391)) b!2531439))

(declare-fun m!2882345 () Bool)

(assert (=> d!719937 m!2882345))

(declare-fun m!2882347 () Bool)

(assert (=> d!719937 m!2882347))

(declare-fun m!2882349 () Bool)

(assert (=> b!2531438 m!2882349))

(assert (=> b!2531438 m!2882349))

(declare-fun m!2882351 () Bool)

(assert (=> b!2531438 m!2882351))

(assert (=> b!2531398 d!719937))

(declare-fun d!719941 () Bool)

(assert (=> d!719941 (= (tail!4053 tl!4068) (t!211303 tl!4068))))

(assert (=> b!2531398 d!719941))

(declare-fun d!719943 () Bool)

(assert (=> d!719943 (= (derivative!234 lt!901229 lt!901230) lt!901229)))

(declare-fun lt!901241 () Unit!43295)

(declare-fun choose!15008 (Regex!7539 List!29604) Unit!43295)

(assert (=> d!719943 (= lt!901241 (choose!15008 lt!901229 lt!901230))))

(assert (=> d!719943 (= lt!901229 EmptyLang!7539)))

(assert (=> d!719943 (= (lemmaEmptyLangDerivativeIsAFixPoint!52 lt!901229 lt!901230) lt!901241)))

(declare-fun bs!469211 () Bool)

(assert (= bs!469211 d!719943))

(assert (=> bs!469211 m!2882317))

(declare-fun m!2882353 () Bool)

(assert (=> bs!469211 m!2882353))

(assert (=> b!2531398 d!719943))

(declare-fun b!2531480 () Bool)

(declare-fun c!404414 () Bool)

(assert (=> b!2531480 (= c!404414 (nullable!2456 (regOne!15590 lt!901232)))))

(declare-fun e!1601896 () Regex!7539)

(declare-fun e!1601893 () Regex!7539)

(assert (=> b!2531480 (= e!1601896 e!1601893)))

(declare-fun bm!158656 () Bool)

(declare-fun call!158663 () Regex!7539)

(declare-fun call!158664 () Regex!7539)

(assert (=> bm!158656 (= call!158663 call!158664)))

(declare-fun b!2531481 () Bool)

(declare-fun e!1601895 () Regex!7539)

(assert (=> b!2531481 (= e!1601895 e!1601896)))

(declare-fun c!404416 () Bool)

(assert (=> b!2531481 (= c!404416 ((_ is Star!7539) lt!901232))))

(declare-fun d!719945 () Bool)

(declare-fun lt!901246 () Regex!7539)

(assert (=> d!719945 (validRegex!3165 lt!901246)))

(declare-fun e!1601892 () Regex!7539)

(assert (=> d!719945 (= lt!901246 e!1601892)))

(declare-fun c!404412 () Bool)

(assert (=> d!719945 (= c!404412 (or ((_ is EmptyExpr!7539) lt!901232) ((_ is EmptyLang!7539) lt!901232)))))

(assert (=> d!719945 (validRegex!3165 lt!901232)))

(assert (=> d!719945 (= (derivativeStep!2108 lt!901232 (head!5778 tl!4068)) lt!901246)))

(declare-fun b!2531482 () Bool)

(declare-fun e!1601894 () Regex!7539)

(assert (=> b!2531482 (= e!1601892 e!1601894)))

(declare-fun c!404413 () Bool)

(assert (=> b!2531482 (= c!404413 ((_ is ElementMatch!7539) lt!901232))))

(declare-fun call!158661 () Regex!7539)

(declare-fun bm!158657 () Bool)

(declare-fun c!404415 () Bool)

(assert (=> bm!158657 (= call!158661 (derivativeStep!2108 (ite c!404415 (regTwo!15591 lt!901232) (regTwo!15590 lt!901232)) (head!5778 tl!4068)))))

(declare-fun b!2531483 () Bool)

(assert (=> b!2531483 (= e!1601896 (Concat!12235 call!158664 lt!901232))))

(declare-fun b!2531484 () Bool)

(assert (=> b!2531484 (= e!1601893 (Union!7539 (Concat!12235 call!158663 (regTwo!15590 lt!901232)) EmptyLang!7539))))

(declare-fun call!158662 () Regex!7539)

(declare-fun bm!158658 () Bool)

(assert (=> bm!158658 (= call!158662 (derivativeStep!2108 (ite c!404415 (regOne!15591 lt!901232) (ite c!404416 (reg!7868 lt!901232) (regOne!15590 lt!901232))) (head!5778 tl!4068)))))

(declare-fun b!2531485 () Bool)

(assert (=> b!2531485 (= e!1601894 (ite (= (head!5778 tl!4068) (c!404379 lt!901232)) EmptyExpr!7539 EmptyLang!7539))))

(declare-fun b!2531486 () Bool)

(assert (=> b!2531486 (= e!1601893 (Union!7539 (Concat!12235 call!158663 (regTwo!15590 lt!901232)) call!158661))))

(declare-fun bm!158659 () Bool)

(assert (=> bm!158659 (= call!158664 call!158662)))

(declare-fun b!2531487 () Bool)

(assert (=> b!2531487 (= c!404415 ((_ is Union!7539) lt!901232))))

(assert (=> b!2531487 (= e!1601894 e!1601895)))

(declare-fun b!2531488 () Bool)

(assert (=> b!2531488 (= e!1601895 (Union!7539 call!158662 call!158661))))

(declare-fun b!2531489 () Bool)

(assert (=> b!2531489 (= e!1601892 EmptyLang!7539)))

(assert (= (and d!719945 c!404412) b!2531489))

(assert (= (and d!719945 (not c!404412)) b!2531482))

(assert (= (and b!2531482 c!404413) b!2531485))

(assert (= (and b!2531482 (not c!404413)) b!2531487))

(assert (= (and b!2531487 c!404415) b!2531488))

(assert (= (and b!2531487 (not c!404415)) b!2531481))

(assert (= (and b!2531481 c!404416) b!2531483))

(assert (= (and b!2531481 (not c!404416)) b!2531480))

(assert (= (and b!2531480 c!404414) b!2531486))

(assert (= (and b!2531480 (not c!404414)) b!2531484))

(assert (= (or b!2531486 b!2531484) bm!158656))

(assert (= (or b!2531483 bm!158656) bm!158659))

(assert (= (or b!2531488 b!2531486) bm!158657))

(assert (= (or b!2531488 bm!158659) bm!158658))

(declare-fun m!2882355 () Bool)

(assert (=> b!2531480 m!2882355))

(declare-fun m!2882357 () Bool)

(assert (=> d!719945 m!2882357))

(declare-fun m!2882359 () Bool)

(assert (=> d!719945 m!2882359))

(assert (=> bm!158657 m!2882319))

(declare-fun m!2882361 () Bool)

(assert (=> bm!158657 m!2882361))

(assert (=> bm!158658 m!2882319))

(declare-fun m!2882363 () Bool)

(assert (=> bm!158658 m!2882363))

(assert (=> b!2531398 d!719945))

(declare-fun d!719947 () Bool)

(declare-fun nullableFct!691 (Regex!7539) Bool)

(assert (=> d!719947 (= (nullable!2456 (derivative!234 lt!901232 tl!4068)) (nullableFct!691 (derivative!234 lt!901232 tl!4068)))))

(declare-fun bs!469212 () Bool)

(assert (= bs!469212 d!719947))

(assert (=> bs!469212 m!2882323))

(declare-fun m!2882365 () Bool)

(assert (=> bs!469212 m!2882365))

(assert (=> b!2531400 d!719947))

(declare-fun d!719949 () Bool)

(declare-fun lt!901247 () Regex!7539)

(assert (=> d!719949 (validRegex!3165 lt!901247)))

(declare-fun e!1601897 () Regex!7539)

(assert (=> d!719949 (= lt!901247 e!1601897)))

(declare-fun c!404417 () Bool)

(assert (=> d!719949 (= c!404417 ((_ is Cons!29504) tl!4068))))

(assert (=> d!719949 (validRegex!3165 lt!901232)))

(assert (=> d!719949 (= (derivative!234 lt!901232 tl!4068) lt!901247)))

(declare-fun b!2531490 () Bool)

(assert (=> b!2531490 (= e!1601897 (derivative!234 (derivativeStep!2108 lt!901232 (h!34924 tl!4068)) (t!211303 tl!4068)))))

(declare-fun b!2531491 () Bool)

(assert (=> b!2531491 (= e!1601897 lt!901232)))

(assert (= (and d!719949 c!404417) b!2531490))

(assert (= (and d!719949 (not c!404417)) b!2531491))

(declare-fun m!2882367 () Bool)

(assert (=> d!719949 m!2882367))

(assert (=> d!719949 m!2882359))

(declare-fun m!2882369 () Bool)

(assert (=> b!2531490 m!2882369))

(assert (=> b!2531490 m!2882369))

(declare-fun m!2882371 () Bool)

(assert (=> b!2531490 m!2882371))

(assert (=> b!2531400 d!719949))

(declare-fun b!2531492 () Bool)

(declare-fun c!404420 () Bool)

(assert (=> b!2531492 (= c!404420 (nullable!2456 (regOne!15590 r!27340)))))

(declare-fun e!1601902 () Regex!7539)

(declare-fun e!1601899 () Regex!7539)

(assert (=> b!2531492 (= e!1601902 e!1601899)))

(declare-fun bm!158664 () Bool)

(declare-fun call!158671 () Regex!7539)

(declare-fun call!158672 () Regex!7539)

(assert (=> bm!158664 (= call!158671 call!158672)))

(declare-fun b!2531493 () Bool)

(declare-fun e!1601901 () Regex!7539)

(assert (=> b!2531493 (= e!1601901 e!1601902)))

(declare-fun c!404422 () Bool)

(assert (=> b!2531493 (= c!404422 ((_ is Star!7539) r!27340))))

(declare-fun d!719951 () Bool)

(declare-fun lt!901248 () Regex!7539)

(assert (=> d!719951 (validRegex!3165 lt!901248)))

(declare-fun e!1601898 () Regex!7539)

(assert (=> d!719951 (= lt!901248 e!1601898)))

(declare-fun c!404418 () Bool)

(assert (=> d!719951 (= c!404418 (or ((_ is EmptyExpr!7539) r!27340) ((_ is EmptyLang!7539) r!27340)))))

(assert (=> d!719951 (validRegex!3165 r!27340)))

(assert (=> d!719951 (= (derivativeStep!2108 r!27340 c!14016) lt!901248)))

(declare-fun b!2531494 () Bool)

(declare-fun e!1601900 () Regex!7539)

(assert (=> b!2531494 (= e!1601898 e!1601900)))

(declare-fun c!404419 () Bool)

(assert (=> b!2531494 (= c!404419 ((_ is ElementMatch!7539) r!27340))))

(declare-fun call!158669 () Regex!7539)

(declare-fun bm!158665 () Bool)

(declare-fun c!404421 () Bool)

(assert (=> bm!158665 (= call!158669 (derivativeStep!2108 (ite c!404421 (regTwo!15591 r!27340) (regTwo!15590 r!27340)) c!14016))))

(declare-fun b!2531495 () Bool)

(assert (=> b!2531495 (= e!1601902 (Concat!12235 call!158672 r!27340))))

(declare-fun b!2531496 () Bool)

(assert (=> b!2531496 (= e!1601899 (Union!7539 (Concat!12235 call!158671 (regTwo!15590 r!27340)) EmptyLang!7539))))

(declare-fun call!158670 () Regex!7539)

(declare-fun bm!158666 () Bool)

(assert (=> bm!158666 (= call!158670 (derivativeStep!2108 (ite c!404421 (regOne!15591 r!27340) (ite c!404422 (reg!7868 r!27340) (regOne!15590 r!27340))) c!14016))))

(declare-fun b!2531497 () Bool)

(assert (=> b!2531497 (= e!1601900 (ite (= c!14016 (c!404379 r!27340)) EmptyExpr!7539 EmptyLang!7539))))

(declare-fun b!2531498 () Bool)

(assert (=> b!2531498 (= e!1601899 (Union!7539 (Concat!12235 call!158671 (regTwo!15590 r!27340)) call!158669))))

(declare-fun bm!158667 () Bool)

(assert (=> bm!158667 (= call!158672 call!158670)))

(declare-fun b!2531499 () Bool)

(assert (=> b!2531499 (= c!404421 ((_ is Union!7539) r!27340))))

(assert (=> b!2531499 (= e!1601900 e!1601901)))

(declare-fun b!2531500 () Bool)

(assert (=> b!2531500 (= e!1601901 (Union!7539 call!158670 call!158669))))

(declare-fun b!2531501 () Bool)

(assert (=> b!2531501 (= e!1601898 EmptyLang!7539)))

(assert (= (and d!719951 c!404418) b!2531501))

(assert (= (and d!719951 (not c!404418)) b!2531494))

(assert (= (and b!2531494 c!404419) b!2531497))

(assert (= (and b!2531494 (not c!404419)) b!2531499))

(assert (= (and b!2531499 c!404421) b!2531500))

(assert (= (and b!2531499 (not c!404421)) b!2531493))

(assert (= (and b!2531493 c!404422) b!2531495))

(assert (= (and b!2531493 (not c!404422)) b!2531492))

(assert (= (and b!2531492 c!404420) b!2531498))

(assert (= (and b!2531492 (not c!404420)) b!2531496))

(assert (= (or b!2531498 b!2531496) bm!158664))

(assert (= (or b!2531495 bm!158664) bm!158667))

(assert (= (or b!2531500 b!2531498) bm!158665))

(assert (= (or b!2531500 bm!158667) bm!158666))

(declare-fun m!2882373 () Bool)

(assert (=> b!2531492 m!2882373))

(declare-fun m!2882375 () Bool)

(assert (=> d!719951 m!2882375))

(assert (=> d!719951 m!2882309))

(declare-fun m!2882377 () Bool)

(assert (=> bm!158665 m!2882377))

(declare-fun m!2882379 () Bool)

(assert (=> bm!158666 m!2882379))

(assert (=> b!2531400 d!719951))

(declare-fun b!2531506 () Bool)

(declare-fun e!1601905 () Bool)

(declare-fun tp!808381 () Bool)

(assert (=> b!2531506 (= e!1601905 (and tp_is_empty!12933 tp!808381))))

(assert (=> b!2531392 (= tp!808376 e!1601905)))

(assert (= (and b!2531392 ((_ is Cons!29504) (t!211303 tl!4068))) b!2531506))

(declare-fun b!2531517 () Bool)

(declare-fun e!1601908 () Bool)

(assert (=> b!2531517 (= e!1601908 tp_is_empty!12933)))

(declare-fun b!2531518 () Bool)

(declare-fun tp!808392 () Bool)

(declare-fun tp!808393 () Bool)

(assert (=> b!2531518 (= e!1601908 (and tp!808392 tp!808393))))

(declare-fun b!2531520 () Bool)

(declare-fun tp!808394 () Bool)

(declare-fun tp!808396 () Bool)

(assert (=> b!2531520 (= e!1601908 (and tp!808394 tp!808396))))

(declare-fun b!2531519 () Bool)

(declare-fun tp!808395 () Bool)

(assert (=> b!2531519 (= e!1601908 tp!808395)))

(assert (=> b!2531393 (= tp!808375 e!1601908)))

(assert (= (and b!2531393 ((_ is ElementMatch!7539) (reg!7868 r!27340))) b!2531517))

(assert (= (and b!2531393 ((_ is Concat!12235) (reg!7868 r!27340))) b!2531518))

(assert (= (and b!2531393 ((_ is Star!7539) (reg!7868 r!27340))) b!2531519))

(assert (= (and b!2531393 ((_ is Union!7539) (reg!7868 r!27340))) b!2531520))

(declare-fun b!2531521 () Bool)

(declare-fun e!1601909 () Bool)

(assert (=> b!2531521 (= e!1601909 tp_is_empty!12933)))

(declare-fun b!2531522 () Bool)

(declare-fun tp!808397 () Bool)

(declare-fun tp!808398 () Bool)

(assert (=> b!2531522 (= e!1601909 (and tp!808397 tp!808398))))

(declare-fun b!2531524 () Bool)

(declare-fun tp!808399 () Bool)

(declare-fun tp!808401 () Bool)

(assert (=> b!2531524 (= e!1601909 (and tp!808399 tp!808401))))

(declare-fun b!2531523 () Bool)

(declare-fun tp!808400 () Bool)

(assert (=> b!2531523 (= e!1601909 tp!808400)))

(assert (=> b!2531399 (= tp!808373 e!1601909)))

(assert (= (and b!2531399 ((_ is ElementMatch!7539) (regOne!15591 r!27340))) b!2531521))

(assert (= (and b!2531399 ((_ is Concat!12235) (regOne!15591 r!27340))) b!2531522))

(assert (= (and b!2531399 ((_ is Star!7539) (regOne!15591 r!27340))) b!2531523))

(assert (= (and b!2531399 ((_ is Union!7539) (regOne!15591 r!27340))) b!2531524))

(declare-fun b!2531525 () Bool)

(declare-fun e!1601910 () Bool)

(assert (=> b!2531525 (= e!1601910 tp_is_empty!12933)))

(declare-fun b!2531526 () Bool)

(declare-fun tp!808402 () Bool)

(declare-fun tp!808403 () Bool)

(assert (=> b!2531526 (= e!1601910 (and tp!808402 tp!808403))))

(declare-fun b!2531528 () Bool)

(declare-fun tp!808404 () Bool)

(declare-fun tp!808406 () Bool)

(assert (=> b!2531528 (= e!1601910 (and tp!808404 tp!808406))))

(declare-fun b!2531527 () Bool)

(declare-fun tp!808405 () Bool)

(assert (=> b!2531527 (= e!1601910 tp!808405)))

(assert (=> b!2531399 (= tp!808377 e!1601910)))

(assert (= (and b!2531399 ((_ is ElementMatch!7539) (regTwo!15591 r!27340))) b!2531525))

(assert (= (and b!2531399 ((_ is Concat!12235) (regTwo!15591 r!27340))) b!2531526))

(assert (= (and b!2531399 ((_ is Star!7539) (regTwo!15591 r!27340))) b!2531527))

(assert (= (and b!2531399 ((_ is Union!7539) (regTwo!15591 r!27340))) b!2531528))

(declare-fun b!2531529 () Bool)

(declare-fun e!1601911 () Bool)

(assert (=> b!2531529 (= e!1601911 tp_is_empty!12933)))

(declare-fun b!2531530 () Bool)

(declare-fun tp!808407 () Bool)

(declare-fun tp!808408 () Bool)

(assert (=> b!2531530 (= e!1601911 (and tp!808407 tp!808408))))

(declare-fun b!2531532 () Bool)

(declare-fun tp!808409 () Bool)

(declare-fun tp!808411 () Bool)

(assert (=> b!2531532 (= e!1601911 (and tp!808409 tp!808411))))

(declare-fun b!2531531 () Bool)

(declare-fun tp!808410 () Bool)

(assert (=> b!2531531 (= e!1601911 tp!808410)))

(assert (=> b!2531395 (= tp!808378 e!1601911)))

(assert (= (and b!2531395 ((_ is ElementMatch!7539) (regOne!15590 r!27340))) b!2531529))

(assert (= (and b!2531395 ((_ is Concat!12235) (regOne!15590 r!27340))) b!2531530))

(assert (= (and b!2531395 ((_ is Star!7539) (regOne!15590 r!27340))) b!2531531))

(assert (= (and b!2531395 ((_ is Union!7539) (regOne!15590 r!27340))) b!2531532))

(declare-fun b!2531533 () Bool)

(declare-fun e!1601912 () Bool)

(assert (=> b!2531533 (= e!1601912 tp_is_empty!12933)))

(declare-fun b!2531534 () Bool)

(declare-fun tp!808412 () Bool)

(declare-fun tp!808413 () Bool)

(assert (=> b!2531534 (= e!1601912 (and tp!808412 tp!808413))))

(declare-fun b!2531536 () Bool)

(declare-fun tp!808414 () Bool)

(declare-fun tp!808416 () Bool)

(assert (=> b!2531536 (= e!1601912 (and tp!808414 tp!808416))))

(declare-fun b!2531535 () Bool)

(declare-fun tp!808415 () Bool)

(assert (=> b!2531535 (= e!1601912 tp!808415)))

(assert (=> b!2531395 (= tp!808374 e!1601912)))

(assert (= (and b!2531395 ((_ is ElementMatch!7539) (regTwo!15590 r!27340))) b!2531533))

(assert (= (and b!2531395 ((_ is Concat!12235) (regTwo!15590 r!27340))) b!2531534))

(assert (= (and b!2531395 ((_ is Star!7539) (regTwo!15590 r!27340))) b!2531535))

(assert (= (and b!2531395 ((_ is Union!7539) (regTwo!15590 r!27340))) b!2531536))

(check-sat (not d!719951) (not b!2531528) (not b!2531421) (not bm!158665) (not b!2531492) (not d!719949) (not b!2531535) (not d!719943) (not b!2531522) (not b!2531519) (not bm!158657) (not d!719947) (not bm!158642) (not bm!158666) (not b!2531526) (not bm!158643) (not d!719945) (not b!2531520) (not bm!158658) (not d!719937) (not b!2531531) (not b!2531524) (not b!2531438) (not b!2531536) (not b!2531480) (not b!2531490) (not b!2531530) tp_is_empty!12933 (not b!2531523) (not b!2531527) (not b!2531534) (not b!2531532) (not b!2531506) (not b!2531518))
(check-sat)
(get-model)

(declare-fun d!719967 () Bool)

(declare-fun lt!901255 () Regex!7539)

(assert (=> d!719967 (validRegex!3165 lt!901255)))

(declare-fun e!1601955 () Regex!7539)

(assert (=> d!719967 (= lt!901255 e!1601955)))

(declare-fun c!404440 () Bool)

(assert (=> d!719967 (= c!404440 ((_ is Cons!29504) (t!211303 tl!4068)))))

(assert (=> d!719967 (validRegex!3165 (derivativeStep!2108 lt!901232 (h!34924 tl!4068)))))

(assert (=> d!719967 (= (derivative!234 (derivativeStep!2108 lt!901232 (h!34924 tl!4068)) (t!211303 tl!4068)) lt!901255)))

(declare-fun b!2531621 () Bool)

(assert (=> b!2531621 (= e!1601955 (derivative!234 (derivativeStep!2108 (derivativeStep!2108 lt!901232 (h!34924 tl!4068)) (h!34924 (t!211303 tl!4068))) (t!211303 (t!211303 tl!4068))))))

(declare-fun b!2531622 () Bool)

(assert (=> b!2531622 (= e!1601955 (derivativeStep!2108 lt!901232 (h!34924 tl!4068)))))

(assert (= (and d!719967 c!404440) b!2531621))

(assert (= (and d!719967 (not c!404440)) b!2531622))

(declare-fun m!2882413 () Bool)

(assert (=> d!719967 m!2882413))

(assert (=> d!719967 m!2882369))

(declare-fun m!2882415 () Bool)

(assert (=> d!719967 m!2882415))

(assert (=> b!2531621 m!2882369))

(declare-fun m!2882417 () Bool)

(assert (=> b!2531621 m!2882417))

(assert (=> b!2531621 m!2882417))

(declare-fun m!2882419 () Bool)

(assert (=> b!2531621 m!2882419))

(assert (=> b!2531490 d!719967))

(declare-fun b!2531623 () Bool)

(declare-fun c!404443 () Bool)

(assert (=> b!2531623 (= c!404443 (nullable!2456 (regOne!15590 lt!901232)))))

(declare-fun e!1601960 () Regex!7539)

(declare-fun e!1601957 () Regex!7539)

(assert (=> b!2531623 (= e!1601960 e!1601957)))

(declare-fun bm!158685 () Bool)

(declare-fun call!158692 () Regex!7539)

(declare-fun call!158693 () Regex!7539)

(assert (=> bm!158685 (= call!158692 call!158693)))

(declare-fun b!2531624 () Bool)

(declare-fun e!1601959 () Regex!7539)

(assert (=> b!2531624 (= e!1601959 e!1601960)))

(declare-fun c!404445 () Bool)

(assert (=> b!2531624 (= c!404445 ((_ is Star!7539) lt!901232))))

(declare-fun d!719969 () Bool)

(declare-fun lt!901256 () Regex!7539)

(assert (=> d!719969 (validRegex!3165 lt!901256)))

(declare-fun e!1601956 () Regex!7539)

(assert (=> d!719969 (= lt!901256 e!1601956)))

(declare-fun c!404441 () Bool)

(assert (=> d!719969 (= c!404441 (or ((_ is EmptyExpr!7539) lt!901232) ((_ is EmptyLang!7539) lt!901232)))))

(assert (=> d!719969 (validRegex!3165 lt!901232)))

(assert (=> d!719969 (= (derivativeStep!2108 lt!901232 (h!34924 tl!4068)) lt!901256)))

(declare-fun b!2531625 () Bool)

(declare-fun e!1601958 () Regex!7539)

(assert (=> b!2531625 (= e!1601956 e!1601958)))

(declare-fun c!404442 () Bool)

(assert (=> b!2531625 (= c!404442 ((_ is ElementMatch!7539) lt!901232))))

(declare-fun c!404444 () Bool)

(declare-fun bm!158686 () Bool)

(declare-fun call!158690 () Regex!7539)

(assert (=> bm!158686 (= call!158690 (derivativeStep!2108 (ite c!404444 (regTwo!15591 lt!901232) (regTwo!15590 lt!901232)) (h!34924 tl!4068)))))

(declare-fun b!2531626 () Bool)

(assert (=> b!2531626 (= e!1601960 (Concat!12235 call!158693 lt!901232))))

(declare-fun b!2531627 () Bool)

(assert (=> b!2531627 (= e!1601957 (Union!7539 (Concat!12235 call!158692 (regTwo!15590 lt!901232)) EmptyLang!7539))))

(declare-fun call!158691 () Regex!7539)

(declare-fun bm!158687 () Bool)

(assert (=> bm!158687 (= call!158691 (derivativeStep!2108 (ite c!404444 (regOne!15591 lt!901232) (ite c!404445 (reg!7868 lt!901232) (regOne!15590 lt!901232))) (h!34924 tl!4068)))))

(declare-fun b!2531628 () Bool)

(assert (=> b!2531628 (= e!1601958 (ite (= (h!34924 tl!4068) (c!404379 lt!901232)) EmptyExpr!7539 EmptyLang!7539))))

(declare-fun b!2531629 () Bool)

(assert (=> b!2531629 (= e!1601957 (Union!7539 (Concat!12235 call!158692 (regTwo!15590 lt!901232)) call!158690))))

(declare-fun bm!158688 () Bool)

(assert (=> bm!158688 (= call!158693 call!158691)))

(declare-fun b!2531630 () Bool)

(assert (=> b!2531630 (= c!404444 ((_ is Union!7539) lt!901232))))

(assert (=> b!2531630 (= e!1601958 e!1601959)))

(declare-fun b!2531631 () Bool)

(assert (=> b!2531631 (= e!1601959 (Union!7539 call!158691 call!158690))))

(declare-fun b!2531632 () Bool)

(assert (=> b!2531632 (= e!1601956 EmptyLang!7539)))

(assert (= (and d!719969 c!404441) b!2531632))

(assert (= (and d!719969 (not c!404441)) b!2531625))

(assert (= (and b!2531625 c!404442) b!2531628))

(assert (= (and b!2531625 (not c!404442)) b!2531630))

(assert (= (and b!2531630 c!404444) b!2531631))

(assert (= (and b!2531630 (not c!404444)) b!2531624))

(assert (= (and b!2531624 c!404445) b!2531626))

(assert (= (and b!2531624 (not c!404445)) b!2531623))

(assert (= (and b!2531623 c!404443) b!2531629))

(assert (= (and b!2531623 (not c!404443)) b!2531627))

(assert (= (or b!2531629 b!2531627) bm!158685))

(assert (= (or b!2531626 bm!158685) bm!158688))

(assert (= (or b!2531631 b!2531629) bm!158686))

(assert (= (or b!2531631 bm!158688) bm!158687))

(assert (=> b!2531623 m!2882355))

(declare-fun m!2882421 () Bool)

(assert (=> d!719969 m!2882421))

(assert (=> d!719969 m!2882359))

(declare-fun m!2882423 () Bool)

(assert (=> bm!158686 m!2882423))

(declare-fun m!2882425 () Bool)

(assert (=> bm!158687 m!2882425))

(assert (=> b!2531490 d!719969))

(declare-fun c!404448 () Bool)

(declare-fun b!2531633 () Bool)

(assert (=> b!2531633 (= c!404448 (nullable!2456 (regOne!15590 (ite c!404421 (regOne!15591 r!27340) (ite c!404422 (reg!7868 r!27340) (regOne!15590 r!27340))))))))

(declare-fun e!1601965 () Regex!7539)

(declare-fun e!1601962 () Regex!7539)

(assert (=> b!2531633 (= e!1601965 e!1601962)))

(declare-fun bm!158689 () Bool)

(declare-fun call!158696 () Regex!7539)

(declare-fun call!158697 () Regex!7539)

(assert (=> bm!158689 (= call!158696 call!158697)))

(declare-fun b!2531634 () Bool)

(declare-fun e!1601964 () Regex!7539)

(assert (=> b!2531634 (= e!1601964 e!1601965)))

(declare-fun c!404450 () Bool)

(assert (=> b!2531634 (= c!404450 ((_ is Star!7539) (ite c!404421 (regOne!15591 r!27340) (ite c!404422 (reg!7868 r!27340) (regOne!15590 r!27340)))))))

(declare-fun d!719971 () Bool)

(declare-fun lt!901257 () Regex!7539)

(assert (=> d!719971 (validRegex!3165 lt!901257)))

(declare-fun e!1601961 () Regex!7539)

(assert (=> d!719971 (= lt!901257 e!1601961)))

(declare-fun c!404446 () Bool)

(assert (=> d!719971 (= c!404446 (or ((_ is EmptyExpr!7539) (ite c!404421 (regOne!15591 r!27340) (ite c!404422 (reg!7868 r!27340) (regOne!15590 r!27340)))) ((_ is EmptyLang!7539) (ite c!404421 (regOne!15591 r!27340) (ite c!404422 (reg!7868 r!27340) (regOne!15590 r!27340))))))))

(assert (=> d!719971 (validRegex!3165 (ite c!404421 (regOne!15591 r!27340) (ite c!404422 (reg!7868 r!27340) (regOne!15590 r!27340))))))

(assert (=> d!719971 (= (derivativeStep!2108 (ite c!404421 (regOne!15591 r!27340) (ite c!404422 (reg!7868 r!27340) (regOne!15590 r!27340))) c!14016) lt!901257)))

(declare-fun b!2531635 () Bool)

(declare-fun e!1601963 () Regex!7539)

(assert (=> b!2531635 (= e!1601961 e!1601963)))

(declare-fun c!404447 () Bool)

(assert (=> b!2531635 (= c!404447 ((_ is ElementMatch!7539) (ite c!404421 (regOne!15591 r!27340) (ite c!404422 (reg!7868 r!27340) (regOne!15590 r!27340)))))))

(declare-fun call!158694 () Regex!7539)

(declare-fun c!404449 () Bool)

(declare-fun bm!158690 () Bool)

(assert (=> bm!158690 (= call!158694 (derivativeStep!2108 (ite c!404449 (regTwo!15591 (ite c!404421 (regOne!15591 r!27340) (ite c!404422 (reg!7868 r!27340) (regOne!15590 r!27340)))) (regTwo!15590 (ite c!404421 (regOne!15591 r!27340) (ite c!404422 (reg!7868 r!27340) (regOne!15590 r!27340))))) c!14016))))

(declare-fun b!2531636 () Bool)

(assert (=> b!2531636 (= e!1601965 (Concat!12235 call!158697 (ite c!404421 (regOne!15591 r!27340) (ite c!404422 (reg!7868 r!27340) (regOne!15590 r!27340)))))))

(declare-fun b!2531637 () Bool)

(assert (=> b!2531637 (= e!1601962 (Union!7539 (Concat!12235 call!158696 (regTwo!15590 (ite c!404421 (regOne!15591 r!27340) (ite c!404422 (reg!7868 r!27340) (regOne!15590 r!27340))))) EmptyLang!7539))))

(declare-fun call!158695 () Regex!7539)

(declare-fun bm!158691 () Bool)

(assert (=> bm!158691 (= call!158695 (derivativeStep!2108 (ite c!404449 (regOne!15591 (ite c!404421 (regOne!15591 r!27340) (ite c!404422 (reg!7868 r!27340) (regOne!15590 r!27340)))) (ite c!404450 (reg!7868 (ite c!404421 (regOne!15591 r!27340) (ite c!404422 (reg!7868 r!27340) (regOne!15590 r!27340)))) (regOne!15590 (ite c!404421 (regOne!15591 r!27340) (ite c!404422 (reg!7868 r!27340) (regOne!15590 r!27340)))))) c!14016))))

(declare-fun b!2531638 () Bool)

(assert (=> b!2531638 (= e!1601963 (ite (= c!14016 (c!404379 (ite c!404421 (regOne!15591 r!27340) (ite c!404422 (reg!7868 r!27340) (regOne!15590 r!27340))))) EmptyExpr!7539 EmptyLang!7539))))

(declare-fun b!2531639 () Bool)

(assert (=> b!2531639 (= e!1601962 (Union!7539 (Concat!12235 call!158696 (regTwo!15590 (ite c!404421 (regOne!15591 r!27340) (ite c!404422 (reg!7868 r!27340) (regOne!15590 r!27340))))) call!158694))))

(declare-fun bm!158692 () Bool)

(assert (=> bm!158692 (= call!158697 call!158695)))

(declare-fun b!2531640 () Bool)

(assert (=> b!2531640 (= c!404449 ((_ is Union!7539) (ite c!404421 (regOne!15591 r!27340) (ite c!404422 (reg!7868 r!27340) (regOne!15590 r!27340)))))))

(assert (=> b!2531640 (= e!1601963 e!1601964)))

(declare-fun b!2531641 () Bool)

(assert (=> b!2531641 (= e!1601964 (Union!7539 call!158695 call!158694))))

(declare-fun b!2531642 () Bool)

(assert (=> b!2531642 (= e!1601961 EmptyLang!7539)))

(assert (= (and d!719971 c!404446) b!2531642))

(assert (= (and d!719971 (not c!404446)) b!2531635))

(assert (= (and b!2531635 c!404447) b!2531638))

(assert (= (and b!2531635 (not c!404447)) b!2531640))

(assert (= (and b!2531640 c!404449) b!2531641))

(assert (= (and b!2531640 (not c!404449)) b!2531634))

(assert (= (and b!2531634 c!404450) b!2531636))

(assert (= (and b!2531634 (not c!404450)) b!2531633))

(assert (= (and b!2531633 c!404448) b!2531639))

(assert (= (and b!2531633 (not c!404448)) b!2531637))

(assert (= (or b!2531639 b!2531637) bm!158689))

(assert (= (or b!2531636 bm!158689) bm!158692))

(assert (= (or b!2531641 b!2531639) bm!158690))

(assert (= (or b!2531641 bm!158692) bm!158691))

(declare-fun m!2882427 () Bool)

(assert (=> b!2531633 m!2882427))

(declare-fun m!2882429 () Bool)

(assert (=> d!719971 m!2882429))

(declare-fun m!2882431 () Bool)

(assert (=> d!719971 m!2882431))

(declare-fun m!2882433 () Bool)

(assert (=> bm!158690 m!2882433))

(declare-fun m!2882435 () Bool)

(assert (=> bm!158691 m!2882435))

(assert (=> bm!158666 d!719971))

(declare-fun b!2531643 () Bool)

(declare-fun c!404453 () Bool)

(assert (=> b!2531643 (= c!404453 (nullable!2456 (regOne!15590 (ite c!404415 (regTwo!15591 lt!901232) (regTwo!15590 lt!901232)))))))

(declare-fun e!1601970 () Regex!7539)

(declare-fun e!1601967 () Regex!7539)

(assert (=> b!2531643 (= e!1601970 e!1601967)))

(declare-fun bm!158693 () Bool)

(declare-fun call!158700 () Regex!7539)

(declare-fun call!158701 () Regex!7539)

(assert (=> bm!158693 (= call!158700 call!158701)))

(declare-fun b!2531644 () Bool)

(declare-fun e!1601969 () Regex!7539)

(assert (=> b!2531644 (= e!1601969 e!1601970)))

(declare-fun c!404455 () Bool)

(assert (=> b!2531644 (= c!404455 ((_ is Star!7539) (ite c!404415 (regTwo!15591 lt!901232) (regTwo!15590 lt!901232))))))

(declare-fun d!719973 () Bool)

(declare-fun lt!901258 () Regex!7539)

(assert (=> d!719973 (validRegex!3165 lt!901258)))

(declare-fun e!1601966 () Regex!7539)

(assert (=> d!719973 (= lt!901258 e!1601966)))

(declare-fun c!404451 () Bool)

(assert (=> d!719973 (= c!404451 (or ((_ is EmptyExpr!7539) (ite c!404415 (regTwo!15591 lt!901232) (regTwo!15590 lt!901232))) ((_ is EmptyLang!7539) (ite c!404415 (regTwo!15591 lt!901232) (regTwo!15590 lt!901232)))))))

(assert (=> d!719973 (validRegex!3165 (ite c!404415 (regTwo!15591 lt!901232) (regTwo!15590 lt!901232)))))

(assert (=> d!719973 (= (derivativeStep!2108 (ite c!404415 (regTwo!15591 lt!901232) (regTwo!15590 lt!901232)) (head!5778 tl!4068)) lt!901258)))

(declare-fun b!2531645 () Bool)

(declare-fun e!1601968 () Regex!7539)

(assert (=> b!2531645 (= e!1601966 e!1601968)))

(declare-fun c!404452 () Bool)

(assert (=> b!2531645 (= c!404452 ((_ is ElementMatch!7539) (ite c!404415 (regTwo!15591 lt!901232) (regTwo!15590 lt!901232))))))

(declare-fun bm!158694 () Bool)

(declare-fun c!404454 () Bool)

(declare-fun call!158698 () Regex!7539)

(assert (=> bm!158694 (= call!158698 (derivativeStep!2108 (ite c!404454 (regTwo!15591 (ite c!404415 (regTwo!15591 lt!901232) (regTwo!15590 lt!901232))) (regTwo!15590 (ite c!404415 (regTwo!15591 lt!901232) (regTwo!15590 lt!901232)))) (head!5778 tl!4068)))))

(declare-fun b!2531646 () Bool)

(assert (=> b!2531646 (= e!1601970 (Concat!12235 call!158701 (ite c!404415 (regTwo!15591 lt!901232) (regTwo!15590 lt!901232))))))

(declare-fun b!2531647 () Bool)

(assert (=> b!2531647 (= e!1601967 (Union!7539 (Concat!12235 call!158700 (regTwo!15590 (ite c!404415 (regTwo!15591 lt!901232) (regTwo!15590 lt!901232)))) EmptyLang!7539))))

(declare-fun bm!158695 () Bool)

(declare-fun call!158699 () Regex!7539)

(assert (=> bm!158695 (= call!158699 (derivativeStep!2108 (ite c!404454 (regOne!15591 (ite c!404415 (regTwo!15591 lt!901232) (regTwo!15590 lt!901232))) (ite c!404455 (reg!7868 (ite c!404415 (regTwo!15591 lt!901232) (regTwo!15590 lt!901232))) (regOne!15590 (ite c!404415 (regTwo!15591 lt!901232) (regTwo!15590 lt!901232))))) (head!5778 tl!4068)))))

(declare-fun b!2531648 () Bool)

(assert (=> b!2531648 (= e!1601968 (ite (= (head!5778 tl!4068) (c!404379 (ite c!404415 (regTwo!15591 lt!901232) (regTwo!15590 lt!901232)))) EmptyExpr!7539 EmptyLang!7539))))

(declare-fun b!2531649 () Bool)

(assert (=> b!2531649 (= e!1601967 (Union!7539 (Concat!12235 call!158700 (regTwo!15590 (ite c!404415 (regTwo!15591 lt!901232) (regTwo!15590 lt!901232)))) call!158698))))

(declare-fun bm!158696 () Bool)

(assert (=> bm!158696 (= call!158701 call!158699)))

(declare-fun b!2531650 () Bool)

(assert (=> b!2531650 (= c!404454 ((_ is Union!7539) (ite c!404415 (regTwo!15591 lt!901232) (regTwo!15590 lt!901232))))))

(assert (=> b!2531650 (= e!1601968 e!1601969)))

(declare-fun b!2531651 () Bool)

(assert (=> b!2531651 (= e!1601969 (Union!7539 call!158699 call!158698))))

(declare-fun b!2531652 () Bool)

(assert (=> b!2531652 (= e!1601966 EmptyLang!7539)))

(assert (= (and d!719973 c!404451) b!2531652))

(assert (= (and d!719973 (not c!404451)) b!2531645))

(assert (= (and b!2531645 c!404452) b!2531648))

(assert (= (and b!2531645 (not c!404452)) b!2531650))

(assert (= (and b!2531650 c!404454) b!2531651))

(assert (= (and b!2531650 (not c!404454)) b!2531644))

(assert (= (and b!2531644 c!404455) b!2531646))

(assert (= (and b!2531644 (not c!404455)) b!2531643))

(assert (= (and b!2531643 c!404453) b!2531649))

(assert (= (and b!2531643 (not c!404453)) b!2531647))

(assert (= (or b!2531649 b!2531647) bm!158693))

(assert (= (or b!2531646 bm!158693) bm!158696))

(assert (= (or b!2531651 b!2531649) bm!158694))

(assert (= (or b!2531651 bm!158696) bm!158695))

(declare-fun m!2882437 () Bool)

(assert (=> b!2531643 m!2882437))

(declare-fun m!2882439 () Bool)

(assert (=> d!719973 m!2882439))

(declare-fun m!2882441 () Bool)

(assert (=> d!719973 m!2882441))

(assert (=> bm!158694 m!2882319))

(declare-fun m!2882443 () Bool)

(assert (=> bm!158694 m!2882443))

(assert (=> bm!158695 m!2882319))

(declare-fun m!2882445 () Bool)

(assert (=> bm!158695 m!2882445))

(assert (=> bm!158657 d!719973))

(declare-fun b!2531653 () Bool)

(declare-fun e!1601976 () Bool)

(declare-fun e!1601974 () Bool)

(assert (=> b!2531653 (= e!1601976 e!1601974)))

(declare-fun c!404457 () Bool)

(assert (=> b!2531653 (= c!404457 ((_ is Union!7539) lt!901238))))

(declare-fun b!2531654 () Bool)

(declare-fun e!1601972 () Bool)

(declare-fun call!158703 () Bool)

(assert (=> b!2531654 (= e!1601972 call!158703)))

(declare-fun b!2531656 () Bool)

(declare-fun res!1068703 () Bool)

(declare-fun e!1601971 () Bool)

(assert (=> b!2531656 (=> res!1068703 e!1601971)))

(assert (=> b!2531656 (= res!1068703 (not ((_ is Concat!12235) lt!901238)))))

(assert (=> b!2531656 (= e!1601974 e!1601971)))

(declare-fun b!2531657 () Bool)

(declare-fun e!1601977 () Bool)

(declare-fun call!158704 () Bool)

(assert (=> b!2531657 (= e!1601977 call!158704)))

(declare-fun b!2531658 () Bool)

(declare-fun e!1601975 () Bool)

(assert (=> b!2531658 (= e!1601971 e!1601975)))

(declare-fun res!1068704 () Bool)

(assert (=> b!2531658 (=> (not res!1068704) (not e!1601975))))

(assert (=> b!2531658 (= res!1068704 call!158703)))

(declare-fun b!2531659 () Bool)

(declare-fun res!1068705 () Bool)

(assert (=> b!2531659 (=> (not res!1068705) (not e!1601972))))

(declare-fun call!158702 () Bool)

(assert (=> b!2531659 (= res!1068705 call!158702)))

(assert (=> b!2531659 (= e!1601974 e!1601972)))

(declare-fun b!2531660 () Bool)

(assert (=> b!2531660 (= e!1601975 call!158702)))

(declare-fun b!2531655 () Bool)

(assert (=> b!2531655 (= e!1601976 e!1601977)))

(declare-fun res!1068701 () Bool)

(assert (=> b!2531655 (= res!1068701 (not (nullable!2456 (reg!7868 lt!901238))))))

(assert (=> b!2531655 (=> (not res!1068701) (not e!1601977))))

(declare-fun d!719975 () Bool)

(declare-fun res!1068702 () Bool)

(declare-fun e!1601973 () Bool)

(assert (=> d!719975 (=> res!1068702 e!1601973)))

(assert (=> d!719975 (= res!1068702 ((_ is ElementMatch!7539) lt!901238))))

(assert (=> d!719975 (= (validRegex!3165 lt!901238) e!1601973)))

(declare-fun bm!158697 () Bool)

(assert (=> bm!158697 (= call!158702 call!158704)))

(declare-fun bm!158698 () Bool)

(declare-fun c!404456 () Bool)

(assert (=> bm!158698 (= call!158704 (validRegex!3165 (ite c!404456 (reg!7868 lt!901238) (ite c!404457 (regOne!15591 lt!901238) (regTwo!15590 lt!901238)))))))

(declare-fun bm!158699 () Bool)

(assert (=> bm!158699 (= call!158703 (validRegex!3165 (ite c!404457 (regTwo!15591 lt!901238) (regOne!15590 lt!901238))))))

(declare-fun b!2531661 () Bool)

(assert (=> b!2531661 (= e!1601973 e!1601976)))

(assert (=> b!2531661 (= c!404456 ((_ is Star!7539) lt!901238))))

(assert (= (and d!719975 (not res!1068702)) b!2531661))

(assert (= (and b!2531661 c!404456) b!2531655))

(assert (= (and b!2531661 (not c!404456)) b!2531653))

(assert (= (and b!2531655 res!1068701) b!2531657))

(assert (= (and b!2531653 c!404457) b!2531659))

(assert (= (and b!2531653 (not c!404457)) b!2531656))

(assert (= (and b!2531659 res!1068705) b!2531654))

(assert (= (and b!2531656 (not res!1068703)) b!2531658))

(assert (= (and b!2531658 res!1068704) b!2531660))

(assert (= (or b!2531659 b!2531660) bm!158697))

(assert (= (or b!2531654 b!2531658) bm!158699))

(assert (= (or b!2531657 bm!158697) bm!158698))

(declare-fun m!2882447 () Bool)

(assert (=> b!2531655 m!2882447))

(declare-fun m!2882449 () Bool)

(assert (=> bm!158698 m!2882449))

(declare-fun m!2882451 () Bool)

(assert (=> bm!158699 m!2882451))

(assert (=> d!719937 d!719975))

(declare-fun b!2531662 () Bool)

(declare-fun e!1601983 () Bool)

(declare-fun e!1601981 () Bool)

(assert (=> b!2531662 (= e!1601983 e!1601981)))

(declare-fun c!404459 () Bool)

(assert (=> b!2531662 (= c!404459 ((_ is Union!7539) lt!901229))))

(declare-fun b!2531663 () Bool)

(declare-fun e!1601979 () Bool)

(declare-fun call!158706 () Bool)

(assert (=> b!2531663 (= e!1601979 call!158706)))

(declare-fun b!2531665 () Bool)

(declare-fun res!1068708 () Bool)

(declare-fun e!1601978 () Bool)

(assert (=> b!2531665 (=> res!1068708 e!1601978)))

(assert (=> b!2531665 (= res!1068708 (not ((_ is Concat!12235) lt!901229)))))

(assert (=> b!2531665 (= e!1601981 e!1601978)))

(declare-fun b!2531666 () Bool)

(declare-fun e!1601984 () Bool)

(declare-fun call!158707 () Bool)

(assert (=> b!2531666 (= e!1601984 call!158707)))

(declare-fun b!2531667 () Bool)

(declare-fun e!1601982 () Bool)

(assert (=> b!2531667 (= e!1601978 e!1601982)))

(declare-fun res!1068709 () Bool)

(assert (=> b!2531667 (=> (not res!1068709) (not e!1601982))))

(assert (=> b!2531667 (= res!1068709 call!158706)))

(declare-fun b!2531668 () Bool)

(declare-fun res!1068710 () Bool)

(assert (=> b!2531668 (=> (not res!1068710) (not e!1601979))))

(declare-fun call!158705 () Bool)

(assert (=> b!2531668 (= res!1068710 call!158705)))

(assert (=> b!2531668 (= e!1601981 e!1601979)))

(declare-fun b!2531669 () Bool)

(assert (=> b!2531669 (= e!1601982 call!158705)))

(declare-fun b!2531664 () Bool)

(assert (=> b!2531664 (= e!1601983 e!1601984)))

(declare-fun res!1068706 () Bool)

(assert (=> b!2531664 (= res!1068706 (not (nullable!2456 (reg!7868 lt!901229))))))

(assert (=> b!2531664 (=> (not res!1068706) (not e!1601984))))

(declare-fun d!719977 () Bool)

(declare-fun res!1068707 () Bool)

(declare-fun e!1601980 () Bool)

(assert (=> d!719977 (=> res!1068707 e!1601980)))

(assert (=> d!719977 (= res!1068707 ((_ is ElementMatch!7539) lt!901229))))

(assert (=> d!719977 (= (validRegex!3165 lt!901229) e!1601980)))

(declare-fun bm!158700 () Bool)

(assert (=> bm!158700 (= call!158705 call!158707)))

(declare-fun c!404458 () Bool)

(declare-fun bm!158701 () Bool)

(assert (=> bm!158701 (= call!158707 (validRegex!3165 (ite c!404458 (reg!7868 lt!901229) (ite c!404459 (regOne!15591 lt!901229) (regTwo!15590 lt!901229)))))))

(declare-fun bm!158702 () Bool)

(assert (=> bm!158702 (= call!158706 (validRegex!3165 (ite c!404459 (regTwo!15591 lt!901229) (regOne!15590 lt!901229))))))

(declare-fun b!2531670 () Bool)

(assert (=> b!2531670 (= e!1601980 e!1601983)))

(assert (=> b!2531670 (= c!404458 ((_ is Star!7539) lt!901229))))

(assert (= (and d!719977 (not res!1068707)) b!2531670))

(assert (= (and b!2531670 c!404458) b!2531664))

(assert (= (and b!2531670 (not c!404458)) b!2531662))

(assert (= (and b!2531664 res!1068706) b!2531666))

(assert (= (and b!2531662 c!404459) b!2531668))

(assert (= (and b!2531662 (not c!404459)) b!2531665))

(assert (= (and b!2531668 res!1068710) b!2531663))

(assert (= (and b!2531665 (not res!1068708)) b!2531667))

(assert (= (and b!2531667 res!1068709) b!2531669))

(assert (= (or b!2531668 b!2531669) bm!158700))

(assert (= (or b!2531663 b!2531667) bm!158702))

(assert (= (or b!2531666 bm!158700) bm!158701))

(declare-fun m!2882453 () Bool)

(assert (=> b!2531664 m!2882453))

(declare-fun m!2882455 () Bool)

(assert (=> bm!158701 m!2882455))

(declare-fun m!2882457 () Bool)

(assert (=> bm!158702 m!2882457))

(assert (=> d!719937 d!719977))

(declare-fun b!2531685 () Bool)

(declare-fun e!1601999 () Bool)

(declare-fun e!1602001 () Bool)

(assert (=> b!2531685 (= e!1601999 e!1602001)))

(declare-fun res!1068722 () Bool)

(assert (=> b!2531685 (=> res!1068722 e!1602001)))

(assert (=> b!2531685 (= res!1068722 ((_ is Star!7539) (derivative!234 lt!901232 tl!4068)))))

(declare-fun b!2531686 () Bool)

(declare-fun e!1602000 () Bool)

(assert (=> b!2531686 (= e!1602001 e!1602000)))

(declare-fun c!404462 () Bool)

(assert (=> b!2531686 (= c!404462 ((_ is Union!7539) (derivative!234 lt!901232 tl!4068)))))

(declare-fun b!2531687 () Bool)

(declare-fun e!1601997 () Bool)

(declare-fun call!158713 () Bool)

(assert (=> b!2531687 (= e!1601997 call!158713)))

(declare-fun d!719979 () Bool)

(declare-fun res!1068721 () Bool)

(declare-fun e!1602002 () Bool)

(assert (=> d!719979 (=> res!1068721 e!1602002)))

(assert (=> d!719979 (= res!1068721 ((_ is EmptyExpr!7539) (derivative!234 lt!901232 tl!4068)))))

(assert (=> d!719979 (= (nullableFct!691 (derivative!234 lt!901232 tl!4068)) e!1602002)))

(declare-fun b!2531688 () Bool)

(assert (=> b!2531688 (= e!1602002 e!1601999)))

(declare-fun res!1068724 () Bool)

(assert (=> b!2531688 (=> (not res!1068724) (not e!1601999))))

(assert (=> b!2531688 (= res!1068724 (and (not ((_ is EmptyLang!7539) (derivative!234 lt!901232 tl!4068))) (not ((_ is ElementMatch!7539) (derivative!234 lt!901232 tl!4068)))))))

(declare-fun b!2531689 () Bool)

(declare-fun e!1601998 () Bool)

(declare-fun call!158712 () Bool)

(assert (=> b!2531689 (= e!1601998 call!158712)))

(declare-fun bm!158707 () Bool)

(assert (=> bm!158707 (= call!158713 (nullable!2456 (ite c!404462 (regTwo!15591 (derivative!234 lt!901232 tl!4068)) (regOne!15590 (derivative!234 lt!901232 tl!4068)))))))

(declare-fun b!2531690 () Bool)

(assert (=> b!2531690 (= e!1602000 e!1601998)))

(declare-fun res!1068723 () Bool)

(assert (=> b!2531690 (= res!1068723 call!158713)))

(assert (=> b!2531690 (=> (not res!1068723) (not e!1601998))))

(declare-fun b!2531691 () Bool)

(assert (=> b!2531691 (= e!1602000 e!1601997)))

(declare-fun res!1068725 () Bool)

(assert (=> b!2531691 (= res!1068725 call!158712)))

(assert (=> b!2531691 (=> res!1068725 e!1601997)))

(declare-fun bm!158708 () Bool)

(assert (=> bm!158708 (= call!158712 (nullable!2456 (ite c!404462 (regOne!15591 (derivative!234 lt!901232 tl!4068)) (regTwo!15590 (derivative!234 lt!901232 tl!4068)))))))

(assert (= (and d!719979 (not res!1068721)) b!2531688))

(assert (= (and b!2531688 res!1068724) b!2531685))

(assert (= (and b!2531685 (not res!1068722)) b!2531686))

(assert (= (and b!2531686 c!404462) b!2531691))

(assert (= (and b!2531686 (not c!404462)) b!2531690))

(assert (= (and b!2531691 (not res!1068725)) b!2531687))

(assert (= (and b!2531690 res!1068723) b!2531689))

(assert (= (or b!2531687 b!2531690) bm!158707))

(assert (= (or b!2531691 b!2531689) bm!158708))

(declare-fun m!2882459 () Bool)

(assert (=> bm!158707 m!2882459))

(declare-fun m!2882461 () Bool)

(assert (=> bm!158708 m!2882461))

(assert (=> d!719947 d!719979))

(declare-fun b!2531692 () Bool)

(declare-fun c!404465 () Bool)

(assert (=> b!2531692 (= c!404465 (nullable!2456 (regOne!15590 (ite c!404421 (regTwo!15591 r!27340) (regTwo!15590 r!27340)))))))

(declare-fun e!1602007 () Regex!7539)

(declare-fun e!1602004 () Regex!7539)

(assert (=> b!2531692 (= e!1602007 e!1602004)))

(declare-fun bm!158709 () Bool)

(declare-fun call!158716 () Regex!7539)

(declare-fun call!158717 () Regex!7539)

(assert (=> bm!158709 (= call!158716 call!158717)))

(declare-fun b!2531693 () Bool)

(declare-fun e!1602006 () Regex!7539)

(assert (=> b!2531693 (= e!1602006 e!1602007)))

(declare-fun c!404467 () Bool)

(assert (=> b!2531693 (= c!404467 ((_ is Star!7539) (ite c!404421 (regTwo!15591 r!27340) (regTwo!15590 r!27340))))))

(declare-fun d!719981 () Bool)

(declare-fun lt!901259 () Regex!7539)

(assert (=> d!719981 (validRegex!3165 lt!901259)))

(declare-fun e!1602003 () Regex!7539)

(assert (=> d!719981 (= lt!901259 e!1602003)))

(declare-fun c!404463 () Bool)

(assert (=> d!719981 (= c!404463 (or ((_ is EmptyExpr!7539) (ite c!404421 (regTwo!15591 r!27340) (regTwo!15590 r!27340))) ((_ is EmptyLang!7539) (ite c!404421 (regTwo!15591 r!27340) (regTwo!15590 r!27340)))))))

(assert (=> d!719981 (validRegex!3165 (ite c!404421 (regTwo!15591 r!27340) (regTwo!15590 r!27340)))))

(assert (=> d!719981 (= (derivativeStep!2108 (ite c!404421 (regTwo!15591 r!27340) (regTwo!15590 r!27340)) c!14016) lt!901259)))

(declare-fun b!2531694 () Bool)

(declare-fun e!1602005 () Regex!7539)

(assert (=> b!2531694 (= e!1602003 e!1602005)))

(declare-fun c!404464 () Bool)

(assert (=> b!2531694 (= c!404464 ((_ is ElementMatch!7539) (ite c!404421 (regTwo!15591 r!27340) (regTwo!15590 r!27340))))))

(declare-fun call!158714 () Regex!7539)

(declare-fun bm!158710 () Bool)

(declare-fun c!404466 () Bool)

(assert (=> bm!158710 (= call!158714 (derivativeStep!2108 (ite c!404466 (regTwo!15591 (ite c!404421 (regTwo!15591 r!27340) (regTwo!15590 r!27340))) (regTwo!15590 (ite c!404421 (regTwo!15591 r!27340) (regTwo!15590 r!27340)))) c!14016))))

(declare-fun b!2531695 () Bool)

(assert (=> b!2531695 (= e!1602007 (Concat!12235 call!158717 (ite c!404421 (regTwo!15591 r!27340) (regTwo!15590 r!27340))))))

(declare-fun b!2531696 () Bool)

(assert (=> b!2531696 (= e!1602004 (Union!7539 (Concat!12235 call!158716 (regTwo!15590 (ite c!404421 (regTwo!15591 r!27340) (regTwo!15590 r!27340)))) EmptyLang!7539))))

(declare-fun call!158715 () Regex!7539)

(declare-fun bm!158711 () Bool)

(assert (=> bm!158711 (= call!158715 (derivativeStep!2108 (ite c!404466 (regOne!15591 (ite c!404421 (regTwo!15591 r!27340) (regTwo!15590 r!27340))) (ite c!404467 (reg!7868 (ite c!404421 (regTwo!15591 r!27340) (regTwo!15590 r!27340))) (regOne!15590 (ite c!404421 (regTwo!15591 r!27340) (regTwo!15590 r!27340))))) c!14016))))

(declare-fun b!2531697 () Bool)

(assert (=> b!2531697 (= e!1602005 (ite (= c!14016 (c!404379 (ite c!404421 (regTwo!15591 r!27340) (regTwo!15590 r!27340)))) EmptyExpr!7539 EmptyLang!7539))))

(declare-fun b!2531698 () Bool)

(assert (=> b!2531698 (= e!1602004 (Union!7539 (Concat!12235 call!158716 (regTwo!15590 (ite c!404421 (regTwo!15591 r!27340) (regTwo!15590 r!27340)))) call!158714))))

(declare-fun bm!158712 () Bool)

(assert (=> bm!158712 (= call!158717 call!158715)))

(declare-fun b!2531699 () Bool)

(assert (=> b!2531699 (= c!404466 ((_ is Union!7539) (ite c!404421 (regTwo!15591 r!27340) (regTwo!15590 r!27340))))))

(assert (=> b!2531699 (= e!1602005 e!1602006)))

(declare-fun b!2531700 () Bool)

(assert (=> b!2531700 (= e!1602006 (Union!7539 call!158715 call!158714))))

(declare-fun b!2531701 () Bool)

(assert (=> b!2531701 (= e!1602003 EmptyLang!7539)))

(assert (= (and d!719981 c!404463) b!2531701))

(assert (= (and d!719981 (not c!404463)) b!2531694))

(assert (= (and b!2531694 c!404464) b!2531697))

(assert (= (and b!2531694 (not c!404464)) b!2531699))

(assert (= (and b!2531699 c!404466) b!2531700))

(assert (= (and b!2531699 (not c!404466)) b!2531693))

(assert (= (and b!2531693 c!404467) b!2531695))

(assert (= (and b!2531693 (not c!404467)) b!2531692))

(assert (= (and b!2531692 c!404465) b!2531698))

(assert (= (and b!2531692 (not c!404465)) b!2531696))

(assert (= (or b!2531698 b!2531696) bm!158709))

(assert (= (or b!2531695 bm!158709) bm!158712))

(assert (= (or b!2531700 b!2531698) bm!158710))

(assert (= (or b!2531700 bm!158712) bm!158711))

(declare-fun m!2882463 () Bool)

(assert (=> b!2531692 m!2882463))

(declare-fun m!2882465 () Bool)

(assert (=> d!719981 m!2882465))

(declare-fun m!2882467 () Bool)

(assert (=> d!719981 m!2882467))

(declare-fun m!2882469 () Bool)

(assert (=> bm!158710 m!2882469))

(declare-fun m!2882471 () Bool)

(assert (=> bm!158711 m!2882471))

(assert (=> bm!158665 d!719981))

(declare-fun d!719983 () Bool)

(declare-fun lt!901260 () Regex!7539)

(assert (=> d!719983 (validRegex!3165 lt!901260)))

(declare-fun e!1602008 () Regex!7539)

(assert (=> d!719983 (= lt!901260 e!1602008)))

(declare-fun c!404468 () Bool)

(assert (=> d!719983 (= c!404468 ((_ is Cons!29504) (t!211303 lt!901230)))))

(assert (=> d!719983 (validRegex!3165 (derivativeStep!2108 lt!901229 (h!34924 lt!901230)))))

(assert (=> d!719983 (= (derivative!234 (derivativeStep!2108 lt!901229 (h!34924 lt!901230)) (t!211303 lt!901230)) lt!901260)))

(declare-fun b!2531702 () Bool)

(assert (=> b!2531702 (= e!1602008 (derivative!234 (derivativeStep!2108 (derivativeStep!2108 lt!901229 (h!34924 lt!901230)) (h!34924 (t!211303 lt!901230))) (t!211303 (t!211303 lt!901230))))))

(declare-fun b!2531703 () Bool)

(assert (=> b!2531703 (= e!1602008 (derivativeStep!2108 lt!901229 (h!34924 lt!901230)))))

(assert (= (and d!719983 c!404468) b!2531702))

(assert (= (and d!719983 (not c!404468)) b!2531703))

(declare-fun m!2882473 () Bool)

(assert (=> d!719983 m!2882473))

(assert (=> d!719983 m!2882349))

(declare-fun m!2882475 () Bool)

(assert (=> d!719983 m!2882475))

(assert (=> b!2531702 m!2882349))

(declare-fun m!2882477 () Bool)

(assert (=> b!2531702 m!2882477))

(assert (=> b!2531702 m!2882477))

(declare-fun m!2882479 () Bool)

(assert (=> b!2531702 m!2882479))

(assert (=> b!2531438 d!719983))

(declare-fun b!2531704 () Bool)

(declare-fun c!404471 () Bool)

(assert (=> b!2531704 (= c!404471 (nullable!2456 (regOne!15590 lt!901229)))))

(declare-fun e!1602013 () Regex!7539)

(declare-fun e!1602010 () Regex!7539)

(assert (=> b!2531704 (= e!1602013 e!1602010)))

(declare-fun bm!158713 () Bool)

(declare-fun call!158720 () Regex!7539)

(declare-fun call!158721 () Regex!7539)

(assert (=> bm!158713 (= call!158720 call!158721)))

(declare-fun b!2531705 () Bool)

(declare-fun e!1602012 () Regex!7539)

(assert (=> b!2531705 (= e!1602012 e!1602013)))

(declare-fun c!404473 () Bool)

(assert (=> b!2531705 (= c!404473 ((_ is Star!7539) lt!901229))))

(declare-fun d!719985 () Bool)

(declare-fun lt!901261 () Regex!7539)

(assert (=> d!719985 (validRegex!3165 lt!901261)))

(declare-fun e!1602009 () Regex!7539)

(assert (=> d!719985 (= lt!901261 e!1602009)))

(declare-fun c!404469 () Bool)

(assert (=> d!719985 (= c!404469 (or ((_ is EmptyExpr!7539) lt!901229) ((_ is EmptyLang!7539) lt!901229)))))

(assert (=> d!719985 (validRegex!3165 lt!901229)))

(assert (=> d!719985 (= (derivativeStep!2108 lt!901229 (h!34924 lt!901230)) lt!901261)))

(declare-fun b!2531706 () Bool)

(declare-fun e!1602011 () Regex!7539)

(assert (=> b!2531706 (= e!1602009 e!1602011)))

(declare-fun c!404470 () Bool)

(assert (=> b!2531706 (= c!404470 ((_ is ElementMatch!7539) lt!901229))))

(declare-fun call!158718 () Regex!7539)

(declare-fun bm!158714 () Bool)

(declare-fun c!404472 () Bool)

(assert (=> bm!158714 (= call!158718 (derivativeStep!2108 (ite c!404472 (regTwo!15591 lt!901229) (regTwo!15590 lt!901229)) (h!34924 lt!901230)))))

(declare-fun b!2531707 () Bool)

(assert (=> b!2531707 (= e!1602013 (Concat!12235 call!158721 lt!901229))))

(declare-fun b!2531708 () Bool)

(assert (=> b!2531708 (= e!1602010 (Union!7539 (Concat!12235 call!158720 (regTwo!15590 lt!901229)) EmptyLang!7539))))

(declare-fun bm!158715 () Bool)

(declare-fun call!158719 () Regex!7539)

(assert (=> bm!158715 (= call!158719 (derivativeStep!2108 (ite c!404472 (regOne!15591 lt!901229) (ite c!404473 (reg!7868 lt!901229) (regOne!15590 lt!901229))) (h!34924 lt!901230)))))

(declare-fun b!2531709 () Bool)

(assert (=> b!2531709 (= e!1602011 (ite (= (h!34924 lt!901230) (c!404379 lt!901229)) EmptyExpr!7539 EmptyLang!7539))))

(declare-fun b!2531710 () Bool)

(assert (=> b!2531710 (= e!1602010 (Union!7539 (Concat!12235 call!158720 (regTwo!15590 lt!901229)) call!158718))))

(declare-fun bm!158716 () Bool)

(assert (=> bm!158716 (= call!158721 call!158719)))

(declare-fun b!2531711 () Bool)

(assert (=> b!2531711 (= c!404472 ((_ is Union!7539) lt!901229))))

(assert (=> b!2531711 (= e!1602011 e!1602012)))

(declare-fun b!2531712 () Bool)

(assert (=> b!2531712 (= e!1602012 (Union!7539 call!158719 call!158718))))

(declare-fun b!2531713 () Bool)

(assert (=> b!2531713 (= e!1602009 EmptyLang!7539)))

(assert (= (and d!719985 c!404469) b!2531713))

(assert (= (and d!719985 (not c!404469)) b!2531706))

(assert (= (and b!2531706 c!404470) b!2531709))

(assert (= (and b!2531706 (not c!404470)) b!2531711))

(assert (= (and b!2531711 c!404472) b!2531712))

(assert (= (and b!2531711 (not c!404472)) b!2531705))

(assert (= (and b!2531705 c!404473) b!2531707))

(assert (= (and b!2531705 (not c!404473)) b!2531704))

(assert (= (and b!2531704 c!404471) b!2531710))

(assert (= (and b!2531704 (not c!404471)) b!2531708))

(assert (= (or b!2531710 b!2531708) bm!158713))

(assert (= (or b!2531707 bm!158713) bm!158716))

(assert (= (or b!2531712 b!2531710) bm!158714))

(assert (= (or b!2531712 bm!158716) bm!158715))

(declare-fun m!2882481 () Bool)

(assert (=> b!2531704 m!2882481))

(declare-fun m!2882483 () Bool)

(assert (=> d!719985 m!2882483))

(assert (=> d!719985 m!2882347))

(declare-fun m!2882485 () Bool)

(assert (=> bm!158714 m!2882485))

(declare-fun m!2882487 () Bool)

(assert (=> bm!158715 m!2882487))

(assert (=> b!2531438 d!719985))

(declare-fun d!719987 () Bool)

(assert (=> d!719987 (= (nullable!2456 (regOne!15590 lt!901232)) (nullableFct!691 (regOne!15590 lt!901232)))))

(declare-fun bs!469214 () Bool)

(assert (= bs!469214 d!719987))

(declare-fun m!2882489 () Bool)

(assert (=> bs!469214 m!2882489))

(assert (=> b!2531480 d!719987))

(declare-fun d!719989 () Bool)

(assert (=> d!719989 (= (nullable!2456 (reg!7868 r!27340)) (nullableFct!691 (reg!7868 r!27340)))))

(declare-fun bs!469215 () Bool)

(assert (= bs!469215 d!719989))

(declare-fun m!2882491 () Bool)

(assert (=> bs!469215 m!2882491))

(assert (=> b!2531421 d!719989))

(declare-fun b!2531714 () Bool)

(declare-fun e!1602019 () Bool)

(declare-fun e!1602017 () Bool)

(assert (=> b!2531714 (= e!1602019 e!1602017)))

(declare-fun c!404475 () Bool)

(assert (=> b!2531714 (= c!404475 ((_ is Union!7539) lt!901248))))

(declare-fun b!2531715 () Bool)

(declare-fun e!1602015 () Bool)

(declare-fun call!158723 () Bool)

(assert (=> b!2531715 (= e!1602015 call!158723)))

(declare-fun b!2531717 () Bool)

(declare-fun res!1068728 () Bool)

(declare-fun e!1602014 () Bool)

(assert (=> b!2531717 (=> res!1068728 e!1602014)))

(assert (=> b!2531717 (= res!1068728 (not ((_ is Concat!12235) lt!901248)))))

(assert (=> b!2531717 (= e!1602017 e!1602014)))

(declare-fun b!2531718 () Bool)

(declare-fun e!1602020 () Bool)

(declare-fun call!158724 () Bool)

(assert (=> b!2531718 (= e!1602020 call!158724)))

(declare-fun b!2531719 () Bool)

(declare-fun e!1602018 () Bool)

(assert (=> b!2531719 (= e!1602014 e!1602018)))

(declare-fun res!1068729 () Bool)

(assert (=> b!2531719 (=> (not res!1068729) (not e!1602018))))

(assert (=> b!2531719 (= res!1068729 call!158723)))

(declare-fun b!2531720 () Bool)

(declare-fun res!1068730 () Bool)

(assert (=> b!2531720 (=> (not res!1068730) (not e!1602015))))

(declare-fun call!158722 () Bool)

(assert (=> b!2531720 (= res!1068730 call!158722)))

(assert (=> b!2531720 (= e!1602017 e!1602015)))

(declare-fun b!2531721 () Bool)

(assert (=> b!2531721 (= e!1602018 call!158722)))

(declare-fun b!2531716 () Bool)

(assert (=> b!2531716 (= e!1602019 e!1602020)))

(declare-fun res!1068726 () Bool)

(assert (=> b!2531716 (= res!1068726 (not (nullable!2456 (reg!7868 lt!901248))))))

(assert (=> b!2531716 (=> (not res!1068726) (not e!1602020))))

(declare-fun d!719991 () Bool)

(declare-fun res!1068727 () Bool)

(declare-fun e!1602016 () Bool)

(assert (=> d!719991 (=> res!1068727 e!1602016)))

(assert (=> d!719991 (= res!1068727 ((_ is ElementMatch!7539) lt!901248))))

(assert (=> d!719991 (= (validRegex!3165 lt!901248) e!1602016)))

(declare-fun bm!158717 () Bool)

(assert (=> bm!158717 (= call!158722 call!158724)))

(declare-fun bm!158718 () Bool)

(declare-fun c!404474 () Bool)

(assert (=> bm!158718 (= call!158724 (validRegex!3165 (ite c!404474 (reg!7868 lt!901248) (ite c!404475 (regOne!15591 lt!901248) (regTwo!15590 lt!901248)))))))

(declare-fun bm!158719 () Bool)

(assert (=> bm!158719 (= call!158723 (validRegex!3165 (ite c!404475 (regTwo!15591 lt!901248) (regOne!15590 lt!901248))))))

(declare-fun b!2531722 () Bool)

(assert (=> b!2531722 (= e!1602016 e!1602019)))

(assert (=> b!2531722 (= c!404474 ((_ is Star!7539) lt!901248))))

(assert (= (and d!719991 (not res!1068727)) b!2531722))

(assert (= (and b!2531722 c!404474) b!2531716))

(assert (= (and b!2531722 (not c!404474)) b!2531714))

(assert (= (and b!2531716 res!1068726) b!2531718))

(assert (= (and b!2531714 c!404475) b!2531720))

(assert (= (and b!2531714 (not c!404475)) b!2531717))

(assert (= (and b!2531720 res!1068730) b!2531715))

(assert (= (and b!2531717 (not res!1068728)) b!2531719))

(assert (= (and b!2531719 res!1068729) b!2531721))

(assert (= (or b!2531720 b!2531721) bm!158717))

(assert (= (or b!2531715 b!2531719) bm!158719))

(assert (= (or b!2531718 bm!158717) bm!158718))

(declare-fun m!2882493 () Bool)

(assert (=> b!2531716 m!2882493))

(declare-fun m!2882495 () Bool)

(assert (=> bm!158718 m!2882495))

(declare-fun m!2882497 () Bool)

(assert (=> bm!158719 m!2882497))

(assert (=> d!719951 d!719991))

(assert (=> d!719951 d!719927))

(declare-fun b!2531723 () Bool)

(declare-fun c!404478 () Bool)

(assert (=> b!2531723 (= c!404478 (nullable!2456 (regOne!15590 (ite c!404415 (regOne!15591 lt!901232) (ite c!404416 (reg!7868 lt!901232) (regOne!15590 lt!901232))))))))

(declare-fun e!1602025 () Regex!7539)

(declare-fun e!1602022 () Regex!7539)

(assert (=> b!2531723 (= e!1602025 e!1602022)))

(declare-fun bm!158720 () Bool)

(declare-fun call!158727 () Regex!7539)

(declare-fun call!158728 () Regex!7539)

(assert (=> bm!158720 (= call!158727 call!158728)))

(declare-fun b!2531724 () Bool)

(declare-fun e!1602024 () Regex!7539)

(assert (=> b!2531724 (= e!1602024 e!1602025)))

(declare-fun c!404480 () Bool)

(assert (=> b!2531724 (= c!404480 ((_ is Star!7539) (ite c!404415 (regOne!15591 lt!901232) (ite c!404416 (reg!7868 lt!901232) (regOne!15590 lt!901232)))))))

(declare-fun d!719993 () Bool)

(declare-fun lt!901262 () Regex!7539)

(assert (=> d!719993 (validRegex!3165 lt!901262)))

(declare-fun e!1602021 () Regex!7539)

(assert (=> d!719993 (= lt!901262 e!1602021)))

(declare-fun c!404476 () Bool)

(assert (=> d!719993 (= c!404476 (or ((_ is EmptyExpr!7539) (ite c!404415 (regOne!15591 lt!901232) (ite c!404416 (reg!7868 lt!901232) (regOne!15590 lt!901232)))) ((_ is EmptyLang!7539) (ite c!404415 (regOne!15591 lt!901232) (ite c!404416 (reg!7868 lt!901232) (regOne!15590 lt!901232))))))))

(assert (=> d!719993 (validRegex!3165 (ite c!404415 (regOne!15591 lt!901232) (ite c!404416 (reg!7868 lt!901232) (regOne!15590 lt!901232))))))

(assert (=> d!719993 (= (derivativeStep!2108 (ite c!404415 (regOne!15591 lt!901232) (ite c!404416 (reg!7868 lt!901232) (regOne!15590 lt!901232))) (head!5778 tl!4068)) lt!901262)))

(declare-fun b!2531725 () Bool)

(declare-fun e!1602023 () Regex!7539)

(assert (=> b!2531725 (= e!1602021 e!1602023)))

(declare-fun c!404477 () Bool)

(assert (=> b!2531725 (= c!404477 ((_ is ElementMatch!7539) (ite c!404415 (regOne!15591 lt!901232) (ite c!404416 (reg!7868 lt!901232) (regOne!15590 lt!901232)))))))

(declare-fun c!404479 () Bool)

(declare-fun bm!158721 () Bool)

(declare-fun call!158725 () Regex!7539)

(assert (=> bm!158721 (= call!158725 (derivativeStep!2108 (ite c!404479 (regTwo!15591 (ite c!404415 (regOne!15591 lt!901232) (ite c!404416 (reg!7868 lt!901232) (regOne!15590 lt!901232)))) (regTwo!15590 (ite c!404415 (regOne!15591 lt!901232) (ite c!404416 (reg!7868 lt!901232) (regOne!15590 lt!901232))))) (head!5778 tl!4068)))))

(declare-fun b!2531726 () Bool)

(assert (=> b!2531726 (= e!1602025 (Concat!12235 call!158728 (ite c!404415 (regOne!15591 lt!901232) (ite c!404416 (reg!7868 lt!901232) (regOne!15590 lt!901232)))))))

(declare-fun b!2531727 () Bool)

(assert (=> b!2531727 (= e!1602022 (Union!7539 (Concat!12235 call!158727 (regTwo!15590 (ite c!404415 (regOne!15591 lt!901232) (ite c!404416 (reg!7868 lt!901232) (regOne!15590 lt!901232))))) EmptyLang!7539))))

(declare-fun bm!158722 () Bool)

(declare-fun call!158726 () Regex!7539)

(assert (=> bm!158722 (= call!158726 (derivativeStep!2108 (ite c!404479 (regOne!15591 (ite c!404415 (regOne!15591 lt!901232) (ite c!404416 (reg!7868 lt!901232) (regOne!15590 lt!901232)))) (ite c!404480 (reg!7868 (ite c!404415 (regOne!15591 lt!901232) (ite c!404416 (reg!7868 lt!901232) (regOne!15590 lt!901232)))) (regOne!15590 (ite c!404415 (regOne!15591 lt!901232) (ite c!404416 (reg!7868 lt!901232) (regOne!15590 lt!901232)))))) (head!5778 tl!4068)))))

(declare-fun b!2531728 () Bool)

(assert (=> b!2531728 (= e!1602023 (ite (= (head!5778 tl!4068) (c!404379 (ite c!404415 (regOne!15591 lt!901232) (ite c!404416 (reg!7868 lt!901232) (regOne!15590 lt!901232))))) EmptyExpr!7539 EmptyLang!7539))))

(declare-fun b!2531729 () Bool)

(assert (=> b!2531729 (= e!1602022 (Union!7539 (Concat!12235 call!158727 (regTwo!15590 (ite c!404415 (regOne!15591 lt!901232) (ite c!404416 (reg!7868 lt!901232) (regOne!15590 lt!901232))))) call!158725))))

(declare-fun bm!158723 () Bool)

(assert (=> bm!158723 (= call!158728 call!158726)))

(declare-fun b!2531730 () Bool)

(assert (=> b!2531730 (= c!404479 ((_ is Union!7539) (ite c!404415 (regOne!15591 lt!901232) (ite c!404416 (reg!7868 lt!901232) (regOne!15590 lt!901232)))))))

(assert (=> b!2531730 (= e!1602023 e!1602024)))

(declare-fun b!2531731 () Bool)

(assert (=> b!2531731 (= e!1602024 (Union!7539 call!158726 call!158725))))

(declare-fun b!2531732 () Bool)

(assert (=> b!2531732 (= e!1602021 EmptyLang!7539)))

(assert (= (and d!719993 c!404476) b!2531732))

(assert (= (and d!719993 (not c!404476)) b!2531725))

(assert (= (and b!2531725 c!404477) b!2531728))

(assert (= (and b!2531725 (not c!404477)) b!2531730))

(assert (= (and b!2531730 c!404479) b!2531731))

(assert (= (and b!2531730 (not c!404479)) b!2531724))

(assert (= (and b!2531724 c!404480) b!2531726))

(assert (= (and b!2531724 (not c!404480)) b!2531723))

(assert (= (and b!2531723 c!404478) b!2531729))

(assert (= (and b!2531723 (not c!404478)) b!2531727))

(assert (= (or b!2531729 b!2531727) bm!158720))

(assert (= (or b!2531726 bm!158720) bm!158723))

(assert (= (or b!2531731 b!2531729) bm!158721))

(assert (= (or b!2531731 bm!158723) bm!158722))

(declare-fun m!2882499 () Bool)

(assert (=> b!2531723 m!2882499))

(declare-fun m!2882501 () Bool)

(assert (=> d!719993 m!2882501))

(declare-fun m!2882503 () Bool)

(assert (=> d!719993 m!2882503))

(assert (=> bm!158721 m!2882319))

(declare-fun m!2882505 () Bool)

(assert (=> bm!158721 m!2882505))

(assert (=> bm!158722 m!2882319))

(declare-fun m!2882507 () Bool)

(assert (=> bm!158722 m!2882507))

(assert (=> bm!158658 d!719993))

(declare-fun b!2531733 () Bool)

(declare-fun e!1602031 () Bool)

(declare-fun e!1602029 () Bool)

(assert (=> b!2531733 (= e!1602031 e!1602029)))

(declare-fun c!404482 () Bool)

(assert (=> b!2531733 (= c!404482 ((_ is Union!7539) (ite c!404384 (reg!7868 r!27340) (ite c!404385 (regOne!15591 r!27340) (regTwo!15590 r!27340)))))))

(declare-fun b!2531734 () Bool)

(declare-fun e!1602027 () Bool)

(declare-fun call!158730 () Bool)

(assert (=> b!2531734 (= e!1602027 call!158730)))

(declare-fun b!2531736 () Bool)

(declare-fun res!1068733 () Bool)

(declare-fun e!1602026 () Bool)

(assert (=> b!2531736 (=> res!1068733 e!1602026)))

(assert (=> b!2531736 (= res!1068733 (not ((_ is Concat!12235) (ite c!404384 (reg!7868 r!27340) (ite c!404385 (regOne!15591 r!27340) (regTwo!15590 r!27340))))))))

(assert (=> b!2531736 (= e!1602029 e!1602026)))

(declare-fun b!2531737 () Bool)

(declare-fun e!1602032 () Bool)

(declare-fun call!158731 () Bool)

(assert (=> b!2531737 (= e!1602032 call!158731)))

(declare-fun b!2531738 () Bool)

(declare-fun e!1602030 () Bool)

(assert (=> b!2531738 (= e!1602026 e!1602030)))

(declare-fun res!1068734 () Bool)

(assert (=> b!2531738 (=> (not res!1068734) (not e!1602030))))

(assert (=> b!2531738 (= res!1068734 call!158730)))

(declare-fun b!2531739 () Bool)

(declare-fun res!1068735 () Bool)

(assert (=> b!2531739 (=> (not res!1068735) (not e!1602027))))

(declare-fun call!158729 () Bool)

(assert (=> b!2531739 (= res!1068735 call!158729)))

(assert (=> b!2531739 (= e!1602029 e!1602027)))

(declare-fun b!2531740 () Bool)

(assert (=> b!2531740 (= e!1602030 call!158729)))

(declare-fun b!2531735 () Bool)

(assert (=> b!2531735 (= e!1602031 e!1602032)))

(declare-fun res!1068731 () Bool)

(assert (=> b!2531735 (= res!1068731 (not (nullable!2456 (reg!7868 (ite c!404384 (reg!7868 r!27340) (ite c!404385 (regOne!15591 r!27340) (regTwo!15590 r!27340)))))))))

(assert (=> b!2531735 (=> (not res!1068731) (not e!1602032))))

(declare-fun d!719995 () Bool)

(declare-fun res!1068732 () Bool)

(declare-fun e!1602028 () Bool)

(assert (=> d!719995 (=> res!1068732 e!1602028)))

(assert (=> d!719995 (= res!1068732 ((_ is ElementMatch!7539) (ite c!404384 (reg!7868 r!27340) (ite c!404385 (regOne!15591 r!27340) (regTwo!15590 r!27340)))))))

(assert (=> d!719995 (= (validRegex!3165 (ite c!404384 (reg!7868 r!27340) (ite c!404385 (regOne!15591 r!27340) (regTwo!15590 r!27340)))) e!1602028)))

(declare-fun bm!158724 () Bool)

(assert (=> bm!158724 (= call!158729 call!158731)))

(declare-fun bm!158725 () Bool)

(declare-fun c!404481 () Bool)

(assert (=> bm!158725 (= call!158731 (validRegex!3165 (ite c!404481 (reg!7868 (ite c!404384 (reg!7868 r!27340) (ite c!404385 (regOne!15591 r!27340) (regTwo!15590 r!27340)))) (ite c!404482 (regOne!15591 (ite c!404384 (reg!7868 r!27340) (ite c!404385 (regOne!15591 r!27340) (regTwo!15590 r!27340)))) (regTwo!15590 (ite c!404384 (reg!7868 r!27340) (ite c!404385 (regOne!15591 r!27340) (regTwo!15590 r!27340))))))))))

(declare-fun bm!158726 () Bool)

(assert (=> bm!158726 (= call!158730 (validRegex!3165 (ite c!404482 (regTwo!15591 (ite c!404384 (reg!7868 r!27340) (ite c!404385 (regOne!15591 r!27340) (regTwo!15590 r!27340)))) (regOne!15590 (ite c!404384 (reg!7868 r!27340) (ite c!404385 (regOne!15591 r!27340) (regTwo!15590 r!27340)))))))))

(declare-fun b!2531741 () Bool)

(assert (=> b!2531741 (= e!1602028 e!1602031)))

(assert (=> b!2531741 (= c!404481 ((_ is Star!7539) (ite c!404384 (reg!7868 r!27340) (ite c!404385 (regOne!15591 r!27340) (regTwo!15590 r!27340)))))))

(assert (= (and d!719995 (not res!1068732)) b!2531741))

(assert (= (and b!2531741 c!404481) b!2531735))

(assert (= (and b!2531741 (not c!404481)) b!2531733))

(assert (= (and b!2531735 res!1068731) b!2531737))

(assert (= (and b!2531733 c!404482) b!2531739))

(assert (= (and b!2531733 (not c!404482)) b!2531736))

(assert (= (and b!2531739 res!1068735) b!2531734))

(assert (= (and b!2531736 (not res!1068733)) b!2531738))

(assert (= (and b!2531738 res!1068734) b!2531740))

(assert (= (or b!2531739 b!2531740) bm!158724))

(assert (= (or b!2531734 b!2531738) bm!158726))

(assert (= (or b!2531737 bm!158724) bm!158725))

(declare-fun m!2882509 () Bool)

(assert (=> b!2531735 m!2882509))

(declare-fun m!2882511 () Bool)

(assert (=> bm!158725 m!2882511))

(declare-fun m!2882513 () Bool)

(assert (=> bm!158726 m!2882513))

(assert (=> bm!158642 d!719995))

(declare-fun b!2531742 () Bool)

(declare-fun e!1602038 () Bool)

(declare-fun e!1602036 () Bool)

(assert (=> b!2531742 (= e!1602038 e!1602036)))

(declare-fun c!404484 () Bool)

(assert (=> b!2531742 (= c!404484 ((_ is Union!7539) (ite c!404385 (regTwo!15591 r!27340) (regOne!15590 r!27340))))))

(declare-fun b!2531743 () Bool)

(declare-fun e!1602034 () Bool)

(declare-fun call!158733 () Bool)

(assert (=> b!2531743 (= e!1602034 call!158733)))

(declare-fun b!2531745 () Bool)

(declare-fun res!1068738 () Bool)

(declare-fun e!1602033 () Bool)

(assert (=> b!2531745 (=> res!1068738 e!1602033)))

(assert (=> b!2531745 (= res!1068738 (not ((_ is Concat!12235) (ite c!404385 (regTwo!15591 r!27340) (regOne!15590 r!27340)))))))

(assert (=> b!2531745 (= e!1602036 e!1602033)))

(declare-fun b!2531746 () Bool)

(declare-fun e!1602039 () Bool)

(declare-fun call!158734 () Bool)

(assert (=> b!2531746 (= e!1602039 call!158734)))

(declare-fun b!2531747 () Bool)

(declare-fun e!1602037 () Bool)

(assert (=> b!2531747 (= e!1602033 e!1602037)))

(declare-fun res!1068739 () Bool)

(assert (=> b!2531747 (=> (not res!1068739) (not e!1602037))))

(assert (=> b!2531747 (= res!1068739 call!158733)))

(declare-fun b!2531748 () Bool)

(declare-fun res!1068740 () Bool)

(assert (=> b!2531748 (=> (not res!1068740) (not e!1602034))))

(declare-fun call!158732 () Bool)

(assert (=> b!2531748 (= res!1068740 call!158732)))

(assert (=> b!2531748 (= e!1602036 e!1602034)))

(declare-fun b!2531749 () Bool)

(assert (=> b!2531749 (= e!1602037 call!158732)))

(declare-fun b!2531744 () Bool)

(assert (=> b!2531744 (= e!1602038 e!1602039)))

(declare-fun res!1068736 () Bool)

(assert (=> b!2531744 (= res!1068736 (not (nullable!2456 (reg!7868 (ite c!404385 (regTwo!15591 r!27340) (regOne!15590 r!27340))))))))

(assert (=> b!2531744 (=> (not res!1068736) (not e!1602039))))

(declare-fun d!719997 () Bool)

(declare-fun res!1068737 () Bool)

(declare-fun e!1602035 () Bool)

(assert (=> d!719997 (=> res!1068737 e!1602035)))

(assert (=> d!719997 (= res!1068737 ((_ is ElementMatch!7539) (ite c!404385 (regTwo!15591 r!27340) (regOne!15590 r!27340))))))

(assert (=> d!719997 (= (validRegex!3165 (ite c!404385 (regTwo!15591 r!27340) (regOne!15590 r!27340))) e!1602035)))

(declare-fun bm!158727 () Bool)

(assert (=> bm!158727 (= call!158732 call!158734)))

(declare-fun c!404483 () Bool)

(declare-fun bm!158728 () Bool)

(assert (=> bm!158728 (= call!158734 (validRegex!3165 (ite c!404483 (reg!7868 (ite c!404385 (regTwo!15591 r!27340) (regOne!15590 r!27340))) (ite c!404484 (regOne!15591 (ite c!404385 (regTwo!15591 r!27340) (regOne!15590 r!27340))) (regTwo!15590 (ite c!404385 (regTwo!15591 r!27340) (regOne!15590 r!27340)))))))))

(declare-fun bm!158729 () Bool)

(assert (=> bm!158729 (= call!158733 (validRegex!3165 (ite c!404484 (regTwo!15591 (ite c!404385 (regTwo!15591 r!27340) (regOne!15590 r!27340))) (regOne!15590 (ite c!404385 (regTwo!15591 r!27340) (regOne!15590 r!27340))))))))

(declare-fun b!2531750 () Bool)

(assert (=> b!2531750 (= e!1602035 e!1602038)))

(assert (=> b!2531750 (= c!404483 ((_ is Star!7539) (ite c!404385 (regTwo!15591 r!27340) (regOne!15590 r!27340))))))

(assert (= (and d!719997 (not res!1068737)) b!2531750))

(assert (= (and b!2531750 c!404483) b!2531744))

(assert (= (and b!2531750 (not c!404483)) b!2531742))

(assert (= (and b!2531744 res!1068736) b!2531746))

(assert (= (and b!2531742 c!404484) b!2531748))

(assert (= (and b!2531742 (not c!404484)) b!2531745))

(assert (= (and b!2531748 res!1068740) b!2531743))

(assert (= (and b!2531745 (not res!1068738)) b!2531747))

(assert (= (and b!2531747 res!1068739) b!2531749))

(assert (= (or b!2531748 b!2531749) bm!158727))

(assert (= (or b!2531743 b!2531747) bm!158729))

(assert (= (or b!2531746 bm!158727) bm!158728))

(declare-fun m!2882515 () Bool)

(assert (=> b!2531744 m!2882515))

(declare-fun m!2882517 () Bool)

(assert (=> bm!158728 m!2882517))

(declare-fun m!2882519 () Bool)

(assert (=> bm!158729 m!2882519))

(assert (=> bm!158643 d!719997))

(declare-fun b!2531751 () Bool)

(declare-fun e!1602045 () Bool)

(declare-fun e!1602043 () Bool)

(assert (=> b!2531751 (= e!1602045 e!1602043)))

(declare-fun c!404486 () Bool)

(assert (=> b!2531751 (= c!404486 ((_ is Union!7539) lt!901247))))

(declare-fun b!2531752 () Bool)

(declare-fun e!1602041 () Bool)

(declare-fun call!158736 () Bool)

(assert (=> b!2531752 (= e!1602041 call!158736)))

(declare-fun b!2531754 () Bool)

(declare-fun res!1068743 () Bool)

(declare-fun e!1602040 () Bool)

(assert (=> b!2531754 (=> res!1068743 e!1602040)))

(assert (=> b!2531754 (= res!1068743 (not ((_ is Concat!12235) lt!901247)))))

(assert (=> b!2531754 (= e!1602043 e!1602040)))

(declare-fun b!2531755 () Bool)

(declare-fun e!1602046 () Bool)

(declare-fun call!158737 () Bool)

(assert (=> b!2531755 (= e!1602046 call!158737)))

(declare-fun b!2531756 () Bool)

(declare-fun e!1602044 () Bool)

(assert (=> b!2531756 (= e!1602040 e!1602044)))

(declare-fun res!1068744 () Bool)

(assert (=> b!2531756 (=> (not res!1068744) (not e!1602044))))

(assert (=> b!2531756 (= res!1068744 call!158736)))

(declare-fun b!2531757 () Bool)

(declare-fun res!1068745 () Bool)

(assert (=> b!2531757 (=> (not res!1068745) (not e!1602041))))

(declare-fun call!158735 () Bool)

(assert (=> b!2531757 (= res!1068745 call!158735)))

(assert (=> b!2531757 (= e!1602043 e!1602041)))

(declare-fun b!2531758 () Bool)

(assert (=> b!2531758 (= e!1602044 call!158735)))

(declare-fun b!2531753 () Bool)

(assert (=> b!2531753 (= e!1602045 e!1602046)))

(declare-fun res!1068741 () Bool)

(assert (=> b!2531753 (= res!1068741 (not (nullable!2456 (reg!7868 lt!901247))))))

(assert (=> b!2531753 (=> (not res!1068741) (not e!1602046))))

(declare-fun d!719999 () Bool)

(declare-fun res!1068742 () Bool)

(declare-fun e!1602042 () Bool)

(assert (=> d!719999 (=> res!1068742 e!1602042)))

(assert (=> d!719999 (= res!1068742 ((_ is ElementMatch!7539) lt!901247))))

(assert (=> d!719999 (= (validRegex!3165 lt!901247) e!1602042)))

(declare-fun bm!158730 () Bool)

(assert (=> bm!158730 (= call!158735 call!158737)))

(declare-fun c!404485 () Bool)

(declare-fun bm!158731 () Bool)

(assert (=> bm!158731 (= call!158737 (validRegex!3165 (ite c!404485 (reg!7868 lt!901247) (ite c!404486 (regOne!15591 lt!901247) (regTwo!15590 lt!901247)))))))

(declare-fun bm!158732 () Bool)

(assert (=> bm!158732 (= call!158736 (validRegex!3165 (ite c!404486 (regTwo!15591 lt!901247) (regOne!15590 lt!901247))))))

(declare-fun b!2531759 () Bool)

(assert (=> b!2531759 (= e!1602042 e!1602045)))

(assert (=> b!2531759 (= c!404485 ((_ is Star!7539) lt!901247))))

(assert (= (and d!719999 (not res!1068742)) b!2531759))

(assert (= (and b!2531759 c!404485) b!2531753))

(assert (= (and b!2531759 (not c!404485)) b!2531751))

(assert (= (and b!2531753 res!1068741) b!2531755))

(assert (= (and b!2531751 c!404486) b!2531757))

(assert (= (and b!2531751 (not c!404486)) b!2531754))

(assert (= (and b!2531757 res!1068745) b!2531752))

(assert (= (and b!2531754 (not res!1068743)) b!2531756))

(assert (= (and b!2531756 res!1068744) b!2531758))

(assert (= (or b!2531757 b!2531758) bm!158730))

(assert (= (or b!2531752 b!2531756) bm!158732))

(assert (= (or b!2531755 bm!158730) bm!158731))

(declare-fun m!2882521 () Bool)

(assert (=> b!2531753 m!2882521))

(declare-fun m!2882523 () Bool)

(assert (=> bm!158731 m!2882523))

(declare-fun m!2882525 () Bool)

(assert (=> bm!158732 m!2882525))

(assert (=> d!719949 d!719999))

(declare-fun b!2531760 () Bool)

(declare-fun e!1602052 () Bool)

(declare-fun e!1602050 () Bool)

(assert (=> b!2531760 (= e!1602052 e!1602050)))

(declare-fun c!404488 () Bool)

(assert (=> b!2531760 (= c!404488 ((_ is Union!7539) lt!901232))))

(declare-fun b!2531761 () Bool)

(declare-fun e!1602048 () Bool)

(declare-fun call!158739 () Bool)

(assert (=> b!2531761 (= e!1602048 call!158739)))

(declare-fun b!2531763 () Bool)

(declare-fun res!1068748 () Bool)

(declare-fun e!1602047 () Bool)

(assert (=> b!2531763 (=> res!1068748 e!1602047)))

(assert (=> b!2531763 (= res!1068748 (not ((_ is Concat!12235) lt!901232)))))

(assert (=> b!2531763 (= e!1602050 e!1602047)))

(declare-fun b!2531764 () Bool)

(declare-fun e!1602053 () Bool)

(declare-fun call!158740 () Bool)

(assert (=> b!2531764 (= e!1602053 call!158740)))

(declare-fun b!2531765 () Bool)

(declare-fun e!1602051 () Bool)

(assert (=> b!2531765 (= e!1602047 e!1602051)))

(declare-fun res!1068749 () Bool)

(assert (=> b!2531765 (=> (not res!1068749) (not e!1602051))))

(assert (=> b!2531765 (= res!1068749 call!158739)))

(declare-fun b!2531766 () Bool)

(declare-fun res!1068750 () Bool)

(assert (=> b!2531766 (=> (not res!1068750) (not e!1602048))))

(declare-fun call!158738 () Bool)

(assert (=> b!2531766 (= res!1068750 call!158738)))

(assert (=> b!2531766 (= e!1602050 e!1602048)))

(declare-fun b!2531767 () Bool)

(assert (=> b!2531767 (= e!1602051 call!158738)))

(declare-fun b!2531762 () Bool)

(assert (=> b!2531762 (= e!1602052 e!1602053)))

(declare-fun res!1068746 () Bool)

(assert (=> b!2531762 (= res!1068746 (not (nullable!2456 (reg!7868 lt!901232))))))

(assert (=> b!2531762 (=> (not res!1068746) (not e!1602053))))

(declare-fun d!720001 () Bool)

(declare-fun res!1068747 () Bool)

(declare-fun e!1602049 () Bool)

(assert (=> d!720001 (=> res!1068747 e!1602049)))

(assert (=> d!720001 (= res!1068747 ((_ is ElementMatch!7539) lt!901232))))

(assert (=> d!720001 (= (validRegex!3165 lt!901232) e!1602049)))

(declare-fun bm!158733 () Bool)

(assert (=> bm!158733 (= call!158738 call!158740)))

(declare-fun c!404487 () Bool)

(declare-fun bm!158734 () Bool)

(assert (=> bm!158734 (= call!158740 (validRegex!3165 (ite c!404487 (reg!7868 lt!901232) (ite c!404488 (regOne!15591 lt!901232) (regTwo!15590 lt!901232)))))))

(declare-fun bm!158735 () Bool)

(assert (=> bm!158735 (= call!158739 (validRegex!3165 (ite c!404488 (regTwo!15591 lt!901232) (regOne!15590 lt!901232))))))

(declare-fun b!2531768 () Bool)

(assert (=> b!2531768 (= e!1602049 e!1602052)))

(assert (=> b!2531768 (= c!404487 ((_ is Star!7539) lt!901232))))

(assert (= (and d!720001 (not res!1068747)) b!2531768))

(assert (= (and b!2531768 c!404487) b!2531762))

(assert (= (and b!2531768 (not c!404487)) b!2531760))

(assert (= (and b!2531762 res!1068746) b!2531764))

(assert (= (and b!2531760 c!404488) b!2531766))

(assert (= (and b!2531760 (not c!404488)) b!2531763))

(assert (= (and b!2531766 res!1068750) b!2531761))

(assert (= (and b!2531763 (not res!1068748)) b!2531765))

(assert (= (and b!2531765 res!1068749) b!2531767))

(assert (= (or b!2531766 b!2531767) bm!158733))

(assert (= (or b!2531761 b!2531765) bm!158735))

(assert (= (or b!2531764 bm!158733) bm!158734))

(declare-fun m!2882527 () Bool)

(assert (=> b!2531762 m!2882527))

(declare-fun m!2882529 () Bool)

(assert (=> bm!158734 m!2882529))

(declare-fun m!2882531 () Bool)

(assert (=> bm!158735 m!2882531))

(assert (=> d!719949 d!720001))

(assert (=> d!719943 d!719937))

(declare-fun d!720003 () Bool)

(assert (=> d!720003 (= (derivative!234 lt!901229 lt!901230) lt!901229)))

(assert (=> d!720003 true))

(declare-fun _$134!165 () Unit!43295)

(assert (=> d!720003 (= (choose!15008 lt!901229 lt!901230) _$134!165)))

(declare-fun bs!469216 () Bool)

(assert (= bs!469216 d!720003))

(assert (=> bs!469216 m!2882317))

(assert (=> d!719943 d!720003))

(declare-fun d!720005 () Bool)

(assert (=> d!720005 (= (nullable!2456 (regOne!15590 r!27340)) (nullableFct!691 (regOne!15590 r!27340)))))

(declare-fun bs!469217 () Bool)

(assert (= bs!469217 d!720005))

(declare-fun m!2882533 () Bool)

(assert (=> bs!469217 m!2882533))

(assert (=> b!2531492 d!720005))

(declare-fun b!2531769 () Bool)

(declare-fun e!1602059 () Bool)

(declare-fun e!1602057 () Bool)

(assert (=> b!2531769 (= e!1602059 e!1602057)))

(declare-fun c!404490 () Bool)

(assert (=> b!2531769 (= c!404490 ((_ is Union!7539) lt!901246))))

(declare-fun b!2531770 () Bool)

(declare-fun e!1602055 () Bool)

(declare-fun call!158742 () Bool)

(assert (=> b!2531770 (= e!1602055 call!158742)))

(declare-fun b!2531772 () Bool)

(declare-fun res!1068753 () Bool)

(declare-fun e!1602054 () Bool)

(assert (=> b!2531772 (=> res!1068753 e!1602054)))

(assert (=> b!2531772 (= res!1068753 (not ((_ is Concat!12235) lt!901246)))))

(assert (=> b!2531772 (= e!1602057 e!1602054)))

(declare-fun b!2531773 () Bool)

(declare-fun e!1602060 () Bool)

(declare-fun call!158743 () Bool)

(assert (=> b!2531773 (= e!1602060 call!158743)))

(declare-fun b!2531774 () Bool)

(declare-fun e!1602058 () Bool)

(assert (=> b!2531774 (= e!1602054 e!1602058)))

(declare-fun res!1068754 () Bool)

(assert (=> b!2531774 (=> (not res!1068754) (not e!1602058))))

(assert (=> b!2531774 (= res!1068754 call!158742)))

(declare-fun b!2531775 () Bool)

(declare-fun res!1068755 () Bool)

(assert (=> b!2531775 (=> (not res!1068755) (not e!1602055))))

(declare-fun call!158741 () Bool)

(assert (=> b!2531775 (= res!1068755 call!158741)))

(assert (=> b!2531775 (= e!1602057 e!1602055)))

(declare-fun b!2531776 () Bool)

(assert (=> b!2531776 (= e!1602058 call!158741)))

(declare-fun b!2531771 () Bool)

(assert (=> b!2531771 (= e!1602059 e!1602060)))

(declare-fun res!1068751 () Bool)

(assert (=> b!2531771 (= res!1068751 (not (nullable!2456 (reg!7868 lt!901246))))))

(assert (=> b!2531771 (=> (not res!1068751) (not e!1602060))))

(declare-fun d!720007 () Bool)

(declare-fun res!1068752 () Bool)

(declare-fun e!1602056 () Bool)

(assert (=> d!720007 (=> res!1068752 e!1602056)))

(assert (=> d!720007 (= res!1068752 ((_ is ElementMatch!7539) lt!901246))))

(assert (=> d!720007 (= (validRegex!3165 lt!901246) e!1602056)))

(declare-fun bm!158736 () Bool)

(assert (=> bm!158736 (= call!158741 call!158743)))

(declare-fun bm!158737 () Bool)

(declare-fun c!404489 () Bool)

(assert (=> bm!158737 (= call!158743 (validRegex!3165 (ite c!404489 (reg!7868 lt!901246) (ite c!404490 (regOne!15591 lt!901246) (regTwo!15590 lt!901246)))))))

(declare-fun bm!158738 () Bool)

(assert (=> bm!158738 (= call!158742 (validRegex!3165 (ite c!404490 (regTwo!15591 lt!901246) (regOne!15590 lt!901246))))))

(declare-fun b!2531777 () Bool)

(assert (=> b!2531777 (= e!1602056 e!1602059)))

(assert (=> b!2531777 (= c!404489 ((_ is Star!7539) lt!901246))))

(assert (= (and d!720007 (not res!1068752)) b!2531777))

(assert (= (and b!2531777 c!404489) b!2531771))

(assert (= (and b!2531777 (not c!404489)) b!2531769))

(assert (= (and b!2531771 res!1068751) b!2531773))

(assert (= (and b!2531769 c!404490) b!2531775))

(assert (= (and b!2531769 (not c!404490)) b!2531772))

(assert (= (and b!2531775 res!1068755) b!2531770))

(assert (= (and b!2531772 (not res!1068753)) b!2531774))

(assert (= (and b!2531774 res!1068754) b!2531776))

(assert (= (or b!2531775 b!2531776) bm!158736))

(assert (= (or b!2531770 b!2531774) bm!158738))

(assert (= (or b!2531773 bm!158736) bm!158737))

(declare-fun m!2882535 () Bool)

(assert (=> b!2531771 m!2882535))

(declare-fun m!2882537 () Bool)

(assert (=> bm!158737 m!2882537))

(declare-fun m!2882539 () Bool)

(assert (=> bm!158738 m!2882539))

(assert (=> d!719945 d!720007))

(assert (=> d!719945 d!720001))

(declare-fun b!2531778 () Bool)

(declare-fun e!1602061 () Bool)

(assert (=> b!2531778 (= e!1602061 tp_is_empty!12933)))

(declare-fun b!2531779 () Bool)

(declare-fun tp!808455 () Bool)

(declare-fun tp!808456 () Bool)

(assert (=> b!2531779 (= e!1602061 (and tp!808455 tp!808456))))

(declare-fun b!2531781 () Bool)

(declare-fun tp!808457 () Bool)

(declare-fun tp!808459 () Bool)

(assert (=> b!2531781 (= e!1602061 (and tp!808457 tp!808459))))

(declare-fun b!2531780 () Bool)

(declare-fun tp!808458 () Bool)

(assert (=> b!2531780 (= e!1602061 tp!808458)))

(assert (=> b!2531518 (= tp!808392 e!1602061)))

(assert (= (and b!2531518 ((_ is ElementMatch!7539) (regOne!15590 (reg!7868 r!27340)))) b!2531778))

(assert (= (and b!2531518 ((_ is Concat!12235) (regOne!15590 (reg!7868 r!27340)))) b!2531779))

(assert (= (and b!2531518 ((_ is Star!7539) (regOne!15590 (reg!7868 r!27340)))) b!2531780))

(assert (= (and b!2531518 ((_ is Union!7539) (regOne!15590 (reg!7868 r!27340)))) b!2531781))

(declare-fun b!2531782 () Bool)

(declare-fun e!1602062 () Bool)

(assert (=> b!2531782 (= e!1602062 tp_is_empty!12933)))

(declare-fun b!2531783 () Bool)

(declare-fun tp!808460 () Bool)

(declare-fun tp!808461 () Bool)

(assert (=> b!2531783 (= e!1602062 (and tp!808460 tp!808461))))

(declare-fun b!2531785 () Bool)

(declare-fun tp!808462 () Bool)

(declare-fun tp!808464 () Bool)

(assert (=> b!2531785 (= e!1602062 (and tp!808462 tp!808464))))

(declare-fun b!2531784 () Bool)

(declare-fun tp!808463 () Bool)

(assert (=> b!2531784 (= e!1602062 tp!808463)))

(assert (=> b!2531518 (= tp!808393 e!1602062)))

(assert (= (and b!2531518 ((_ is ElementMatch!7539) (regTwo!15590 (reg!7868 r!27340)))) b!2531782))

(assert (= (and b!2531518 ((_ is Concat!12235) (regTwo!15590 (reg!7868 r!27340)))) b!2531783))

(assert (= (and b!2531518 ((_ is Star!7539) (regTwo!15590 (reg!7868 r!27340)))) b!2531784))

(assert (= (and b!2531518 ((_ is Union!7539) (regTwo!15590 (reg!7868 r!27340)))) b!2531785))

(declare-fun b!2531786 () Bool)

(declare-fun e!1602063 () Bool)

(assert (=> b!2531786 (= e!1602063 tp_is_empty!12933)))

(declare-fun b!2531787 () Bool)

(declare-fun tp!808465 () Bool)

(declare-fun tp!808466 () Bool)

(assert (=> b!2531787 (= e!1602063 (and tp!808465 tp!808466))))

(declare-fun b!2531789 () Bool)

(declare-fun tp!808467 () Bool)

(declare-fun tp!808469 () Bool)

(assert (=> b!2531789 (= e!1602063 (and tp!808467 tp!808469))))

(declare-fun b!2531788 () Bool)

(declare-fun tp!808468 () Bool)

(assert (=> b!2531788 (= e!1602063 tp!808468)))

(assert (=> b!2531532 (= tp!808409 e!1602063)))

(assert (= (and b!2531532 ((_ is ElementMatch!7539) (regOne!15591 (regOne!15590 r!27340)))) b!2531786))

(assert (= (and b!2531532 ((_ is Concat!12235) (regOne!15591 (regOne!15590 r!27340)))) b!2531787))

(assert (= (and b!2531532 ((_ is Star!7539) (regOne!15591 (regOne!15590 r!27340)))) b!2531788))

(assert (= (and b!2531532 ((_ is Union!7539) (regOne!15591 (regOne!15590 r!27340)))) b!2531789))

(declare-fun b!2531790 () Bool)

(declare-fun e!1602064 () Bool)

(assert (=> b!2531790 (= e!1602064 tp_is_empty!12933)))

(declare-fun b!2531791 () Bool)

(declare-fun tp!808470 () Bool)

(declare-fun tp!808471 () Bool)

(assert (=> b!2531791 (= e!1602064 (and tp!808470 tp!808471))))

(declare-fun b!2531793 () Bool)

(declare-fun tp!808472 () Bool)

(declare-fun tp!808474 () Bool)

(assert (=> b!2531793 (= e!1602064 (and tp!808472 tp!808474))))

(declare-fun b!2531792 () Bool)

(declare-fun tp!808473 () Bool)

(assert (=> b!2531792 (= e!1602064 tp!808473)))

(assert (=> b!2531532 (= tp!808411 e!1602064)))

(assert (= (and b!2531532 ((_ is ElementMatch!7539) (regTwo!15591 (regOne!15590 r!27340)))) b!2531790))

(assert (= (and b!2531532 ((_ is Concat!12235) (regTwo!15591 (regOne!15590 r!27340)))) b!2531791))

(assert (= (and b!2531532 ((_ is Star!7539) (regTwo!15591 (regOne!15590 r!27340)))) b!2531792))

(assert (= (and b!2531532 ((_ is Union!7539) (regTwo!15591 (regOne!15590 r!27340)))) b!2531793))

(declare-fun b!2531794 () Bool)

(declare-fun e!1602065 () Bool)

(assert (=> b!2531794 (= e!1602065 tp_is_empty!12933)))

(declare-fun b!2531795 () Bool)

(declare-fun tp!808475 () Bool)

(declare-fun tp!808476 () Bool)

(assert (=> b!2531795 (= e!1602065 (and tp!808475 tp!808476))))

(declare-fun b!2531797 () Bool)

(declare-fun tp!808477 () Bool)

(declare-fun tp!808479 () Bool)

(assert (=> b!2531797 (= e!1602065 (and tp!808477 tp!808479))))

(declare-fun b!2531796 () Bool)

(declare-fun tp!808478 () Bool)

(assert (=> b!2531796 (= e!1602065 tp!808478)))

(assert (=> b!2531527 (= tp!808405 e!1602065)))

(assert (= (and b!2531527 ((_ is ElementMatch!7539) (reg!7868 (regTwo!15591 r!27340)))) b!2531794))

(assert (= (and b!2531527 ((_ is Concat!12235) (reg!7868 (regTwo!15591 r!27340)))) b!2531795))

(assert (= (and b!2531527 ((_ is Star!7539) (reg!7868 (regTwo!15591 r!27340)))) b!2531796))

(assert (= (and b!2531527 ((_ is Union!7539) (reg!7868 (regTwo!15591 r!27340)))) b!2531797))

(declare-fun b!2531798 () Bool)

(declare-fun e!1602066 () Bool)

(assert (=> b!2531798 (= e!1602066 tp_is_empty!12933)))

(declare-fun b!2531799 () Bool)

(declare-fun tp!808480 () Bool)

(declare-fun tp!808481 () Bool)

(assert (=> b!2531799 (= e!1602066 (and tp!808480 tp!808481))))

(declare-fun b!2531801 () Bool)

(declare-fun tp!808482 () Bool)

(declare-fun tp!808484 () Bool)

(assert (=> b!2531801 (= e!1602066 (and tp!808482 tp!808484))))

(declare-fun b!2531800 () Bool)

(declare-fun tp!808483 () Bool)

(assert (=> b!2531800 (= e!1602066 tp!808483)))

(assert (=> b!2531522 (= tp!808397 e!1602066)))

(assert (= (and b!2531522 ((_ is ElementMatch!7539) (regOne!15590 (regOne!15591 r!27340)))) b!2531798))

(assert (= (and b!2531522 ((_ is Concat!12235) (regOne!15590 (regOne!15591 r!27340)))) b!2531799))

(assert (= (and b!2531522 ((_ is Star!7539) (regOne!15590 (regOne!15591 r!27340)))) b!2531800))

(assert (= (and b!2531522 ((_ is Union!7539) (regOne!15590 (regOne!15591 r!27340)))) b!2531801))

(declare-fun b!2531802 () Bool)

(declare-fun e!1602067 () Bool)

(assert (=> b!2531802 (= e!1602067 tp_is_empty!12933)))

(declare-fun b!2531803 () Bool)

(declare-fun tp!808485 () Bool)

(declare-fun tp!808486 () Bool)

(assert (=> b!2531803 (= e!1602067 (and tp!808485 tp!808486))))

(declare-fun b!2531805 () Bool)

(declare-fun tp!808487 () Bool)

(declare-fun tp!808489 () Bool)

(assert (=> b!2531805 (= e!1602067 (and tp!808487 tp!808489))))

(declare-fun b!2531804 () Bool)

(declare-fun tp!808488 () Bool)

(assert (=> b!2531804 (= e!1602067 tp!808488)))

(assert (=> b!2531522 (= tp!808398 e!1602067)))

(assert (= (and b!2531522 ((_ is ElementMatch!7539) (regTwo!15590 (regOne!15591 r!27340)))) b!2531802))

(assert (= (and b!2531522 ((_ is Concat!12235) (regTwo!15590 (regOne!15591 r!27340)))) b!2531803))

(assert (= (and b!2531522 ((_ is Star!7539) (regTwo!15590 (regOne!15591 r!27340)))) b!2531804))

(assert (= (and b!2531522 ((_ is Union!7539) (regTwo!15590 (regOne!15591 r!27340)))) b!2531805))

(declare-fun b!2531806 () Bool)

(declare-fun e!1602068 () Bool)

(assert (=> b!2531806 (= e!1602068 tp_is_empty!12933)))

(declare-fun b!2531807 () Bool)

(declare-fun tp!808490 () Bool)

(declare-fun tp!808491 () Bool)

(assert (=> b!2531807 (= e!1602068 (and tp!808490 tp!808491))))

(declare-fun b!2531809 () Bool)

(declare-fun tp!808492 () Bool)

(declare-fun tp!808494 () Bool)

(assert (=> b!2531809 (= e!1602068 (and tp!808492 tp!808494))))

(declare-fun b!2531808 () Bool)

(declare-fun tp!808493 () Bool)

(assert (=> b!2531808 (= e!1602068 tp!808493)))

(assert (=> b!2531536 (= tp!808414 e!1602068)))

(assert (= (and b!2531536 ((_ is ElementMatch!7539) (regOne!15591 (regTwo!15590 r!27340)))) b!2531806))

(assert (= (and b!2531536 ((_ is Concat!12235) (regOne!15591 (regTwo!15590 r!27340)))) b!2531807))

(assert (= (and b!2531536 ((_ is Star!7539) (regOne!15591 (regTwo!15590 r!27340)))) b!2531808))

(assert (= (and b!2531536 ((_ is Union!7539) (regOne!15591 (regTwo!15590 r!27340)))) b!2531809))

(declare-fun b!2531810 () Bool)

(declare-fun e!1602069 () Bool)

(assert (=> b!2531810 (= e!1602069 tp_is_empty!12933)))

(declare-fun b!2531811 () Bool)

(declare-fun tp!808495 () Bool)

(declare-fun tp!808496 () Bool)

(assert (=> b!2531811 (= e!1602069 (and tp!808495 tp!808496))))

(declare-fun b!2531813 () Bool)

(declare-fun tp!808497 () Bool)

(declare-fun tp!808499 () Bool)

(assert (=> b!2531813 (= e!1602069 (and tp!808497 tp!808499))))

(declare-fun b!2531812 () Bool)

(declare-fun tp!808498 () Bool)

(assert (=> b!2531812 (= e!1602069 tp!808498)))

(assert (=> b!2531536 (= tp!808416 e!1602069)))

(assert (= (and b!2531536 ((_ is ElementMatch!7539) (regTwo!15591 (regTwo!15590 r!27340)))) b!2531810))

(assert (= (and b!2531536 ((_ is Concat!12235) (regTwo!15591 (regTwo!15590 r!27340)))) b!2531811))

(assert (= (and b!2531536 ((_ is Star!7539) (regTwo!15591 (regTwo!15590 r!27340)))) b!2531812))

(assert (= (and b!2531536 ((_ is Union!7539) (regTwo!15591 (regTwo!15590 r!27340)))) b!2531813))

(declare-fun b!2531814 () Bool)

(declare-fun e!1602070 () Bool)

(assert (=> b!2531814 (= e!1602070 tp_is_empty!12933)))

(declare-fun b!2531815 () Bool)

(declare-fun tp!808500 () Bool)

(declare-fun tp!808501 () Bool)

(assert (=> b!2531815 (= e!1602070 (and tp!808500 tp!808501))))

(declare-fun b!2531817 () Bool)

(declare-fun tp!808502 () Bool)

(declare-fun tp!808504 () Bool)

(assert (=> b!2531817 (= e!1602070 (and tp!808502 tp!808504))))

(declare-fun b!2531816 () Bool)

(declare-fun tp!808503 () Bool)

(assert (=> b!2531816 (= e!1602070 tp!808503)))

(assert (=> b!2531531 (= tp!808410 e!1602070)))

(assert (= (and b!2531531 ((_ is ElementMatch!7539) (reg!7868 (regOne!15590 r!27340)))) b!2531814))

(assert (= (and b!2531531 ((_ is Concat!12235) (reg!7868 (regOne!15590 r!27340)))) b!2531815))

(assert (= (and b!2531531 ((_ is Star!7539) (reg!7868 (regOne!15590 r!27340)))) b!2531816))

(assert (= (and b!2531531 ((_ is Union!7539) (reg!7868 (regOne!15590 r!27340)))) b!2531817))

(declare-fun b!2531818 () Bool)

(declare-fun e!1602071 () Bool)

(assert (=> b!2531818 (= e!1602071 tp_is_empty!12933)))

(declare-fun b!2531819 () Bool)

(declare-fun tp!808505 () Bool)

(declare-fun tp!808506 () Bool)

(assert (=> b!2531819 (= e!1602071 (and tp!808505 tp!808506))))

(declare-fun b!2531821 () Bool)

(declare-fun tp!808507 () Bool)

(declare-fun tp!808509 () Bool)

(assert (=> b!2531821 (= e!1602071 (and tp!808507 tp!808509))))

(declare-fun b!2531820 () Bool)

(declare-fun tp!808508 () Bool)

(assert (=> b!2531820 (= e!1602071 tp!808508)))

(assert (=> b!2531526 (= tp!808402 e!1602071)))

(assert (= (and b!2531526 ((_ is ElementMatch!7539) (regOne!15590 (regTwo!15591 r!27340)))) b!2531818))

(assert (= (and b!2531526 ((_ is Concat!12235) (regOne!15590 (regTwo!15591 r!27340)))) b!2531819))

(assert (= (and b!2531526 ((_ is Star!7539) (regOne!15590 (regTwo!15591 r!27340)))) b!2531820))

(assert (= (and b!2531526 ((_ is Union!7539) (regOne!15590 (regTwo!15591 r!27340)))) b!2531821))

(declare-fun b!2531822 () Bool)

(declare-fun e!1602072 () Bool)

(assert (=> b!2531822 (= e!1602072 tp_is_empty!12933)))

(declare-fun b!2531823 () Bool)

(declare-fun tp!808510 () Bool)

(declare-fun tp!808511 () Bool)

(assert (=> b!2531823 (= e!1602072 (and tp!808510 tp!808511))))

(declare-fun b!2531825 () Bool)

(declare-fun tp!808512 () Bool)

(declare-fun tp!808514 () Bool)

(assert (=> b!2531825 (= e!1602072 (and tp!808512 tp!808514))))

(declare-fun b!2531824 () Bool)

(declare-fun tp!808513 () Bool)

(assert (=> b!2531824 (= e!1602072 tp!808513)))

(assert (=> b!2531526 (= tp!808403 e!1602072)))

(assert (= (and b!2531526 ((_ is ElementMatch!7539) (regTwo!15590 (regTwo!15591 r!27340)))) b!2531822))

(assert (= (and b!2531526 ((_ is Concat!12235) (regTwo!15590 (regTwo!15591 r!27340)))) b!2531823))

(assert (= (and b!2531526 ((_ is Star!7539) (regTwo!15590 (regTwo!15591 r!27340)))) b!2531824))

(assert (= (and b!2531526 ((_ is Union!7539) (regTwo!15590 (regTwo!15591 r!27340)))) b!2531825))

(declare-fun b!2531826 () Bool)

(declare-fun e!1602073 () Bool)

(assert (=> b!2531826 (= e!1602073 tp_is_empty!12933)))

(declare-fun b!2531827 () Bool)

(declare-fun tp!808515 () Bool)

(declare-fun tp!808516 () Bool)

(assert (=> b!2531827 (= e!1602073 (and tp!808515 tp!808516))))

(declare-fun b!2531829 () Bool)

(declare-fun tp!808517 () Bool)

(declare-fun tp!808519 () Bool)

(assert (=> b!2531829 (= e!1602073 (and tp!808517 tp!808519))))

(declare-fun b!2531828 () Bool)

(declare-fun tp!808518 () Bool)

(assert (=> b!2531828 (= e!1602073 tp!808518)))

(assert (=> b!2531535 (= tp!808415 e!1602073)))

(assert (= (and b!2531535 ((_ is ElementMatch!7539) (reg!7868 (regTwo!15590 r!27340)))) b!2531826))

(assert (= (and b!2531535 ((_ is Concat!12235) (reg!7868 (regTwo!15590 r!27340)))) b!2531827))

(assert (= (and b!2531535 ((_ is Star!7539) (reg!7868 (regTwo!15590 r!27340)))) b!2531828))

(assert (= (and b!2531535 ((_ is Union!7539) (reg!7868 (regTwo!15590 r!27340)))) b!2531829))

(declare-fun b!2531830 () Bool)

(declare-fun e!1602074 () Bool)

(assert (=> b!2531830 (= e!1602074 tp_is_empty!12933)))

(declare-fun b!2531831 () Bool)

(declare-fun tp!808520 () Bool)

(declare-fun tp!808521 () Bool)

(assert (=> b!2531831 (= e!1602074 (and tp!808520 tp!808521))))

(declare-fun b!2531833 () Bool)

(declare-fun tp!808522 () Bool)

(declare-fun tp!808524 () Bool)

(assert (=> b!2531833 (= e!1602074 (and tp!808522 tp!808524))))

(declare-fun b!2531832 () Bool)

(declare-fun tp!808523 () Bool)

(assert (=> b!2531832 (= e!1602074 tp!808523)))

(assert (=> b!2531530 (= tp!808407 e!1602074)))

(assert (= (and b!2531530 ((_ is ElementMatch!7539) (regOne!15590 (regOne!15590 r!27340)))) b!2531830))

(assert (= (and b!2531530 ((_ is Concat!12235) (regOne!15590 (regOne!15590 r!27340)))) b!2531831))

(assert (= (and b!2531530 ((_ is Star!7539) (regOne!15590 (regOne!15590 r!27340)))) b!2531832))

(assert (= (and b!2531530 ((_ is Union!7539) (regOne!15590 (regOne!15590 r!27340)))) b!2531833))

(declare-fun b!2531834 () Bool)

(declare-fun e!1602075 () Bool)

(assert (=> b!2531834 (= e!1602075 tp_is_empty!12933)))

(declare-fun b!2531835 () Bool)

(declare-fun tp!808525 () Bool)

(declare-fun tp!808526 () Bool)

(assert (=> b!2531835 (= e!1602075 (and tp!808525 tp!808526))))

(declare-fun b!2531837 () Bool)

(declare-fun tp!808527 () Bool)

(declare-fun tp!808529 () Bool)

(assert (=> b!2531837 (= e!1602075 (and tp!808527 tp!808529))))

(declare-fun b!2531836 () Bool)

(declare-fun tp!808528 () Bool)

(assert (=> b!2531836 (= e!1602075 tp!808528)))

(assert (=> b!2531530 (= tp!808408 e!1602075)))

(assert (= (and b!2531530 ((_ is ElementMatch!7539) (regTwo!15590 (regOne!15590 r!27340)))) b!2531834))

(assert (= (and b!2531530 ((_ is Concat!12235) (regTwo!15590 (regOne!15590 r!27340)))) b!2531835))

(assert (= (and b!2531530 ((_ is Star!7539) (regTwo!15590 (regOne!15590 r!27340)))) b!2531836))

(assert (= (and b!2531530 ((_ is Union!7539) (regTwo!15590 (regOne!15590 r!27340)))) b!2531837))

(declare-fun b!2531838 () Bool)

(declare-fun e!1602076 () Bool)

(declare-fun tp!808530 () Bool)

(assert (=> b!2531838 (= e!1602076 (and tp_is_empty!12933 tp!808530))))

(assert (=> b!2531506 (= tp!808381 e!1602076)))

(assert (= (and b!2531506 ((_ is Cons!29504) (t!211303 (t!211303 tl!4068)))) b!2531838))

(declare-fun b!2531839 () Bool)

(declare-fun e!1602077 () Bool)

(assert (=> b!2531839 (= e!1602077 tp_is_empty!12933)))

(declare-fun b!2531840 () Bool)

(declare-fun tp!808531 () Bool)

(declare-fun tp!808532 () Bool)

(assert (=> b!2531840 (= e!1602077 (and tp!808531 tp!808532))))

(declare-fun b!2531842 () Bool)

(declare-fun tp!808533 () Bool)

(declare-fun tp!808535 () Bool)

(assert (=> b!2531842 (= e!1602077 (and tp!808533 tp!808535))))

(declare-fun b!2531841 () Bool)

(declare-fun tp!808534 () Bool)

(assert (=> b!2531841 (= e!1602077 tp!808534)))

(assert (=> b!2531520 (= tp!808394 e!1602077)))

(assert (= (and b!2531520 ((_ is ElementMatch!7539) (regOne!15591 (reg!7868 r!27340)))) b!2531839))

(assert (= (and b!2531520 ((_ is Concat!12235) (regOne!15591 (reg!7868 r!27340)))) b!2531840))

(assert (= (and b!2531520 ((_ is Star!7539) (regOne!15591 (reg!7868 r!27340)))) b!2531841))

(assert (= (and b!2531520 ((_ is Union!7539) (regOne!15591 (reg!7868 r!27340)))) b!2531842))

(declare-fun b!2531843 () Bool)

(declare-fun e!1602078 () Bool)

(assert (=> b!2531843 (= e!1602078 tp_is_empty!12933)))

(declare-fun b!2531844 () Bool)

(declare-fun tp!808536 () Bool)

(declare-fun tp!808537 () Bool)

(assert (=> b!2531844 (= e!1602078 (and tp!808536 tp!808537))))

(declare-fun b!2531846 () Bool)

(declare-fun tp!808538 () Bool)

(declare-fun tp!808540 () Bool)

(assert (=> b!2531846 (= e!1602078 (and tp!808538 tp!808540))))

(declare-fun b!2531845 () Bool)

(declare-fun tp!808539 () Bool)

(assert (=> b!2531845 (= e!1602078 tp!808539)))

(assert (=> b!2531520 (= tp!808396 e!1602078)))

(assert (= (and b!2531520 ((_ is ElementMatch!7539) (regTwo!15591 (reg!7868 r!27340)))) b!2531843))

(assert (= (and b!2531520 ((_ is Concat!12235) (regTwo!15591 (reg!7868 r!27340)))) b!2531844))

(assert (= (and b!2531520 ((_ is Star!7539) (regTwo!15591 (reg!7868 r!27340)))) b!2531845))

(assert (= (and b!2531520 ((_ is Union!7539) (regTwo!15591 (reg!7868 r!27340)))) b!2531846))

(declare-fun b!2531847 () Bool)

(declare-fun e!1602079 () Bool)

(assert (=> b!2531847 (= e!1602079 tp_is_empty!12933)))

(declare-fun b!2531848 () Bool)

(declare-fun tp!808541 () Bool)

(declare-fun tp!808542 () Bool)

(assert (=> b!2531848 (= e!1602079 (and tp!808541 tp!808542))))

(declare-fun b!2531850 () Bool)

(declare-fun tp!808543 () Bool)

(declare-fun tp!808545 () Bool)

(assert (=> b!2531850 (= e!1602079 (and tp!808543 tp!808545))))

(declare-fun b!2531849 () Bool)

(declare-fun tp!808544 () Bool)

(assert (=> b!2531849 (= e!1602079 tp!808544)))

(assert (=> b!2531524 (= tp!808399 e!1602079)))

(assert (= (and b!2531524 ((_ is ElementMatch!7539) (regOne!15591 (regOne!15591 r!27340)))) b!2531847))

(assert (= (and b!2531524 ((_ is Concat!12235) (regOne!15591 (regOne!15591 r!27340)))) b!2531848))

(assert (= (and b!2531524 ((_ is Star!7539) (regOne!15591 (regOne!15591 r!27340)))) b!2531849))

(assert (= (and b!2531524 ((_ is Union!7539) (regOne!15591 (regOne!15591 r!27340)))) b!2531850))

(declare-fun b!2531851 () Bool)

(declare-fun e!1602080 () Bool)

(assert (=> b!2531851 (= e!1602080 tp_is_empty!12933)))

(declare-fun b!2531852 () Bool)

(declare-fun tp!808546 () Bool)

(declare-fun tp!808547 () Bool)

(assert (=> b!2531852 (= e!1602080 (and tp!808546 tp!808547))))

(declare-fun b!2531854 () Bool)

(declare-fun tp!808548 () Bool)

(declare-fun tp!808550 () Bool)

(assert (=> b!2531854 (= e!1602080 (and tp!808548 tp!808550))))

(declare-fun b!2531853 () Bool)

(declare-fun tp!808549 () Bool)

(assert (=> b!2531853 (= e!1602080 tp!808549)))

(assert (=> b!2531524 (= tp!808401 e!1602080)))

(assert (= (and b!2531524 ((_ is ElementMatch!7539) (regTwo!15591 (regOne!15591 r!27340)))) b!2531851))

(assert (= (and b!2531524 ((_ is Concat!12235) (regTwo!15591 (regOne!15591 r!27340)))) b!2531852))

(assert (= (and b!2531524 ((_ is Star!7539) (regTwo!15591 (regOne!15591 r!27340)))) b!2531853))

(assert (= (and b!2531524 ((_ is Union!7539) (regTwo!15591 (regOne!15591 r!27340)))) b!2531854))

(declare-fun b!2531855 () Bool)

(declare-fun e!1602081 () Bool)

(assert (=> b!2531855 (= e!1602081 tp_is_empty!12933)))

(declare-fun b!2531856 () Bool)

(declare-fun tp!808551 () Bool)

(declare-fun tp!808552 () Bool)

(assert (=> b!2531856 (= e!1602081 (and tp!808551 tp!808552))))

(declare-fun b!2531858 () Bool)

(declare-fun tp!808553 () Bool)

(declare-fun tp!808555 () Bool)

(assert (=> b!2531858 (= e!1602081 (and tp!808553 tp!808555))))

(declare-fun b!2531857 () Bool)

(declare-fun tp!808554 () Bool)

(assert (=> b!2531857 (= e!1602081 tp!808554)))

(assert (=> b!2531519 (= tp!808395 e!1602081)))

(assert (= (and b!2531519 ((_ is ElementMatch!7539) (reg!7868 (reg!7868 r!27340)))) b!2531855))

(assert (= (and b!2531519 ((_ is Concat!12235) (reg!7868 (reg!7868 r!27340)))) b!2531856))

(assert (= (and b!2531519 ((_ is Star!7539) (reg!7868 (reg!7868 r!27340)))) b!2531857))

(assert (= (and b!2531519 ((_ is Union!7539) (reg!7868 (reg!7868 r!27340)))) b!2531858))

(declare-fun b!2531859 () Bool)

(declare-fun e!1602082 () Bool)

(assert (=> b!2531859 (= e!1602082 tp_is_empty!12933)))

(declare-fun b!2531860 () Bool)

(declare-fun tp!808556 () Bool)

(declare-fun tp!808557 () Bool)

(assert (=> b!2531860 (= e!1602082 (and tp!808556 tp!808557))))

(declare-fun b!2531862 () Bool)

(declare-fun tp!808558 () Bool)

(declare-fun tp!808560 () Bool)

(assert (=> b!2531862 (= e!1602082 (and tp!808558 tp!808560))))

(declare-fun b!2531861 () Bool)

(declare-fun tp!808559 () Bool)

(assert (=> b!2531861 (= e!1602082 tp!808559)))

(assert (=> b!2531528 (= tp!808404 e!1602082)))

(assert (= (and b!2531528 ((_ is ElementMatch!7539) (regOne!15591 (regTwo!15591 r!27340)))) b!2531859))

(assert (= (and b!2531528 ((_ is Concat!12235) (regOne!15591 (regTwo!15591 r!27340)))) b!2531860))

(assert (= (and b!2531528 ((_ is Star!7539) (regOne!15591 (regTwo!15591 r!27340)))) b!2531861))

(assert (= (and b!2531528 ((_ is Union!7539) (regOne!15591 (regTwo!15591 r!27340)))) b!2531862))

(declare-fun b!2531863 () Bool)

(declare-fun e!1602083 () Bool)

(assert (=> b!2531863 (= e!1602083 tp_is_empty!12933)))

(declare-fun b!2531864 () Bool)

(declare-fun tp!808561 () Bool)

(declare-fun tp!808562 () Bool)

(assert (=> b!2531864 (= e!1602083 (and tp!808561 tp!808562))))

(declare-fun b!2531866 () Bool)

(declare-fun tp!808563 () Bool)

(declare-fun tp!808565 () Bool)

(assert (=> b!2531866 (= e!1602083 (and tp!808563 tp!808565))))

(declare-fun b!2531865 () Bool)

(declare-fun tp!808564 () Bool)

(assert (=> b!2531865 (= e!1602083 tp!808564)))

(assert (=> b!2531528 (= tp!808406 e!1602083)))

(assert (= (and b!2531528 ((_ is ElementMatch!7539) (regTwo!15591 (regTwo!15591 r!27340)))) b!2531863))

(assert (= (and b!2531528 ((_ is Concat!12235) (regTwo!15591 (regTwo!15591 r!27340)))) b!2531864))

(assert (= (and b!2531528 ((_ is Star!7539) (regTwo!15591 (regTwo!15591 r!27340)))) b!2531865))

(assert (= (and b!2531528 ((_ is Union!7539) (regTwo!15591 (regTwo!15591 r!27340)))) b!2531866))

(declare-fun b!2531867 () Bool)

(declare-fun e!1602084 () Bool)

(assert (=> b!2531867 (= e!1602084 tp_is_empty!12933)))

(declare-fun b!2531868 () Bool)

(declare-fun tp!808566 () Bool)

(declare-fun tp!808567 () Bool)

(assert (=> b!2531868 (= e!1602084 (and tp!808566 tp!808567))))

(declare-fun b!2531870 () Bool)

(declare-fun tp!808568 () Bool)

(declare-fun tp!808570 () Bool)

(assert (=> b!2531870 (= e!1602084 (and tp!808568 tp!808570))))

(declare-fun b!2531869 () Bool)

(declare-fun tp!808569 () Bool)

(assert (=> b!2531869 (= e!1602084 tp!808569)))

(assert (=> b!2531523 (= tp!808400 e!1602084)))

(assert (= (and b!2531523 ((_ is ElementMatch!7539) (reg!7868 (regOne!15591 r!27340)))) b!2531867))

(assert (= (and b!2531523 ((_ is Concat!12235) (reg!7868 (regOne!15591 r!27340)))) b!2531868))

(assert (= (and b!2531523 ((_ is Star!7539) (reg!7868 (regOne!15591 r!27340)))) b!2531869))

(assert (= (and b!2531523 ((_ is Union!7539) (reg!7868 (regOne!15591 r!27340)))) b!2531870))

(declare-fun b!2531871 () Bool)

(declare-fun e!1602085 () Bool)

(assert (=> b!2531871 (= e!1602085 tp_is_empty!12933)))

(declare-fun b!2531872 () Bool)

(declare-fun tp!808571 () Bool)

(declare-fun tp!808572 () Bool)

(assert (=> b!2531872 (= e!1602085 (and tp!808571 tp!808572))))

(declare-fun b!2531874 () Bool)

(declare-fun tp!808573 () Bool)

(declare-fun tp!808575 () Bool)

(assert (=> b!2531874 (= e!1602085 (and tp!808573 tp!808575))))

(declare-fun b!2531873 () Bool)

(declare-fun tp!808574 () Bool)

(assert (=> b!2531873 (= e!1602085 tp!808574)))

(assert (=> b!2531534 (= tp!808412 e!1602085)))

(assert (= (and b!2531534 ((_ is ElementMatch!7539) (regOne!15590 (regTwo!15590 r!27340)))) b!2531871))

(assert (= (and b!2531534 ((_ is Concat!12235) (regOne!15590 (regTwo!15590 r!27340)))) b!2531872))

(assert (= (and b!2531534 ((_ is Star!7539) (regOne!15590 (regTwo!15590 r!27340)))) b!2531873))

(assert (= (and b!2531534 ((_ is Union!7539) (regOne!15590 (regTwo!15590 r!27340)))) b!2531874))

(declare-fun b!2531875 () Bool)

(declare-fun e!1602086 () Bool)

(assert (=> b!2531875 (= e!1602086 tp_is_empty!12933)))

(declare-fun b!2531876 () Bool)

(declare-fun tp!808576 () Bool)

(declare-fun tp!808577 () Bool)

(assert (=> b!2531876 (= e!1602086 (and tp!808576 tp!808577))))

(declare-fun b!2531878 () Bool)

(declare-fun tp!808578 () Bool)

(declare-fun tp!808580 () Bool)

(assert (=> b!2531878 (= e!1602086 (and tp!808578 tp!808580))))

(declare-fun b!2531877 () Bool)

(declare-fun tp!808579 () Bool)

(assert (=> b!2531877 (= e!1602086 tp!808579)))

(assert (=> b!2531534 (= tp!808413 e!1602086)))

(assert (= (and b!2531534 ((_ is ElementMatch!7539) (regTwo!15590 (regTwo!15590 r!27340)))) b!2531875))

(assert (= (and b!2531534 ((_ is Concat!12235) (regTwo!15590 (regTwo!15590 r!27340)))) b!2531876))

(assert (= (and b!2531534 ((_ is Star!7539) (regTwo!15590 (regTwo!15590 r!27340)))) b!2531877))

(assert (= (and b!2531534 ((_ is Union!7539) (regTwo!15590 (regTwo!15590 r!27340)))) b!2531878))

(check-sat (not b!2531849) (not b!2531803) (not b!2531664) (not b!2531852) (not b!2531716) (not b!2531771) (not bm!158686) (not b!2531872) (not bm!158729) (not bm!158714) (not bm!158715) (not bm!158690) (not b!2531801) (not bm!158708) (not b!2531869) (not b!2531788) (not b!2531781) (not b!2531791) (not b!2531643) (not b!2531860) (not b!2531819) (not b!2531655) (not b!2531623) (not b!2531866) (not b!2531804) (not bm!158707) (not b!2531832) (not b!2531861) (not bm!158725) (not bm!158728) (not bm!158699) (not b!2531633) (not b!2531853) (not b!2531878) (not b!2531821) (not bm!158735) (not bm!158710) (not b!2531796) (not b!2531795) (not bm!158721) (not b!2531692) (not b!2531868) (not bm!158695) (not b!2531850) (not b!2531858) (not bm!158691) (not bm!158718) (not b!2531820) (not bm!158737) (not b!2531780) (not b!2531846) (not bm!158711) (not bm!158694) (not b!2531809) (not b!2531784) (not b!2531793) (not b!2531862) (not d!719993) (not b!2531815) (not b!2531854) (not b!2531800) (not b!2531874) (not d!720003) (not bm!158687) (not b!2531844) (not b!2531735) (not b!2531838) (not d!719983) (not b!2531825) (not b!2531837) (not bm!158738) (not b!2531702) (not b!2531799) (not bm!158698) (not b!2531807) (not b!2531783) (not b!2531848) (not bm!158734) (not b!2531787) (not d!719967) (not b!2531744) (not b!2531836) (not d!719971) (not d!720005) (not b!2531762) (not b!2531812) (not d!719969) (not d!719985) (not b!2531621) (not b!2531811) (not b!2531833) (not d!719989) (not bm!158701) (not d!719973) (not b!2531817) (not b!2531805) (not b!2531856) (not d!719987) tp_is_empty!12933 (not b!2531816) (not b!2531753) (not b!2531845) (not bm!158726) (not bm!158702) (not b!2531841) (not b!2531831) (not bm!158722) (not b!2531704) (not b!2531865) (not b!2531797) (not bm!158732) (not b!2531857) (not b!2531873) (not b!2531723) (not b!2531813) (not b!2531828) (not b!2531789) (not b!2531840) (not b!2531792) (not b!2531829) (not b!2531827) (not d!719981) (not b!2531835) (not b!2531864) (not b!2531808) (not b!2531870) (not b!2531823) (not bm!158719) (not bm!158731) (not b!2531877) (not b!2531824) (not b!2531785) (not b!2531876) (not b!2531842) (not b!2531779))
(check-sat)
