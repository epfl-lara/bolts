; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!351138 () Bool)

(assert start!351138)

(declare-fun b!3733379 () Bool)

(declare-fun res!1515283 () Bool)

(declare-fun e!2309529 () Bool)

(assert (=> b!3733379 (=> res!1515283 e!2309529)))

(declare-datatypes ((C!22056 0))(
  ( (C!22057 (val!13076 Int)) )
))
(declare-datatypes ((Regex!10935 0))(
  ( (ElementMatch!10935 (c!646401 C!22056)) (Concat!17206 (regOne!22382 Regex!10935) (regTwo!22382 Regex!10935)) (EmptyExpr!10935) (Star!10935 (reg!11264 Regex!10935)) (EmptyLang!10935) (Union!10935 (regOne!22383 Regex!10935) (regTwo!22383 Regex!10935)) )
))
(declare-fun r!26968 () Regex!10935)

(declare-fun cNot!42 () C!22056)

(declare-datatypes ((List!39816 0))(
  ( (Nil!39692) (Cons!39692 (h!45112 C!22056) (t!302499 List!39816)) )
))
(declare-fun contains!8028 (List!39816 C!22056) Bool)

(declare-fun usedCharacters!1198 (Regex!10935) List!39816)

(assert (=> b!3733379 (= res!1515283 (contains!8028 (usedCharacters!1198 (regTwo!22382 r!26968)) cNot!42))))

(declare-fun b!3733380 () Bool)

(declare-fun res!1515282 () Bool)

(declare-fun e!2309530 () Bool)

(assert (=> b!3733380 (=> (not res!1515282) (not e!2309530))))

(assert (=> b!3733380 (= res!1515282 (not (contains!8028 (usedCharacters!1198 r!26968) cNot!42)))))

(declare-fun b!3733381 () Bool)

(assert (=> b!3733381 (= e!2309530 (not e!2309529))))

(declare-fun res!1515286 () Bool)

(assert (=> b!3733381 (=> res!1515286 e!2309529)))

(declare-fun validRegex!5042 (Regex!10935) Bool)

(assert (=> b!3733381 (= res!1515286 (not (validRegex!5042 (regTwo!22382 r!26968))))))

(declare-fun c!13797 () C!22056)

(declare-fun derivativeStep!3370 (Regex!10935 C!22056) Regex!10935)

(assert (=> b!3733381 (not (contains!8028 (usedCharacters!1198 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) cNot!42))))

(declare-datatypes ((Unit!57596 0))(
  ( (Unit!57597) )
))
(declare-fun lt!1298798 () Unit!57596)

(declare-fun lemmaDerivativeStepDoesNotAddCharToUsedCharacters!54 (Regex!10935 C!22056 C!22056) Unit!57596)

(assert (=> b!3733381 (= lt!1298798 (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!54 (regOne!22382 r!26968) c!13797 cNot!42))))

(declare-fun b!3733382 () Bool)

(declare-fun e!2309528 () Bool)

(declare-fun tp!1136381 () Bool)

(declare-fun tp!1136383 () Bool)

(assert (=> b!3733382 (= e!2309528 (and tp!1136381 tp!1136383))))

(declare-fun b!3733383 () Bool)

(declare-fun tp!1136380 () Bool)

(declare-fun tp!1136382 () Bool)

(assert (=> b!3733383 (= e!2309528 (and tp!1136380 tp!1136382))))

(declare-fun b!3733385 () Bool)

(declare-fun tp_is_empty!18885 () Bool)

(assert (=> b!3733385 (= e!2309528 tp_is_empty!18885)))

(declare-fun b!3733386 () Bool)

(declare-fun RegexPrimitiveSize!147 (Regex!10935) Int)

(assert (=> b!3733386 (= e!2309529 (< (RegexPrimitiveSize!147 (regTwo!22382 r!26968)) (RegexPrimitiveSize!147 r!26968)))))

(declare-fun b!3733387 () Bool)

(declare-fun tp!1136384 () Bool)

(assert (=> b!3733387 (= e!2309528 tp!1136384)))

(declare-fun b!3733388 () Bool)

(declare-fun res!1515281 () Bool)

(assert (=> b!3733388 (=> (not res!1515281) (not e!2309530))))

(get-info :version)

(assert (=> b!3733388 (= res!1515281 (and (not ((_ is EmptyExpr!10935) r!26968)) (not ((_ is EmptyLang!10935) r!26968)) (not ((_ is ElementMatch!10935) r!26968)) (not ((_ is Union!10935) r!26968)) (not ((_ is Star!10935) r!26968))))))

(declare-fun b!3733384 () Bool)

(declare-fun res!1515285 () Bool)

(assert (=> b!3733384 (=> (not res!1515285) (not e!2309530))))

(declare-fun nullable!3843 (Regex!10935) Bool)

(assert (=> b!3733384 (= res!1515285 (nullable!3843 (regOne!22382 r!26968)))))

(declare-fun res!1515284 () Bool)

(assert (=> start!351138 (=> (not res!1515284) (not e!2309530))))

(assert (=> start!351138 (= res!1515284 (validRegex!5042 r!26968))))

(assert (=> start!351138 e!2309530))

(assert (=> start!351138 e!2309528))

(assert (=> start!351138 tp_is_empty!18885))

(assert (= (and start!351138 res!1515284) b!3733380))

(assert (= (and b!3733380 res!1515282) b!3733388))

(assert (= (and b!3733388 res!1515281) b!3733384))

(assert (= (and b!3733384 res!1515285) b!3733381))

(assert (= (and b!3733381 (not res!1515286)) b!3733379))

(assert (= (and b!3733379 (not res!1515283)) b!3733386))

(assert (= (and start!351138 ((_ is ElementMatch!10935) r!26968)) b!3733385))

(assert (= (and start!351138 ((_ is Concat!17206) r!26968)) b!3733382))

(assert (= (and start!351138 ((_ is Star!10935) r!26968)) b!3733387))

(assert (= (and start!351138 ((_ is Union!10935) r!26968)) b!3733383))

(declare-fun m!4231455 () Bool)

(assert (=> b!3733384 m!4231455))

(declare-fun m!4231457 () Bool)

(assert (=> b!3733380 m!4231457))

(assert (=> b!3733380 m!4231457))

(declare-fun m!4231459 () Bool)

(assert (=> b!3733380 m!4231459))

(declare-fun m!4231461 () Bool)

(assert (=> start!351138 m!4231461))

(declare-fun m!4231463 () Bool)

(assert (=> b!3733386 m!4231463))

(declare-fun m!4231465 () Bool)

(assert (=> b!3733386 m!4231465))

(declare-fun m!4231467 () Bool)

(assert (=> b!3733381 m!4231467))

(declare-fun m!4231469 () Bool)

(assert (=> b!3733381 m!4231469))

(declare-fun m!4231471 () Bool)

(assert (=> b!3733381 m!4231471))

(declare-fun m!4231473 () Bool)

(assert (=> b!3733381 m!4231473))

(declare-fun m!4231475 () Bool)

(assert (=> b!3733381 m!4231475))

(assert (=> b!3733381 m!4231473))

(assert (=> b!3733381 m!4231469))

(declare-fun m!4231477 () Bool)

(assert (=> b!3733379 m!4231477))

(assert (=> b!3733379 m!4231477))

(declare-fun m!4231479 () Bool)

(assert (=> b!3733379 m!4231479))

(check-sat (not b!3733384) (not b!3733383) (not b!3733387) (not b!3733379) (not b!3733386) (not b!3733380) (not b!3733382) tp_is_empty!18885 (not b!3733381) (not start!351138))
(check-sat)
(get-model)

(declare-fun b!3733413 () Bool)

(declare-fun e!2309557 () Bool)

(declare-fun call!273021 () Bool)

(assert (=> b!3733413 (= e!2309557 call!273021)))

(declare-fun d!1090989 () Bool)

(declare-fun res!1515305 () Bool)

(declare-fun e!2309555 () Bool)

(assert (=> d!1090989 (=> res!1515305 e!2309555)))

(assert (=> d!1090989 (= res!1515305 ((_ is ElementMatch!10935) r!26968))))

(assert (=> d!1090989 (= (validRegex!5042 r!26968) e!2309555)))

(declare-fun b!3733414 () Bool)

(declare-fun e!2309554 () Bool)

(declare-fun call!273020 () Bool)

(assert (=> b!3733414 (= e!2309554 call!273020)))

(declare-fun b!3733415 () Bool)

(declare-fun e!2309551 () Bool)

(assert (=> b!3733415 (= e!2309555 e!2309551)))

(declare-fun c!646407 () Bool)

(assert (=> b!3733415 (= c!646407 ((_ is Star!10935) r!26968))))

(declare-fun b!3733416 () Bool)

(assert (=> b!3733416 (= e!2309551 e!2309557)))

(declare-fun res!1515304 () Bool)

(assert (=> b!3733416 (= res!1515304 (not (nullable!3843 (reg!11264 r!26968))))))

(assert (=> b!3733416 (=> (not res!1515304) (not e!2309557))))

(declare-fun b!3733417 () Bool)

(declare-fun res!1515306 () Bool)

(declare-fun e!2309556 () Bool)

(assert (=> b!3733417 (=> (not res!1515306) (not e!2309556))))

(declare-fun call!273019 () Bool)

(assert (=> b!3733417 (= res!1515306 call!273019)))

(declare-fun e!2309552 () Bool)

(assert (=> b!3733417 (= e!2309552 e!2309556)))

(declare-fun b!3733418 () Bool)

(assert (=> b!3733418 (= e!2309551 e!2309552)))

(declare-fun c!646406 () Bool)

(assert (=> b!3733418 (= c!646406 ((_ is Union!10935) r!26968))))

(declare-fun b!3733419 () Bool)

(declare-fun e!2309553 () Bool)

(assert (=> b!3733419 (= e!2309553 e!2309554)))

(declare-fun res!1515303 () Bool)

(assert (=> b!3733419 (=> (not res!1515303) (not e!2309554))))

(assert (=> b!3733419 (= res!1515303 call!273019)))

(declare-fun b!3733420 () Bool)

(assert (=> b!3733420 (= e!2309556 call!273020)))

(declare-fun bm!273014 () Bool)

(assert (=> bm!273014 (= call!273020 call!273021)))

(declare-fun bm!273015 () Bool)

(assert (=> bm!273015 (= call!273019 (validRegex!5042 (ite c!646406 (regOne!22383 r!26968) (regOne!22382 r!26968))))))

(declare-fun b!3733421 () Bool)

(declare-fun res!1515307 () Bool)

(assert (=> b!3733421 (=> res!1515307 e!2309553)))

(assert (=> b!3733421 (= res!1515307 (not ((_ is Concat!17206) r!26968)))))

(assert (=> b!3733421 (= e!2309552 e!2309553)))

(declare-fun bm!273016 () Bool)

(assert (=> bm!273016 (= call!273021 (validRegex!5042 (ite c!646407 (reg!11264 r!26968) (ite c!646406 (regTwo!22383 r!26968) (regTwo!22382 r!26968)))))))

(assert (= (and d!1090989 (not res!1515305)) b!3733415))

(assert (= (and b!3733415 c!646407) b!3733416))

(assert (= (and b!3733415 (not c!646407)) b!3733418))

(assert (= (and b!3733416 res!1515304) b!3733413))

(assert (= (and b!3733418 c!646406) b!3733417))

(assert (= (and b!3733418 (not c!646406)) b!3733421))

(assert (= (and b!3733417 res!1515306) b!3733420))

(assert (= (and b!3733421 (not res!1515307)) b!3733419))

(assert (= (and b!3733419 res!1515303) b!3733414))

(assert (= (or b!3733420 b!3733414) bm!273014))

(assert (= (or b!3733417 b!3733419) bm!273015))

(assert (= (or b!3733413 bm!273014) bm!273016))

(declare-fun m!4231487 () Bool)

(assert (=> b!3733416 m!4231487))

(declare-fun m!4231489 () Bool)

(assert (=> bm!273015 m!4231489))

(declare-fun m!4231491 () Bool)

(assert (=> bm!273016 m!4231491))

(assert (=> start!351138 d!1090989))

(declare-fun d!1090995 () Bool)

(declare-fun lt!1298804 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5791 (List!39816) (InoxSet C!22056))

(assert (=> d!1090995 (= lt!1298804 (select (content!5791 (usedCharacters!1198 r!26968)) cNot!42))))

(declare-fun e!2309570 () Bool)

(assert (=> d!1090995 (= lt!1298804 e!2309570)))

(declare-fun res!1515312 () Bool)

(assert (=> d!1090995 (=> (not res!1515312) (not e!2309570))))

(assert (=> d!1090995 (= res!1515312 ((_ is Cons!39692) (usedCharacters!1198 r!26968)))))

(assert (=> d!1090995 (= (contains!8028 (usedCharacters!1198 r!26968) cNot!42) lt!1298804)))

(declare-fun b!3733442 () Bool)

(declare-fun e!2309571 () Bool)

(assert (=> b!3733442 (= e!2309570 e!2309571)))

(declare-fun res!1515313 () Bool)

(assert (=> b!3733442 (=> res!1515313 e!2309571)))

(assert (=> b!3733442 (= res!1515313 (= (h!45112 (usedCharacters!1198 r!26968)) cNot!42))))

(declare-fun b!3733443 () Bool)

(assert (=> b!3733443 (= e!2309571 (contains!8028 (t!302499 (usedCharacters!1198 r!26968)) cNot!42))))

(assert (= (and d!1090995 res!1515312) b!3733442))

(assert (= (and b!3733442 (not res!1515313)) b!3733443))

(assert (=> d!1090995 m!4231457))

(declare-fun m!4231493 () Bool)

(assert (=> d!1090995 m!4231493))

(declare-fun m!4231495 () Bool)

(assert (=> d!1090995 m!4231495))

(declare-fun m!4231497 () Bool)

(assert (=> b!3733443 m!4231497))

(assert (=> b!3733380 d!1090995))

(declare-fun b!3733468 () Bool)

(declare-fun e!2309584 () List!39816)

(declare-fun call!273044 () List!39816)

(assert (=> b!3733468 (= e!2309584 call!273044)))

(declare-fun bm!273037 () Bool)

(declare-fun call!273043 () List!39816)

(assert (=> bm!273037 (= call!273043 call!273044)))

(declare-fun b!3733469 () Bool)

(declare-fun e!2309585 () List!39816)

(assert (=> b!3733469 (= e!2309584 e!2309585)))

(declare-fun c!646431 () Bool)

(assert (=> b!3733469 (= c!646431 ((_ is Union!10935) r!26968))))

(declare-fun bm!273038 () Bool)

(declare-fun call!273042 () List!39816)

(assert (=> bm!273038 (= call!273042 (usedCharacters!1198 (ite c!646431 (regOne!22383 r!26968) (regTwo!22382 r!26968))))))

(declare-fun b!3733470 () Bool)

(declare-fun call!273045 () List!39816)

(assert (=> b!3733470 (= e!2309585 call!273045)))

(declare-fun b!3733471 () Bool)

(declare-fun e!2309587 () List!39816)

(assert (=> b!3733471 (= e!2309587 (Cons!39692 (c!646401 r!26968) Nil!39692))))

(declare-fun bm!273040 () Bool)

(declare-fun ++!9858 (List!39816 List!39816) List!39816)

(assert (=> bm!273040 (= call!273045 (++!9858 (ite c!646431 call!273042 call!273043) (ite c!646431 call!273043 call!273042)))))

(declare-fun b!3733472 () Bool)

(declare-fun e!2309586 () List!39816)

(assert (=> b!3733472 (= e!2309586 e!2309587)))

(declare-fun c!646429 () Bool)

(assert (=> b!3733472 (= c!646429 ((_ is ElementMatch!10935) r!26968))))

(declare-fun b!3733473 () Bool)

(assert (=> b!3733473 (= e!2309586 Nil!39692)))

(declare-fun b!3733474 () Bool)

(assert (=> b!3733474 (= e!2309585 call!273045)))

(declare-fun b!3733475 () Bool)

(declare-fun c!646430 () Bool)

(assert (=> b!3733475 (= c!646430 ((_ is Star!10935) r!26968))))

(assert (=> b!3733475 (= e!2309587 e!2309584)))

(declare-fun d!1090997 () Bool)

(declare-fun c!646428 () Bool)

(assert (=> d!1090997 (= c!646428 (or ((_ is EmptyExpr!10935) r!26968) ((_ is EmptyLang!10935) r!26968)))))

(assert (=> d!1090997 (= (usedCharacters!1198 r!26968) e!2309586)))

(declare-fun bm!273039 () Bool)

(assert (=> bm!273039 (= call!273044 (usedCharacters!1198 (ite c!646430 (reg!11264 r!26968) (ite c!646431 (regTwo!22383 r!26968) (regOne!22382 r!26968)))))))

(assert (= (and d!1090997 c!646428) b!3733473))

(assert (= (and d!1090997 (not c!646428)) b!3733472))

(assert (= (and b!3733472 c!646429) b!3733471))

(assert (= (and b!3733472 (not c!646429)) b!3733475))

(assert (= (and b!3733475 c!646430) b!3733468))

(assert (= (and b!3733475 (not c!646430)) b!3733469))

(assert (= (and b!3733469 c!646431) b!3733470))

(assert (= (and b!3733469 (not c!646431)) b!3733474))

(assert (= (or b!3733470 b!3733474) bm!273038))

(assert (= (or b!3733470 b!3733474) bm!273037))

(assert (= (or b!3733470 b!3733474) bm!273040))

(assert (= (or b!3733468 bm!273037) bm!273039))

(declare-fun m!4231507 () Bool)

(assert (=> bm!273038 m!4231507))

(declare-fun m!4231509 () Bool)

(assert (=> bm!273040 m!4231509))

(declare-fun m!4231511 () Bool)

(assert (=> bm!273039 m!4231511))

(assert (=> b!3733380 d!1090997))

(declare-fun b!3733534 () Bool)

(declare-fun e!2309618 () Regex!10935)

(declare-fun call!273073 () Regex!10935)

(declare-fun call!273070 () Regex!10935)

(assert (=> b!3733534 (= e!2309618 (Union!10935 call!273073 call!273070))))

(declare-fun bm!273065 () Bool)

(declare-fun call!273071 () Regex!10935)

(declare-fun call!273072 () Regex!10935)

(assert (=> bm!273065 (= call!273071 call!273072)))

(declare-fun b!3733535 () Bool)

(declare-fun e!2309621 () Regex!10935)

(assert (=> b!3733535 (= e!2309621 (Concat!17206 call!273072 (regOne!22382 r!26968)))))

(declare-fun e!2309619 () Regex!10935)

(declare-fun b!3733536 () Bool)

(assert (=> b!3733536 (= e!2309619 (Union!10935 (Concat!17206 call!273070 (regTwo!22382 (regOne!22382 r!26968))) call!273071))))

(declare-fun b!3733537 () Bool)

(declare-fun c!646463 () Bool)

(assert (=> b!3733537 (= c!646463 (nullable!3843 (regOne!22382 (regOne!22382 r!26968))))))

(assert (=> b!3733537 (= e!2309621 e!2309619)))

(declare-fun c!646465 () Bool)

(declare-fun bm!273066 () Bool)

(declare-fun c!646464 () Bool)

(assert (=> bm!273066 (= call!273073 (derivativeStep!3370 (ite c!646465 (regOne!22383 (regOne!22382 r!26968)) (ite c!646464 (reg!11264 (regOne!22382 r!26968)) (ite c!646463 (regTwo!22382 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968))))) c!13797))))

(declare-fun b!3733538 () Bool)

(assert (=> b!3733538 (= c!646465 ((_ is Union!10935) (regOne!22382 r!26968)))))

(declare-fun e!2309620 () Regex!10935)

(assert (=> b!3733538 (= e!2309620 e!2309618)))

(declare-fun b!3733539 () Bool)

(assert (=> b!3733539 (= e!2309620 (ite (= c!13797 (c!646401 (regOne!22382 r!26968))) EmptyExpr!10935 EmptyLang!10935))))

(declare-fun b!3733540 () Bool)

(assert (=> b!3733540 (= e!2309619 (Union!10935 (Concat!17206 call!273071 (regTwo!22382 (regOne!22382 r!26968))) EmptyLang!10935))))

(declare-fun b!3733541 () Bool)

(declare-fun e!2309617 () Regex!10935)

(assert (=> b!3733541 (= e!2309617 e!2309620)))

(declare-fun c!646461 () Bool)

(assert (=> b!3733541 (= c!646461 ((_ is ElementMatch!10935) (regOne!22382 r!26968)))))

(declare-fun bm!273067 () Bool)

(assert (=> bm!273067 (= call!273072 call!273073)))

(declare-fun b!3733542 () Bool)

(assert (=> b!3733542 (= e!2309618 e!2309621)))

(assert (=> b!3733542 (= c!646464 ((_ is Star!10935) (regOne!22382 r!26968)))))

(declare-fun bm!273068 () Bool)

(assert (=> bm!273068 (= call!273070 (derivativeStep!3370 (ite c!646465 (regTwo!22383 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968))) c!13797))))

(declare-fun d!1091003 () Bool)

(declare-fun lt!1298810 () Regex!10935)

(assert (=> d!1091003 (validRegex!5042 lt!1298810)))

(assert (=> d!1091003 (= lt!1298810 e!2309617)))

(declare-fun c!646462 () Bool)

(assert (=> d!1091003 (= c!646462 (or ((_ is EmptyExpr!10935) (regOne!22382 r!26968)) ((_ is EmptyLang!10935) (regOne!22382 r!26968))))))

(assert (=> d!1091003 (validRegex!5042 (regOne!22382 r!26968))))

(assert (=> d!1091003 (= (derivativeStep!3370 (regOne!22382 r!26968) c!13797) lt!1298810)))

(declare-fun b!3733543 () Bool)

(assert (=> b!3733543 (= e!2309617 EmptyLang!10935)))

(assert (= (and d!1091003 c!646462) b!3733543))

(assert (= (and d!1091003 (not c!646462)) b!3733541))

(assert (= (and b!3733541 c!646461) b!3733539))

(assert (= (and b!3733541 (not c!646461)) b!3733538))

(assert (= (and b!3733538 c!646465) b!3733534))

(assert (= (and b!3733538 (not c!646465)) b!3733542))

(assert (= (and b!3733542 c!646464) b!3733535))

(assert (= (and b!3733542 (not c!646464)) b!3733537))

(assert (= (and b!3733537 c!646463) b!3733536))

(assert (= (and b!3733537 (not c!646463)) b!3733540))

(assert (= (or b!3733536 b!3733540) bm!273065))

(assert (= (or b!3733535 bm!273065) bm!273067))

(assert (= (or b!3733534 bm!273067) bm!273066))

(assert (= (or b!3733534 b!3733536) bm!273068))

(declare-fun m!4231527 () Bool)

(assert (=> b!3733537 m!4231527))

(declare-fun m!4231531 () Bool)

(assert (=> bm!273066 m!4231531))

(declare-fun m!4231533 () Bool)

(assert (=> bm!273068 m!4231533))

(declare-fun m!4231535 () Bool)

(assert (=> d!1091003 m!4231535))

(declare-fun m!4231537 () Bool)

(assert (=> d!1091003 m!4231537))

(assert (=> b!3733381 d!1091003))

(declare-fun b!3733544 () Bool)

(declare-fun e!2309622 () List!39816)

(declare-fun call!273076 () List!39816)

(assert (=> b!3733544 (= e!2309622 call!273076)))

(declare-fun bm!273069 () Bool)

(declare-fun call!273075 () List!39816)

(assert (=> bm!273069 (= call!273075 call!273076)))

(declare-fun b!3733545 () Bool)

(declare-fun e!2309623 () List!39816)

(assert (=> b!3733545 (= e!2309622 e!2309623)))

(declare-fun c!646469 () Bool)

(assert (=> b!3733545 (= c!646469 ((_ is Union!10935) (derivativeStep!3370 (regOne!22382 r!26968) c!13797)))))

(declare-fun call!273074 () List!39816)

(declare-fun bm!273070 () Bool)

(assert (=> bm!273070 (= call!273074 (usedCharacters!1198 (ite c!646469 (regOne!22383 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (regTwo!22382 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)))))))

(declare-fun b!3733546 () Bool)

(declare-fun call!273077 () List!39816)

(assert (=> b!3733546 (= e!2309623 call!273077)))

(declare-fun b!3733547 () Bool)

(declare-fun e!2309625 () List!39816)

(assert (=> b!3733547 (= e!2309625 (Cons!39692 (c!646401 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) Nil!39692))))

(declare-fun bm!273072 () Bool)

(assert (=> bm!273072 (= call!273077 (++!9858 (ite c!646469 call!273074 call!273075) (ite c!646469 call!273075 call!273074)))))

(declare-fun b!3733548 () Bool)

(declare-fun e!2309624 () List!39816)

(assert (=> b!3733548 (= e!2309624 e!2309625)))

(declare-fun c!646467 () Bool)

(assert (=> b!3733548 (= c!646467 ((_ is ElementMatch!10935) (derivativeStep!3370 (regOne!22382 r!26968) c!13797)))))

(declare-fun b!3733549 () Bool)

(assert (=> b!3733549 (= e!2309624 Nil!39692)))

(declare-fun b!3733550 () Bool)

(assert (=> b!3733550 (= e!2309623 call!273077)))

(declare-fun b!3733551 () Bool)

(declare-fun c!646468 () Bool)

(assert (=> b!3733551 (= c!646468 ((_ is Star!10935) (derivativeStep!3370 (regOne!22382 r!26968) c!13797)))))

(assert (=> b!3733551 (= e!2309625 e!2309622)))

(declare-fun d!1091009 () Bool)

(declare-fun c!646466 () Bool)

(assert (=> d!1091009 (= c!646466 (or ((_ is EmptyExpr!10935) (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) ((_ is EmptyLang!10935) (derivativeStep!3370 (regOne!22382 r!26968) c!13797))))))

(assert (=> d!1091009 (= (usedCharacters!1198 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) e!2309624)))

(declare-fun bm!273071 () Bool)

(assert (=> bm!273071 (= call!273076 (usedCharacters!1198 (ite c!646468 (reg!11264 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (ite c!646469 (regTwo!22383 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (regOne!22382 (derivativeStep!3370 (regOne!22382 r!26968) c!13797))))))))

(assert (= (and d!1091009 c!646466) b!3733549))

(assert (= (and d!1091009 (not c!646466)) b!3733548))

(assert (= (and b!3733548 c!646467) b!3733547))

(assert (= (and b!3733548 (not c!646467)) b!3733551))

(assert (= (and b!3733551 c!646468) b!3733544))

(assert (= (and b!3733551 (not c!646468)) b!3733545))

(assert (= (and b!3733545 c!646469) b!3733546))

(assert (= (and b!3733545 (not c!646469)) b!3733550))

(assert (= (or b!3733546 b!3733550) bm!273070))

(assert (= (or b!3733546 b!3733550) bm!273069))

(assert (= (or b!3733546 b!3733550) bm!273072))

(assert (= (or b!3733544 bm!273069) bm!273071))

(declare-fun m!4231539 () Bool)

(assert (=> bm!273070 m!4231539))

(declare-fun m!4231541 () Bool)

(assert (=> bm!273072 m!4231541))

(declare-fun m!4231543 () Bool)

(assert (=> bm!273071 m!4231543))

(assert (=> b!3733381 d!1091009))

(declare-fun b!3733552 () Bool)

(declare-fun e!2309632 () Bool)

(declare-fun call!273080 () Bool)

(assert (=> b!3733552 (= e!2309632 call!273080)))

(declare-fun d!1091011 () Bool)

(declare-fun res!1515316 () Bool)

(declare-fun e!2309630 () Bool)

(assert (=> d!1091011 (=> res!1515316 e!2309630)))

(assert (=> d!1091011 (= res!1515316 ((_ is ElementMatch!10935) (regTwo!22382 r!26968)))))

(assert (=> d!1091011 (= (validRegex!5042 (regTwo!22382 r!26968)) e!2309630)))

(declare-fun b!3733553 () Bool)

(declare-fun e!2309629 () Bool)

(declare-fun call!273079 () Bool)

(assert (=> b!3733553 (= e!2309629 call!273079)))

(declare-fun b!3733554 () Bool)

(declare-fun e!2309626 () Bool)

(assert (=> b!3733554 (= e!2309630 e!2309626)))

(declare-fun c!646471 () Bool)

(assert (=> b!3733554 (= c!646471 ((_ is Star!10935) (regTwo!22382 r!26968)))))

(declare-fun b!3733555 () Bool)

(assert (=> b!3733555 (= e!2309626 e!2309632)))

(declare-fun res!1515315 () Bool)

(assert (=> b!3733555 (= res!1515315 (not (nullable!3843 (reg!11264 (regTwo!22382 r!26968)))))))

(assert (=> b!3733555 (=> (not res!1515315) (not e!2309632))))

(declare-fun b!3733556 () Bool)

(declare-fun res!1515317 () Bool)

(declare-fun e!2309631 () Bool)

(assert (=> b!3733556 (=> (not res!1515317) (not e!2309631))))

(declare-fun call!273078 () Bool)

(assert (=> b!3733556 (= res!1515317 call!273078)))

(declare-fun e!2309627 () Bool)

(assert (=> b!3733556 (= e!2309627 e!2309631)))

(declare-fun b!3733557 () Bool)

(assert (=> b!3733557 (= e!2309626 e!2309627)))

(declare-fun c!646470 () Bool)

(assert (=> b!3733557 (= c!646470 ((_ is Union!10935) (regTwo!22382 r!26968)))))

(declare-fun b!3733558 () Bool)

(declare-fun e!2309628 () Bool)

(assert (=> b!3733558 (= e!2309628 e!2309629)))

(declare-fun res!1515314 () Bool)

(assert (=> b!3733558 (=> (not res!1515314) (not e!2309629))))

(assert (=> b!3733558 (= res!1515314 call!273078)))

(declare-fun b!3733559 () Bool)

(assert (=> b!3733559 (= e!2309631 call!273079)))

(declare-fun bm!273073 () Bool)

(assert (=> bm!273073 (= call!273079 call!273080)))

(declare-fun bm!273074 () Bool)

(assert (=> bm!273074 (= call!273078 (validRegex!5042 (ite c!646470 (regOne!22383 (regTwo!22382 r!26968)) (regOne!22382 (regTwo!22382 r!26968)))))))

(declare-fun b!3733560 () Bool)

(declare-fun res!1515318 () Bool)

(assert (=> b!3733560 (=> res!1515318 e!2309628)))

(assert (=> b!3733560 (= res!1515318 (not ((_ is Concat!17206) (regTwo!22382 r!26968))))))

(assert (=> b!3733560 (= e!2309627 e!2309628)))

(declare-fun bm!273075 () Bool)

(assert (=> bm!273075 (= call!273080 (validRegex!5042 (ite c!646471 (reg!11264 (regTwo!22382 r!26968)) (ite c!646470 (regTwo!22383 (regTwo!22382 r!26968)) (regTwo!22382 (regTwo!22382 r!26968))))))))

(assert (= (and d!1091011 (not res!1515316)) b!3733554))

(assert (= (and b!3733554 c!646471) b!3733555))

(assert (= (and b!3733554 (not c!646471)) b!3733557))

(assert (= (and b!3733555 res!1515315) b!3733552))

(assert (= (and b!3733557 c!646470) b!3733556))

(assert (= (and b!3733557 (not c!646470)) b!3733560))

(assert (= (and b!3733556 res!1515317) b!3733559))

(assert (= (and b!3733560 (not res!1515318)) b!3733558))

(assert (= (and b!3733558 res!1515314) b!3733553))

(assert (= (or b!3733559 b!3733553) bm!273073))

(assert (= (or b!3733556 b!3733558) bm!273074))

(assert (= (or b!3733552 bm!273073) bm!273075))

(declare-fun m!4231545 () Bool)

(assert (=> b!3733555 m!4231545))

(declare-fun m!4231547 () Bool)

(assert (=> bm!273074 m!4231547))

(declare-fun m!4231549 () Bool)

(assert (=> bm!273075 m!4231549))

(assert (=> b!3733381 d!1091011))

(declare-fun d!1091013 () Bool)

(assert (=> d!1091013 (not (contains!8028 (usedCharacters!1198 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) cNot!42))))

(declare-fun lt!1298813 () Unit!57596)

(declare-fun choose!22236 (Regex!10935 C!22056 C!22056) Unit!57596)

(assert (=> d!1091013 (= lt!1298813 (choose!22236 (regOne!22382 r!26968) c!13797 cNot!42))))

(assert (=> d!1091013 (= (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!54 (regOne!22382 r!26968) c!13797 cNot!42) lt!1298813)))

(declare-fun bs!575127 () Bool)

(assert (= bs!575127 d!1091013))

(assert (=> bs!575127 m!4231473))

(assert (=> bs!575127 m!4231473))

(assert (=> bs!575127 m!4231469))

(assert (=> bs!575127 m!4231469))

(assert (=> bs!575127 m!4231471))

(declare-fun m!4231551 () Bool)

(assert (=> bs!575127 m!4231551))

(assert (=> b!3733381 d!1091013))

(declare-fun d!1091015 () Bool)

(declare-fun lt!1298814 () Bool)

(assert (=> d!1091015 (= lt!1298814 (select (content!5791 (usedCharacters!1198 (derivativeStep!3370 (regOne!22382 r!26968) c!13797))) cNot!42))))

(declare-fun e!2309647 () Bool)

(assert (=> d!1091015 (= lt!1298814 e!2309647)))

(declare-fun res!1515329 () Bool)

(assert (=> d!1091015 (=> (not res!1515329) (not e!2309647))))

(assert (=> d!1091015 (= res!1515329 ((_ is Cons!39692) (usedCharacters!1198 (derivativeStep!3370 (regOne!22382 r!26968) c!13797))))))

(assert (=> d!1091015 (= (contains!8028 (usedCharacters!1198 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) cNot!42) lt!1298814)))

(declare-fun b!3733579 () Bool)

(declare-fun e!2309648 () Bool)

(assert (=> b!3733579 (= e!2309647 e!2309648)))

(declare-fun res!1515330 () Bool)

(assert (=> b!3733579 (=> res!1515330 e!2309648)))

(assert (=> b!3733579 (= res!1515330 (= (h!45112 (usedCharacters!1198 (derivativeStep!3370 (regOne!22382 r!26968) c!13797))) cNot!42))))

(declare-fun b!3733580 () Bool)

(assert (=> b!3733580 (= e!2309648 (contains!8028 (t!302499 (usedCharacters!1198 (derivativeStep!3370 (regOne!22382 r!26968) c!13797))) cNot!42))))

(assert (= (and d!1091015 res!1515329) b!3733579))

(assert (= (and b!3733579 (not res!1515330)) b!3733580))

(assert (=> d!1091015 m!4231469))

(declare-fun m!4231553 () Bool)

(assert (=> d!1091015 m!4231553))

(declare-fun m!4231555 () Bool)

(assert (=> d!1091015 m!4231555))

(declare-fun m!4231557 () Bool)

(assert (=> b!3733580 m!4231557))

(assert (=> b!3733381 d!1091015))

(declare-fun b!3733610 () Bool)

(declare-fun e!2309669 () Int)

(declare-fun call!273098 () Int)

(assert (=> b!3733610 (= e!2309669 (+ 1 call!273098))))

(declare-fun bm!273091 () Bool)

(declare-fun call!273097 () Int)

(declare-fun c!646494 () Bool)

(declare-fun c!646490 () Bool)

(assert (=> bm!273091 (= call!273097 (RegexPrimitiveSize!147 (ite c!646494 (regOne!22382 (regTwo!22382 r!26968)) (ite c!646490 (reg!11264 (regTwo!22382 r!26968)) (regOne!22383 (regTwo!22382 r!26968))))))))

(declare-fun bm!273092 () Bool)

(assert (=> bm!273092 (= call!273098 call!273097)))

(declare-fun b!3733611 () Bool)

(declare-fun e!2309668 () Int)

(declare-fun e!2309670 () Int)

(assert (=> b!3733611 (= e!2309668 e!2309670)))

(assert (=> b!3733611 (= c!646494 ((_ is Concat!17206) (regTwo!22382 r!26968)))))

(declare-fun b!3733612 () Bool)

(declare-fun c!646491 () Bool)

(assert (=> b!3733612 (= c!646491 ((_ is EmptyLang!10935) (regTwo!22382 r!26968)))))

(declare-fun e!2309667 () Int)

(assert (=> b!3733612 (= e!2309669 e!2309667)))

(declare-fun b!3733613 () Bool)

(declare-fun call!273096 () Int)

(assert (=> b!3733613 (= e!2309670 (+ 1 call!273097 call!273096))))

(declare-fun b!3733614 () Bool)

(declare-fun c!646492 () Bool)

(assert (=> b!3733614 (= c!646492 ((_ is EmptyExpr!10935) (regTwo!22382 r!26968)))))

(declare-fun e!2309666 () Int)

(assert (=> b!3733614 (= e!2309670 e!2309666)))

(declare-fun b!3733615 () Bool)

(assert (=> b!3733615 (= e!2309666 e!2309669)))

(assert (=> b!3733615 (= c!646490 ((_ is Star!10935) (regTwo!22382 r!26968)))))

(declare-fun b!3733617 () Bool)

(assert (=> b!3733617 (= e!2309668 1)))

(declare-fun b!3733618 () Bool)

(assert (=> b!3733618 (= e!2309667 0)))

(declare-fun bm!273093 () Bool)

(assert (=> bm!273093 (= call!273096 (RegexPrimitiveSize!147 (ite c!646494 (regTwo!22382 (regTwo!22382 r!26968)) (regTwo!22383 (regTwo!22382 r!26968)))))))

(declare-fun b!3733619 () Bool)

(assert (=> b!3733619 (= e!2309666 0)))

(declare-fun b!3733616 () Bool)

(assert (=> b!3733616 (= e!2309667 (+ 1 call!273098 call!273096))))

(declare-fun d!1091017 () Bool)

(declare-fun lt!1298820 () Int)

(assert (=> d!1091017 (>= lt!1298820 0)))

(assert (=> d!1091017 (= lt!1298820 e!2309668)))

(declare-fun c!646493 () Bool)

(assert (=> d!1091017 (= c!646493 ((_ is ElementMatch!10935) (regTwo!22382 r!26968)))))

(assert (=> d!1091017 (= (RegexPrimitiveSize!147 (regTwo!22382 r!26968)) lt!1298820)))

(assert (= (and d!1091017 c!646493) b!3733617))

(assert (= (and d!1091017 (not c!646493)) b!3733611))

(assert (= (and b!3733611 c!646494) b!3733613))

(assert (= (and b!3733611 (not c!646494)) b!3733614))

(assert (= (and b!3733614 c!646492) b!3733619))

(assert (= (and b!3733614 (not c!646492)) b!3733615))

(assert (= (and b!3733615 c!646490) b!3733610))

(assert (= (and b!3733615 (not c!646490)) b!3733612))

(assert (= (and b!3733612 c!646491) b!3733618))

(assert (= (and b!3733612 (not c!646491)) b!3733616))

(assert (= (or b!3733610 b!3733616) bm!273092))

(assert (= (or b!3733613 bm!273092) bm!273091))

(assert (= (or b!3733613 b!3733616) bm!273093))

(declare-fun m!4231573 () Bool)

(assert (=> bm!273091 m!4231573))

(declare-fun m!4231575 () Bool)

(assert (=> bm!273093 m!4231575))

(assert (=> b!3733386 d!1091017))

(declare-fun b!3733624 () Bool)

(declare-fun e!2309678 () Int)

(declare-fun call!273101 () Int)

(assert (=> b!3733624 (= e!2309678 (+ 1 call!273101))))

(declare-fun c!646499 () Bool)

(declare-fun c!646495 () Bool)

(declare-fun bm!273094 () Bool)

(declare-fun call!273100 () Int)

(assert (=> bm!273094 (= call!273100 (RegexPrimitiveSize!147 (ite c!646499 (regOne!22382 r!26968) (ite c!646495 (reg!11264 r!26968) (regOne!22383 r!26968)))))))

(declare-fun bm!273095 () Bool)

(assert (=> bm!273095 (= call!273101 call!273100)))

(declare-fun b!3733625 () Bool)

(declare-fun e!2309677 () Int)

(declare-fun e!2309679 () Int)

(assert (=> b!3733625 (= e!2309677 e!2309679)))

(assert (=> b!3733625 (= c!646499 ((_ is Concat!17206) r!26968))))

(declare-fun b!3733626 () Bool)

(declare-fun c!646496 () Bool)

(assert (=> b!3733626 (= c!646496 ((_ is EmptyLang!10935) r!26968))))

(declare-fun e!2309676 () Int)

(assert (=> b!3733626 (= e!2309678 e!2309676)))

(declare-fun b!3733627 () Bool)

(declare-fun call!273099 () Int)

(assert (=> b!3733627 (= e!2309679 (+ 1 call!273100 call!273099))))

(declare-fun b!3733628 () Bool)

(declare-fun c!646497 () Bool)

(assert (=> b!3733628 (= c!646497 ((_ is EmptyExpr!10935) r!26968))))

(declare-fun e!2309675 () Int)

(assert (=> b!3733628 (= e!2309679 e!2309675)))

(declare-fun b!3733629 () Bool)

(assert (=> b!3733629 (= e!2309675 e!2309678)))

(assert (=> b!3733629 (= c!646495 ((_ is Star!10935) r!26968))))

(declare-fun b!3733631 () Bool)

(assert (=> b!3733631 (= e!2309677 1)))

(declare-fun b!3733632 () Bool)

(assert (=> b!3733632 (= e!2309676 0)))

(declare-fun bm!273096 () Bool)

(assert (=> bm!273096 (= call!273099 (RegexPrimitiveSize!147 (ite c!646499 (regTwo!22382 r!26968) (regTwo!22383 r!26968))))))

(declare-fun b!3733633 () Bool)

(assert (=> b!3733633 (= e!2309675 0)))

(declare-fun b!3733630 () Bool)

(assert (=> b!3733630 (= e!2309676 (+ 1 call!273101 call!273099))))

(declare-fun d!1091025 () Bool)

(declare-fun lt!1298823 () Int)

(assert (=> d!1091025 (>= lt!1298823 0)))

(assert (=> d!1091025 (= lt!1298823 e!2309677)))

(declare-fun c!646498 () Bool)

(assert (=> d!1091025 (= c!646498 ((_ is ElementMatch!10935) r!26968))))

(assert (=> d!1091025 (= (RegexPrimitiveSize!147 r!26968) lt!1298823)))

(assert (= (and d!1091025 c!646498) b!3733631))

(assert (= (and d!1091025 (not c!646498)) b!3733625))

(assert (= (and b!3733625 c!646499) b!3733627))

(assert (= (and b!3733625 (not c!646499)) b!3733628))

(assert (= (and b!3733628 c!646497) b!3733633))

(assert (= (and b!3733628 (not c!646497)) b!3733629))

(assert (= (and b!3733629 c!646495) b!3733624))

(assert (= (and b!3733629 (not c!646495)) b!3733626))

(assert (= (and b!3733626 c!646496) b!3733632))

(assert (= (and b!3733626 (not c!646496)) b!3733630))

(assert (= (or b!3733624 b!3733630) bm!273095))

(assert (= (or b!3733627 bm!273095) bm!273094))

(assert (= (or b!3733627 b!3733630) bm!273096))

(declare-fun m!4231583 () Bool)

(assert (=> bm!273094 m!4231583))

(declare-fun m!4231585 () Bool)

(assert (=> bm!273096 m!4231585))

(assert (=> b!3733386 d!1091025))

(declare-fun d!1091029 () Bool)

(declare-fun lt!1298824 () Bool)

(assert (=> d!1091029 (= lt!1298824 (select (content!5791 (usedCharacters!1198 (regTwo!22382 r!26968))) cNot!42))))

(declare-fun e!2309684 () Bool)

(assert (=> d!1091029 (= lt!1298824 e!2309684)))

(declare-fun res!1515340 () Bool)

(assert (=> d!1091029 (=> (not res!1515340) (not e!2309684))))

(assert (=> d!1091029 (= res!1515340 ((_ is Cons!39692) (usedCharacters!1198 (regTwo!22382 r!26968))))))

(assert (=> d!1091029 (= (contains!8028 (usedCharacters!1198 (regTwo!22382 r!26968)) cNot!42) lt!1298824)))

(declare-fun b!3733642 () Bool)

(declare-fun e!2309685 () Bool)

(assert (=> b!3733642 (= e!2309684 e!2309685)))

(declare-fun res!1515341 () Bool)

(assert (=> b!3733642 (=> res!1515341 e!2309685)))

(assert (=> b!3733642 (= res!1515341 (= (h!45112 (usedCharacters!1198 (regTwo!22382 r!26968))) cNot!42))))

(declare-fun b!3733643 () Bool)

(assert (=> b!3733643 (= e!2309685 (contains!8028 (t!302499 (usedCharacters!1198 (regTwo!22382 r!26968))) cNot!42))))

(assert (= (and d!1091029 res!1515340) b!3733642))

(assert (= (and b!3733642 (not res!1515341)) b!3733643))

(assert (=> d!1091029 m!4231477))

(declare-fun m!4231593 () Bool)

(assert (=> d!1091029 m!4231593))

(declare-fun m!4231595 () Bool)

(assert (=> d!1091029 m!4231595))

(declare-fun m!4231597 () Bool)

(assert (=> b!3733643 m!4231597))

(assert (=> b!3733379 d!1091029))

(declare-fun b!3733644 () Bool)

(declare-fun e!2309686 () List!39816)

(declare-fun call!273108 () List!39816)

(assert (=> b!3733644 (= e!2309686 call!273108)))

(declare-fun bm!273101 () Bool)

(declare-fun call!273107 () List!39816)

(assert (=> bm!273101 (= call!273107 call!273108)))

(declare-fun b!3733645 () Bool)

(declare-fun e!2309687 () List!39816)

(assert (=> b!3733645 (= e!2309686 e!2309687)))

(declare-fun c!646507 () Bool)

(assert (=> b!3733645 (= c!646507 ((_ is Union!10935) (regTwo!22382 r!26968)))))

(declare-fun bm!273102 () Bool)

(declare-fun call!273106 () List!39816)

(assert (=> bm!273102 (= call!273106 (usedCharacters!1198 (ite c!646507 (regOne!22383 (regTwo!22382 r!26968)) (regTwo!22382 (regTwo!22382 r!26968)))))))

(declare-fun b!3733646 () Bool)

(declare-fun call!273109 () List!39816)

(assert (=> b!3733646 (= e!2309687 call!273109)))

(declare-fun b!3733647 () Bool)

(declare-fun e!2309689 () List!39816)

(assert (=> b!3733647 (= e!2309689 (Cons!39692 (c!646401 (regTwo!22382 r!26968)) Nil!39692))))

(declare-fun bm!273104 () Bool)

(assert (=> bm!273104 (= call!273109 (++!9858 (ite c!646507 call!273106 call!273107) (ite c!646507 call!273107 call!273106)))))

(declare-fun b!3733648 () Bool)

(declare-fun e!2309688 () List!39816)

(assert (=> b!3733648 (= e!2309688 e!2309689)))

(declare-fun c!646505 () Bool)

(assert (=> b!3733648 (= c!646505 ((_ is ElementMatch!10935) (regTwo!22382 r!26968)))))

(declare-fun b!3733649 () Bool)

(assert (=> b!3733649 (= e!2309688 Nil!39692)))

(declare-fun b!3733650 () Bool)

(assert (=> b!3733650 (= e!2309687 call!273109)))

(declare-fun b!3733651 () Bool)

(declare-fun c!646506 () Bool)

(assert (=> b!3733651 (= c!646506 ((_ is Star!10935) (regTwo!22382 r!26968)))))

(assert (=> b!3733651 (= e!2309689 e!2309686)))

(declare-fun d!1091033 () Bool)

(declare-fun c!646504 () Bool)

(assert (=> d!1091033 (= c!646504 (or ((_ is EmptyExpr!10935) (regTwo!22382 r!26968)) ((_ is EmptyLang!10935) (regTwo!22382 r!26968))))))

(assert (=> d!1091033 (= (usedCharacters!1198 (regTwo!22382 r!26968)) e!2309688)))

(declare-fun bm!273103 () Bool)

(assert (=> bm!273103 (= call!273108 (usedCharacters!1198 (ite c!646506 (reg!11264 (regTwo!22382 r!26968)) (ite c!646507 (regTwo!22383 (regTwo!22382 r!26968)) (regOne!22382 (regTwo!22382 r!26968))))))))

(assert (= (and d!1091033 c!646504) b!3733649))

(assert (= (and d!1091033 (not c!646504)) b!3733648))

(assert (= (and b!3733648 c!646505) b!3733647))

(assert (= (and b!3733648 (not c!646505)) b!3733651))

(assert (= (and b!3733651 c!646506) b!3733644))

(assert (= (and b!3733651 (not c!646506)) b!3733645))

(assert (= (and b!3733645 c!646507) b!3733646))

(assert (= (and b!3733645 (not c!646507)) b!3733650))

(assert (= (or b!3733646 b!3733650) bm!273102))

(assert (= (or b!3733646 b!3733650) bm!273101))

(assert (= (or b!3733646 b!3733650) bm!273104))

(assert (= (or b!3733644 bm!273101) bm!273103))

(declare-fun m!4231599 () Bool)

(assert (=> bm!273102 m!4231599))

(declare-fun m!4231601 () Bool)

(assert (=> bm!273104 m!4231601))

(declare-fun m!4231603 () Bool)

(assert (=> bm!273103 m!4231603))

(assert (=> b!3733379 d!1091033))

(declare-fun d!1091035 () Bool)

(declare-fun nullableFct!1096 (Regex!10935) Bool)

(assert (=> d!1091035 (= (nullable!3843 (regOne!22382 r!26968)) (nullableFct!1096 (regOne!22382 r!26968)))))

(declare-fun bs!575129 () Bool)

(assert (= bs!575129 d!1091035))

(declare-fun m!4231605 () Bool)

(assert (=> bs!575129 m!4231605))

(assert (=> b!3733384 d!1091035))

(declare-fun b!3733683 () Bool)

(declare-fun e!2309702 () Bool)

(declare-fun tp!1136398 () Bool)

(declare-fun tp!1136395 () Bool)

(assert (=> b!3733683 (= e!2309702 (and tp!1136398 tp!1136395))))

(declare-fun b!3733684 () Bool)

(declare-fun tp!1136397 () Bool)

(assert (=> b!3733684 (= e!2309702 tp!1136397)))

(assert (=> b!3733387 (= tp!1136384 e!2309702)))

(declare-fun b!3733682 () Bool)

(assert (=> b!3733682 (= e!2309702 tp_is_empty!18885)))

(declare-fun b!3733685 () Bool)

(declare-fun tp!1136396 () Bool)

(declare-fun tp!1136399 () Bool)

(assert (=> b!3733685 (= e!2309702 (and tp!1136396 tp!1136399))))

(assert (= (and b!3733387 ((_ is ElementMatch!10935) (reg!11264 r!26968))) b!3733682))

(assert (= (and b!3733387 ((_ is Concat!17206) (reg!11264 r!26968))) b!3733683))

(assert (= (and b!3733387 ((_ is Star!10935) (reg!11264 r!26968))) b!3733684))

(assert (= (and b!3733387 ((_ is Union!10935) (reg!11264 r!26968))) b!3733685))

(declare-fun b!3733687 () Bool)

(declare-fun e!2309703 () Bool)

(declare-fun tp!1136403 () Bool)

(declare-fun tp!1136400 () Bool)

(assert (=> b!3733687 (= e!2309703 (and tp!1136403 tp!1136400))))

(declare-fun b!3733688 () Bool)

(declare-fun tp!1136402 () Bool)

(assert (=> b!3733688 (= e!2309703 tp!1136402)))

(assert (=> b!3733382 (= tp!1136381 e!2309703)))

(declare-fun b!3733686 () Bool)

(assert (=> b!3733686 (= e!2309703 tp_is_empty!18885)))

(declare-fun b!3733689 () Bool)

(declare-fun tp!1136401 () Bool)

(declare-fun tp!1136404 () Bool)

(assert (=> b!3733689 (= e!2309703 (and tp!1136401 tp!1136404))))

(assert (= (and b!3733382 ((_ is ElementMatch!10935) (regOne!22382 r!26968))) b!3733686))

(assert (= (and b!3733382 ((_ is Concat!17206) (regOne!22382 r!26968))) b!3733687))

(assert (= (and b!3733382 ((_ is Star!10935) (regOne!22382 r!26968))) b!3733688))

(assert (= (and b!3733382 ((_ is Union!10935) (regOne!22382 r!26968))) b!3733689))

(declare-fun b!3733691 () Bool)

(declare-fun e!2309704 () Bool)

(declare-fun tp!1136408 () Bool)

(declare-fun tp!1136405 () Bool)

(assert (=> b!3733691 (= e!2309704 (and tp!1136408 tp!1136405))))

(declare-fun b!3733692 () Bool)

(declare-fun tp!1136407 () Bool)

(assert (=> b!3733692 (= e!2309704 tp!1136407)))

(assert (=> b!3733382 (= tp!1136383 e!2309704)))

(declare-fun b!3733690 () Bool)

(assert (=> b!3733690 (= e!2309704 tp_is_empty!18885)))

(declare-fun b!3733693 () Bool)

(declare-fun tp!1136406 () Bool)

(declare-fun tp!1136409 () Bool)

(assert (=> b!3733693 (= e!2309704 (and tp!1136406 tp!1136409))))

(assert (= (and b!3733382 ((_ is ElementMatch!10935) (regTwo!22382 r!26968))) b!3733690))

(assert (= (and b!3733382 ((_ is Concat!17206) (regTwo!22382 r!26968))) b!3733691))

(assert (= (and b!3733382 ((_ is Star!10935) (regTwo!22382 r!26968))) b!3733692))

(assert (= (and b!3733382 ((_ is Union!10935) (regTwo!22382 r!26968))) b!3733693))

(declare-fun b!3733695 () Bool)

(declare-fun e!2309705 () Bool)

(declare-fun tp!1136413 () Bool)

(declare-fun tp!1136410 () Bool)

(assert (=> b!3733695 (= e!2309705 (and tp!1136413 tp!1136410))))

(declare-fun b!3733696 () Bool)

(declare-fun tp!1136412 () Bool)

(assert (=> b!3733696 (= e!2309705 tp!1136412)))

(assert (=> b!3733383 (= tp!1136380 e!2309705)))

(declare-fun b!3733694 () Bool)

(assert (=> b!3733694 (= e!2309705 tp_is_empty!18885)))

(declare-fun b!3733697 () Bool)

(declare-fun tp!1136411 () Bool)

(declare-fun tp!1136414 () Bool)

(assert (=> b!3733697 (= e!2309705 (and tp!1136411 tp!1136414))))

(assert (= (and b!3733383 ((_ is ElementMatch!10935) (regOne!22383 r!26968))) b!3733694))

(assert (= (and b!3733383 ((_ is Concat!17206) (regOne!22383 r!26968))) b!3733695))

(assert (= (and b!3733383 ((_ is Star!10935) (regOne!22383 r!26968))) b!3733696))

(assert (= (and b!3733383 ((_ is Union!10935) (regOne!22383 r!26968))) b!3733697))

(declare-fun b!3733699 () Bool)

(declare-fun e!2309706 () Bool)

(declare-fun tp!1136418 () Bool)

(declare-fun tp!1136415 () Bool)

(assert (=> b!3733699 (= e!2309706 (and tp!1136418 tp!1136415))))

(declare-fun b!3733700 () Bool)

(declare-fun tp!1136417 () Bool)

(assert (=> b!3733700 (= e!2309706 tp!1136417)))

(assert (=> b!3733383 (= tp!1136382 e!2309706)))

(declare-fun b!3733698 () Bool)

(assert (=> b!3733698 (= e!2309706 tp_is_empty!18885)))

(declare-fun b!3733701 () Bool)

(declare-fun tp!1136416 () Bool)

(declare-fun tp!1136419 () Bool)

(assert (=> b!3733701 (= e!2309706 (and tp!1136416 tp!1136419))))

(assert (= (and b!3733383 ((_ is ElementMatch!10935) (regTwo!22383 r!26968))) b!3733698))

(assert (= (and b!3733383 ((_ is Concat!17206) (regTwo!22383 r!26968))) b!3733699))

(assert (= (and b!3733383 ((_ is Star!10935) (regTwo!22383 r!26968))) b!3733700))

(assert (= (and b!3733383 ((_ is Union!10935) (regTwo!22383 r!26968))) b!3733701))

(check-sat (not b!3733692) (not b!3733693) (not b!3733701) (not bm!273103) (not b!3733537) (not d!1091003) (not b!3733697) (not b!3733696) (not bm!273070) (not b!3733643) (not bm!273075) (not d!1091013) (not d!1090995) (not b!3733685) (not d!1091035) (not d!1091029) (not bm!273074) (not bm!273094) (not b!3733443) (not b!3733695) (not bm!273038) (not bm!273072) (not bm!273096) (not b!3733689) (not bm!273102) (not bm!273066) (not b!3733699) (not b!3733688) (not bm!273071) (not b!3733684) (not bm!273091) (not bm!273039) (not b!3733687) (not d!1091015) (not b!3733555) (not b!3733691) (not bm!273015) (not b!3733416) (not b!3733683) tp_is_empty!18885 (not bm!273093) (not bm!273016) (not bm!273104) (not bm!273040) (not b!3733580) (not b!3733700) (not bm!273068))
(check-sat)
(get-model)

(declare-fun bm!273124 () Bool)

(declare-fun call!273130 () Bool)

(declare-fun c!646532 () Bool)

(assert (=> bm!273124 (= call!273130 (nullable!3843 (ite c!646532 (regOne!22383 (regOne!22382 r!26968)) (regTwo!22382 (regOne!22382 r!26968)))))))

(declare-fun b!3733775 () Bool)

(declare-fun e!2309745 () Bool)

(declare-fun e!2309743 () Bool)

(assert (=> b!3733775 (= e!2309745 e!2309743)))

(declare-fun res!1515359 () Bool)

(declare-fun call!273129 () Bool)

(assert (=> b!3733775 (= res!1515359 call!273129)))

(assert (=> b!3733775 (=> (not res!1515359) (not e!2309743))))

(declare-fun b!3733776 () Bool)

(declare-fun e!2309747 () Bool)

(assert (=> b!3733776 (= e!2309745 e!2309747)))

(declare-fun res!1515361 () Bool)

(assert (=> b!3733776 (= res!1515361 call!273130)))

(assert (=> b!3733776 (=> res!1515361 e!2309747)))

(declare-fun b!3733777 () Bool)

(declare-fun e!2309746 () Bool)

(declare-fun e!2309748 () Bool)

(assert (=> b!3733777 (= e!2309746 e!2309748)))

(declare-fun res!1515360 () Bool)

(assert (=> b!3733777 (=> (not res!1515360) (not e!2309748))))

(assert (=> b!3733777 (= res!1515360 (and (not ((_ is EmptyLang!10935) (regOne!22382 r!26968))) (not ((_ is ElementMatch!10935) (regOne!22382 r!26968)))))))

(declare-fun d!1091041 () Bool)

(declare-fun res!1515358 () Bool)

(assert (=> d!1091041 (=> res!1515358 e!2309746)))

(assert (=> d!1091041 (= res!1515358 ((_ is EmptyExpr!10935) (regOne!22382 r!26968)))))

(assert (=> d!1091041 (= (nullableFct!1096 (regOne!22382 r!26968)) e!2309746)))

(declare-fun b!3733778 () Bool)

(declare-fun e!2309744 () Bool)

(assert (=> b!3733778 (= e!2309748 e!2309744)))

(declare-fun res!1515357 () Bool)

(assert (=> b!3733778 (=> res!1515357 e!2309744)))

(assert (=> b!3733778 (= res!1515357 ((_ is Star!10935) (regOne!22382 r!26968)))))

(declare-fun b!3733779 () Bool)

(assert (=> b!3733779 (= e!2309747 call!273129)))

(declare-fun b!3733780 () Bool)

(assert (=> b!3733780 (= e!2309743 call!273130)))

(declare-fun bm!273125 () Bool)

(assert (=> bm!273125 (= call!273129 (nullable!3843 (ite c!646532 (regTwo!22383 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968)))))))

(declare-fun b!3733781 () Bool)

(assert (=> b!3733781 (= e!2309744 e!2309745)))

(assert (=> b!3733781 (= c!646532 ((_ is Union!10935) (regOne!22382 r!26968)))))

(assert (= (and d!1091041 (not res!1515358)) b!3733777))

(assert (= (and b!3733777 res!1515360) b!3733778))

(assert (= (and b!3733778 (not res!1515357)) b!3733781))

(assert (= (and b!3733781 c!646532) b!3733776))

(assert (= (and b!3733781 (not c!646532)) b!3733775))

(assert (= (and b!3733776 (not res!1515361)) b!3733779))

(assert (= (and b!3733775 res!1515359) b!3733780))

(assert (= (or b!3733779 b!3733775) bm!273125))

(assert (= (or b!3733776 b!3733780) bm!273124))

(declare-fun m!4231621 () Bool)

(assert (=> bm!273124 m!4231621))

(declare-fun m!4231623 () Bool)

(assert (=> bm!273125 m!4231623))

(assert (=> d!1091035 d!1091041))

(declare-fun d!1091043 () Bool)

(assert (=> d!1091043 (= (nullable!3843 (regOne!22382 (regOne!22382 r!26968))) (nullableFct!1096 (regOne!22382 (regOne!22382 r!26968))))))

(declare-fun bs!575130 () Bool)

(assert (= bs!575130 d!1091043))

(declare-fun m!4231625 () Bool)

(assert (=> bs!575130 m!4231625))

(assert (=> b!3733537 d!1091043))

(declare-fun b!3733782 () Bool)

(declare-fun e!2309755 () Bool)

(declare-fun call!273133 () Bool)

(assert (=> b!3733782 (= e!2309755 call!273133)))

(declare-fun d!1091045 () Bool)

(declare-fun res!1515364 () Bool)

(declare-fun e!2309753 () Bool)

(assert (=> d!1091045 (=> res!1515364 e!2309753)))

(assert (=> d!1091045 (= res!1515364 ((_ is ElementMatch!10935) (ite c!646406 (regOne!22383 r!26968) (regOne!22382 r!26968))))))

(assert (=> d!1091045 (= (validRegex!5042 (ite c!646406 (regOne!22383 r!26968) (regOne!22382 r!26968))) e!2309753)))

(declare-fun b!3733783 () Bool)

(declare-fun e!2309752 () Bool)

(declare-fun call!273132 () Bool)

(assert (=> b!3733783 (= e!2309752 call!273132)))

(declare-fun b!3733784 () Bool)

(declare-fun e!2309749 () Bool)

(assert (=> b!3733784 (= e!2309753 e!2309749)))

(declare-fun c!646534 () Bool)

(assert (=> b!3733784 (= c!646534 ((_ is Star!10935) (ite c!646406 (regOne!22383 r!26968) (regOne!22382 r!26968))))))

(declare-fun b!3733785 () Bool)

(assert (=> b!3733785 (= e!2309749 e!2309755)))

(declare-fun res!1515363 () Bool)

(assert (=> b!3733785 (= res!1515363 (not (nullable!3843 (reg!11264 (ite c!646406 (regOne!22383 r!26968) (regOne!22382 r!26968))))))))

(assert (=> b!3733785 (=> (not res!1515363) (not e!2309755))))

(declare-fun b!3733786 () Bool)

(declare-fun res!1515365 () Bool)

(declare-fun e!2309754 () Bool)

(assert (=> b!3733786 (=> (not res!1515365) (not e!2309754))))

(declare-fun call!273131 () Bool)

(assert (=> b!3733786 (= res!1515365 call!273131)))

(declare-fun e!2309750 () Bool)

(assert (=> b!3733786 (= e!2309750 e!2309754)))

(declare-fun b!3733787 () Bool)

(assert (=> b!3733787 (= e!2309749 e!2309750)))

(declare-fun c!646533 () Bool)

(assert (=> b!3733787 (= c!646533 ((_ is Union!10935) (ite c!646406 (regOne!22383 r!26968) (regOne!22382 r!26968))))))

(declare-fun b!3733788 () Bool)

(declare-fun e!2309751 () Bool)

(assert (=> b!3733788 (= e!2309751 e!2309752)))

(declare-fun res!1515362 () Bool)

(assert (=> b!3733788 (=> (not res!1515362) (not e!2309752))))

(assert (=> b!3733788 (= res!1515362 call!273131)))

(declare-fun b!3733789 () Bool)

(assert (=> b!3733789 (= e!2309754 call!273132)))

(declare-fun bm!273126 () Bool)

(assert (=> bm!273126 (= call!273132 call!273133)))

(declare-fun bm!273127 () Bool)

(assert (=> bm!273127 (= call!273131 (validRegex!5042 (ite c!646533 (regOne!22383 (ite c!646406 (regOne!22383 r!26968) (regOne!22382 r!26968))) (regOne!22382 (ite c!646406 (regOne!22383 r!26968) (regOne!22382 r!26968))))))))

(declare-fun b!3733790 () Bool)

(declare-fun res!1515366 () Bool)

(assert (=> b!3733790 (=> res!1515366 e!2309751)))

(assert (=> b!3733790 (= res!1515366 (not ((_ is Concat!17206) (ite c!646406 (regOne!22383 r!26968) (regOne!22382 r!26968)))))))

(assert (=> b!3733790 (= e!2309750 e!2309751)))

(declare-fun bm!273128 () Bool)

(assert (=> bm!273128 (= call!273133 (validRegex!5042 (ite c!646534 (reg!11264 (ite c!646406 (regOne!22383 r!26968) (regOne!22382 r!26968))) (ite c!646533 (regTwo!22383 (ite c!646406 (regOne!22383 r!26968) (regOne!22382 r!26968))) (regTwo!22382 (ite c!646406 (regOne!22383 r!26968) (regOne!22382 r!26968)))))))))

(assert (= (and d!1091045 (not res!1515364)) b!3733784))

(assert (= (and b!3733784 c!646534) b!3733785))

(assert (= (and b!3733784 (not c!646534)) b!3733787))

(assert (= (and b!3733785 res!1515363) b!3733782))

(assert (= (and b!3733787 c!646533) b!3733786))

(assert (= (and b!3733787 (not c!646533)) b!3733790))

(assert (= (and b!3733786 res!1515365) b!3733789))

(assert (= (and b!3733790 (not res!1515366)) b!3733788))

(assert (= (and b!3733788 res!1515362) b!3733783))

(assert (= (or b!3733789 b!3733783) bm!273126))

(assert (= (or b!3733786 b!3733788) bm!273127))

(assert (= (or b!3733782 bm!273126) bm!273128))

(declare-fun m!4231627 () Bool)

(assert (=> b!3733785 m!4231627))

(declare-fun m!4231629 () Bool)

(assert (=> bm!273127 m!4231629))

(declare-fun m!4231631 () Bool)

(assert (=> bm!273128 m!4231631))

(assert (=> bm!273015 d!1091045))

(declare-fun b!3733791 () Bool)

(declare-fun e!2309757 () Regex!10935)

(declare-fun call!273137 () Regex!10935)

(declare-fun call!273134 () Regex!10935)

(assert (=> b!3733791 (= e!2309757 (Union!10935 call!273137 call!273134))))

(declare-fun bm!273129 () Bool)

(declare-fun call!273135 () Regex!10935)

(declare-fun call!273136 () Regex!10935)

(assert (=> bm!273129 (= call!273135 call!273136)))

(declare-fun e!2309760 () Regex!10935)

(declare-fun b!3733792 () Bool)

(assert (=> b!3733792 (= e!2309760 (Concat!17206 call!273136 (ite c!646465 (regOne!22383 (regOne!22382 r!26968)) (ite c!646464 (reg!11264 (regOne!22382 r!26968)) (ite c!646463 (regTwo!22382 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968)))))))))

(declare-fun e!2309758 () Regex!10935)

(declare-fun b!3733793 () Bool)

(assert (=> b!3733793 (= e!2309758 (Union!10935 (Concat!17206 call!273134 (regTwo!22382 (ite c!646465 (regOne!22383 (regOne!22382 r!26968)) (ite c!646464 (reg!11264 (regOne!22382 r!26968)) (ite c!646463 (regTwo!22382 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968))))))) call!273135))))

(declare-fun c!646537 () Bool)

(declare-fun b!3733794 () Bool)

(assert (=> b!3733794 (= c!646537 (nullable!3843 (regOne!22382 (ite c!646465 (regOne!22383 (regOne!22382 r!26968)) (ite c!646464 (reg!11264 (regOne!22382 r!26968)) (ite c!646463 (regTwo!22382 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968))))))))))

(assert (=> b!3733794 (= e!2309760 e!2309758)))

(declare-fun bm!273130 () Bool)

(declare-fun c!646539 () Bool)

(declare-fun c!646538 () Bool)

(assert (=> bm!273130 (= call!273137 (derivativeStep!3370 (ite c!646539 (regOne!22383 (ite c!646465 (regOne!22383 (regOne!22382 r!26968)) (ite c!646464 (reg!11264 (regOne!22382 r!26968)) (ite c!646463 (regTwo!22382 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968)))))) (ite c!646538 (reg!11264 (ite c!646465 (regOne!22383 (regOne!22382 r!26968)) (ite c!646464 (reg!11264 (regOne!22382 r!26968)) (ite c!646463 (regTwo!22382 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968)))))) (ite c!646537 (regTwo!22382 (ite c!646465 (regOne!22383 (regOne!22382 r!26968)) (ite c!646464 (reg!11264 (regOne!22382 r!26968)) (ite c!646463 (regTwo!22382 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968)))))) (regOne!22382 (ite c!646465 (regOne!22383 (regOne!22382 r!26968)) (ite c!646464 (reg!11264 (regOne!22382 r!26968)) (ite c!646463 (regTwo!22382 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968))))))))) c!13797))))

(declare-fun b!3733795 () Bool)

(assert (=> b!3733795 (= c!646539 ((_ is Union!10935) (ite c!646465 (regOne!22383 (regOne!22382 r!26968)) (ite c!646464 (reg!11264 (regOne!22382 r!26968)) (ite c!646463 (regTwo!22382 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968)))))))))

(declare-fun e!2309759 () Regex!10935)

(assert (=> b!3733795 (= e!2309759 e!2309757)))

(declare-fun b!3733796 () Bool)

(assert (=> b!3733796 (= e!2309759 (ite (= c!13797 (c!646401 (ite c!646465 (regOne!22383 (regOne!22382 r!26968)) (ite c!646464 (reg!11264 (regOne!22382 r!26968)) (ite c!646463 (regTwo!22382 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968))))))) EmptyExpr!10935 EmptyLang!10935))))

(declare-fun b!3733797 () Bool)

(assert (=> b!3733797 (= e!2309758 (Union!10935 (Concat!17206 call!273135 (regTwo!22382 (ite c!646465 (regOne!22383 (regOne!22382 r!26968)) (ite c!646464 (reg!11264 (regOne!22382 r!26968)) (ite c!646463 (regTwo!22382 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968))))))) EmptyLang!10935))))

(declare-fun b!3733798 () Bool)

(declare-fun e!2309756 () Regex!10935)

(assert (=> b!3733798 (= e!2309756 e!2309759)))

(declare-fun c!646535 () Bool)

(assert (=> b!3733798 (= c!646535 ((_ is ElementMatch!10935) (ite c!646465 (regOne!22383 (regOne!22382 r!26968)) (ite c!646464 (reg!11264 (regOne!22382 r!26968)) (ite c!646463 (regTwo!22382 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968)))))))))

(declare-fun bm!273131 () Bool)

(assert (=> bm!273131 (= call!273136 call!273137)))

(declare-fun b!3733799 () Bool)

(assert (=> b!3733799 (= e!2309757 e!2309760)))

(assert (=> b!3733799 (= c!646538 ((_ is Star!10935) (ite c!646465 (regOne!22383 (regOne!22382 r!26968)) (ite c!646464 (reg!11264 (regOne!22382 r!26968)) (ite c!646463 (regTwo!22382 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968)))))))))

(declare-fun bm!273132 () Bool)

(assert (=> bm!273132 (= call!273134 (derivativeStep!3370 (ite c!646539 (regTwo!22383 (ite c!646465 (regOne!22383 (regOne!22382 r!26968)) (ite c!646464 (reg!11264 (regOne!22382 r!26968)) (ite c!646463 (regTwo!22382 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968)))))) (regOne!22382 (ite c!646465 (regOne!22383 (regOne!22382 r!26968)) (ite c!646464 (reg!11264 (regOne!22382 r!26968)) (ite c!646463 (regTwo!22382 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968))))))) c!13797))))

(declare-fun d!1091047 () Bool)

(declare-fun lt!1298829 () Regex!10935)

(assert (=> d!1091047 (validRegex!5042 lt!1298829)))

(assert (=> d!1091047 (= lt!1298829 e!2309756)))

(declare-fun c!646536 () Bool)

(assert (=> d!1091047 (= c!646536 (or ((_ is EmptyExpr!10935) (ite c!646465 (regOne!22383 (regOne!22382 r!26968)) (ite c!646464 (reg!11264 (regOne!22382 r!26968)) (ite c!646463 (regTwo!22382 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968)))))) ((_ is EmptyLang!10935) (ite c!646465 (regOne!22383 (regOne!22382 r!26968)) (ite c!646464 (reg!11264 (regOne!22382 r!26968)) (ite c!646463 (regTwo!22382 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968))))))))))

(assert (=> d!1091047 (validRegex!5042 (ite c!646465 (regOne!22383 (regOne!22382 r!26968)) (ite c!646464 (reg!11264 (regOne!22382 r!26968)) (ite c!646463 (regTwo!22382 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968))))))))

(assert (=> d!1091047 (= (derivativeStep!3370 (ite c!646465 (regOne!22383 (regOne!22382 r!26968)) (ite c!646464 (reg!11264 (regOne!22382 r!26968)) (ite c!646463 (regTwo!22382 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968))))) c!13797) lt!1298829)))

(declare-fun b!3733800 () Bool)

(assert (=> b!3733800 (= e!2309756 EmptyLang!10935)))

(assert (= (and d!1091047 c!646536) b!3733800))

(assert (= (and d!1091047 (not c!646536)) b!3733798))

(assert (= (and b!3733798 c!646535) b!3733796))

(assert (= (and b!3733798 (not c!646535)) b!3733795))

(assert (= (and b!3733795 c!646539) b!3733791))

(assert (= (and b!3733795 (not c!646539)) b!3733799))

(assert (= (and b!3733799 c!646538) b!3733792))

(assert (= (and b!3733799 (not c!646538)) b!3733794))

(assert (= (and b!3733794 c!646537) b!3733793))

(assert (= (and b!3733794 (not c!646537)) b!3733797))

(assert (= (or b!3733793 b!3733797) bm!273129))

(assert (= (or b!3733792 bm!273129) bm!273131))

(assert (= (or b!3733791 bm!273131) bm!273130))

(assert (= (or b!3733791 b!3733793) bm!273132))

(declare-fun m!4231633 () Bool)

(assert (=> b!3733794 m!4231633))

(declare-fun m!4231635 () Bool)

(assert (=> bm!273130 m!4231635))

(declare-fun m!4231637 () Bool)

(assert (=> bm!273132 m!4231637))

(declare-fun m!4231639 () Bool)

(assert (=> d!1091047 m!4231639))

(declare-fun m!4231641 () Bool)

(assert (=> d!1091047 m!4231641))

(assert (=> bm!273066 d!1091047))

(declare-fun d!1091049 () Bool)

(declare-fun lt!1298830 () Bool)

(assert (=> d!1091049 (= lt!1298830 (select (content!5791 (t!302499 (usedCharacters!1198 r!26968))) cNot!42))))

(declare-fun e!2309761 () Bool)

(assert (=> d!1091049 (= lt!1298830 e!2309761)))

(declare-fun res!1515367 () Bool)

(assert (=> d!1091049 (=> (not res!1515367) (not e!2309761))))

(assert (=> d!1091049 (= res!1515367 ((_ is Cons!39692) (t!302499 (usedCharacters!1198 r!26968))))))

(assert (=> d!1091049 (= (contains!8028 (t!302499 (usedCharacters!1198 r!26968)) cNot!42) lt!1298830)))

(declare-fun b!3733801 () Bool)

(declare-fun e!2309762 () Bool)

(assert (=> b!3733801 (= e!2309761 e!2309762)))

(declare-fun res!1515368 () Bool)

(assert (=> b!3733801 (=> res!1515368 e!2309762)))

(assert (=> b!3733801 (= res!1515368 (= (h!45112 (t!302499 (usedCharacters!1198 r!26968))) cNot!42))))

(declare-fun b!3733802 () Bool)

(assert (=> b!3733802 (= e!2309762 (contains!8028 (t!302499 (t!302499 (usedCharacters!1198 r!26968))) cNot!42))))

(assert (= (and d!1091049 res!1515367) b!3733801))

(assert (= (and b!3733801 (not res!1515368)) b!3733802))

(declare-fun m!4231643 () Bool)

(assert (=> d!1091049 m!4231643))

(declare-fun m!4231645 () Bool)

(assert (=> d!1091049 m!4231645))

(declare-fun m!4231647 () Bool)

(assert (=> b!3733802 m!4231647))

(assert (=> b!3733443 d!1091049))

(declare-fun d!1091051 () Bool)

(declare-fun c!646542 () Bool)

(assert (=> d!1091051 (= c!646542 ((_ is Nil!39692) (usedCharacters!1198 (derivativeStep!3370 (regOne!22382 r!26968) c!13797))))))

(declare-fun e!2309765 () (InoxSet C!22056))

(assert (=> d!1091051 (= (content!5791 (usedCharacters!1198 (derivativeStep!3370 (regOne!22382 r!26968) c!13797))) e!2309765)))

(declare-fun b!3733807 () Bool)

(assert (=> b!3733807 (= e!2309765 ((as const (Array C!22056 Bool)) false))))

(declare-fun b!3733808 () Bool)

(assert (=> b!3733808 (= e!2309765 ((_ map or) (store ((as const (Array C!22056 Bool)) false) (h!45112 (usedCharacters!1198 (derivativeStep!3370 (regOne!22382 r!26968) c!13797))) true) (content!5791 (t!302499 (usedCharacters!1198 (derivativeStep!3370 (regOne!22382 r!26968) c!13797))))))))

(assert (= (and d!1091051 c!646542) b!3733807))

(assert (= (and d!1091051 (not c!646542)) b!3733808))

(declare-fun m!4231649 () Bool)

(assert (=> b!3733808 m!4231649))

(declare-fun m!4231651 () Bool)

(assert (=> b!3733808 m!4231651))

(assert (=> d!1091015 d!1091051))

(declare-fun b!3733809 () Bool)

(declare-fun e!2309766 () List!39816)

(declare-fun call!273140 () List!39816)

(assert (=> b!3733809 (= e!2309766 call!273140)))

(declare-fun bm!273133 () Bool)

(declare-fun call!273139 () List!39816)

(assert (=> bm!273133 (= call!273139 call!273140)))

(declare-fun b!3733810 () Bool)

(declare-fun e!2309767 () List!39816)

(assert (=> b!3733810 (= e!2309766 e!2309767)))

(declare-fun c!646546 () Bool)

(assert (=> b!3733810 (= c!646546 ((_ is Union!10935) (ite c!646469 (regOne!22383 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (regTwo!22382 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)))))))

(declare-fun call!273138 () List!39816)

(declare-fun bm!273134 () Bool)

(assert (=> bm!273134 (= call!273138 (usedCharacters!1198 (ite c!646546 (regOne!22383 (ite c!646469 (regOne!22383 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (regTwo!22382 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)))) (regTwo!22382 (ite c!646469 (regOne!22383 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (regTwo!22382 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)))))))))

(declare-fun b!3733811 () Bool)

(declare-fun call!273141 () List!39816)

(assert (=> b!3733811 (= e!2309767 call!273141)))

(declare-fun e!2309769 () List!39816)

(declare-fun b!3733812 () Bool)

(assert (=> b!3733812 (= e!2309769 (Cons!39692 (c!646401 (ite c!646469 (regOne!22383 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (regTwo!22382 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)))) Nil!39692))))

(declare-fun bm!273136 () Bool)

(assert (=> bm!273136 (= call!273141 (++!9858 (ite c!646546 call!273138 call!273139) (ite c!646546 call!273139 call!273138)))))

(declare-fun b!3733813 () Bool)

(declare-fun e!2309768 () List!39816)

(assert (=> b!3733813 (= e!2309768 e!2309769)))

(declare-fun c!646544 () Bool)

(assert (=> b!3733813 (= c!646544 ((_ is ElementMatch!10935) (ite c!646469 (regOne!22383 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (regTwo!22382 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)))))))

(declare-fun b!3733814 () Bool)

(assert (=> b!3733814 (= e!2309768 Nil!39692)))

(declare-fun b!3733815 () Bool)

(assert (=> b!3733815 (= e!2309767 call!273141)))

(declare-fun b!3733816 () Bool)

(declare-fun c!646545 () Bool)

(assert (=> b!3733816 (= c!646545 ((_ is Star!10935) (ite c!646469 (regOne!22383 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (regTwo!22382 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)))))))

(assert (=> b!3733816 (= e!2309769 e!2309766)))

(declare-fun c!646543 () Bool)

(declare-fun d!1091053 () Bool)

(assert (=> d!1091053 (= c!646543 (or ((_ is EmptyExpr!10935) (ite c!646469 (regOne!22383 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (regTwo!22382 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)))) ((_ is EmptyLang!10935) (ite c!646469 (regOne!22383 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (regTwo!22382 (derivativeStep!3370 (regOne!22382 r!26968) c!13797))))))))

(assert (=> d!1091053 (= (usedCharacters!1198 (ite c!646469 (regOne!22383 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (regTwo!22382 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)))) e!2309768)))

(declare-fun bm!273135 () Bool)

(assert (=> bm!273135 (= call!273140 (usedCharacters!1198 (ite c!646545 (reg!11264 (ite c!646469 (regOne!22383 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (regTwo!22382 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)))) (ite c!646546 (regTwo!22383 (ite c!646469 (regOne!22383 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (regTwo!22382 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)))) (regOne!22382 (ite c!646469 (regOne!22383 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (regTwo!22382 (derivativeStep!3370 (regOne!22382 r!26968) c!13797))))))))))

(assert (= (and d!1091053 c!646543) b!3733814))

(assert (= (and d!1091053 (not c!646543)) b!3733813))

(assert (= (and b!3733813 c!646544) b!3733812))

(assert (= (and b!3733813 (not c!646544)) b!3733816))

(assert (= (and b!3733816 c!646545) b!3733809))

(assert (= (and b!3733816 (not c!646545)) b!3733810))

(assert (= (and b!3733810 c!646546) b!3733811))

(assert (= (and b!3733810 (not c!646546)) b!3733815))

(assert (= (or b!3733811 b!3733815) bm!273134))

(assert (= (or b!3733811 b!3733815) bm!273133))

(assert (= (or b!3733811 b!3733815) bm!273136))

(assert (= (or b!3733809 bm!273133) bm!273135))

(declare-fun m!4231653 () Bool)

(assert (=> bm!273134 m!4231653))

(declare-fun m!4231655 () Bool)

(assert (=> bm!273136 m!4231655))

(declare-fun m!4231657 () Bool)

(assert (=> bm!273135 m!4231657))

(assert (=> bm!273070 d!1091053))

(declare-fun b!3733817 () Bool)

(declare-fun e!2309773 () Int)

(declare-fun call!273144 () Int)

(assert (=> b!3733817 (= e!2309773 (+ 1 call!273144))))

(declare-fun bm!273137 () Bool)

(declare-fun call!273143 () Int)

(declare-fun c!646547 () Bool)

(declare-fun c!646551 () Bool)

(assert (=> bm!273137 (= call!273143 (RegexPrimitiveSize!147 (ite c!646551 (regOne!22382 (ite c!646499 (regOne!22382 r!26968) (ite c!646495 (reg!11264 r!26968) (regOne!22383 r!26968)))) (ite c!646547 (reg!11264 (ite c!646499 (regOne!22382 r!26968) (ite c!646495 (reg!11264 r!26968) (regOne!22383 r!26968)))) (regOne!22383 (ite c!646499 (regOne!22382 r!26968) (ite c!646495 (reg!11264 r!26968) (regOne!22383 r!26968))))))))))

(declare-fun bm!273138 () Bool)

(assert (=> bm!273138 (= call!273144 call!273143)))

(declare-fun b!3733818 () Bool)

(declare-fun e!2309772 () Int)

(declare-fun e!2309774 () Int)

(assert (=> b!3733818 (= e!2309772 e!2309774)))

(assert (=> b!3733818 (= c!646551 ((_ is Concat!17206) (ite c!646499 (regOne!22382 r!26968) (ite c!646495 (reg!11264 r!26968) (regOne!22383 r!26968)))))))

(declare-fun b!3733819 () Bool)

(declare-fun c!646548 () Bool)

(assert (=> b!3733819 (= c!646548 ((_ is EmptyLang!10935) (ite c!646499 (regOne!22382 r!26968) (ite c!646495 (reg!11264 r!26968) (regOne!22383 r!26968)))))))

(declare-fun e!2309771 () Int)

(assert (=> b!3733819 (= e!2309773 e!2309771)))

(declare-fun b!3733820 () Bool)

(declare-fun call!273142 () Int)

(assert (=> b!3733820 (= e!2309774 (+ 1 call!273143 call!273142))))

(declare-fun b!3733821 () Bool)

(declare-fun c!646549 () Bool)

(assert (=> b!3733821 (= c!646549 ((_ is EmptyExpr!10935) (ite c!646499 (regOne!22382 r!26968) (ite c!646495 (reg!11264 r!26968) (regOne!22383 r!26968)))))))

(declare-fun e!2309770 () Int)

(assert (=> b!3733821 (= e!2309774 e!2309770)))

(declare-fun b!3733822 () Bool)

(assert (=> b!3733822 (= e!2309770 e!2309773)))

(assert (=> b!3733822 (= c!646547 ((_ is Star!10935) (ite c!646499 (regOne!22382 r!26968) (ite c!646495 (reg!11264 r!26968) (regOne!22383 r!26968)))))))

(declare-fun b!3733824 () Bool)

(assert (=> b!3733824 (= e!2309772 1)))

(declare-fun b!3733825 () Bool)

(assert (=> b!3733825 (= e!2309771 0)))

(declare-fun bm!273139 () Bool)

(assert (=> bm!273139 (= call!273142 (RegexPrimitiveSize!147 (ite c!646551 (regTwo!22382 (ite c!646499 (regOne!22382 r!26968) (ite c!646495 (reg!11264 r!26968) (regOne!22383 r!26968)))) (regTwo!22383 (ite c!646499 (regOne!22382 r!26968) (ite c!646495 (reg!11264 r!26968) (regOne!22383 r!26968)))))))))

(declare-fun b!3733826 () Bool)

(assert (=> b!3733826 (= e!2309770 0)))

(declare-fun b!3733823 () Bool)

(assert (=> b!3733823 (= e!2309771 (+ 1 call!273144 call!273142))))

(declare-fun d!1091055 () Bool)

(declare-fun lt!1298831 () Int)

(assert (=> d!1091055 (>= lt!1298831 0)))

(assert (=> d!1091055 (= lt!1298831 e!2309772)))

(declare-fun c!646550 () Bool)

(assert (=> d!1091055 (= c!646550 ((_ is ElementMatch!10935) (ite c!646499 (regOne!22382 r!26968) (ite c!646495 (reg!11264 r!26968) (regOne!22383 r!26968)))))))

(assert (=> d!1091055 (= (RegexPrimitiveSize!147 (ite c!646499 (regOne!22382 r!26968) (ite c!646495 (reg!11264 r!26968) (regOne!22383 r!26968)))) lt!1298831)))

(assert (= (and d!1091055 c!646550) b!3733824))

(assert (= (and d!1091055 (not c!646550)) b!3733818))

(assert (= (and b!3733818 c!646551) b!3733820))

(assert (= (and b!3733818 (not c!646551)) b!3733821))

(assert (= (and b!3733821 c!646549) b!3733826))

(assert (= (and b!3733821 (not c!646549)) b!3733822))

(assert (= (and b!3733822 c!646547) b!3733817))

(assert (= (and b!3733822 (not c!646547)) b!3733819))

(assert (= (and b!3733819 c!646548) b!3733825))

(assert (= (and b!3733819 (not c!646548)) b!3733823))

(assert (= (or b!3733817 b!3733823) bm!273138))

(assert (= (or b!3733820 bm!273138) bm!273137))

(assert (= (or b!3733820 b!3733823) bm!273139))

(declare-fun m!4231659 () Bool)

(assert (=> bm!273137 m!4231659))

(declare-fun m!4231661 () Bool)

(assert (=> bm!273139 m!4231661))

(assert (=> bm!273094 d!1091055))

(declare-fun b!3733827 () Bool)

(declare-fun e!2309781 () Bool)

(declare-fun call!273147 () Bool)

(assert (=> b!3733827 (= e!2309781 call!273147)))

(declare-fun d!1091057 () Bool)

(declare-fun res!1515371 () Bool)

(declare-fun e!2309779 () Bool)

(assert (=> d!1091057 (=> res!1515371 e!2309779)))

(assert (=> d!1091057 (= res!1515371 ((_ is ElementMatch!10935) (ite c!646407 (reg!11264 r!26968) (ite c!646406 (regTwo!22383 r!26968) (regTwo!22382 r!26968)))))))

(assert (=> d!1091057 (= (validRegex!5042 (ite c!646407 (reg!11264 r!26968) (ite c!646406 (regTwo!22383 r!26968) (regTwo!22382 r!26968)))) e!2309779)))

(declare-fun b!3733828 () Bool)

(declare-fun e!2309778 () Bool)

(declare-fun call!273146 () Bool)

(assert (=> b!3733828 (= e!2309778 call!273146)))

(declare-fun b!3733829 () Bool)

(declare-fun e!2309775 () Bool)

(assert (=> b!3733829 (= e!2309779 e!2309775)))

(declare-fun c!646553 () Bool)

(assert (=> b!3733829 (= c!646553 ((_ is Star!10935) (ite c!646407 (reg!11264 r!26968) (ite c!646406 (regTwo!22383 r!26968) (regTwo!22382 r!26968)))))))

(declare-fun b!3733830 () Bool)

(assert (=> b!3733830 (= e!2309775 e!2309781)))

(declare-fun res!1515370 () Bool)

(assert (=> b!3733830 (= res!1515370 (not (nullable!3843 (reg!11264 (ite c!646407 (reg!11264 r!26968) (ite c!646406 (regTwo!22383 r!26968) (regTwo!22382 r!26968)))))))))

(assert (=> b!3733830 (=> (not res!1515370) (not e!2309781))))

(declare-fun b!3733831 () Bool)

(declare-fun res!1515372 () Bool)

(declare-fun e!2309780 () Bool)

(assert (=> b!3733831 (=> (not res!1515372) (not e!2309780))))

(declare-fun call!273145 () Bool)

(assert (=> b!3733831 (= res!1515372 call!273145)))

(declare-fun e!2309776 () Bool)

(assert (=> b!3733831 (= e!2309776 e!2309780)))

(declare-fun b!3733832 () Bool)

(assert (=> b!3733832 (= e!2309775 e!2309776)))

(declare-fun c!646552 () Bool)

(assert (=> b!3733832 (= c!646552 ((_ is Union!10935) (ite c!646407 (reg!11264 r!26968) (ite c!646406 (regTwo!22383 r!26968) (regTwo!22382 r!26968)))))))

(declare-fun b!3733833 () Bool)

(declare-fun e!2309777 () Bool)

(assert (=> b!3733833 (= e!2309777 e!2309778)))

(declare-fun res!1515369 () Bool)

(assert (=> b!3733833 (=> (not res!1515369) (not e!2309778))))

(assert (=> b!3733833 (= res!1515369 call!273145)))

(declare-fun b!3733834 () Bool)

(assert (=> b!3733834 (= e!2309780 call!273146)))

(declare-fun bm!273140 () Bool)

(assert (=> bm!273140 (= call!273146 call!273147)))

(declare-fun bm!273141 () Bool)

(assert (=> bm!273141 (= call!273145 (validRegex!5042 (ite c!646552 (regOne!22383 (ite c!646407 (reg!11264 r!26968) (ite c!646406 (regTwo!22383 r!26968) (regTwo!22382 r!26968)))) (regOne!22382 (ite c!646407 (reg!11264 r!26968) (ite c!646406 (regTwo!22383 r!26968) (regTwo!22382 r!26968)))))))))

(declare-fun b!3733835 () Bool)

(declare-fun res!1515373 () Bool)

(assert (=> b!3733835 (=> res!1515373 e!2309777)))

(assert (=> b!3733835 (= res!1515373 (not ((_ is Concat!17206) (ite c!646407 (reg!11264 r!26968) (ite c!646406 (regTwo!22383 r!26968) (regTwo!22382 r!26968))))))))

(assert (=> b!3733835 (= e!2309776 e!2309777)))

(declare-fun bm!273142 () Bool)

(assert (=> bm!273142 (= call!273147 (validRegex!5042 (ite c!646553 (reg!11264 (ite c!646407 (reg!11264 r!26968) (ite c!646406 (regTwo!22383 r!26968) (regTwo!22382 r!26968)))) (ite c!646552 (regTwo!22383 (ite c!646407 (reg!11264 r!26968) (ite c!646406 (regTwo!22383 r!26968) (regTwo!22382 r!26968)))) (regTwo!22382 (ite c!646407 (reg!11264 r!26968) (ite c!646406 (regTwo!22383 r!26968) (regTwo!22382 r!26968))))))))))

(assert (= (and d!1091057 (not res!1515371)) b!3733829))

(assert (= (and b!3733829 c!646553) b!3733830))

(assert (= (and b!3733829 (not c!646553)) b!3733832))

(assert (= (and b!3733830 res!1515370) b!3733827))

(assert (= (and b!3733832 c!646552) b!3733831))

(assert (= (and b!3733832 (not c!646552)) b!3733835))

(assert (= (and b!3733831 res!1515372) b!3733834))

(assert (= (and b!3733835 (not res!1515373)) b!3733833))

(assert (= (and b!3733833 res!1515369) b!3733828))

(assert (= (or b!3733834 b!3733828) bm!273140))

(assert (= (or b!3733831 b!3733833) bm!273141))

(assert (= (or b!3733827 bm!273140) bm!273142))

(declare-fun m!4231663 () Bool)

(assert (=> b!3733830 m!4231663))

(declare-fun m!4231665 () Bool)

(assert (=> bm!273141 m!4231665))

(declare-fun m!4231667 () Bool)

(assert (=> bm!273142 m!4231667))

(assert (=> bm!273016 d!1091057))

(declare-fun b!3733836 () Bool)

(declare-fun e!2309788 () Bool)

(declare-fun call!273150 () Bool)

(assert (=> b!3733836 (= e!2309788 call!273150)))

(declare-fun d!1091059 () Bool)

(declare-fun res!1515376 () Bool)

(declare-fun e!2309786 () Bool)

(assert (=> d!1091059 (=> res!1515376 e!2309786)))

(assert (=> d!1091059 (= res!1515376 ((_ is ElementMatch!10935) (ite c!646470 (regOne!22383 (regTwo!22382 r!26968)) (regOne!22382 (regTwo!22382 r!26968)))))))

(assert (=> d!1091059 (= (validRegex!5042 (ite c!646470 (regOne!22383 (regTwo!22382 r!26968)) (regOne!22382 (regTwo!22382 r!26968)))) e!2309786)))

(declare-fun b!3733837 () Bool)

(declare-fun e!2309785 () Bool)

(declare-fun call!273149 () Bool)

(assert (=> b!3733837 (= e!2309785 call!273149)))

(declare-fun b!3733838 () Bool)

(declare-fun e!2309782 () Bool)

(assert (=> b!3733838 (= e!2309786 e!2309782)))

(declare-fun c!646555 () Bool)

(assert (=> b!3733838 (= c!646555 ((_ is Star!10935) (ite c!646470 (regOne!22383 (regTwo!22382 r!26968)) (regOne!22382 (regTwo!22382 r!26968)))))))

(declare-fun b!3733839 () Bool)

(assert (=> b!3733839 (= e!2309782 e!2309788)))

(declare-fun res!1515375 () Bool)

(assert (=> b!3733839 (= res!1515375 (not (nullable!3843 (reg!11264 (ite c!646470 (regOne!22383 (regTwo!22382 r!26968)) (regOne!22382 (regTwo!22382 r!26968)))))))))

(assert (=> b!3733839 (=> (not res!1515375) (not e!2309788))))

(declare-fun b!3733840 () Bool)

(declare-fun res!1515377 () Bool)

(declare-fun e!2309787 () Bool)

(assert (=> b!3733840 (=> (not res!1515377) (not e!2309787))))

(declare-fun call!273148 () Bool)

(assert (=> b!3733840 (= res!1515377 call!273148)))

(declare-fun e!2309783 () Bool)

(assert (=> b!3733840 (= e!2309783 e!2309787)))

(declare-fun b!3733841 () Bool)

(assert (=> b!3733841 (= e!2309782 e!2309783)))

(declare-fun c!646554 () Bool)

(assert (=> b!3733841 (= c!646554 ((_ is Union!10935) (ite c!646470 (regOne!22383 (regTwo!22382 r!26968)) (regOne!22382 (regTwo!22382 r!26968)))))))

(declare-fun b!3733842 () Bool)

(declare-fun e!2309784 () Bool)

(assert (=> b!3733842 (= e!2309784 e!2309785)))

(declare-fun res!1515374 () Bool)

(assert (=> b!3733842 (=> (not res!1515374) (not e!2309785))))

(assert (=> b!3733842 (= res!1515374 call!273148)))

(declare-fun b!3733843 () Bool)

(assert (=> b!3733843 (= e!2309787 call!273149)))

(declare-fun bm!273143 () Bool)

(assert (=> bm!273143 (= call!273149 call!273150)))

(declare-fun bm!273144 () Bool)

(assert (=> bm!273144 (= call!273148 (validRegex!5042 (ite c!646554 (regOne!22383 (ite c!646470 (regOne!22383 (regTwo!22382 r!26968)) (regOne!22382 (regTwo!22382 r!26968)))) (regOne!22382 (ite c!646470 (regOne!22383 (regTwo!22382 r!26968)) (regOne!22382 (regTwo!22382 r!26968)))))))))

(declare-fun b!3733844 () Bool)

(declare-fun res!1515378 () Bool)

(assert (=> b!3733844 (=> res!1515378 e!2309784)))

(assert (=> b!3733844 (= res!1515378 (not ((_ is Concat!17206) (ite c!646470 (regOne!22383 (regTwo!22382 r!26968)) (regOne!22382 (regTwo!22382 r!26968))))))))

(assert (=> b!3733844 (= e!2309783 e!2309784)))

(declare-fun bm!273145 () Bool)

(assert (=> bm!273145 (= call!273150 (validRegex!5042 (ite c!646555 (reg!11264 (ite c!646470 (regOne!22383 (regTwo!22382 r!26968)) (regOne!22382 (regTwo!22382 r!26968)))) (ite c!646554 (regTwo!22383 (ite c!646470 (regOne!22383 (regTwo!22382 r!26968)) (regOne!22382 (regTwo!22382 r!26968)))) (regTwo!22382 (ite c!646470 (regOne!22383 (regTwo!22382 r!26968)) (regOne!22382 (regTwo!22382 r!26968))))))))))

(assert (= (and d!1091059 (not res!1515376)) b!3733838))

(assert (= (and b!3733838 c!646555) b!3733839))

(assert (= (and b!3733838 (not c!646555)) b!3733841))

(assert (= (and b!3733839 res!1515375) b!3733836))

(assert (= (and b!3733841 c!646554) b!3733840))

(assert (= (and b!3733841 (not c!646554)) b!3733844))

(assert (= (and b!3733840 res!1515377) b!3733843))

(assert (= (and b!3733844 (not res!1515378)) b!3733842))

(assert (= (and b!3733842 res!1515374) b!3733837))

(assert (= (or b!3733843 b!3733837) bm!273143))

(assert (= (or b!3733840 b!3733842) bm!273144))

(assert (= (or b!3733836 bm!273143) bm!273145))

(declare-fun m!4231669 () Bool)

(assert (=> b!3733839 m!4231669))

(declare-fun m!4231671 () Bool)

(assert (=> bm!273144 m!4231671))

(declare-fun m!4231673 () Bool)

(assert (=> bm!273145 m!4231673))

(assert (=> bm!273074 d!1091059))

(declare-fun d!1091061 () Bool)

(declare-fun lt!1298832 () Bool)

(assert (=> d!1091061 (= lt!1298832 (select (content!5791 (t!302499 (usedCharacters!1198 (regTwo!22382 r!26968)))) cNot!42))))

(declare-fun e!2309789 () Bool)

(assert (=> d!1091061 (= lt!1298832 e!2309789)))

(declare-fun res!1515379 () Bool)

(assert (=> d!1091061 (=> (not res!1515379) (not e!2309789))))

(assert (=> d!1091061 (= res!1515379 ((_ is Cons!39692) (t!302499 (usedCharacters!1198 (regTwo!22382 r!26968)))))))

(assert (=> d!1091061 (= (contains!8028 (t!302499 (usedCharacters!1198 (regTwo!22382 r!26968))) cNot!42) lt!1298832)))

(declare-fun b!3733845 () Bool)

(declare-fun e!2309790 () Bool)

(assert (=> b!3733845 (= e!2309789 e!2309790)))

(declare-fun res!1515380 () Bool)

(assert (=> b!3733845 (=> res!1515380 e!2309790)))

(assert (=> b!3733845 (= res!1515380 (= (h!45112 (t!302499 (usedCharacters!1198 (regTwo!22382 r!26968)))) cNot!42))))

(declare-fun b!3733846 () Bool)

(assert (=> b!3733846 (= e!2309790 (contains!8028 (t!302499 (t!302499 (usedCharacters!1198 (regTwo!22382 r!26968)))) cNot!42))))

(assert (= (and d!1091061 res!1515379) b!3733845))

(assert (= (and b!3733845 (not res!1515380)) b!3733846))

(declare-fun m!4231675 () Bool)

(assert (=> d!1091061 m!4231675))

(declare-fun m!4231677 () Bool)

(assert (=> d!1091061 m!4231677))

(declare-fun m!4231679 () Bool)

(assert (=> b!3733846 m!4231679))

(assert (=> b!3733643 d!1091061))

(declare-fun d!1091063 () Bool)

(assert (=> d!1091063 (= (nullable!3843 (reg!11264 r!26968)) (nullableFct!1096 (reg!11264 r!26968)))))

(declare-fun bs!575131 () Bool)

(assert (= bs!575131 d!1091063))

(declare-fun m!4231681 () Bool)

(assert (=> bs!575131 m!4231681))

(assert (=> b!3733416 d!1091063))

(declare-fun b!3733847 () Bool)

(declare-fun e!2309794 () Int)

(declare-fun call!273153 () Int)

(assert (=> b!3733847 (= e!2309794 (+ 1 call!273153))))

(declare-fun c!646560 () Bool)

(declare-fun bm!273146 () Bool)

(declare-fun call!273152 () Int)

(declare-fun c!646556 () Bool)

(assert (=> bm!273146 (= call!273152 (RegexPrimitiveSize!147 (ite c!646560 (regOne!22382 (ite c!646494 (regTwo!22382 (regTwo!22382 r!26968)) (regTwo!22383 (regTwo!22382 r!26968)))) (ite c!646556 (reg!11264 (ite c!646494 (regTwo!22382 (regTwo!22382 r!26968)) (regTwo!22383 (regTwo!22382 r!26968)))) (regOne!22383 (ite c!646494 (regTwo!22382 (regTwo!22382 r!26968)) (regTwo!22383 (regTwo!22382 r!26968))))))))))

(declare-fun bm!273147 () Bool)

(assert (=> bm!273147 (= call!273153 call!273152)))

(declare-fun b!3733848 () Bool)

(declare-fun e!2309793 () Int)

(declare-fun e!2309795 () Int)

(assert (=> b!3733848 (= e!2309793 e!2309795)))

(assert (=> b!3733848 (= c!646560 ((_ is Concat!17206) (ite c!646494 (regTwo!22382 (regTwo!22382 r!26968)) (regTwo!22383 (regTwo!22382 r!26968)))))))

(declare-fun b!3733849 () Bool)

(declare-fun c!646557 () Bool)

(assert (=> b!3733849 (= c!646557 ((_ is EmptyLang!10935) (ite c!646494 (regTwo!22382 (regTwo!22382 r!26968)) (regTwo!22383 (regTwo!22382 r!26968)))))))

(declare-fun e!2309792 () Int)

(assert (=> b!3733849 (= e!2309794 e!2309792)))

(declare-fun b!3733850 () Bool)

(declare-fun call!273151 () Int)

(assert (=> b!3733850 (= e!2309795 (+ 1 call!273152 call!273151))))

(declare-fun b!3733851 () Bool)

(declare-fun c!646558 () Bool)

(assert (=> b!3733851 (= c!646558 ((_ is EmptyExpr!10935) (ite c!646494 (regTwo!22382 (regTwo!22382 r!26968)) (regTwo!22383 (regTwo!22382 r!26968)))))))

(declare-fun e!2309791 () Int)

(assert (=> b!3733851 (= e!2309795 e!2309791)))

(declare-fun b!3733852 () Bool)

(assert (=> b!3733852 (= e!2309791 e!2309794)))

(assert (=> b!3733852 (= c!646556 ((_ is Star!10935) (ite c!646494 (regTwo!22382 (regTwo!22382 r!26968)) (regTwo!22383 (regTwo!22382 r!26968)))))))

(declare-fun b!3733854 () Bool)

(assert (=> b!3733854 (= e!2309793 1)))

(declare-fun b!3733855 () Bool)

(assert (=> b!3733855 (= e!2309792 0)))

(declare-fun bm!273148 () Bool)

(assert (=> bm!273148 (= call!273151 (RegexPrimitiveSize!147 (ite c!646560 (regTwo!22382 (ite c!646494 (regTwo!22382 (regTwo!22382 r!26968)) (regTwo!22383 (regTwo!22382 r!26968)))) (regTwo!22383 (ite c!646494 (regTwo!22382 (regTwo!22382 r!26968)) (regTwo!22383 (regTwo!22382 r!26968)))))))))

(declare-fun b!3733856 () Bool)

(assert (=> b!3733856 (= e!2309791 0)))

(declare-fun b!3733853 () Bool)

(assert (=> b!3733853 (= e!2309792 (+ 1 call!273153 call!273151))))

(declare-fun d!1091065 () Bool)

(declare-fun lt!1298833 () Int)

(assert (=> d!1091065 (>= lt!1298833 0)))

(assert (=> d!1091065 (= lt!1298833 e!2309793)))

(declare-fun c!646559 () Bool)

(assert (=> d!1091065 (= c!646559 ((_ is ElementMatch!10935) (ite c!646494 (regTwo!22382 (regTwo!22382 r!26968)) (regTwo!22383 (regTwo!22382 r!26968)))))))

(assert (=> d!1091065 (= (RegexPrimitiveSize!147 (ite c!646494 (regTwo!22382 (regTwo!22382 r!26968)) (regTwo!22383 (regTwo!22382 r!26968)))) lt!1298833)))

(assert (= (and d!1091065 c!646559) b!3733854))

(assert (= (and d!1091065 (not c!646559)) b!3733848))

(assert (= (and b!3733848 c!646560) b!3733850))

(assert (= (and b!3733848 (not c!646560)) b!3733851))

(assert (= (and b!3733851 c!646558) b!3733856))

(assert (= (and b!3733851 (not c!646558)) b!3733852))

(assert (= (and b!3733852 c!646556) b!3733847))

(assert (= (and b!3733852 (not c!646556)) b!3733849))

(assert (= (and b!3733849 c!646557) b!3733855))

(assert (= (and b!3733849 (not c!646557)) b!3733853))

(assert (= (or b!3733847 b!3733853) bm!273147))

(assert (= (or b!3733850 bm!273147) bm!273146))

(assert (= (or b!3733850 b!3733853) bm!273148))

(declare-fun m!4231683 () Bool)

(assert (=> bm!273146 m!4231683))

(declare-fun m!4231685 () Bool)

(assert (=> bm!273148 m!4231685))

(assert (=> bm!273093 d!1091065))

(declare-fun d!1091067 () Bool)

(assert (=> d!1091067 (= (nullable!3843 (reg!11264 (regTwo!22382 r!26968))) (nullableFct!1096 (reg!11264 (regTwo!22382 r!26968))))))

(declare-fun bs!575132 () Bool)

(assert (= bs!575132 d!1091067))

(declare-fun m!4231687 () Bool)

(assert (=> bs!575132 m!4231687))

(assert (=> b!3733555 d!1091067))

(declare-fun b!3733866 () Bool)

(declare-fun e!2309800 () List!39816)

(assert (=> b!3733866 (= e!2309800 (Cons!39692 (h!45112 (ite c!646507 call!273106 call!273107)) (++!9858 (t!302499 (ite c!646507 call!273106 call!273107)) (ite c!646507 call!273107 call!273106))))))

(declare-fun e!2309801 () Bool)

(declare-fun b!3733868 () Bool)

(declare-fun lt!1298836 () List!39816)

(assert (=> b!3733868 (= e!2309801 (or (not (= (ite c!646507 call!273107 call!273106) Nil!39692)) (= lt!1298836 (ite c!646507 call!273106 call!273107))))))

(declare-fun b!3733865 () Bool)

(assert (=> b!3733865 (= e!2309800 (ite c!646507 call!273107 call!273106))))

(declare-fun b!3733867 () Bool)

(declare-fun res!1515385 () Bool)

(assert (=> b!3733867 (=> (not res!1515385) (not e!2309801))))

(declare-fun size!30043 (List!39816) Int)

(assert (=> b!3733867 (= res!1515385 (= (size!30043 lt!1298836) (+ (size!30043 (ite c!646507 call!273106 call!273107)) (size!30043 (ite c!646507 call!273107 call!273106)))))))

(declare-fun d!1091069 () Bool)

(assert (=> d!1091069 e!2309801))

(declare-fun res!1515386 () Bool)

(assert (=> d!1091069 (=> (not res!1515386) (not e!2309801))))

(assert (=> d!1091069 (= res!1515386 (= (content!5791 lt!1298836) ((_ map or) (content!5791 (ite c!646507 call!273106 call!273107)) (content!5791 (ite c!646507 call!273107 call!273106)))))))

(assert (=> d!1091069 (= lt!1298836 e!2309800)))

(declare-fun c!646563 () Bool)

(assert (=> d!1091069 (= c!646563 ((_ is Nil!39692) (ite c!646507 call!273106 call!273107)))))

(assert (=> d!1091069 (= (++!9858 (ite c!646507 call!273106 call!273107) (ite c!646507 call!273107 call!273106)) lt!1298836)))

(assert (= (and d!1091069 c!646563) b!3733865))

(assert (= (and d!1091069 (not c!646563)) b!3733866))

(assert (= (and d!1091069 res!1515386) b!3733867))

(assert (= (and b!3733867 res!1515385) b!3733868))

(declare-fun m!4231689 () Bool)

(assert (=> b!3733866 m!4231689))

(declare-fun m!4231691 () Bool)

(assert (=> b!3733867 m!4231691))

(declare-fun m!4231693 () Bool)

(assert (=> b!3733867 m!4231693))

(declare-fun m!4231695 () Bool)

(assert (=> b!3733867 m!4231695))

(declare-fun m!4231697 () Bool)

(assert (=> d!1091069 m!4231697))

(declare-fun m!4231699 () Bool)

(assert (=> d!1091069 m!4231699))

(declare-fun m!4231701 () Bool)

(assert (=> d!1091069 m!4231701))

(assert (=> bm!273104 d!1091069))

(declare-fun b!3733869 () Bool)

(declare-fun e!2309802 () List!39816)

(declare-fun call!273156 () List!39816)

(assert (=> b!3733869 (= e!2309802 call!273156)))

(declare-fun bm!273149 () Bool)

(declare-fun call!273155 () List!39816)

(assert (=> bm!273149 (= call!273155 call!273156)))

(declare-fun b!3733870 () Bool)

(declare-fun e!2309803 () List!39816)

(assert (=> b!3733870 (= e!2309802 e!2309803)))

(declare-fun c!646567 () Bool)

(assert (=> b!3733870 (= c!646567 ((_ is Union!10935) (ite c!646431 (regOne!22383 r!26968) (regTwo!22382 r!26968))))))

(declare-fun bm!273150 () Bool)

(declare-fun call!273154 () List!39816)

(assert (=> bm!273150 (= call!273154 (usedCharacters!1198 (ite c!646567 (regOne!22383 (ite c!646431 (regOne!22383 r!26968) (regTwo!22382 r!26968))) (regTwo!22382 (ite c!646431 (regOne!22383 r!26968) (regTwo!22382 r!26968))))))))

(declare-fun b!3733871 () Bool)

(declare-fun call!273157 () List!39816)

(assert (=> b!3733871 (= e!2309803 call!273157)))

(declare-fun b!3733872 () Bool)

(declare-fun e!2309805 () List!39816)

(assert (=> b!3733872 (= e!2309805 (Cons!39692 (c!646401 (ite c!646431 (regOne!22383 r!26968) (regTwo!22382 r!26968))) Nil!39692))))

(declare-fun bm!273152 () Bool)

(assert (=> bm!273152 (= call!273157 (++!9858 (ite c!646567 call!273154 call!273155) (ite c!646567 call!273155 call!273154)))))

(declare-fun b!3733873 () Bool)

(declare-fun e!2309804 () List!39816)

(assert (=> b!3733873 (= e!2309804 e!2309805)))

(declare-fun c!646565 () Bool)

(assert (=> b!3733873 (= c!646565 ((_ is ElementMatch!10935) (ite c!646431 (regOne!22383 r!26968) (regTwo!22382 r!26968))))))

(declare-fun b!3733874 () Bool)

(assert (=> b!3733874 (= e!2309804 Nil!39692)))

(declare-fun b!3733875 () Bool)

(assert (=> b!3733875 (= e!2309803 call!273157)))

(declare-fun b!3733876 () Bool)

(declare-fun c!646566 () Bool)

(assert (=> b!3733876 (= c!646566 ((_ is Star!10935) (ite c!646431 (regOne!22383 r!26968) (regTwo!22382 r!26968))))))

(assert (=> b!3733876 (= e!2309805 e!2309802)))

(declare-fun d!1091071 () Bool)

(declare-fun c!646564 () Bool)

(assert (=> d!1091071 (= c!646564 (or ((_ is EmptyExpr!10935) (ite c!646431 (regOne!22383 r!26968) (regTwo!22382 r!26968))) ((_ is EmptyLang!10935) (ite c!646431 (regOne!22383 r!26968) (regTwo!22382 r!26968)))))))

(assert (=> d!1091071 (= (usedCharacters!1198 (ite c!646431 (regOne!22383 r!26968) (regTwo!22382 r!26968))) e!2309804)))

(declare-fun bm!273151 () Bool)

(assert (=> bm!273151 (= call!273156 (usedCharacters!1198 (ite c!646566 (reg!11264 (ite c!646431 (regOne!22383 r!26968) (regTwo!22382 r!26968))) (ite c!646567 (regTwo!22383 (ite c!646431 (regOne!22383 r!26968) (regTwo!22382 r!26968))) (regOne!22382 (ite c!646431 (regOne!22383 r!26968) (regTwo!22382 r!26968)))))))))

(assert (= (and d!1091071 c!646564) b!3733874))

(assert (= (and d!1091071 (not c!646564)) b!3733873))

(assert (= (and b!3733873 c!646565) b!3733872))

(assert (= (and b!3733873 (not c!646565)) b!3733876))

(assert (= (and b!3733876 c!646566) b!3733869))

(assert (= (and b!3733876 (not c!646566)) b!3733870))

(assert (= (and b!3733870 c!646567) b!3733871))

(assert (= (and b!3733870 (not c!646567)) b!3733875))

(assert (= (or b!3733871 b!3733875) bm!273150))

(assert (= (or b!3733871 b!3733875) bm!273149))

(assert (= (or b!3733871 b!3733875) bm!273152))

(assert (= (or b!3733869 bm!273149) bm!273151))

(declare-fun m!4231703 () Bool)

(assert (=> bm!273150 m!4231703))

(declare-fun m!4231705 () Bool)

(assert (=> bm!273152 m!4231705))

(declare-fun m!4231707 () Bool)

(assert (=> bm!273151 m!4231707))

(assert (=> bm!273038 d!1091071))

(declare-fun b!3733877 () Bool)

(declare-fun e!2309806 () List!39816)

(declare-fun call!273160 () List!39816)

(assert (=> b!3733877 (= e!2309806 call!273160)))

(declare-fun bm!273153 () Bool)

(declare-fun call!273159 () List!39816)

(assert (=> bm!273153 (= call!273159 call!273160)))

(declare-fun b!3733878 () Bool)

(declare-fun e!2309807 () List!39816)

(assert (=> b!3733878 (= e!2309806 e!2309807)))

(declare-fun c!646571 () Bool)

(assert (=> b!3733878 (= c!646571 ((_ is Union!10935) (ite c!646430 (reg!11264 r!26968) (ite c!646431 (regTwo!22383 r!26968) (regOne!22382 r!26968)))))))

(declare-fun call!273158 () List!39816)

(declare-fun bm!273154 () Bool)

(assert (=> bm!273154 (= call!273158 (usedCharacters!1198 (ite c!646571 (regOne!22383 (ite c!646430 (reg!11264 r!26968) (ite c!646431 (regTwo!22383 r!26968) (regOne!22382 r!26968)))) (regTwo!22382 (ite c!646430 (reg!11264 r!26968) (ite c!646431 (regTwo!22383 r!26968) (regOne!22382 r!26968)))))))))

(declare-fun b!3733879 () Bool)

(declare-fun call!273161 () List!39816)

(assert (=> b!3733879 (= e!2309807 call!273161)))

(declare-fun b!3733880 () Bool)

(declare-fun e!2309809 () List!39816)

(assert (=> b!3733880 (= e!2309809 (Cons!39692 (c!646401 (ite c!646430 (reg!11264 r!26968) (ite c!646431 (regTwo!22383 r!26968) (regOne!22382 r!26968)))) Nil!39692))))

(declare-fun bm!273156 () Bool)

(assert (=> bm!273156 (= call!273161 (++!9858 (ite c!646571 call!273158 call!273159) (ite c!646571 call!273159 call!273158)))))

(declare-fun b!3733881 () Bool)

(declare-fun e!2309808 () List!39816)

(assert (=> b!3733881 (= e!2309808 e!2309809)))

(declare-fun c!646569 () Bool)

(assert (=> b!3733881 (= c!646569 ((_ is ElementMatch!10935) (ite c!646430 (reg!11264 r!26968) (ite c!646431 (regTwo!22383 r!26968) (regOne!22382 r!26968)))))))

(declare-fun b!3733882 () Bool)

(assert (=> b!3733882 (= e!2309808 Nil!39692)))

(declare-fun b!3733883 () Bool)

(assert (=> b!3733883 (= e!2309807 call!273161)))

(declare-fun c!646570 () Bool)

(declare-fun b!3733884 () Bool)

(assert (=> b!3733884 (= c!646570 ((_ is Star!10935) (ite c!646430 (reg!11264 r!26968) (ite c!646431 (regTwo!22383 r!26968) (regOne!22382 r!26968)))))))

(assert (=> b!3733884 (= e!2309809 e!2309806)))

(declare-fun d!1091073 () Bool)

(declare-fun c!646568 () Bool)

(assert (=> d!1091073 (= c!646568 (or ((_ is EmptyExpr!10935) (ite c!646430 (reg!11264 r!26968) (ite c!646431 (regTwo!22383 r!26968) (regOne!22382 r!26968)))) ((_ is EmptyLang!10935) (ite c!646430 (reg!11264 r!26968) (ite c!646431 (regTwo!22383 r!26968) (regOne!22382 r!26968))))))))

(assert (=> d!1091073 (= (usedCharacters!1198 (ite c!646430 (reg!11264 r!26968) (ite c!646431 (regTwo!22383 r!26968) (regOne!22382 r!26968)))) e!2309808)))

(declare-fun bm!273155 () Bool)

(assert (=> bm!273155 (= call!273160 (usedCharacters!1198 (ite c!646570 (reg!11264 (ite c!646430 (reg!11264 r!26968) (ite c!646431 (regTwo!22383 r!26968) (regOne!22382 r!26968)))) (ite c!646571 (regTwo!22383 (ite c!646430 (reg!11264 r!26968) (ite c!646431 (regTwo!22383 r!26968) (regOne!22382 r!26968)))) (regOne!22382 (ite c!646430 (reg!11264 r!26968) (ite c!646431 (regTwo!22383 r!26968) (regOne!22382 r!26968))))))))))

(assert (= (and d!1091073 c!646568) b!3733882))

(assert (= (and d!1091073 (not c!646568)) b!3733881))

(assert (= (and b!3733881 c!646569) b!3733880))

(assert (= (and b!3733881 (not c!646569)) b!3733884))

(assert (= (and b!3733884 c!646570) b!3733877))

(assert (= (and b!3733884 (not c!646570)) b!3733878))

(assert (= (and b!3733878 c!646571) b!3733879))

(assert (= (and b!3733878 (not c!646571)) b!3733883))

(assert (= (or b!3733879 b!3733883) bm!273154))

(assert (= (or b!3733879 b!3733883) bm!273153))

(assert (= (or b!3733879 b!3733883) bm!273156))

(assert (= (or b!3733877 bm!273153) bm!273155))

(declare-fun m!4231709 () Bool)

(assert (=> bm!273154 m!4231709))

(declare-fun m!4231711 () Bool)

(assert (=> bm!273156 m!4231711))

(declare-fun m!4231713 () Bool)

(assert (=> bm!273155 m!4231713))

(assert (=> bm!273039 d!1091073))

(declare-fun b!3733885 () Bool)

(declare-fun e!2309813 () Int)

(declare-fun call!273164 () Int)

(assert (=> b!3733885 (= e!2309813 (+ 1 call!273164))))

(declare-fun bm!273157 () Bool)

(declare-fun c!646576 () Bool)

(declare-fun call!273163 () Int)

(declare-fun c!646572 () Bool)

(assert (=> bm!273157 (= call!273163 (RegexPrimitiveSize!147 (ite c!646576 (regOne!22382 (ite c!646499 (regTwo!22382 r!26968) (regTwo!22383 r!26968))) (ite c!646572 (reg!11264 (ite c!646499 (regTwo!22382 r!26968) (regTwo!22383 r!26968))) (regOne!22383 (ite c!646499 (regTwo!22382 r!26968) (regTwo!22383 r!26968)))))))))

(declare-fun bm!273158 () Bool)

(assert (=> bm!273158 (= call!273164 call!273163)))

(declare-fun b!3733886 () Bool)

(declare-fun e!2309812 () Int)

(declare-fun e!2309814 () Int)

(assert (=> b!3733886 (= e!2309812 e!2309814)))

(assert (=> b!3733886 (= c!646576 ((_ is Concat!17206) (ite c!646499 (regTwo!22382 r!26968) (regTwo!22383 r!26968))))))

(declare-fun b!3733887 () Bool)

(declare-fun c!646573 () Bool)

(assert (=> b!3733887 (= c!646573 ((_ is EmptyLang!10935) (ite c!646499 (regTwo!22382 r!26968) (regTwo!22383 r!26968))))))

(declare-fun e!2309811 () Int)

(assert (=> b!3733887 (= e!2309813 e!2309811)))

(declare-fun b!3733888 () Bool)

(declare-fun call!273162 () Int)

(assert (=> b!3733888 (= e!2309814 (+ 1 call!273163 call!273162))))

(declare-fun b!3733889 () Bool)

(declare-fun c!646574 () Bool)

(assert (=> b!3733889 (= c!646574 ((_ is EmptyExpr!10935) (ite c!646499 (regTwo!22382 r!26968) (regTwo!22383 r!26968))))))

(declare-fun e!2309810 () Int)

(assert (=> b!3733889 (= e!2309814 e!2309810)))

(declare-fun b!3733890 () Bool)

(assert (=> b!3733890 (= e!2309810 e!2309813)))

(assert (=> b!3733890 (= c!646572 ((_ is Star!10935) (ite c!646499 (regTwo!22382 r!26968) (regTwo!22383 r!26968))))))

(declare-fun b!3733892 () Bool)

(assert (=> b!3733892 (= e!2309812 1)))

(declare-fun b!3733893 () Bool)

(assert (=> b!3733893 (= e!2309811 0)))

(declare-fun bm!273159 () Bool)

(assert (=> bm!273159 (= call!273162 (RegexPrimitiveSize!147 (ite c!646576 (regTwo!22382 (ite c!646499 (regTwo!22382 r!26968) (regTwo!22383 r!26968))) (regTwo!22383 (ite c!646499 (regTwo!22382 r!26968) (regTwo!22383 r!26968))))))))

(declare-fun b!3733894 () Bool)

(assert (=> b!3733894 (= e!2309810 0)))

(declare-fun b!3733891 () Bool)

(assert (=> b!3733891 (= e!2309811 (+ 1 call!273164 call!273162))))

(declare-fun d!1091075 () Bool)

(declare-fun lt!1298837 () Int)

(assert (=> d!1091075 (>= lt!1298837 0)))

(assert (=> d!1091075 (= lt!1298837 e!2309812)))

(declare-fun c!646575 () Bool)

(assert (=> d!1091075 (= c!646575 ((_ is ElementMatch!10935) (ite c!646499 (regTwo!22382 r!26968) (regTwo!22383 r!26968))))))

(assert (=> d!1091075 (= (RegexPrimitiveSize!147 (ite c!646499 (regTwo!22382 r!26968) (regTwo!22383 r!26968))) lt!1298837)))

(assert (= (and d!1091075 c!646575) b!3733892))

(assert (= (and d!1091075 (not c!646575)) b!3733886))

(assert (= (and b!3733886 c!646576) b!3733888))

(assert (= (and b!3733886 (not c!646576)) b!3733889))

(assert (= (and b!3733889 c!646574) b!3733894))

(assert (= (and b!3733889 (not c!646574)) b!3733890))

(assert (= (and b!3733890 c!646572) b!3733885))

(assert (= (and b!3733890 (not c!646572)) b!3733887))

(assert (= (and b!3733887 c!646573) b!3733893))

(assert (= (and b!3733887 (not c!646573)) b!3733891))

(assert (= (or b!3733885 b!3733891) bm!273158))

(assert (= (or b!3733888 bm!273158) bm!273157))

(assert (= (or b!3733888 b!3733891) bm!273159))

(declare-fun m!4231715 () Bool)

(assert (=> bm!273157 m!4231715))

(declare-fun m!4231717 () Bool)

(assert (=> bm!273159 m!4231717))

(assert (=> bm!273096 d!1091075))

(assert (=> d!1091013 d!1091015))

(assert (=> d!1091013 d!1091009))

(assert (=> d!1091013 d!1091003))

(declare-fun d!1091077 () Bool)

(assert (=> d!1091077 (not (contains!8028 (usedCharacters!1198 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) cNot!42))))

(assert (=> d!1091077 true))

(declare-fun _$133!122 () Unit!57596)

(assert (=> d!1091077 (= (choose!22236 (regOne!22382 r!26968) c!13797 cNot!42) _$133!122)))

(declare-fun bs!575133 () Bool)

(assert (= bs!575133 d!1091077))

(assert (=> bs!575133 m!4231473))

(assert (=> bs!575133 m!4231473))

(assert (=> bs!575133 m!4231469))

(assert (=> bs!575133 m!4231469))

(assert (=> bs!575133 m!4231471))

(assert (=> d!1091013 d!1091077))

(declare-fun b!3733896 () Bool)

(declare-fun e!2309815 () List!39816)

(assert (=> b!3733896 (= e!2309815 (Cons!39692 (h!45112 (ite c!646431 call!273042 call!273043)) (++!9858 (t!302499 (ite c!646431 call!273042 call!273043)) (ite c!646431 call!273043 call!273042))))))

(declare-fun e!2309816 () Bool)

(declare-fun lt!1298838 () List!39816)

(declare-fun b!3733898 () Bool)

(assert (=> b!3733898 (= e!2309816 (or (not (= (ite c!646431 call!273043 call!273042) Nil!39692)) (= lt!1298838 (ite c!646431 call!273042 call!273043))))))

(declare-fun b!3733895 () Bool)

(assert (=> b!3733895 (= e!2309815 (ite c!646431 call!273043 call!273042))))

(declare-fun b!3733897 () Bool)

(declare-fun res!1515387 () Bool)

(assert (=> b!3733897 (=> (not res!1515387) (not e!2309816))))

(assert (=> b!3733897 (= res!1515387 (= (size!30043 lt!1298838) (+ (size!30043 (ite c!646431 call!273042 call!273043)) (size!30043 (ite c!646431 call!273043 call!273042)))))))

(declare-fun d!1091079 () Bool)

(assert (=> d!1091079 e!2309816))

(declare-fun res!1515388 () Bool)

(assert (=> d!1091079 (=> (not res!1515388) (not e!2309816))))

(assert (=> d!1091079 (= res!1515388 (= (content!5791 lt!1298838) ((_ map or) (content!5791 (ite c!646431 call!273042 call!273043)) (content!5791 (ite c!646431 call!273043 call!273042)))))))

(assert (=> d!1091079 (= lt!1298838 e!2309815)))

(declare-fun c!646578 () Bool)

(assert (=> d!1091079 (= c!646578 ((_ is Nil!39692) (ite c!646431 call!273042 call!273043)))))

(assert (=> d!1091079 (= (++!9858 (ite c!646431 call!273042 call!273043) (ite c!646431 call!273043 call!273042)) lt!1298838)))

(assert (= (and d!1091079 c!646578) b!3733895))

(assert (= (and d!1091079 (not c!646578)) b!3733896))

(assert (= (and d!1091079 res!1515388) b!3733897))

(assert (= (and b!3733897 res!1515387) b!3733898))

(declare-fun m!4231719 () Bool)

(assert (=> b!3733896 m!4231719))

(declare-fun m!4231721 () Bool)

(assert (=> b!3733897 m!4231721))

(declare-fun m!4231723 () Bool)

(assert (=> b!3733897 m!4231723))

(declare-fun m!4231725 () Bool)

(assert (=> b!3733897 m!4231725))

(declare-fun m!4231727 () Bool)

(assert (=> d!1091079 m!4231727))

(declare-fun m!4231729 () Bool)

(assert (=> d!1091079 m!4231729))

(declare-fun m!4231731 () Bool)

(assert (=> d!1091079 m!4231731))

(assert (=> bm!273040 d!1091079))

(declare-fun b!3733899 () Bool)

(declare-fun e!2309823 () Bool)

(declare-fun call!273167 () Bool)

(assert (=> b!3733899 (= e!2309823 call!273167)))

(declare-fun d!1091081 () Bool)

(declare-fun res!1515391 () Bool)

(declare-fun e!2309821 () Bool)

(assert (=> d!1091081 (=> res!1515391 e!2309821)))

(assert (=> d!1091081 (= res!1515391 ((_ is ElementMatch!10935) lt!1298810))))

(assert (=> d!1091081 (= (validRegex!5042 lt!1298810) e!2309821)))

(declare-fun b!3733900 () Bool)

(declare-fun e!2309820 () Bool)

(declare-fun call!273166 () Bool)

(assert (=> b!3733900 (= e!2309820 call!273166)))

(declare-fun b!3733901 () Bool)

(declare-fun e!2309817 () Bool)

(assert (=> b!3733901 (= e!2309821 e!2309817)))

(declare-fun c!646580 () Bool)

(assert (=> b!3733901 (= c!646580 ((_ is Star!10935) lt!1298810))))

(declare-fun b!3733902 () Bool)

(assert (=> b!3733902 (= e!2309817 e!2309823)))

(declare-fun res!1515390 () Bool)

(assert (=> b!3733902 (= res!1515390 (not (nullable!3843 (reg!11264 lt!1298810))))))

(assert (=> b!3733902 (=> (not res!1515390) (not e!2309823))))

(declare-fun b!3733903 () Bool)

(declare-fun res!1515392 () Bool)

(declare-fun e!2309822 () Bool)

(assert (=> b!3733903 (=> (not res!1515392) (not e!2309822))))

(declare-fun call!273165 () Bool)

(assert (=> b!3733903 (= res!1515392 call!273165)))

(declare-fun e!2309818 () Bool)

(assert (=> b!3733903 (= e!2309818 e!2309822)))

(declare-fun b!3733904 () Bool)

(assert (=> b!3733904 (= e!2309817 e!2309818)))

(declare-fun c!646579 () Bool)

(assert (=> b!3733904 (= c!646579 ((_ is Union!10935) lt!1298810))))

(declare-fun b!3733905 () Bool)

(declare-fun e!2309819 () Bool)

(assert (=> b!3733905 (= e!2309819 e!2309820)))

(declare-fun res!1515389 () Bool)

(assert (=> b!3733905 (=> (not res!1515389) (not e!2309820))))

(assert (=> b!3733905 (= res!1515389 call!273165)))

(declare-fun b!3733906 () Bool)

(assert (=> b!3733906 (= e!2309822 call!273166)))

(declare-fun bm!273160 () Bool)

(assert (=> bm!273160 (= call!273166 call!273167)))

(declare-fun bm!273161 () Bool)

(assert (=> bm!273161 (= call!273165 (validRegex!5042 (ite c!646579 (regOne!22383 lt!1298810) (regOne!22382 lt!1298810))))))

(declare-fun b!3733907 () Bool)

(declare-fun res!1515393 () Bool)

(assert (=> b!3733907 (=> res!1515393 e!2309819)))

(assert (=> b!3733907 (= res!1515393 (not ((_ is Concat!17206) lt!1298810)))))

(assert (=> b!3733907 (= e!2309818 e!2309819)))

(declare-fun bm!273162 () Bool)

(assert (=> bm!273162 (= call!273167 (validRegex!5042 (ite c!646580 (reg!11264 lt!1298810) (ite c!646579 (regTwo!22383 lt!1298810) (regTwo!22382 lt!1298810)))))))

(assert (= (and d!1091081 (not res!1515391)) b!3733901))

(assert (= (and b!3733901 c!646580) b!3733902))

(assert (= (and b!3733901 (not c!646580)) b!3733904))

(assert (= (and b!3733902 res!1515390) b!3733899))

(assert (= (and b!3733904 c!646579) b!3733903))

(assert (= (and b!3733904 (not c!646579)) b!3733907))

(assert (= (and b!3733903 res!1515392) b!3733906))

(assert (= (and b!3733907 (not res!1515393)) b!3733905))

(assert (= (and b!3733905 res!1515389) b!3733900))

(assert (= (or b!3733906 b!3733900) bm!273160))

(assert (= (or b!3733903 b!3733905) bm!273161))

(assert (= (or b!3733899 bm!273160) bm!273162))

(declare-fun m!4231733 () Bool)

(assert (=> b!3733902 m!4231733))

(declare-fun m!4231735 () Bool)

(assert (=> bm!273161 m!4231735))

(declare-fun m!4231737 () Bool)

(assert (=> bm!273162 m!4231737))

(assert (=> d!1091003 d!1091081))

(declare-fun b!3733908 () Bool)

(declare-fun e!2309830 () Bool)

(declare-fun call!273170 () Bool)

(assert (=> b!3733908 (= e!2309830 call!273170)))

(declare-fun d!1091083 () Bool)

(declare-fun res!1515396 () Bool)

(declare-fun e!2309828 () Bool)

(assert (=> d!1091083 (=> res!1515396 e!2309828)))

(assert (=> d!1091083 (= res!1515396 ((_ is ElementMatch!10935) (regOne!22382 r!26968)))))

(assert (=> d!1091083 (= (validRegex!5042 (regOne!22382 r!26968)) e!2309828)))

(declare-fun b!3733909 () Bool)

(declare-fun e!2309827 () Bool)

(declare-fun call!273169 () Bool)

(assert (=> b!3733909 (= e!2309827 call!273169)))

(declare-fun b!3733910 () Bool)

(declare-fun e!2309824 () Bool)

(assert (=> b!3733910 (= e!2309828 e!2309824)))

(declare-fun c!646582 () Bool)

(assert (=> b!3733910 (= c!646582 ((_ is Star!10935) (regOne!22382 r!26968)))))

(declare-fun b!3733911 () Bool)

(assert (=> b!3733911 (= e!2309824 e!2309830)))

(declare-fun res!1515395 () Bool)

(assert (=> b!3733911 (= res!1515395 (not (nullable!3843 (reg!11264 (regOne!22382 r!26968)))))))

(assert (=> b!3733911 (=> (not res!1515395) (not e!2309830))))

(declare-fun b!3733912 () Bool)

(declare-fun res!1515397 () Bool)

(declare-fun e!2309829 () Bool)

(assert (=> b!3733912 (=> (not res!1515397) (not e!2309829))))

(declare-fun call!273168 () Bool)

(assert (=> b!3733912 (= res!1515397 call!273168)))

(declare-fun e!2309825 () Bool)

(assert (=> b!3733912 (= e!2309825 e!2309829)))

(declare-fun b!3733913 () Bool)

(assert (=> b!3733913 (= e!2309824 e!2309825)))

(declare-fun c!646581 () Bool)

(assert (=> b!3733913 (= c!646581 ((_ is Union!10935) (regOne!22382 r!26968)))))

(declare-fun b!3733914 () Bool)

(declare-fun e!2309826 () Bool)

(assert (=> b!3733914 (= e!2309826 e!2309827)))

(declare-fun res!1515394 () Bool)

(assert (=> b!3733914 (=> (not res!1515394) (not e!2309827))))

(assert (=> b!3733914 (= res!1515394 call!273168)))

(declare-fun b!3733915 () Bool)

(assert (=> b!3733915 (= e!2309829 call!273169)))

(declare-fun bm!273163 () Bool)

(assert (=> bm!273163 (= call!273169 call!273170)))

(declare-fun bm!273164 () Bool)

(assert (=> bm!273164 (= call!273168 (validRegex!5042 (ite c!646581 (regOne!22383 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968)))))))

(declare-fun b!3733916 () Bool)

(declare-fun res!1515398 () Bool)

(assert (=> b!3733916 (=> res!1515398 e!2309826)))

(assert (=> b!3733916 (= res!1515398 (not ((_ is Concat!17206) (regOne!22382 r!26968))))))

(assert (=> b!3733916 (= e!2309825 e!2309826)))

(declare-fun bm!273165 () Bool)

(assert (=> bm!273165 (= call!273170 (validRegex!5042 (ite c!646582 (reg!11264 (regOne!22382 r!26968)) (ite c!646581 (regTwo!22383 (regOne!22382 r!26968)) (regTwo!22382 (regOne!22382 r!26968))))))))

(assert (= (and d!1091083 (not res!1515396)) b!3733910))

(assert (= (and b!3733910 c!646582) b!3733911))

(assert (= (and b!3733910 (not c!646582)) b!3733913))

(assert (= (and b!3733911 res!1515395) b!3733908))

(assert (= (and b!3733913 c!646581) b!3733912))

(assert (= (and b!3733913 (not c!646581)) b!3733916))

(assert (= (and b!3733912 res!1515397) b!3733915))

(assert (= (and b!3733916 (not res!1515398)) b!3733914))

(assert (= (and b!3733914 res!1515394) b!3733909))

(assert (= (or b!3733915 b!3733909) bm!273163))

(assert (= (or b!3733912 b!3733914) bm!273164))

(assert (= (or b!3733908 bm!273163) bm!273165))

(declare-fun m!4231739 () Bool)

(assert (=> b!3733911 m!4231739))

(declare-fun m!4231741 () Bool)

(assert (=> bm!273164 m!4231741))

(declare-fun m!4231743 () Bool)

(assert (=> bm!273165 m!4231743))

(assert (=> d!1091003 d!1091083))

(declare-fun b!3733917 () Bool)

(declare-fun e!2309831 () List!39816)

(declare-fun call!273173 () List!39816)

(assert (=> b!3733917 (= e!2309831 call!273173)))

(declare-fun bm!273166 () Bool)

(declare-fun call!273172 () List!39816)

(assert (=> bm!273166 (= call!273172 call!273173)))

(declare-fun b!3733918 () Bool)

(declare-fun e!2309832 () List!39816)

(assert (=> b!3733918 (= e!2309831 e!2309832)))

(declare-fun c!646586 () Bool)

(assert (=> b!3733918 (= c!646586 ((_ is Union!10935) (ite c!646468 (reg!11264 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (ite c!646469 (regTwo!22383 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (regOne!22382 (derivativeStep!3370 (regOne!22382 r!26968) c!13797))))))))

(declare-fun call!273171 () List!39816)

(declare-fun bm!273167 () Bool)

(assert (=> bm!273167 (= call!273171 (usedCharacters!1198 (ite c!646586 (regOne!22383 (ite c!646468 (reg!11264 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (ite c!646469 (regTwo!22383 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (regOne!22382 (derivativeStep!3370 (regOne!22382 r!26968) c!13797))))) (regTwo!22382 (ite c!646468 (reg!11264 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (ite c!646469 (regTwo!22383 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (regOne!22382 (derivativeStep!3370 (regOne!22382 r!26968) c!13797))))))))))

(declare-fun b!3733919 () Bool)

(declare-fun call!273174 () List!39816)

(assert (=> b!3733919 (= e!2309832 call!273174)))

(declare-fun e!2309834 () List!39816)

(declare-fun b!3733920 () Bool)

(assert (=> b!3733920 (= e!2309834 (Cons!39692 (c!646401 (ite c!646468 (reg!11264 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (ite c!646469 (regTwo!22383 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (regOne!22382 (derivativeStep!3370 (regOne!22382 r!26968) c!13797))))) Nil!39692))))

(declare-fun bm!273169 () Bool)

(assert (=> bm!273169 (= call!273174 (++!9858 (ite c!646586 call!273171 call!273172) (ite c!646586 call!273172 call!273171)))))

(declare-fun b!3733921 () Bool)

(declare-fun e!2309833 () List!39816)

(assert (=> b!3733921 (= e!2309833 e!2309834)))

(declare-fun c!646584 () Bool)

(assert (=> b!3733921 (= c!646584 ((_ is ElementMatch!10935) (ite c!646468 (reg!11264 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (ite c!646469 (regTwo!22383 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (regOne!22382 (derivativeStep!3370 (regOne!22382 r!26968) c!13797))))))))

(declare-fun b!3733922 () Bool)

(assert (=> b!3733922 (= e!2309833 Nil!39692)))

(declare-fun b!3733923 () Bool)

(assert (=> b!3733923 (= e!2309832 call!273174)))

(declare-fun c!646585 () Bool)

(declare-fun b!3733924 () Bool)

(assert (=> b!3733924 (= c!646585 ((_ is Star!10935) (ite c!646468 (reg!11264 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (ite c!646469 (regTwo!22383 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (regOne!22382 (derivativeStep!3370 (regOne!22382 r!26968) c!13797))))))))

(assert (=> b!3733924 (= e!2309834 e!2309831)))

(declare-fun c!646583 () Bool)

(declare-fun d!1091085 () Bool)

(assert (=> d!1091085 (= c!646583 (or ((_ is EmptyExpr!10935) (ite c!646468 (reg!11264 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (ite c!646469 (regTwo!22383 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (regOne!22382 (derivativeStep!3370 (regOne!22382 r!26968) c!13797))))) ((_ is EmptyLang!10935) (ite c!646468 (reg!11264 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (ite c!646469 (regTwo!22383 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (regOne!22382 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)))))))))

(assert (=> d!1091085 (= (usedCharacters!1198 (ite c!646468 (reg!11264 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (ite c!646469 (regTwo!22383 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (regOne!22382 (derivativeStep!3370 (regOne!22382 r!26968) c!13797))))) e!2309833)))

(declare-fun bm!273168 () Bool)

(assert (=> bm!273168 (= call!273173 (usedCharacters!1198 (ite c!646585 (reg!11264 (ite c!646468 (reg!11264 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (ite c!646469 (regTwo!22383 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (regOne!22382 (derivativeStep!3370 (regOne!22382 r!26968) c!13797))))) (ite c!646586 (regTwo!22383 (ite c!646468 (reg!11264 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (ite c!646469 (regTwo!22383 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (regOne!22382 (derivativeStep!3370 (regOne!22382 r!26968) c!13797))))) (regOne!22382 (ite c!646468 (reg!11264 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (ite c!646469 (regTwo!22383 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)) (regOne!22382 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)))))))))))

(assert (= (and d!1091085 c!646583) b!3733922))

(assert (= (and d!1091085 (not c!646583)) b!3733921))

(assert (= (and b!3733921 c!646584) b!3733920))

(assert (= (and b!3733921 (not c!646584)) b!3733924))

(assert (= (and b!3733924 c!646585) b!3733917))

(assert (= (and b!3733924 (not c!646585)) b!3733918))

(assert (= (and b!3733918 c!646586) b!3733919))

(assert (= (and b!3733918 (not c!646586)) b!3733923))

(assert (= (or b!3733919 b!3733923) bm!273167))

(assert (= (or b!3733919 b!3733923) bm!273166))

(assert (= (or b!3733919 b!3733923) bm!273169))

(assert (= (or b!3733917 bm!273166) bm!273168))

(declare-fun m!4231745 () Bool)

(assert (=> bm!273167 m!4231745))

(declare-fun m!4231747 () Bool)

(assert (=> bm!273169 m!4231747))

(declare-fun m!4231749 () Bool)

(assert (=> bm!273168 m!4231749))

(assert (=> bm!273071 d!1091085))

(declare-fun b!3733925 () Bool)

(declare-fun e!2309841 () Bool)

(declare-fun call!273177 () Bool)

(assert (=> b!3733925 (= e!2309841 call!273177)))

(declare-fun d!1091087 () Bool)

(declare-fun res!1515401 () Bool)

(declare-fun e!2309839 () Bool)

(assert (=> d!1091087 (=> res!1515401 e!2309839)))

(assert (=> d!1091087 (= res!1515401 ((_ is ElementMatch!10935) (ite c!646471 (reg!11264 (regTwo!22382 r!26968)) (ite c!646470 (regTwo!22383 (regTwo!22382 r!26968)) (regTwo!22382 (regTwo!22382 r!26968))))))))

(assert (=> d!1091087 (= (validRegex!5042 (ite c!646471 (reg!11264 (regTwo!22382 r!26968)) (ite c!646470 (regTwo!22383 (regTwo!22382 r!26968)) (regTwo!22382 (regTwo!22382 r!26968))))) e!2309839)))

(declare-fun b!3733926 () Bool)

(declare-fun e!2309838 () Bool)

(declare-fun call!273176 () Bool)

(assert (=> b!3733926 (= e!2309838 call!273176)))

(declare-fun b!3733927 () Bool)

(declare-fun e!2309835 () Bool)

(assert (=> b!3733927 (= e!2309839 e!2309835)))

(declare-fun c!646588 () Bool)

(assert (=> b!3733927 (= c!646588 ((_ is Star!10935) (ite c!646471 (reg!11264 (regTwo!22382 r!26968)) (ite c!646470 (regTwo!22383 (regTwo!22382 r!26968)) (regTwo!22382 (regTwo!22382 r!26968))))))))

(declare-fun b!3733928 () Bool)

(assert (=> b!3733928 (= e!2309835 e!2309841)))

(declare-fun res!1515400 () Bool)

(assert (=> b!3733928 (= res!1515400 (not (nullable!3843 (reg!11264 (ite c!646471 (reg!11264 (regTwo!22382 r!26968)) (ite c!646470 (regTwo!22383 (regTwo!22382 r!26968)) (regTwo!22382 (regTwo!22382 r!26968))))))))))

(assert (=> b!3733928 (=> (not res!1515400) (not e!2309841))))

(declare-fun b!3733929 () Bool)

(declare-fun res!1515402 () Bool)

(declare-fun e!2309840 () Bool)

(assert (=> b!3733929 (=> (not res!1515402) (not e!2309840))))

(declare-fun call!273175 () Bool)

(assert (=> b!3733929 (= res!1515402 call!273175)))

(declare-fun e!2309836 () Bool)

(assert (=> b!3733929 (= e!2309836 e!2309840)))

(declare-fun b!3733930 () Bool)

(assert (=> b!3733930 (= e!2309835 e!2309836)))

(declare-fun c!646587 () Bool)

(assert (=> b!3733930 (= c!646587 ((_ is Union!10935) (ite c!646471 (reg!11264 (regTwo!22382 r!26968)) (ite c!646470 (regTwo!22383 (regTwo!22382 r!26968)) (regTwo!22382 (regTwo!22382 r!26968))))))))

(declare-fun b!3733931 () Bool)

(declare-fun e!2309837 () Bool)

(assert (=> b!3733931 (= e!2309837 e!2309838)))

(declare-fun res!1515399 () Bool)

(assert (=> b!3733931 (=> (not res!1515399) (not e!2309838))))

(assert (=> b!3733931 (= res!1515399 call!273175)))

(declare-fun b!3733932 () Bool)

(assert (=> b!3733932 (= e!2309840 call!273176)))

(declare-fun bm!273170 () Bool)

(assert (=> bm!273170 (= call!273176 call!273177)))

(declare-fun bm!273171 () Bool)

(assert (=> bm!273171 (= call!273175 (validRegex!5042 (ite c!646587 (regOne!22383 (ite c!646471 (reg!11264 (regTwo!22382 r!26968)) (ite c!646470 (regTwo!22383 (regTwo!22382 r!26968)) (regTwo!22382 (regTwo!22382 r!26968))))) (regOne!22382 (ite c!646471 (reg!11264 (regTwo!22382 r!26968)) (ite c!646470 (regTwo!22383 (regTwo!22382 r!26968)) (regTwo!22382 (regTwo!22382 r!26968))))))))))

(declare-fun b!3733933 () Bool)

(declare-fun res!1515403 () Bool)

(assert (=> b!3733933 (=> res!1515403 e!2309837)))

(assert (=> b!3733933 (= res!1515403 (not ((_ is Concat!17206) (ite c!646471 (reg!11264 (regTwo!22382 r!26968)) (ite c!646470 (regTwo!22383 (regTwo!22382 r!26968)) (regTwo!22382 (regTwo!22382 r!26968)))))))))

(assert (=> b!3733933 (= e!2309836 e!2309837)))

(declare-fun bm!273172 () Bool)

(assert (=> bm!273172 (= call!273177 (validRegex!5042 (ite c!646588 (reg!11264 (ite c!646471 (reg!11264 (regTwo!22382 r!26968)) (ite c!646470 (regTwo!22383 (regTwo!22382 r!26968)) (regTwo!22382 (regTwo!22382 r!26968))))) (ite c!646587 (regTwo!22383 (ite c!646471 (reg!11264 (regTwo!22382 r!26968)) (ite c!646470 (regTwo!22383 (regTwo!22382 r!26968)) (regTwo!22382 (regTwo!22382 r!26968))))) (regTwo!22382 (ite c!646471 (reg!11264 (regTwo!22382 r!26968)) (ite c!646470 (regTwo!22383 (regTwo!22382 r!26968)) (regTwo!22382 (regTwo!22382 r!26968)))))))))))

(assert (= (and d!1091087 (not res!1515401)) b!3733927))

(assert (= (and b!3733927 c!646588) b!3733928))

(assert (= (and b!3733927 (not c!646588)) b!3733930))

(assert (= (and b!3733928 res!1515400) b!3733925))

(assert (= (and b!3733930 c!646587) b!3733929))

(assert (= (and b!3733930 (not c!646587)) b!3733933))

(assert (= (and b!3733929 res!1515402) b!3733932))

(assert (= (and b!3733933 (not res!1515403)) b!3733931))

(assert (= (and b!3733931 res!1515399) b!3733926))

(assert (= (or b!3733932 b!3733926) bm!273170))

(assert (= (or b!3733929 b!3733931) bm!273171))

(assert (= (or b!3733925 bm!273170) bm!273172))

(declare-fun m!4231751 () Bool)

(assert (=> b!3733928 m!4231751))

(declare-fun m!4231753 () Bool)

(assert (=> bm!273171 m!4231753))

(declare-fun m!4231755 () Bool)

(assert (=> bm!273172 m!4231755))

(assert (=> bm!273075 d!1091087))

(declare-fun d!1091089 () Bool)

(declare-fun c!646589 () Bool)

(assert (=> d!1091089 (= c!646589 ((_ is Nil!39692) (usedCharacters!1198 r!26968)))))

(declare-fun e!2309842 () (InoxSet C!22056))

(assert (=> d!1091089 (= (content!5791 (usedCharacters!1198 r!26968)) e!2309842)))

(declare-fun b!3733934 () Bool)

(assert (=> b!3733934 (= e!2309842 ((as const (Array C!22056 Bool)) false))))

(declare-fun b!3733935 () Bool)

(assert (=> b!3733935 (= e!2309842 ((_ map or) (store ((as const (Array C!22056 Bool)) false) (h!45112 (usedCharacters!1198 r!26968)) true) (content!5791 (t!302499 (usedCharacters!1198 r!26968)))))))

(assert (= (and d!1091089 c!646589) b!3733934))

(assert (= (and d!1091089 (not c!646589)) b!3733935))

(declare-fun m!4231757 () Bool)

(assert (=> b!3733935 m!4231757))

(assert (=> b!3733935 m!4231643))

(assert (=> d!1090995 d!1091089))

(declare-fun b!3733936 () Bool)

(declare-fun e!2309843 () List!39816)

(declare-fun call!273180 () List!39816)

(assert (=> b!3733936 (= e!2309843 call!273180)))

(declare-fun bm!273173 () Bool)

(declare-fun call!273179 () List!39816)

(assert (=> bm!273173 (= call!273179 call!273180)))

(declare-fun b!3733937 () Bool)

(declare-fun e!2309844 () List!39816)

(assert (=> b!3733937 (= e!2309843 e!2309844)))

(declare-fun c!646593 () Bool)

(assert (=> b!3733937 (= c!646593 ((_ is Union!10935) (ite c!646507 (regOne!22383 (regTwo!22382 r!26968)) (regTwo!22382 (regTwo!22382 r!26968)))))))

(declare-fun call!273178 () List!39816)

(declare-fun bm!273174 () Bool)

(assert (=> bm!273174 (= call!273178 (usedCharacters!1198 (ite c!646593 (regOne!22383 (ite c!646507 (regOne!22383 (regTwo!22382 r!26968)) (regTwo!22382 (regTwo!22382 r!26968)))) (regTwo!22382 (ite c!646507 (regOne!22383 (regTwo!22382 r!26968)) (regTwo!22382 (regTwo!22382 r!26968)))))))))

(declare-fun b!3733938 () Bool)

(declare-fun call!273181 () List!39816)

(assert (=> b!3733938 (= e!2309844 call!273181)))

(declare-fun b!3733939 () Bool)

(declare-fun e!2309846 () List!39816)

(assert (=> b!3733939 (= e!2309846 (Cons!39692 (c!646401 (ite c!646507 (regOne!22383 (regTwo!22382 r!26968)) (regTwo!22382 (regTwo!22382 r!26968)))) Nil!39692))))

(declare-fun bm!273176 () Bool)

(assert (=> bm!273176 (= call!273181 (++!9858 (ite c!646593 call!273178 call!273179) (ite c!646593 call!273179 call!273178)))))

(declare-fun b!3733940 () Bool)

(declare-fun e!2309845 () List!39816)

(assert (=> b!3733940 (= e!2309845 e!2309846)))

(declare-fun c!646591 () Bool)

(assert (=> b!3733940 (= c!646591 ((_ is ElementMatch!10935) (ite c!646507 (regOne!22383 (regTwo!22382 r!26968)) (regTwo!22382 (regTwo!22382 r!26968)))))))

(declare-fun b!3733941 () Bool)

(assert (=> b!3733941 (= e!2309845 Nil!39692)))

(declare-fun b!3733942 () Bool)

(assert (=> b!3733942 (= e!2309844 call!273181)))

(declare-fun b!3733943 () Bool)

(declare-fun c!646592 () Bool)

(assert (=> b!3733943 (= c!646592 ((_ is Star!10935) (ite c!646507 (regOne!22383 (regTwo!22382 r!26968)) (regTwo!22382 (regTwo!22382 r!26968)))))))

(assert (=> b!3733943 (= e!2309846 e!2309843)))

(declare-fun d!1091091 () Bool)

(declare-fun c!646590 () Bool)

(assert (=> d!1091091 (= c!646590 (or ((_ is EmptyExpr!10935) (ite c!646507 (regOne!22383 (regTwo!22382 r!26968)) (regTwo!22382 (regTwo!22382 r!26968)))) ((_ is EmptyLang!10935) (ite c!646507 (regOne!22383 (regTwo!22382 r!26968)) (regTwo!22382 (regTwo!22382 r!26968))))))))

(assert (=> d!1091091 (= (usedCharacters!1198 (ite c!646507 (regOne!22383 (regTwo!22382 r!26968)) (regTwo!22382 (regTwo!22382 r!26968)))) e!2309845)))

(declare-fun bm!273175 () Bool)

(assert (=> bm!273175 (= call!273180 (usedCharacters!1198 (ite c!646592 (reg!11264 (ite c!646507 (regOne!22383 (regTwo!22382 r!26968)) (regTwo!22382 (regTwo!22382 r!26968)))) (ite c!646593 (regTwo!22383 (ite c!646507 (regOne!22383 (regTwo!22382 r!26968)) (regTwo!22382 (regTwo!22382 r!26968)))) (regOne!22382 (ite c!646507 (regOne!22383 (regTwo!22382 r!26968)) (regTwo!22382 (regTwo!22382 r!26968))))))))))

(assert (= (and d!1091091 c!646590) b!3733941))

(assert (= (and d!1091091 (not c!646590)) b!3733940))

(assert (= (and b!3733940 c!646591) b!3733939))

(assert (= (and b!3733940 (not c!646591)) b!3733943))

(assert (= (and b!3733943 c!646592) b!3733936))

(assert (= (and b!3733943 (not c!646592)) b!3733937))

(assert (= (and b!3733937 c!646593) b!3733938))

(assert (= (and b!3733937 (not c!646593)) b!3733942))

(assert (= (or b!3733938 b!3733942) bm!273174))

(assert (= (or b!3733938 b!3733942) bm!273173))

(assert (= (or b!3733938 b!3733942) bm!273176))

(assert (= (or b!3733936 bm!273173) bm!273175))

(declare-fun m!4231759 () Bool)

(assert (=> bm!273174 m!4231759))

(declare-fun m!4231761 () Bool)

(assert (=> bm!273176 m!4231761))

(declare-fun m!4231763 () Bool)

(assert (=> bm!273175 m!4231763))

(assert (=> bm!273102 d!1091091))

(declare-fun b!3733945 () Bool)

(declare-fun e!2309847 () List!39816)

(assert (=> b!3733945 (= e!2309847 (Cons!39692 (h!45112 (ite c!646469 call!273074 call!273075)) (++!9858 (t!302499 (ite c!646469 call!273074 call!273075)) (ite c!646469 call!273075 call!273074))))))

(declare-fun e!2309848 () Bool)

(declare-fun lt!1298839 () List!39816)

(declare-fun b!3733947 () Bool)

(assert (=> b!3733947 (= e!2309848 (or (not (= (ite c!646469 call!273075 call!273074) Nil!39692)) (= lt!1298839 (ite c!646469 call!273074 call!273075))))))

(declare-fun b!3733944 () Bool)

(assert (=> b!3733944 (= e!2309847 (ite c!646469 call!273075 call!273074))))

(declare-fun b!3733946 () Bool)

(declare-fun res!1515404 () Bool)

(assert (=> b!3733946 (=> (not res!1515404) (not e!2309848))))

(assert (=> b!3733946 (= res!1515404 (= (size!30043 lt!1298839) (+ (size!30043 (ite c!646469 call!273074 call!273075)) (size!30043 (ite c!646469 call!273075 call!273074)))))))

(declare-fun d!1091093 () Bool)

(assert (=> d!1091093 e!2309848))

(declare-fun res!1515405 () Bool)

(assert (=> d!1091093 (=> (not res!1515405) (not e!2309848))))

(assert (=> d!1091093 (= res!1515405 (= (content!5791 lt!1298839) ((_ map or) (content!5791 (ite c!646469 call!273074 call!273075)) (content!5791 (ite c!646469 call!273075 call!273074)))))))

(assert (=> d!1091093 (= lt!1298839 e!2309847)))

(declare-fun c!646594 () Bool)

(assert (=> d!1091093 (= c!646594 ((_ is Nil!39692) (ite c!646469 call!273074 call!273075)))))

(assert (=> d!1091093 (= (++!9858 (ite c!646469 call!273074 call!273075) (ite c!646469 call!273075 call!273074)) lt!1298839)))

(assert (= (and d!1091093 c!646594) b!3733944))

(assert (= (and d!1091093 (not c!646594)) b!3733945))

(assert (= (and d!1091093 res!1515405) b!3733946))

(assert (= (and b!3733946 res!1515404) b!3733947))

(declare-fun m!4231765 () Bool)

(assert (=> b!3733945 m!4231765))

(declare-fun m!4231767 () Bool)

(assert (=> b!3733946 m!4231767))

(declare-fun m!4231769 () Bool)

(assert (=> b!3733946 m!4231769))

(declare-fun m!4231771 () Bool)

(assert (=> b!3733946 m!4231771))

(declare-fun m!4231773 () Bool)

(assert (=> d!1091093 m!4231773))

(declare-fun m!4231775 () Bool)

(assert (=> d!1091093 m!4231775))

(declare-fun m!4231777 () Bool)

(assert (=> d!1091093 m!4231777))

(assert (=> bm!273072 d!1091093))

(declare-fun b!3733948 () Bool)

(declare-fun e!2309849 () List!39816)

(declare-fun call!273184 () List!39816)

(assert (=> b!3733948 (= e!2309849 call!273184)))

(declare-fun bm!273177 () Bool)

(declare-fun call!273183 () List!39816)

(assert (=> bm!273177 (= call!273183 call!273184)))

(declare-fun b!3733949 () Bool)

(declare-fun e!2309850 () List!39816)

(assert (=> b!3733949 (= e!2309849 e!2309850)))

(declare-fun c!646598 () Bool)

(assert (=> b!3733949 (= c!646598 ((_ is Union!10935) (ite c!646506 (reg!11264 (regTwo!22382 r!26968)) (ite c!646507 (regTwo!22383 (regTwo!22382 r!26968)) (regOne!22382 (regTwo!22382 r!26968))))))))

(declare-fun call!273182 () List!39816)

(declare-fun bm!273178 () Bool)

(assert (=> bm!273178 (= call!273182 (usedCharacters!1198 (ite c!646598 (regOne!22383 (ite c!646506 (reg!11264 (regTwo!22382 r!26968)) (ite c!646507 (regTwo!22383 (regTwo!22382 r!26968)) (regOne!22382 (regTwo!22382 r!26968))))) (regTwo!22382 (ite c!646506 (reg!11264 (regTwo!22382 r!26968)) (ite c!646507 (regTwo!22383 (regTwo!22382 r!26968)) (regOne!22382 (regTwo!22382 r!26968))))))))))

(declare-fun b!3733950 () Bool)

(declare-fun call!273185 () List!39816)

(assert (=> b!3733950 (= e!2309850 call!273185)))

(declare-fun b!3733951 () Bool)

(declare-fun e!2309852 () List!39816)

(assert (=> b!3733951 (= e!2309852 (Cons!39692 (c!646401 (ite c!646506 (reg!11264 (regTwo!22382 r!26968)) (ite c!646507 (regTwo!22383 (regTwo!22382 r!26968)) (regOne!22382 (regTwo!22382 r!26968))))) Nil!39692))))

(declare-fun bm!273180 () Bool)

(assert (=> bm!273180 (= call!273185 (++!9858 (ite c!646598 call!273182 call!273183) (ite c!646598 call!273183 call!273182)))))

(declare-fun b!3733952 () Bool)

(declare-fun e!2309851 () List!39816)

(assert (=> b!3733952 (= e!2309851 e!2309852)))

(declare-fun c!646596 () Bool)

(assert (=> b!3733952 (= c!646596 ((_ is ElementMatch!10935) (ite c!646506 (reg!11264 (regTwo!22382 r!26968)) (ite c!646507 (regTwo!22383 (regTwo!22382 r!26968)) (regOne!22382 (regTwo!22382 r!26968))))))))

(declare-fun b!3733953 () Bool)

(assert (=> b!3733953 (= e!2309851 Nil!39692)))

(declare-fun b!3733954 () Bool)

(assert (=> b!3733954 (= e!2309850 call!273185)))

(declare-fun c!646597 () Bool)

(declare-fun b!3733955 () Bool)

(assert (=> b!3733955 (= c!646597 ((_ is Star!10935) (ite c!646506 (reg!11264 (regTwo!22382 r!26968)) (ite c!646507 (regTwo!22383 (regTwo!22382 r!26968)) (regOne!22382 (regTwo!22382 r!26968))))))))

(assert (=> b!3733955 (= e!2309852 e!2309849)))

(declare-fun d!1091095 () Bool)

(declare-fun c!646595 () Bool)

(assert (=> d!1091095 (= c!646595 (or ((_ is EmptyExpr!10935) (ite c!646506 (reg!11264 (regTwo!22382 r!26968)) (ite c!646507 (regTwo!22383 (regTwo!22382 r!26968)) (regOne!22382 (regTwo!22382 r!26968))))) ((_ is EmptyLang!10935) (ite c!646506 (reg!11264 (regTwo!22382 r!26968)) (ite c!646507 (regTwo!22383 (regTwo!22382 r!26968)) (regOne!22382 (regTwo!22382 r!26968)))))))))

(assert (=> d!1091095 (= (usedCharacters!1198 (ite c!646506 (reg!11264 (regTwo!22382 r!26968)) (ite c!646507 (regTwo!22383 (regTwo!22382 r!26968)) (regOne!22382 (regTwo!22382 r!26968))))) e!2309851)))

(declare-fun bm!273179 () Bool)

(assert (=> bm!273179 (= call!273184 (usedCharacters!1198 (ite c!646597 (reg!11264 (ite c!646506 (reg!11264 (regTwo!22382 r!26968)) (ite c!646507 (regTwo!22383 (regTwo!22382 r!26968)) (regOne!22382 (regTwo!22382 r!26968))))) (ite c!646598 (regTwo!22383 (ite c!646506 (reg!11264 (regTwo!22382 r!26968)) (ite c!646507 (regTwo!22383 (regTwo!22382 r!26968)) (regOne!22382 (regTwo!22382 r!26968))))) (regOne!22382 (ite c!646506 (reg!11264 (regTwo!22382 r!26968)) (ite c!646507 (regTwo!22383 (regTwo!22382 r!26968)) (regOne!22382 (regTwo!22382 r!26968)))))))))))

(assert (= (and d!1091095 c!646595) b!3733953))

(assert (= (and d!1091095 (not c!646595)) b!3733952))

(assert (= (and b!3733952 c!646596) b!3733951))

(assert (= (and b!3733952 (not c!646596)) b!3733955))

(assert (= (and b!3733955 c!646597) b!3733948))

(assert (= (and b!3733955 (not c!646597)) b!3733949))

(assert (= (and b!3733949 c!646598) b!3733950))

(assert (= (and b!3733949 (not c!646598)) b!3733954))

(assert (= (or b!3733950 b!3733954) bm!273178))

(assert (= (or b!3733950 b!3733954) bm!273177))

(assert (= (or b!3733950 b!3733954) bm!273180))

(assert (= (or b!3733948 bm!273177) bm!273179))

(declare-fun m!4231779 () Bool)

(assert (=> bm!273178 m!4231779))

(declare-fun m!4231781 () Bool)

(assert (=> bm!273180 m!4231781))

(declare-fun m!4231783 () Bool)

(assert (=> bm!273179 m!4231783))

(assert (=> bm!273103 d!1091095))

(declare-fun b!3733956 () Bool)

(declare-fun e!2309856 () Int)

(declare-fun call!273188 () Int)

(assert (=> b!3733956 (= e!2309856 (+ 1 call!273188))))

(declare-fun call!273187 () Int)

(declare-fun c!646603 () Bool)

(declare-fun bm!273181 () Bool)

(declare-fun c!646599 () Bool)

(assert (=> bm!273181 (= call!273187 (RegexPrimitiveSize!147 (ite c!646603 (regOne!22382 (ite c!646494 (regOne!22382 (regTwo!22382 r!26968)) (ite c!646490 (reg!11264 (regTwo!22382 r!26968)) (regOne!22383 (regTwo!22382 r!26968))))) (ite c!646599 (reg!11264 (ite c!646494 (regOne!22382 (regTwo!22382 r!26968)) (ite c!646490 (reg!11264 (regTwo!22382 r!26968)) (regOne!22383 (regTwo!22382 r!26968))))) (regOne!22383 (ite c!646494 (regOne!22382 (regTwo!22382 r!26968)) (ite c!646490 (reg!11264 (regTwo!22382 r!26968)) (regOne!22383 (regTwo!22382 r!26968)))))))))))

(declare-fun bm!273182 () Bool)

(assert (=> bm!273182 (= call!273188 call!273187)))

(declare-fun b!3733957 () Bool)

(declare-fun e!2309855 () Int)

(declare-fun e!2309857 () Int)

(assert (=> b!3733957 (= e!2309855 e!2309857)))

(assert (=> b!3733957 (= c!646603 ((_ is Concat!17206) (ite c!646494 (regOne!22382 (regTwo!22382 r!26968)) (ite c!646490 (reg!11264 (regTwo!22382 r!26968)) (regOne!22383 (regTwo!22382 r!26968))))))))

(declare-fun b!3733958 () Bool)

(declare-fun c!646600 () Bool)

(assert (=> b!3733958 (= c!646600 ((_ is EmptyLang!10935) (ite c!646494 (regOne!22382 (regTwo!22382 r!26968)) (ite c!646490 (reg!11264 (regTwo!22382 r!26968)) (regOne!22383 (regTwo!22382 r!26968))))))))

(declare-fun e!2309854 () Int)

(assert (=> b!3733958 (= e!2309856 e!2309854)))

(declare-fun b!3733959 () Bool)

(declare-fun call!273186 () Int)

(assert (=> b!3733959 (= e!2309857 (+ 1 call!273187 call!273186))))

(declare-fun b!3733960 () Bool)

(declare-fun c!646601 () Bool)

(assert (=> b!3733960 (= c!646601 ((_ is EmptyExpr!10935) (ite c!646494 (regOne!22382 (regTwo!22382 r!26968)) (ite c!646490 (reg!11264 (regTwo!22382 r!26968)) (regOne!22383 (regTwo!22382 r!26968))))))))

(declare-fun e!2309853 () Int)

(assert (=> b!3733960 (= e!2309857 e!2309853)))

(declare-fun b!3733961 () Bool)

(assert (=> b!3733961 (= e!2309853 e!2309856)))

(assert (=> b!3733961 (= c!646599 ((_ is Star!10935) (ite c!646494 (regOne!22382 (regTwo!22382 r!26968)) (ite c!646490 (reg!11264 (regTwo!22382 r!26968)) (regOne!22383 (regTwo!22382 r!26968))))))))

(declare-fun b!3733963 () Bool)

(assert (=> b!3733963 (= e!2309855 1)))

(declare-fun b!3733964 () Bool)

(assert (=> b!3733964 (= e!2309854 0)))

(declare-fun bm!273183 () Bool)

(assert (=> bm!273183 (= call!273186 (RegexPrimitiveSize!147 (ite c!646603 (regTwo!22382 (ite c!646494 (regOne!22382 (regTwo!22382 r!26968)) (ite c!646490 (reg!11264 (regTwo!22382 r!26968)) (regOne!22383 (regTwo!22382 r!26968))))) (regTwo!22383 (ite c!646494 (regOne!22382 (regTwo!22382 r!26968)) (ite c!646490 (reg!11264 (regTwo!22382 r!26968)) (regOne!22383 (regTwo!22382 r!26968))))))))))

(declare-fun b!3733965 () Bool)

(assert (=> b!3733965 (= e!2309853 0)))

(declare-fun b!3733962 () Bool)

(assert (=> b!3733962 (= e!2309854 (+ 1 call!273188 call!273186))))

(declare-fun d!1091097 () Bool)

(declare-fun lt!1298840 () Int)

(assert (=> d!1091097 (>= lt!1298840 0)))

(assert (=> d!1091097 (= lt!1298840 e!2309855)))

(declare-fun c!646602 () Bool)

(assert (=> d!1091097 (= c!646602 ((_ is ElementMatch!10935) (ite c!646494 (regOne!22382 (regTwo!22382 r!26968)) (ite c!646490 (reg!11264 (regTwo!22382 r!26968)) (regOne!22383 (regTwo!22382 r!26968))))))))

(assert (=> d!1091097 (= (RegexPrimitiveSize!147 (ite c!646494 (regOne!22382 (regTwo!22382 r!26968)) (ite c!646490 (reg!11264 (regTwo!22382 r!26968)) (regOne!22383 (regTwo!22382 r!26968))))) lt!1298840)))

(assert (= (and d!1091097 c!646602) b!3733963))

(assert (= (and d!1091097 (not c!646602)) b!3733957))

(assert (= (and b!3733957 c!646603) b!3733959))

(assert (= (and b!3733957 (not c!646603)) b!3733960))

(assert (= (and b!3733960 c!646601) b!3733965))

(assert (= (and b!3733960 (not c!646601)) b!3733961))

(assert (= (and b!3733961 c!646599) b!3733956))

(assert (= (and b!3733961 (not c!646599)) b!3733958))

(assert (= (and b!3733958 c!646600) b!3733964))

(assert (= (and b!3733958 (not c!646600)) b!3733962))

(assert (= (or b!3733956 b!3733962) bm!273182))

(assert (= (or b!3733959 bm!273182) bm!273181))

(assert (= (or b!3733959 b!3733962) bm!273183))

(declare-fun m!4231785 () Bool)

(assert (=> bm!273181 m!4231785))

(declare-fun m!4231787 () Bool)

(assert (=> bm!273183 m!4231787))

(assert (=> bm!273091 d!1091097))

(declare-fun b!3733966 () Bool)

(declare-fun e!2309859 () Regex!10935)

(declare-fun call!273192 () Regex!10935)

(declare-fun call!273189 () Regex!10935)

(assert (=> b!3733966 (= e!2309859 (Union!10935 call!273192 call!273189))))

(declare-fun bm!273184 () Bool)

(declare-fun call!273190 () Regex!10935)

(declare-fun call!273191 () Regex!10935)

(assert (=> bm!273184 (= call!273190 call!273191)))

(declare-fun b!3733967 () Bool)

(declare-fun e!2309862 () Regex!10935)

(assert (=> b!3733967 (= e!2309862 (Concat!17206 call!273191 (ite c!646465 (regTwo!22383 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968)))))))

(declare-fun b!3733968 () Bool)

(declare-fun e!2309860 () Regex!10935)

(assert (=> b!3733968 (= e!2309860 (Union!10935 (Concat!17206 call!273189 (regTwo!22382 (ite c!646465 (regTwo!22383 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968))))) call!273190))))

(declare-fun b!3733969 () Bool)

(declare-fun c!646606 () Bool)

(assert (=> b!3733969 (= c!646606 (nullable!3843 (regOne!22382 (ite c!646465 (regTwo!22383 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968))))))))

(assert (=> b!3733969 (= e!2309862 e!2309860)))

(declare-fun c!646607 () Bool)

(declare-fun c!646608 () Bool)

(declare-fun bm!273185 () Bool)

(assert (=> bm!273185 (= call!273192 (derivativeStep!3370 (ite c!646608 (regOne!22383 (ite c!646465 (regTwo!22383 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968)))) (ite c!646607 (reg!11264 (ite c!646465 (regTwo!22383 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968)))) (ite c!646606 (regTwo!22382 (ite c!646465 (regTwo!22383 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968)))) (regOne!22382 (ite c!646465 (regTwo!22383 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968))))))) c!13797))))

(declare-fun b!3733970 () Bool)

(assert (=> b!3733970 (= c!646608 ((_ is Union!10935) (ite c!646465 (regTwo!22383 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968)))))))

(declare-fun e!2309861 () Regex!10935)

(assert (=> b!3733970 (= e!2309861 e!2309859)))

(declare-fun b!3733971 () Bool)

(assert (=> b!3733971 (= e!2309861 (ite (= c!13797 (c!646401 (ite c!646465 (regTwo!22383 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968))))) EmptyExpr!10935 EmptyLang!10935))))

(declare-fun b!3733972 () Bool)

(assert (=> b!3733972 (= e!2309860 (Union!10935 (Concat!17206 call!273190 (regTwo!22382 (ite c!646465 (regTwo!22383 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968))))) EmptyLang!10935))))

(declare-fun b!3733973 () Bool)

(declare-fun e!2309858 () Regex!10935)

(assert (=> b!3733973 (= e!2309858 e!2309861)))

(declare-fun c!646604 () Bool)

(assert (=> b!3733973 (= c!646604 ((_ is ElementMatch!10935) (ite c!646465 (regTwo!22383 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968)))))))

(declare-fun bm!273186 () Bool)

(assert (=> bm!273186 (= call!273191 call!273192)))

(declare-fun b!3733974 () Bool)

(assert (=> b!3733974 (= e!2309859 e!2309862)))

(assert (=> b!3733974 (= c!646607 ((_ is Star!10935) (ite c!646465 (regTwo!22383 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968)))))))

(declare-fun bm!273187 () Bool)

(assert (=> bm!273187 (= call!273189 (derivativeStep!3370 (ite c!646608 (regTwo!22383 (ite c!646465 (regTwo!22383 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968)))) (regOne!22382 (ite c!646465 (regTwo!22383 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968))))) c!13797))))

(declare-fun d!1091099 () Bool)

(declare-fun lt!1298841 () Regex!10935)

(assert (=> d!1091099 (validRegex!5042 lt!1298841)))

(assert (=> d!1091099 (= lt!1298841 e!2309858)))

(declare-fun c!646605 () Bool)

(assert (=> d!1091099 (= c!646605 (or ((_ is EmptyExpr!10935) (ite c!646465 (regTwo!22383 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968)))) ((_ is EmptyLang!10935) (ite c!646465 (regTwo!22383 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968))))))))

(assert (=> d!1091099 (validRegex!5042 (ite c!646465 (regTwo!22383 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968))))))

(assert (=> d!1091099 (= (derivativeStep!3370 (ite c!646465 (regTwo!22383 (regOne!22382 r!26968)) (regOne!22382 (regOne!22382 r!26968))) c!13797) lt!1298841)))

(declare-fun b!3733975 () Bool)

(assert (=> b!3733975 (= e!2309858 EmptyLang!10935)))

(assert (= (and d!1091099 c!646605) b!3733975))

(assert (= (and d!1091099 (not c!646605)) b!3733973))

(assert (= (and b!3733973 c!646604) b!3733971))

(assert (= (and b!3733973 (not c!646604)) b!3733970))

(assert (= (and b!3733970 c!646608) b!3733966))

(assert (= (and b!3733970 (not c!646608)) b!3733974))

(assert (= (and b!3733974 c!646607) b!3733967))

(assert (= (and b!3733974 (not c!646607)) b!3733969))

(assert (= (and b!3733969 c!646606) b!3733968))

(assert (= (and b!3733969 (not c!646606)) b!3733972))

(assert (= (or b!3733968 b!3733972) bm!273184))

(assert (= (or b!3733967 bm!273184) bm!273186))

(assert (= (or b!3733966 bm!273186) bm!273185))

(assert (= (or b!3733966 b!3733968) bm!273187))

(declare-fun m!4231789 () Bool)

(assert (=> b!3733969 m!4231789))

(declare-fun m!4231791 () Bool)

(assert (=> bm!273185 m!4231791))

(declare-fun m!4231793 () Bool)

(assert (=> bm!273187 m!4231793))

(declare-fun m!4231795 () Bool)

(assert (=> d!1091099 m!4231795))

(declare-fun m!4231797 () Bool)

(assert (=> d!1091099 m!4231797))

(assert (=> bm!273068 d!1091099))

(declare-fun lt!1298842 () Bool)

(declare-fun d!1091101 () Bool)

(assert (=> d!1091101 (= lt!1298842 (select (content!5791 (t!302499 (usedCharacters!1198 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)))) cNot!42))))

(declare-fun e!2309863 () Bool)

(assert (=> d!1091101 (= lt!1298842 e!2309863)))

(declare-fun res!1515406 () Bool)

(assert (=> d!1091101 (=> (not res!1515406) (not e!2309863))))

(assert (=> d!1091101 (= res!1515406 ((_ is Cons!39692) (t!302499 (usedCharacters!1198 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)))))))

(assert (=> d!1091101 (= (contains!8028 (t!302499 (usedCharacters!1198 (derivativeStep!3370 (regOne!22382 r!26968) c!13797))) cNot!42) lt!1298842)))

(declare-fun b!3733976 () Bool)

(declare-fun e!2309864 () Bool)

(assert (=> b!3733976 (= e!2309863 e!2309864)))

(declare-fun res!1515407 () Bool)

(assert (=> b!3733976 (=> res!1515407 e!2309864)))

(assert (=> b!3733976 (= res!1515407 (= (h!45112 (t!302499 (usedCharacters!1198 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)))) cNot!42))))

(declare-fun b!3733977 () Bool)

(assert (=> b!3733977 (= e!2309864 (contains!8028 (t!302499 (t!302499 (usedCharacters!1198 (derivativeStep!3370 (regOne!22382 r!26968) c!13797)))) cNot!42))))

(assert (= (and d!1091101 res!1515406) b!3733976))

(assert (= (and b!3733976 (not res!1515407)) b!3733977))

(assert (=> d!1091101 m!4231651))

(declare-fun m!4231799 () Bool)

(assert (=> d!1091101 m!4231799))

(declare-fun m!4231801 () Bool)

(assert (=> b!3733977 m!4231801))

(assert (=> b!3733580 d!1091101))

(declare-fun d!1091103 () Bool)

(declare-fun c!646609 () Bool)

(assert (=> d!1091103 (= c!646609 ((_ is Nil!39692) (usedCharacters!1198 (regTwo!22382 r!26968))))))

(declare-fun e!2309865 () (InoxSet C!22056))

(assert (=> d!1091103 (= (content!5791 (usedCharacters!1198 (regTwo!22382 r!26968))) e!2309865)))

(declare-fun b!3733978 () Bool)

(assert (=> b!3733978 (= e!2309865 ((as const (Array C!22056 Bool)) false))))

(declare-fun b!3733979 () Bool)

(assert (=> b!3733979 (= e!2309865 ((_ map or) (store ((as const (Array C!22056 Bool)) false) (h!45112 (usedCharacters!1198 (regTwo!22382 r!26968))) true) (content!5791 (t!302499 (usedCharacters!1198 (regTwo!22382 r!26968))))))))

(assert (= (and d!1091103 c!646609) b!3733978))

(assert (= (and d!1091103 (not c!646609)) b!3733979))

(declare-fun m!4231803 () Bool)

(assert (=> b!3733979 m!4231803))

(assert (=> b!3733979 m!4231675))

(assert (=> d!1091029 d!1091103))

(declare-fun b!3733981 () Bool)

(declare-fun e!2309866 () Bool)

(declare-fun tp!1136458 () Bool)

(declare-fun tp!1136455 () Bool)

(assert (=> b!3733981 (= e!2309866 (and tp!1136458 tp!1136455))))

(declare-fun b!3733982 () Bool)

(declare-fun tp!1136457 () Bool)

(assert (=> b!3733982 (= e!2309866 tp!1136457)))

(assert (=> b!3733683 (= tp!1136398 e!2309866)))

(declare-fun b!3733980 () Bool)

(assert (=> b!3733980 (= e!2309866 tp_is_empty!18885)))

(declare-fun b!3733983 () Bool)

(declare-fun tp!1136456 () Bool)

(declare-fun tp!1136459 () Bool)

(assert (=> b!3733983 (= e!2309866 (and tp!1136456 tp!1136459))))

(assert (= (and b!3733683 ((_ is ElementMatch!10935) (regOne!22382 (reg!11264 r!26968)))) b!3733980))

(assert (= (and b!3733683 ((_ is Concat!17206) (regOne!22382 (reg!11264 r!26968)))) b!3733981))

(assert (= (and b!3733683 ((_ is Star!10935) (regOne!22382 (reg!11264 r!26968)))) b!3733982))

(assert (= (and b!3733683 ((_ is Union!10935) (regOne!22382 (reg!11264 r!26968)))) b!3733983))

(declare-fun b!3733985 () Bool)

(declare-fun e!2309867 () Bool)

(declare-fun tp!1136463 () Bool)

(declare-fun tp!1136460 () Bool)

(assert (=> b!3733985 (= e!2309867 (and tp!1136463 tp!1136460))))

(declare-fun b!3733986 () Bool)

(declare-fun tp!1136462 () Bool)

(assert (=> b!3733986 (= e!2309867 tp!1136462)))

(assert (=> b!3733683 (= tp!1136395 e!2309867)))

(declare-fun b!3733984 () Bool)

(assert (=> b!3733984 (= e!2309867 tp_is_empty!18885)))

(declare-fun b!3733987 () Bool)

(declare-fun tp!1136461 () Bool)

(declare-fun tp!1136464 () Bool)

(assert (=> b!3733987 (= e!2309867 (and tp!1136461 tp!1136464))))

(assert (= (and b!3733683 ((_ is ElementMatch!10935) (regTwo!22382 (reg!11264 r!26968)))) b!3733984))

(assert (= (and b!3733683 ((_ is Concat!17206) (regTwo!22382 (reg!11264 r!26968)))) b!3733985))

(assert (= (and b!3733683 ((_ is Star!10935) (regTwo!22382 (reg!11264 r!26968)))) b!3733986))

(assert (= (and b!3733683 ((_ is Union!10935) (regTwo!22382 (reg!11264 r!26968)))) b!3733987))

(declare-fun b!3733989 () Bool)

(declare-fun e!2309868 () Bool)

(declare-fun tp!1136468 () Bool)

(declare-fun tp!1136465 () Bool)

(assert (=> b!3733989 (= e!2309868 (and tp!1136468 tp!1136465))))

(declare-fun b!3733990 () Bool)

(declare-fun tp!1136467 () Bool)

(assert (=> b!3733990 (= e!2309868 tp!1136467)))

(assert (=> b!3733684 (= tp!1136397 e!2309868)))

(declare-fun b!3733988 () Bool)

(assert (=> b!3733988 (= e!2309868 tp_is_empty!18885)))

(declare-fun b!3733991 () Bool)

(declare-fun tp!1136466 () Bool)

(declare-fun tp!1136469 () Bool)

(assert (=> b!3733991 (= e!2309868 (and tp!1136466 tp!1136469))))

(assert (= (and b!3733684 ((_ is ElementMatch!10935) (reg!11264 (reg!11264 r!26968)))) b!3733988))

(assert (= (and b!3733684 ((_ is Concat!17206) (reg!11264 (reg!11264 r!26968)))) b!3733989))

(assert (= (and b!3733684 ((_ is Star!10935) (reg!11264 (reg!11264 r!26968)))) b!3733990))

(assert (= (and b!3733684 ((_ is Union!10935) (reg!11264 (reg!11264 r!26968)))) b!3733991))

(declare-fun b!3733993 () Bool)

(declare-fun e!2309869 () Bool)

(declare-fun tp!1136473 () Bool)

(declare-fun tp!1136470 () Bool)

(assert (=> b!3733993 (= e!2309869 (and tp!1136473 tp!1136470))))

(declare-fun b!3733994 () Bool)

(declare-fun tp!1136472 () Bool)

(assert (=> b!3733994 (= e!2309869 tp!1136472)))

(assert (=> b!3733689 (= tp!1136401 e!2309869)))

(declare-fun b!3733992 () Bool)

(assert (=> b!3733992 (= e!2309869 tp_is_empty!18885)))

(declare-fun b!3733995 () Bool)

(declare-fun tp!1136471 () Bool)

(declare-fun tp!1136474 () Bool)

(assert (=> b!3733995 (= e!2309869 (and tp!1136471 tp!1136474))))

(assert (= (and b!3733689 ((_ is ElementMatch!10935) (regOne!22383 (regOne!22382 r!26968)))) b!3733992))

(assert (= (and b!3733689 ((_ is Concat!17206) (regOne!22383 (regOne!22382 r!26968)))) b!3733993))

(assert (= (and b!3733689 ((_ is Star!10935) (regOne!22383 (regOne!22382 r!26968)))) b!3733994))

(assert (= (and b!3733689 ((_ is Union!10935) (regOne!22383 (regOne!22382 r!26968)))) b!3733995))

(declare-fun b!3733997 () Bool)

(declare-fun e!2309870 () Bool)

(declare-fun tp!1136478 () Bool)

(declare-fun tp!1136475 () Bool)

(assert (=> b!3733997 (= e!2309870 (and tp!1136478 tp!1136475))))

(declare-fun b!3733998 () Bool)

(declare-fun tp!1136477 () Bool)

(assert (=> b!3733998 (= e!2309870 tp!1136477)))

(assert (=> b!3733689 (= tp!1136404 e!2309870)))

(declare-fun b!3733996 () Bool)

(assert (=> b!3733996 (= e!2309870 tp_is_empty!18885)))

(declare-fun b!3733999 () Bool)

(declare-fun tp!1136476 () Bool)

(declare-fun tp!1136479 () Bool)

(assert (=> b!3733999 (= e!2309870 (and tp!1136476 tp!1136479))))

(assert (= (and b!3733689 ((_ is ElementMatch!10935) (regTwo!22383 (regOne!22382 r!26968)))) b!3733996))

(assert (= (and b!3733689 ((_ is Concat!17206) (regTwo!22383 (regOne!22382 r!26968)))) b!3733997))

(assert (= (and b!3733689 ((_ is Star!10935) (regTwo!22383 (regOne!22382 r!26968)))) b!3733998))

(assert (= (and b!3733689 ((_ is Union!10935) (regTwo!22383 (regOne!22382 r!26968)))) b!3733999))

(declare-fun b!3734001 () Bool)

(declare-fun e!2309871 () Bool)

(declare-fun tp!1136483 () Bool)

(declare-fun tp!1136480 () Bool)

(assert (=> b!3734001 (= e!2309871 (and tp!1136483 tp!1136480))))

(declare-fun b!3734002 () Bool)

(declare-fun tp!1136482 () Bool)

(assert (=> b!3734002 (= e!2309871 tp!1136482)))

(assert (=> b!3733693 (= tp!1136406 e!2309871)))

(declare-fun b!3734000 () Bool)

(assert (=> b!3734000 (= e!2309871 tp_is_empty!18885)))

(declare-fun b!3734003 () Bool)

(declare-fun tp!1136481 () Bool)

(declare-fun tp!1136484 () Bool)

(assert (=> b!3734003 (= e!2309871 (and tp!1136481 tp!1136484))))

(assert (= (and b!3733693 ((_ is ElementMatch!10935) (regOne!22383 (regTwo!22382 r!26968)))) b!3734000))

(assert (= (and b!3733693 ((_ is Concat!17206) (regOne!22383 (regTwo!22382 r!26968)))) b!3734001))

(assert (= (and b!3733693 ((_ is Star!10935) (regOne!22383 (regTwo!22382 r!26968)))) b!3734002))

(assert (= (and b!3733693 ((_ is Union!10935) (regOne!22383 (regTwo!22382 r!26968)))) b!3734003))

(declare-fun b!3734005 () Bool)

(declare-fun e!2309872 () Bool)

(declare-fun tp!1136488 () Bool)

(declare-fun tp!1136485 () Bool)

(assert (=> b!3734005 (= e!2309872 (and tp!1136488 tp!1136485))))

(declare-fun b!3734006 () Bool)

(declare-fun tp!1136487 () Bool)

(assert (=> b!3734006 (= e!2309872 tp!1136487)))

(assert (=> b!3733693 (= tp!1136409 e!2309872)))

(declare-fun b!3734004 () Bool)

(assert (=> b!3734004 (= e!2309872 tp_is_empty!18885)))

(declare-fun b!3734007 () Bool)

(declare-fun tp!1136486 () Bool)

(declare-fun tp!1136489 () Bool)

(assert (=> b!3734007 (= e!2309872 (and tp!1136486 tp!1136489))))

(assert (= (and b!3733693 ((_ is ElementMatch!10935) (regTwo!22383 (regTwo!22382 r!26968)))) b!3734004))

(assert (= (and b!3733693 ((_ is Concat!17206) (regTwo!22383 (regTwo!22382 r!26968)))) b!3734005))

(assert (= (and b!3733693 ((_ is Star!10935) (regTwo!22383 (regTwo!22382 r!26968)))) b!3734006))

(assert (= (and b!3733693 ((_ is Union!10935) (regTwo!22383 (regTwo!22382 r!26968)))) b!3734007))

(declare-fun b!3734009 () Bool)

(declare-fun e!2309873 () Bool)

(declare-fun tp!1136493 () Bool)

(declare-fun tp!1136490 () Bool)

(assert (=> b!3734009 (= e!2309873 (and tp!1136493 tp!1136490))))

(declare-fun b!3734010 () Bool)

(declare-fun tp!1136492 () Bool)

(assert (=> b!3734010 (= e!2309873 tp!1136492)))

(assert (=> b!3733688 (= tp!1136402 e!2309873)))

(declare-fun b!3734008 () Bool)

(assert (=> b!3734008 (= e!2309873 tp_is_empty!18885)))

(declare-fun b!3734011 () Bool)

(declare-fun tp!1136491 () Bool)

(declare-fun tp!1136494 () Bool)

(assert (=> b!3734011 (= e!2309873 (and tp!1136491 tp!1136494))))

(assert (= (and b!3733688 ((_ is ElementMatch!10935) (reg!11264 (regOne!22382 r!26968)))) b!3734008))

(assert (= (and b!3733688 ((_ is Concat!17206) (reg!11264 (regOne!22382 r!26968)))) b!3734009))

(assert (= (and b!3733688 ((_ is Star!10935) (reg!11264 (regOne!22382 r!26968)))) b!3734010))

(assert (= (and b!3733688 ((_ is Union!10935) (reg!11264 (regOne!22382 r!26968)))) b!3734011))

(declare-fun b!3734013 () Bool)

(declare-fun e!2309874 () Bool)

(declare-fun tp!1136498 () Bool)

(declare-fun tp!1136495 () Bool)

(assert (=> b!3734013 (= e!2309874 (and tp!1136498 tp!1136495))))

(declare-fun b!3734014 () Bool)

(declare-fun tp!1136497 () Bool)

(assert (=> b!3734014 (= e!2309874 tp!1136497)))

(assert (=> b!3733697 (= tp!1136411 e!2309874)))

(declare-fun b!3734012 () Bool)

(assert (=> b!3734012 (= e!2309874 tp_is_empty!18885)))

(declare-fun b!3734015 () Bool)

(declare-fun tp!1136496 () Bool)

(declare-fun tp!1136499 () Bool)

(assert (=> b!3734015 (= e!2309874 (and tp!1136496 tp!1136499))))

(assert (= (and b!3733697 ((_ is ElementMatch!10935) (regOne!22383 (regOne!22383 r!26968)))) b!3734012))

(assert (= (and b!3733697 ((_ is Concat!17206) (regOne!22383 (regOne!22383 r!26968)))) b!3734013))

(assert (= (and b!3733697 ((_ is Star!10935) (regOne!22383 (regOne!22383 r!26968)))) b!3734014))

(assert (= (and b!3733697 ((_ is Union!10935) (regOne!22383 (regOne!22383 r!26968)))) b!3734015))

(declare-fun b!3734017 () Bool)

(declare-fun e!2309875 () Bool)

(declare-fun tp!1136503 () Bool)

(declare-fun tp!1136500 () Bool)

(assert (=> b!3734017 (= e!2309875 (and tp!1136503 tp!1136500))))

(declare-fun b!3734018 () Bool)

(declare-fun tp!1136502 () Bool)

(assert (=> b!3734018 (= e!2309875 tp!1136502)))

(assert (=> b!3733697 (= tp!1136414 e!2309875)))

(declare-fun b!3734016 () Bool)

(assert (=> b!3734016 (= e!2309875 tp_is_empty!18885)))

(declare-fun b!3734019 () Bool)

(declare-fun tp!1136501 () Bool)

(declare-fun tp!1136504 () Bool)

(assert (=> b!3734019 (= e!2309875 (and tp!1136501 tp!1136504))))

(assert (= (and b!3733697 ((_ is ElementMatch!10935) (regTwo!22383 (regOne!22383 r!26968)))) b!3734016))

(assert (= (and b!3733697 ((_ is Concat!17206) (regTwo!22383 (regOne!22383 r!26968)))) b!3734017))

(assert (= (and b!3733697 ((_ is Star!10935) (regTwo!22383 (regOne!22383 r!26968)))) b!3734018))

(assert (= (and b!3733697 ((_ is Union!10935) (regTwo!22383 (regOne!22383 r!26968)))) b!3734019))

(declare-fun b!3734021 () Bool)

(declare-fun e!2309876 () Bool)

(declare-fun tp!1136508 () Bool)

(declare-fun tp!1136505 () Bool)

(assert (=> b!3734021 (= e!2309876 (and tp!1136508 tp!1136505))))

(declare-fun b!3734022 () Bool)

(declare-fun tp!1136507 () Bool)

(assert (=> b!3734022 (= e!2309876 tp!1136507)))

(assert (=> b!3733692 (= tp!1136407 e!2309876)))

(declare-fun b!3734020 () Bool)

(assert (=> b!3734020 (= e!2309876 tp_is_empty!18885)))

(declare-fun b!3734023 () Bool)

(declare-fun tp!1136506 () Bool)

(declare-fun tp!1136509 () Bool)

(assert (=> b!3734023 (= e!2309876 (and tp!1136506 tp!1136509))))

(assert (= (and b!3733692 ((_ is ElementMatch!10935) (reg!11264 (regTwo!22382 r!26968)))) b!3734020))

(assert (= (and b!3733692 ((_ is Concat!17206) (reg!11264 (regTwo!22382 r!26968)))) b!3734021))

(assert (= (and b!3733692 ((_ is Star!10935) (reg!11264 (regTwo!22382 r!26968)))) b!3734022))

(assert (= (and b!3733692 ((_ is Union!10935) (reg!11264 (regTwo!22382 r!26968)))) b!3734023))

(declare-fun b!3734025 () Bool)

(declare-fun e!2309877 () Bool)

(declare-fun tp!1136513 () Bool)

(declare-fun tp!1136510 () Bool)

(assert (=> b!3734025 (= e!2309877 (and tp!1136513 tp!1136510))))

(declare-fun b!3734026 () Bool)

(declare-fun tp!1136512 () Bool)

(assert (=> b!3734026 (= e!2309877 tp!1136512)))

(assert (=> b!3733701 (= tp!1136416 e!2309877)))

(declare-fun b!3734024 () Bool)

(assert (=> b!3734024 (= e!2309877 tp_is_empty!18885)))

(declare-fun b!3734027 () Bool)

(declare-fun tp!1136511 () Bool)

(declare-fun tp!1136514 () Bool)

(assert (=> b!3734027 (= e!2309877 (and tp!1136511 tp!1136514))))

(assert (= (and b!3733701 ((_ is ElementMatch!10935) (regOne!22383 (regTwo!22383 r!26968)))) b!3734024))

(assert (= (and b!3733701 ((_ is Concat!17206) (regOne!22383 (regTwo!22383 r!26968)))) b!3734025))

(assert (= (and b!3733701 ((_ is Star!10935) (regOne!22383 (regTwo!22383 r!26968)))) b!3734026))

(assert (= (and b!3733701 ((_ is Union!10935) (regOne!22383 (regTwo!22383 r!26968)))) b!3734027))

(declare-fun b!3734029 () Bool)

(declare-fun e!2309878 () Bool)

(declare-fun tp!1136518 () Bool)

(declare-fun tp!1136515 () Bool)

(assert (=> b!3734029 (= e!2309878 (and tp!1136518 tp!1136515))))

(declare-fun b!3734030 () Bool)

(declare-fun tp!1136517 () Bool)

(assert (=> b!3734030 (= e!2309878 tp!1136517)))

(assert (=> b!3733701 (= tp!1136419 e!2309878)))

(declare-fun b!3734028 () Bool)

(assert (=> b!3734028 (= e!2309878 tp_is_empty!18885)))

(declare-fun b!3734031 () Bool)

(declare-fun tp!1136516 () Bool)

(declare-fun tp!1136519 () Bool)

(assert (=> b!3734031 (= e!2309878 (and tp!1136516 tp!1136519))))

(assert (= (and b!3733701 ((_ is ElementMatch!10935) (regTwo!22383 (regTwo!22383 r!26968)))) b!3734028))

(assert (= (and b!3733701 ((_ is Concat!17206) (regTwo!22383 (regTwo!22383 r!26968)))) b!3734029))

(assert (= (and b!3733701 ((_ is Star!10935) (regTwo!22383 (regTwo!22383 r!26968)))) b!3734030))

(assert (= (and b!3733701 ((_ is Union!10935) (regTwo!22383 (regTwo!22383 r!26968)))) b!3734031))

(declare-fun b!3734033 () Bool)

(declare-fun e!2309879 () Bool)

(declare-fun tp!1136523 () Bool)

(declare-fun tp!1136520 () Bool)

(assert (=> b!3734033 (= e!2309879 (and tp!1136523 tp!1136520))))

(declare-fun b!3734034 () Bool)

(declare-fun tp!1136522 () Bool)

(assert (=> b!3734034 (= e!2309879 tp!1136522)))

(assert (=> b!3733687 (= tp!1136403 e!2309879)))

(declare-fun b!3734032 () Bool)

(assert (=> b!3734032 (= e!2309879 tp_is_empty!18885)))

(declare-fun b!3734035 () Bool)

(declare-fun tp!1136521 () Bool)

(declare-fun tp!1136524 () Bool)

(assert (=> b!3734035 (= e!2309879 (and tp!1136521 tp!1136524))))

(assert (= (and b!3733687 ((_ is ElementMatch!10935) (regOne!22382 (regOne!22382 r!26968)))) b!3734032))

(assert (= (and b!3733687 ((_ is Concat!17206) (regOne!22382 (regOne!22382 r!26968)))) b!3734033))

(assert (= (and b!3733687 ((_ is Star!10935) (regOne!22382 (regOne!22382 r!26968)))) b!3734034))

(assert (= (and b!3733687 ((_ is Union!10935) (regOne!22382 (regOne!22382 r!26968)))) b!3734035))

(declare-fun b!3734037 () Bool)

(declare-fun e!2309880 () Bool)

(declare-fun tp!1136528 () Bool)

(declare-fun tp!1136525 () Bool)

(assert (=> b!3734037 (= e!2309880 (and tp!1136528 tp!1136525))))

(declare-fun b!3734038 () Bool)

(declare-fun tp!1136527 () Bool)

(assert (=> b!3734038 (= e!2309880 tp!1136527)))

(assert (=> b!3733687 (= tp!1136400 e!2309880)))

(declare-fun b!3734036 () Bool)

(assert (=> b!3734036 (= e!2309880 tp_is_empty!18885)))

(declare-fun b!3734039 () Bool)

(declare-fun tp!1136526 () Bool)

(declare-fun tp!1136529 () Bool)

(assert (=> b!3734039 (= e!2309880 (and tp!1136526 tp!1136529))))

(assert (= (and b!3733687 ((_ is ElementMatch!10935) (regTwo!22382 (regOne!22382 r!26968)))) b!3734036))

(assert (= (and b!3733687 ((_ is Concat!17206) (regTwo!22382 (regOne!22382 r!26968)))) b!3734037))

(assert (= (and b!3733687 ((_ is Star!10935) (regTwo!22382 (regOne!22382 r!26968)))) b!3734038))

(assert (= (and b!3733687 ((_ is Union!10935) (regTwo!22382 (regOne!22382 r!26968)))) b!3734039))

(declare-fun b!3734041 () Bool)

(declare-fun e!2309881 () Bool)

(declare-fun tp!1136533 () Bool)

(declare-fun tp!1136530 () Bool)

(assert (=> b!3734041 (= e!2309881 (and tp!1136533 tp!1136530))))

(declare-fun b!3734042 () Bool)

(declare-fun tp!1136532 () Bool)

(assert (=> b!3734042 (= e!2309881 tp!1136532)))

(assert (=> b!3733696 (= tp!1136412 e!2309881)))

(declare-fun b!3734040 () Bool)

(assert (=> b!3734040 (= e!2309881 tp_is_empty!18885)))

(declare-fun b!3734043 () Bool)

(declare-fun tp!1136531 () Bool)

(declare-fun tp!1136534 () Bool)

(assert (=> b!3734043 (= e!2309881 (and tp!1136531 tp!1136534))))

(assert (= (and b!3733696 ((_ is ElementMatch!10935) (reg!11264 (regOne!22383 r!26968)))) b!3734040))

(assert (= (and b!3733696 ((_ is Concat!17206) (reg!11264 (regOne!22383 r!26968)))) b!3734041))

(assert (= (and b!3733696 ((_ is Star!10935) (reg!11264 (regOne!22383 r!26968)))) b!3734042))

(assert (= (and b!3733696 ((_ is Union!10935) (reg!11264 (regOne!22383 r!26968)))) b!3734043))

(declare-fun b!3734045 () Bool)

(declare-fun e!2309882 () Bool)

(declare-fun tp!1136538 () Bool)

(declare-fun tp!1136535 () Bool)

(assert (=> b!3734045 (= e!2309882 (and tp!1136538 tp!1136535))))

(declare-fun b!3734046 () Bool)

(declare-fun tp!1136537 () Bool)

(assert (=> b!3734046 (= e!2309882 tp!1136537)))

(assert (=> b!3733691 (= tp!1136408 e!2309882)))

(declare-fun b!3734044 () Bool)

(assert (=> b!3734044 (= e!2309882 tp_is_empty!18885)))

(declare-fun b!3734047 () Bool)

(declare-fun tp!1136536 () Bool)

(declare-fun tp!1136539 () Bool)

(assert (=> b!3734047 (= e!2309882 (and tp!1136536 tp!1136539))))

(assert (= (and b!3733691 ((_ is ElementMatch!10935) (regOne!22382 (regTwo!22382 r!26968)))) b!3734044))

(assert (= (and b!3733691 ((_ is Concat!17206) (regOne!22382 (regTwo!22382 r!26968)))) b!3734045))

(assert (= (and b!3733691 ((_ is Star!10935) (regOne!22382 (regTwo!22382 r!26968)))) b!3734046))

(assert (= (and b!3733691 ((_ is Union!10935) (regOne!22382 (regTwo!22382 r!26968)))) b!3734047))

(declare-fun b!3734049 () Bool)

(declare-fun e!2309883 () Bool)

(declare-fun tp!1136543 () Bool)

(declare-fun tp!1136540 () Bool)

(assert (=> b!3734049 (= e!2309883 (and tp!1136543 tp!1136540))))

(declare-fun b!3734050 () Bool)

(declare-fun tp!1136542 () Bool)

(assert (=> b!3734050 (= e!2309883 tp!1136542)))

(assert (=> b!3733691 (= tp!1136405 e!2309883)))

(declare-fun b!3734048 () Bool)

(assert (=> b!3734048 (= e!2309883 tp_is_empty!18885)))

(declare-fun b!3734051 () Bool)

(declare-fun tp!1136541 () Bool)

(declare-fun tp!1136544 () Bool)

(assert (=> b!3734051 (= e!2309883 (and tp!1136541 tp!1136544))))

(assert (= (and b!3733691 ((_ is ElementMatch!10935) (regTwo!22382 (regTwo!22382 r!26968)))) b!3734048))

(assert (= (and b!3733691 ((_ is Concat!17206) (regTwo!22382 (regTwo!22382 r!26968)))) b!3734049))

(assert (= (and b!3733691 ((_ is Star!10935) (regTwo!22382 (regTwo!22382 r!26968)))) b!3734050))

(assert (= (and b!3733691 ((_ is Union!10935) (regTwo!22382 (regTwo!22382 r!26968)))) b!3734051))

(declare-fun b!3734053 () Bool)

(declare-fun e!2309884 () Bool)

(declare-fun tp!1136548 () Bool)

(declare-fun tp!1136545 () Bool)

(assert (=> b!3734053 (= e!2309884 (and tp!1136548 tp!1136545))))

(declare-fun b!3734054 () Bool)

(declare-fun tp!1136547 () Bool)

(assert (=> b!3734054 (= e!2309884 tp!1136547)))

(assert (=> b!3733700 (= tp!1136417 e!2309884)))

(declare-fun b!3734052 () Bool)

(assert (=> b!3734052 (= e!2309884 tp_is_empty!18885)))

(declare-fun b!3734055 () Bool)

(declare-fun tp!1136546 () Bool)

(declare-fun tp!1136549 () Bool)

(assert (=> b!3734055 (= e!2309884 (and tp!1136546 tp!1136549))))

(assert (= (and b!3733700 ((_ is ElementMatch!10935) (reg!11264 (regTwo!22383 r!26968)))) b!3734052))

(assert (= (and b!3733700 ((_ is Concat!17206) (reg!11264 (regTwo!22383 r!26968)))) b!3734053))

(assert (= (and b!3733700 ((_ is Star!10935) (reg!11264 (regTwo!22383 r!26968)))) b!3734054))

(assert (= (and b!3733700 ((_ is Union!10935) (reg!11264 (regTwo!22383 r!26968)))) b!3734055))

(declare-fun b!3734057 () Bool)

(declare-fun e!2309885 () Bool)

(declare-fun tp!1136553 () Bool)

(declare-fun tp!1136550 () Bool)

(assert (=> b!3734057 (= e!2309885 (and tp!1136553 tp!1136550))))

(declare-fun b!3734058 () Bool)

(declare-fun tp!1136552 () Bool)

(assert (=> b!3734058 (= e!2309885 tp!1136552)))

(assert (=> b!3733695 (= tp!1136413 e!2309885)))

(declare-fun b!3734056 () Bool)

(assert (=> b!3734056 (= e!2309885 tp_is_empty!18885)))

(declare-fun b!3734059 () Bool)

(declare-fun tp!1136551 () Bool)

(declare-fun tp!1136554 () Bool)

(assert (=> b!3734059 (= e!2309885 (and tp!1136551 tp!1136554))))

(assert (= (and b!3733695 ((_ is ElementMatch!10935) (regOne!22382 (regOne!22383 r!26968)))) b!3734056))

(assert (= (and b!3733695 ((_ is Concat!17206) (regOne!22382 (regOne!22383 r!26968)))) b!3734057))

(assert (= (and b!3733695 ((_ is Star!10935) (regOne!22382 (regOne!22383 r!26968)))) b!3734058))

(assert (= (and b!3733695 ((_ is Union!10935) (regOne!22382 (regOne!22383 r!26968)))) b!3734059))

(declare-fun b!3734061 () Bool)

(declare-fun e!2309886 () Bool)

(declare-fun tp!1136558 () Bool)

(declare-fun tp!1136555 () Bool)

(assert (=> b!3734061 (= e!2309886 (and tp!1136558 tp!1136555))))

(declare-fun b!3734062 () Bool)

(declare-fun tp!1136557 () Bool)

(assert (=> b!3734062 (= e!2309886 tp!1136557)))

(assert (=> b!3733695 (= tp!1136410 e!2309886)))

(declare-fun b!3734060 () Bool)

(assert (=> b!3734060 (= e!2309886 tp_is_empty!18885)))

(declare-fun b!3734063 () Bool)

(declare-fun tp!1136556 () Bool)

(declare-fun tp!1136559 () Bool)

(assert (=> b!3734063 (= e!2309886 (and tp!1136556 tp!1136559))))

(assert (= (and b!3733695 ((_ is ElementMatch!10935) (regTwo!22382 (regOne!22383 r!26968)))) b!3734060))

(assert (= (and b!3733695 ((_ is Concat!17206) (regTwo!22382 (regOne!22383 r!26968)))) b!3734061))

(assert (= (and b!3733695 ((_ is Star!10935) (regTwo!22382 (regOne!22383 r!26968)))) b!3734062))

(assert (= (and b!3733695 ((_ is Union!10935) (regTwo!22382 (regOne!22383 r!26968)))) b!3734063))

(declare-fun b!3734065 () Bool)

(declare-fun e!2309887 () Bool)

(declare-fun tp!1136563 () Bool)

(declare-fun tp!1136560 () Bool)

(assert (=> b!3734065 (= e!2309887 (and tp!1136563 tp!1136560))))

(declare-fun b!3734066 () Bool)

(declare-fun tp!1136562 () Bool)

(assert (=> b!3734066 (= e!2309887 tp!1136562)))

(assert (=> b!3733685 (= tp!1136396 e!2309887)))

(declare-fun b!3734064 () Bool)

(assert (=> b!3734064 (= e!2309887 tp_is_empty!18885)))

(declare-fun b!3734067 () Bool)

(declare-fun tp!1136561 () Bool)

(declare-fun tp!1136564 () Bool)

(assert (=> b!3734067 (= e!2309887 (and tp!1136561 tp!1136564))))

(assert (= (and b!3733685 ((_ is ElementMatch!10935) (regOne!22383 (reg!11264 r!26968)))) b!3734064))

(assert (= (and b!3733685 ((_ is Concat!17206) (regOne!22383 (reg!11264 r!26968)))) b!3734065))

(assert (= (and b!3733685 ((_ is Star!10935) (regOne!22383 (reg!11264 r!26968)))) b!3734066))

(assert (= (and b!3733685 ((_ is Union!10935) (regOne!22383 (reg!11264 r!26968)))) b!3734067))

(declare-fun b!3734069 () Bool)

(declare-fun e!2309888 () Bool)

(declare-fun tp!1136568 () Bool)

(declare-fun tp!1136565 () Bool)

(assert (=> b!3734069 (= e!2309888 (and tp!1136568 tp!1136565))))

(declare-fun b!3734070 () Bool)

(declare-fun tp!1136567 () Bool)

(assert (=> b!3734070 (= e!2309888 tp!1136567)))

(assert (=> b!3733685 (= tp!1136399 e!2309888)))

(declare-fun b!3734068 () Bool)

(assert (=> b!3734068 (= e!2309888 tp_is_empty!18885)))

(declare-fun b!3734071 () Bool)

(declare-fun tp!1136566 () Bool)

(declare-fun tp!1136569 () Bool)

(assert (=> b!3734071 (= e!2309888 (and tp!1136566 tp!1136569))))

(assert (= (and b!3733685 ((_ is ElementMatch!10935) (regTwo!22383 (reg!11264 r!26968)))) b!3734068))

(assert (= (and b!3733685 ((_ is Concat!17206) (regTwo!22383 (reg!11264 r!26968)))) b!3734069))

(assert (= (and b!3733685 ((_ is Star!10935) (regTwo!22383 (reg!11264 r!26968)))) b!3734070))

(assert (= (and b!3733685 ((_ is Union!10935) (regTwo!22383 (reg!11264 r!26968)))) b!3734071))

(declare-fun b!3734073 () Bool)

(declare-fun e!2309889 () Bool)

(declare-fun tp!1136573 () Bool)

(declare-fun tp!1136570 () Bool)

(assert (=> b!3734073 (= e!2309889 (and tp!1136573 tp!1136570))))

(declare-fun b!3734074 () Bool)

(declare-fun tp!1136572 () Bool)

(assert (=> b!3734074 (= e!2309889 tp!1136572)))

(assert (=> b!3733699 (= tp!1136418 e!2309889)))

(declare-fun b!3734072 () Bool)

(assert (=> b!3734072 (= e!2309889 tp_is_empty!18885)))

(declare-fun b!3734075 () Bool)

(declare-fun tp!1136571 () Bool)

(declare-fun tp!1136574 () Bool)

(assert (=> b!3734075 (= e!2309889 (and tp!1136571 tp!1136574))))

(assert (= (and b!3733699 ((_ is ElementMatch!10935) (regOne!22382 (regTwo!22383 r!26968)))) b!3734072))

(assert (= (and b!3733699 ((_ is Concat!17206) (regOne!22382 (regTwo!22383 r!26968)))) b!3734073))

(assert (= (and b!3733699 ((_ is Star!10935) (regOne!22382 (regTwo!22383 r!26968)))) b!3734074))

(assert (= (and b!3733699 ((_ is Union!10935) (regOne!22382 (regTwo!22383 r!26968)))) b!3734075))

(declare-fun b!3734077 () Bool)

(declare-fun e!2309890 () Bool)

(declare-fun tp!1136578 () Bool)

(declare-fun tp!1136575 () Bool)

(assert (=> b!3734077 (= e!2309890 (and tp!1136578 tp!1136575))))

(declare-fun b!3734078 () Bool)

(declare-fun tp!1136577 () Bool)

(assert (=> b!3734078 (= e!2309890 tp!1136577)))

(assert (=> b!3733699 (= tp!1136415 e!2309890)))

(declare-fun b!3734076 () Bool)

(assert (=> b!3734076 (= e!2309890 tp_is_empty!18885)))

(declare-fun b!3734079 () Bool)

(declare-fun tp!1136576 () Bool)

(declare-fun tp!1136579 () Bool)

(assert (=> b!3734079 (= e!2309890 (and tp!1136576 tp!1136579))))

(assert (= (and b!3733699 ((_ is ElementMatch!10935) (regTwo!22382 (regTwo!22383 r!26968)))) b!3734076))

(assert (= (and b!3733699 ((_ is Concat!17206) (regTwo!22382 (regTwo!22383 r!26968)))) b!3734077))

(assert (= (and b!3733699 ((_ is Star!10935) (regTwo!22382 (regTwo!22383 r!26968)))) b!3734078))

(assert (= (and b!3733699 ((_ is Union!10935) (regTwo!22382 (regTwo!22383 r!26968)))) b!3734079))

(check-sat (not bm!273135) (not bm!273157) (not b!3733945) (not b!3734077) (not b!3734025) (not bm!273169) (not b!3733985) (not b!3734061) (not b!3733989) (not bm!273132) (not b!3733785) (not b!3733808) (not b!3733998) (not d!1091063) (not b!3733991) (not bm!273141) (not bm!273175) (not b!3733846) (not bm!273162) (not b!3734011) (not b!3734002) (not b!3734079) (not b!3734022) (not b!3734035) (not bm!273183) (not b!3734019) (not d!1091099) (not bm!273152) (not b!3734018) (not bm!273171) (not b!3734063) (not b!3734030) (not b!3733867) (not b!3733995) (not d!1091061) (not d!1091047) (not b!3733897) (not b!3734055) (not b!3733911) (not b!3734027) (not b!3733994) (not bm!273179) (not b!3733982) (not d!1091101) (not bm!273187) (not b!3733997) (not b!3734074) (not b!3734066) (not bm!273180) (not b!3734062) (not b!3734053) (not b!3733987) (not b!3734047) (not d!1091077) (not bm!273181) (not b!3733928) (not b!3734017) (not bm!273167) (not b!3734013) (not b!3734067) (not bm!273150) (not b!3734001) (not b!3733990) (not b!3733969) (not b!3733839) (not bm!273125) (not b!3733802) (not bm!273161) (not b!3733866) (not d!1091079) (not b!3734075) (not b!3734058) (not b!3733981) (not b!3734037) (not d!1091067) (not b!3734029) (not b!3733999) (not b!3734038) (not b!3734010) (not b!3733794) (not bm!273151) (not b!3734069) (not d!1091043) (not b!3734050) (not bm!273146) (not b!3734043) (not bm!273156) (not bm!273172) (not d!1091049) (not b!3734045) (not b!3734034) (not b!3734042) (not bm!273127) (not bm!273144) (not b!3733896) (not b!3734039) (not bm!273145) (not bm!273159) (not b!3734054) (not bm!273164) (not bm!273130) (not b!3734026) (not b!3734005) (not b!3734009) (not bm!273176) (not b!3733946) (not b!3733983) (not b!3734078) (not bm!273137) (not bm!273128) (not b!3734049) (not b!3734015) (not b!3733979) (not bm!273174) (not b!3734007) (not b!3734041) (not b!3734059) (not bm!273154) (not b!3734057) (not bm!273155) (not b!3733902) (not b!3734071) (not b!3734033) (not b!3733830) (not b!3734046) (not d!1091093) (not bm!273142) (not bm!273134) (not bm!273139) (not b!3734073) (not bm!273124) (not bm!273165) (not b!3734003) tp_is_empty!18885 (not bm!273168) (not b!3733986) (not b!3734021) (not bm!273178) (not b!3734014) (not b!3734006) (not d!1091069) (not bm!273136) (not b!3733935) (not bm!273185) (not b!3733993) (not b!3734051) (not b!3734070) (not b!3734031) (not b!3734065) (not b!3733977) (not b!3734023) (not bm!273148))
(check-sat)
