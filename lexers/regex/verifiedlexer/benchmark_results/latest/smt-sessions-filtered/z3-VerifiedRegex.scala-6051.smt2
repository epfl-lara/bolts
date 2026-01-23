; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!295848 () Bool)

(assert start!295848)

(declare-fun b!3138371 () Bool)

(declare-fun e!1957965 () Bool)

(declare-fun tp_is_empty!16869 () Bool)

(assert (=> b!3138371 (= e!1957965 tp_is_empty!16869)))

(declare-fun b!3138372 () Bool)

(declare-fun tp!982393 () Bool)

(declare-fun tp!982391 () Bool)

(assert (=> b!3138372 (= e!1957965 (and tp!982393 tp!982391))))

(declare-fun b!3138373 () Bool)

(declare-fun tp!982395 () Bool)

(declare-fun tp!982394 () Bool)

(assert (=> b!3138373 (= e!1957965 (and tp!982395 tp!982394))))

(declare-fun b!3138374 () Bool)

(declare-fun res!1282309 () Bool)

(declare-fun e!1957964 () Bool)

(assert (=> b!3138374 (=> (not res!1282309) (not e!1957964))))

(declare-datatypes ((C!19492 0))(
  ( (C!19493 (val!11782 Int)) )
))
(declare-datatypes ((Regex!9653 0))(
  ( (ElementMatch!9653 (c!527485 C!19492)) (Concat!14974 (regOne!19818 Regex!9653) (regTwo!19818 Regex!9653)) (EmptyExpr!9653) (Star!9653 (reg!9982 Regex!9653)) (EmptyLang!9653) (Union!9653 (regOne!19819 Regex!9653) (regTwo!19819 Regex!9653)) )
))
(declare-fun r!17345 () Regex!9653)

(get-info :version)

(assert (=> b!3138374 (= res!1282309 (and (not ((_ is EmptyLang!9653) r!17345)) (not ((_ is ElementMatch!9653) r!17345)) (not ((_ is EmptyExpr!9653) r!17345)) (not ((_ is Star!9653) r!17345)) (not ((_ is Union!9653) r!17345))))))

(declare-fun b!3138375 () Bool)

(declare-fun validRegex!4386 (Regex!9653) Bool)

(assert (=> b!3138375 (= e!1957964 (not (validRegex!4386 (regOne!19818 r!17345))))))

(declare-fun b!3138370 () Bool)

(declare-fun tp!982392 () Bool)

(assert (=> b!3138370 (= e!1957965 tp!982392)))

(declare-fun res!1282310 () Bool)

(assert (=> start!295848 (=> (not res!1282310) (not e!1957964))))

(assert (=> start!295848 (= res!1282310 (validRegex!4386 r!17345))))

(assert (=> start!295848 e!1957964))

(assert (=> start!295848 e!1957965))

(assert (= (and start!295848 res!1282310) b!3138374))

(assert (= (and b!3138374 res!1282309) b!3138375))

(assert (= (and start!295848 ((_ is ElementMatch!9653) r!17345)) b!3138371))

(assert (= (and start!295848 ((_ is Concat!14974) r!17345)) b!3138373))

(assert (= (and start!295848 ((_ is Star!9653) r!17345)) b!3138370))

(assert (= (and start!295848 ((_ is Union!9653) r!17345)) b!3138372))

(declare-fun m!3417373 () Bool)

(assert (=> b!3138375 m!3417373))

(declare-fun m!3417375 () Bool)

(assert (=> start!295848 m!3417375))

(check-sat tp_is_empty!16869 (not b!3138373) (not start!295848) (not b!3138372) (not b!3138375) (not b!3138370))
(check-sat)
(get-model)

(declare-fun b!3138430 () Bool)

(declare-fun e!1958013 () Bool)

(declare-fun e!1958008 () Bool)

(assert (=> b!3138430 (= e!1958013 e!1958008)))

(declare-fun c!527499 () Bool)

(assert (=> b!3138430 (= c!527499 ((_ is Union!9653) r!17345))))

(declare-fun b!3138431 () Bool)

(declare-fun e!1958012 () Bool)

(declare-fun call!225159 () Bool)

(assert (=> b!3138431 (= e!1958012 call!225159)))

(declare-fun b!3138432 () Bool)

(declare-fun e!1958010 () Bool)

(declare-fun e!1958009 () Bool)

(assert (=> b!3138432 (= e!1958010 e!1958009)))

(declare-fun res!1282345 () Bool)

(assert (=> b!3138432 (=> (not res!1282345) (not e!1958009))))

(assert (=> b!3138432 (= res!1282345 call!225159)))

(declare-fun d!865540 () Bool)

(declare-fun res!1282341 () Bool)

(declare-fun e!1958014 () Bool)

(assert (=> d!865540 (=> res!1282341 e!1958014)))

(assert (=> d!865540 (= res!1282341 ((_ is ElementMatch!9653) r!17345))))

(assert (=> d!865540 (= (validRegex!4386 r!17345) e!1958014)))

(declare-fun b!3138433 () Bool)

(declare-fun e!1958011 () Bool)

(assert (=> b!3138433 (= e!1958013 e!1958011)))

(declare-fun res!1282344 () Bool)

(declare-fun nullable!3286 (Regex!9653) Bool)

(assert (=> b!3138433 (= res!1282344 (not (nullable!3286 (reg!9982 r!17345))))))

(assert (=> b!3138433 (=> (not res!1282344) (not e!1958011))))

(declare-fun bm!225152 () Bool)

(assert (=> bm!225152 (= call!225159 (validRegex!4386 (ite c!527499 (regTwo!19819 r!17345) (regOne!19818 r!17345))))))

(declare-fun b!3138434 () Bool)

(declare-fun res!1282342 () Bool)

(assert (=> b!3138434 (=> res!1282342 e!1958010)))

(assert (=> b!3138434 (= res!1282342 (not ((_ is Concat!14974) r!17345)))))

(assert (=> b!3138434 (= e!1958008 e!1958010)))

(declare-fun b!3138435 () Bool)

(declare-fun call!225157 () Bool)

(assert (=> b!3138435 (= e!1958011 call!225157)))

(declare-fun c!527498 () Bool)

(declare-fun bm!225153 () Bool)

(assert (=> bm!225153 (= call!225157 (validRegex!4386 (ite c!527498 (reg!9982 r!17345) (ite c!527499 (regOne!19819 r!17345) (regTwo!19818 r!17345)))))))

(declare-fun b!3138436 () Bool)

(declare-fun call!225158 () Bool)

(assert (=> b!3138436 (= e!1958009 call!225158)))

(declare-fun b!3138437 () Bool)

(declare-fun res!1282343 () Bool)

(assert (=> b!3138437 (=> (not res!1282343) (not e!1958012))))

(assert (=> b!3138437 (= res!1282343 call!225158)))

(assert (=> b!3138437 (= e!1958008 e!1958012)))

(declare-fun b!3138438 () Bool)

(assert (=> b!3138438 (= e!1958014 e!1958013)))

(assert (=> b!3138438 (= c!527498 ((_ is Star!9653) r!17345))))

(declare-fun bm!225154 () Bool)

(assert (=> bm!225154 (= call!225158 call!225157)))

(assert (= (and d!865540 (not res!1282341)) b!3138438))

(assert (= (and b!3138438 c!527498) b!3138433))

(assert (= (and b!3138438 (not c!527498)) b!3138430))

(assert (= (and b!3138433 res!1282344) b!3138435))

(assert (= (and b!3138430 c!527499) b!3138437))

(assert (= (and b!3138430 (not c!527499)) b!3138434))

(assert (= (and b!3138437 res!1282343) b!3138431))

(assert (= (and b!3138434 (not res!1282342)) b!3138432))

(assert (= (and b!3138432 res!1282345) b!3138436))

(assert (= (or b!3138431 b!3138432) bm!225152))

(assert (= (or b!3138437 b!3138436) bm!225154))

(assert (= (or b!3138435 bm!225154) bm!225153))

(declare-fun m!3417389 () Bool)

(assert (=> b!3138433 m!3417389))

(declare-fun m!3417391 () Bool)

(assert (=> bm!225152 m!3417391))

(declare-fun m!3417393 () Bool)

(assert (=> bm!225153 m!3417393))

(assert (=> start!295848 d!865540))

(declare-fun b!3138449 () Bool)

(declare-fun e!1958022 () Bool)

(declare-fun e!1958017 () Bool)

(assert (=> b!3138449 (= e!1958022 e!1958017)))

(declare-fun c!527501 () Bool)

(assert (=> b!3138449 (= c!527501 ((_ is Union!9653) (regOne!19818 r!17345)))))

(declare-fun b!3138450 () Bool)

(declare-fun e!1958021 () Bool)

(declare-fun call!225162 () Bool)

(assert (=> b!3138450 (= e!1958021 call!225162)))

(declare-fun b!3138451 () Bool)

(declare-fun e!1958019 () Bool)

(declare-fun e!1958018 () Bool)

(assert (=> b!3138451 (= e!1958019 e!1958018)))

(declare-fun res!1282350 () Bool)

(assert (=> b!3138451 (=> (not res!1282350) (not e!1958018))))

(assert (=> b!3138451 (= res!1282350 call!225162)))

(declare-fun d!865544 () Bool)

(declare-fun res!1282346 () Bool)

(declare-fun e!1958023 () Bool)

(assert (=> d!865544 (=> res!1282346 e!1958023)))

(assert (=> d!865544 (= res!1282346 ((_ is ElementMatch!9653) (regOne!19818 r!17345)))))

(assert (=> d!865544 (= (validRegex!4386 (regOne!19818 r!17345)) e!1958023)))

(declare-fun b!3138452 () Bool)

(declare-fun e!1958020 () Bool)

(assert (=> b!3138452 (= e!1958022 e!1958020)))

(declare-fun res!1282349 () Bool)

(assert (=> b!3138452 (= res!1282349 (not (nullable!3286 (reg!9982 (regOne!19818 r!17345)))))))

(assert (=> b!3138452 (=> (not res!1282349) (not e!1958020))))

(declare-fun bm!225155 () Bool)

(assert (=> bm!225155 (= call!225162 (validRegex!4386 (ite c!527501 (regTwo!19819 (regOne!19818 r!17345)) (regOne!19818 (regOne!19818 r!17345)))))))

(declare-fun b!3138453 () Bool)

(declare-fun res!1282347 () Bool)

(assert (=> b!3138453 (=> res!1282347 e!1958019)))

(assert (=> b!3138453 (= res!1282347 (not ((_ is Concat!14974) (regOne!19818 r!17345))))))

(assert (=> b!3138453 (= e!1958017 e!1958019)))

(declare-fun b!3138454 () Bool)

(declare-fun call!225160 () Bool)

(assert (=> b!3138454 (= e!1958020 call!225160)))

(declare-fun c!527500 () Bool)

(declare-fun bm!225156 () Bool)

(assert (=> bm!225156 (= call!225160 (validRegex!4386 (ite c!527500 (reg!9982 (regOne!19818 r!17345)) (ite c!527501 (regOne!19819 (regOne!19818 r!17345)) (regTwo!19818 (regOne!19818 r!17345))))))))

(declare-fun b!3138455 () Bool)

(declare-fun call!225161 () Bool)

(assert (=> b!3138455 (= e!1958018 call!225161)))

(declare-fun b!3138456 () Bool)

(declare-fun res!1282348 () Bool)

(assert (=> b!3138456 (=> (not res!1282348) (not e!1958021))))

(assert (=> b!3138456 (= res!1282348 call!225161)))

(assert (=> b!3138456 (= e!1958017 e!1958021)))

(declare-fun b!3138457 () Bool)

(assert (=> b!3138457 (= e!1958023 e!1958022)))

(assert (=> b!3138457 (= c!527500 ((_ is Star!9653) (regOne!19818 r!17345)))))

(declare-fun bm!225157 () Bool)

(assert (=> bm!225157 (= call!225161 call!225160)))

(assert (= (and d!865544 (not res!1282346)) b!3138457))

(assert (= (and b!3138457 c!527500) b!3138452))

(assert (= (and b!3138457 (not c!527500)) b!3138449))

(assert (= (and b!3138452 res!1282349) b!3138454))

(assert (= (and b!3138449 c!527501) b!3138456))

(assert (= (and b!3138449 (not c!527501)) b!3138453))

(assert (= (and b!3138456 res!1282348) b!3138450))

(assert (= (and b!3138453 (not res!1282347)) b!3138451))

(assert (= (and b!3138451 res!1282350) b!3138455))

(assert (= (or b!3138450 b!3138451) bm!225155))

(assert (= (or b!3138456 b!3138455) bm!225157))

(assert (= (or b!3138454 bm!225157) bm!225156))

(declare-fun m!3417395 () Bool)

(assert (=> b!3138452 m!3417395))

(declare-fun m!3417397 () Bool)

(assert (=> bm!225155 m!3417397))

(declare-fun m!3417399 () Bool)

(assert (=> bm!225156 m!3417399))

(assert (=> b!3138375 d!865544))

(declare-fun b!3138491 () Bool)

(declare-fun e!1958031 () Bool)

(declare-fun tp!982441 () Bool)

(declare-fun tp!982442 () Bool)

(assert (=> b!3138491 (= e!1958031 (and tp!982441 tp!982442))))

(declare-fun b!3138489 () Bool)

(declare-fun tp!982444 () Bool)

(declare-fun tp!982443 () Bool)

(assert (=> b!3138489 (= e!1958031 (and tp!982444 tp!982443))))

(assert (=> b!3138373 (= tp!982395 e!1958031)))

(declare-fun b!3138490 () Bool)

(declare-fun tp!982445 () Bool)

(assert (=> b!3138490 (= e!1958031 tp!982445)))

(declare-fun b!3138488 () Bool)

(assert (=> b!3138488 (= e!1958031 tp_is_empty!16869)))

(assert (= (and b!3138373 ((_ is ElementMatch!9653) (regOne!19818 r!17345))) b!3138488))

(assert (= (and b!3138373 ((_ is Concat!14974) (regOne!19818 r!17345))) b!3138489))

(assert (= (and b!3138373 ((_ is Star!9653) (regOne!19818 r!17345))) b!3138490))

(assert (= (and b!3138373 ((_ is Union!9653) (regOne!19818 r!17345))) b!3138491))

(declare-fun b!3138495 () Bool)

(declare-fun e!1958032 () Bool)

(declare-fun tp!982446 () Bool)

(declare-fun tp!982447 () Bool)

(assert (=> b!3138495 (= e!1958032 (and tp!982446 tp!982447))))

(declare-fun b!3138493 () Bool)

(declare-fun tp!982449 () Bool)

(declare-fun tp!982448 () Bool)

(assert (=> b!3138493 (= e!1958032 (and tp!982449 tp!982448))))

(assert (=> b!3138373 (= tp!982394 e!1958032)))

(declare-fun b!3138494 () Bool)

(declare-fun tp!982450 () Bool)

(assert (=> b!3138494 (= e!1958032 tp!982450)))

(declare-fun b!3138492 () Bool)

(assert (=> b!3138492 (= e!1958032 tp_is_empty!16869)))

(assert (= (and b!3138373 ((_ is ElementMatch!9653) (regTwo!19818 r!17345))) b!3138492))

(assert (= (and b!3138373 ((_ is Concat!14974) (regTwo!19818 r!17345))) b!3138493))

(assert (= (and b!3138373 ((_ is Star!9653) (regTwo!19818 r!17345))) b!3138494))

(assert (= (and b!3138373 ((_ is Union!9653) (regTwo!19818 r!17345))) b!3138495))

(declare-fun b!3138499 () Bool)

(declare-fun e!1958033 () Bool)

(declare-fun tp!982451 () Bool)

(declare-fun tp!982452 () Bool)

(assert (=> b!3138499 (= e!1958033 (and tp!982451 tp!982452))))

(declare-fun b!3138497 () Bool)

(declare-fun tp!982454 () Bool)

(declare-fun tp!982453 () Bool)

(assert (=> b!3138497 (= e!1958033 (and tp!982454 tp!982453))))

(assert (=> b!3138372 (= tp!982393 e!1958033)))

(declare-fun b!3138498 () Bool)

(declare-fun tp!982455 () Bool)

(assert (=> b!3138498 (= e!1958033 tp!982455)))

(declare-fun b!3138496 () Bool)

(assert (=> b!3138496 (= e!1958033 tp_is_empty!16869)))

(assert (= (and b!3138372 ((_ is ElementMatch!9653) (regOne!19819 r!17345))) b!3138496))

(assert (= (and b!3138372 ((_ is Concat!14974) (regOne!19819 r!17345))) b!3138497))

(assert (= (and b!3138372 ((_ is Star!9653) (regOne!19819 r!17345))) b!3138498))

(assert (= (and b!3138372 ((_ is Union!9653) (regOne!19819 r!17345))) b!3138499))

(declare-fun b!3138503 () Bool)

(declare-fun e!1958034 () Bool)

(declare-fun tp!982456 () Bool)

(declare-fun tp!982457 () Bool)

(assert (=> b!3138503 (= e!1958034 (and tp!982456 tp!982457))))

(declare-fun b!3138501 () Bool)

(declare-fun tp!982459 () Bool)

(declare-fun tp!982458 () Bool)

(assert (=> b!3138501 (= e!1958034 (and tp!982459 tp!982458))))

(assert (=> b!3138372 (= tp!982391 e!1958034)))

(declare-fun b!3138502 () Bool)

(declare-fun tp!982460 () Bool)

(assert (=> b!3138502 (= e!1958034 tp!982460)))

(declare-fun b!3138500 () Bool)

(assert (=> b!3138500 (= e!1958034 tp_is_empty!16869)))

(assert (= (and b!3138372 ((_ is ElementMatch!9653) (regTwo!19819 r!17345))) b!3138500))

(assert (= (and b!3138372 ((_ is Concat!14974) (regTwo!19819 r!17345))) b!3138501))

(assert (= (and b!3138372 ((_ is Star!9653) (regTwo!19819 r!17345))) b!3138502))

(assert (= (and b!3138372 ((_ is Union!9653) (regTwo!19819 r!17345))) b!3138503))

(declare-fun b!3138507 () Bool)

(declare-fun e!1958035 () Bool)

(declare-fun tp!982461 () Bool)

(declare-fun tp!982462 () Bool)

(assert (=> b!3138507 (= e!1958035 (and tp!982461 tp!982462))))

(declare-fun b!3138505 () Bool)

(declare-fun tp!982464 () Bool)

(declare-fun tp!982463 () Bool)

(assert (=> b!3138505 (= e!1958035 (and tp!982464 tp!982463))))

(assert (=> b!3138370 (= tp!982392 e!1958035)))

(declare-fun b!3138506 () Bool)

(declare-fun tp!982465 () Bool)

(assert (=> b!3138506 (= e!1958035 tp!982465)))

(declare-fun b!3138504 () Bool)

(assert (=> b!3138504 (= e!1958035 tp_is_empty!16869)))

(assert (= (and b!3138370 ((_ is ElementMatch!9653) (reg!9982 r!17345))) b!3138504))

(assert (= (and b!3138370 ((_ is Concat!14974) (reg!9982 r!17345))) b!3138505))

(assert (= (and b!3138370 ((_ is Star!9653) (reg!9982 r!17345))) b!3138506))

(assert (= (and b!3138370 ((_ is Union!9653) (reg!9982 r!17345))) b!3138507))

(check-sat tp_is_empty!16869 (not bm!225156) (not b!3138502) (not b!3138498) (not b!3138493) (not b!3138506) (not b!3138494) (not b!3138433) (not bm!225155) (not b!3138505) (not b!3138503) (not b!3138497) (not bm!225153) (not b!3138507) (not b!3138489) (not bm!225152) (not b!3138499) (not b!3138495) (not b!3138490) (not b!3138452) (not b!3138501) (not b!3138491))
(check-sat)
