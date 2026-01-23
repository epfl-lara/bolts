; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349634 () Bool)

(assert start!349634)

(declare-fun res!1508072 () Bool)

(declare-fun e!2296479 () Bool)

(assert (=> start!349634 (=> (not res!1508072) (not e!2296479))))

(declare-datatypes ((C!21820 0))(
  ( (C!21821 (val!12958 Int)) )
))
(declare-datatypes ((Regex!10817 0))(
  ( (ElementMatch!10817 (c!640307 C!21820)) (Concat!17088 (regOne!22146 Regex!10817) (regTwo!22146 Regex!10817)) (EmptyExpr!10817) (Star!10817 (reg!11146 Regex!10817)) (EmptyLang!10817) (Union!10817 (regOne!22147 Regex!10817) (regTwo!22147 Regex!10817)) )
))
(declare-fun r!25965 () Regex!10817)

(declare-fun validRegex!4924 (Regex!10817) Bool)

(assert (=> start!349634 (= res!1508072 (validRegex!4924 r!25965))))

(assert (=> start!349634 e!2296479))

(declare-fun e!2296481 () Bool)

(assert (=> start!349634 e!2296481))

(declare-fun e!2296480 () Bool)

(assert (=> start!349634 e!2296480))

(declare-fun tp_is_empty!18649 () Bool)

(assert (=> start!349634 tp_is_empty!18649))

(declare-fun b!3707366 () Bool)

(declare-fun e!2296482 () Bool)

(declare-datatypes ((List!39698 0))(
  ( (Nil!39574) (Cons!39574 (h!44994 C!21820) (t!302381 List!39698)) )
))
(declare-fun s!14922 () List!39698)

(declare-fun ListPrimitiveSize!253 (List!39698) Int)

(assert (=> b!3707366 (= e!2296482 (< (ListPrimitiveSize!253 (t!302381 s!14922)) (ListPrimitiveSize!253 s!14922)))))

(declare-fun b!3707367 () Bool)

(declare-fun res!1508074 () Bool)

(assert (=> b!3707367 (=> res!1508074 e!2296482)))

(declare-fun c!13398 () C!21820)

(declare-fun contains!7910 (List!39698 C!21820) Bool)

(assert (=> b!3707367 (= res!1508074 (not (contains!7910 (t!302381 s!14922) c!13398)))))

(declare-fun b!3707368 () Bool)

(declare-fun res!1508076 () Bool)

(assert (=> b!3707368 (=> (not res!1508076) (not e!2296479))))

(get-info :version)

(assert (=> b!3707368 (= res!1508076 (and (or (not ((_ is Cons!39574) s!14922)) (not (= (h!44994 s!14922) c!13398))) ((_ is Cons!39574) s!14922) (not (= (h!44994 s!14922) c!13398))))))

(declare-fun b!3707369 () Bool)

(declare-fun res!1508075 () Bool)

(assert (=> b!3707369 (=> (not res!1508075) (not e!2296479))))

(declare-fun usedCharacters!1080 (Regex!10817) List!39698)

(assert (=> b!3707369 (= res!1508075 (not (contains!7910 (usedCharacters!1080 r!25965) c!13398)))))

(declare-fun b!3707370 () Bool)

(declare-fun res!1508073 () Bool)

(assert (=> b!3707370 (=> (not res!1508073) (not e!2296479))))

(assert (=> b!3707370 (= res!1508073 (contains!7910 s!14922 c!13398))))

(declare-fun b!3707371 () Bool)

(assert (=> b!3707371 (= e!2296481 tp_is_empty!18649)))

(declare-fun b!3707372 () Bool)

(declare-fun tp!1127978 () Bool)

(declare-fun tp!1127975 () Bool)

(assert (=> b!3707372 (= e!2296481 (and tp!1127978 tp!1127975))))

(declare-fun b!3707373 () Bool)

(assert (=> b!3707373 (= e!2296479 (not e!2296482))))

(declare-fun res!1508071 () Bool)

(assert (=> b!3707373 (=> res!1508071 e!2296482)))

(declare-fun lt!1296546 () Regex!10817)

(assert (=> b!3707373 (= res!1508071 (not (validRegex!4924 lt!1296546)))))

(assert (=> b!3707373 (not (contains!7910 (usedCharacters!1080 lt!1296546) c!13398))))

(declare-fun derivativeStep!3296 (Regex!10817 C!21820) Regex!10817)

(assert (=> b!3707373 (= lt!1296546 (derivativeStep!3296 r!25965 (h!44994 s!14922)))))

(declare-datatypes ((Unit!57464 0))(
  ( (Unit!57465) )
))
(declare-fun lt!1296545 () Unit!57464)

(declare-fun lemmaDerivativeStepDoesNotAddCharToUsedCharacters!12 (Regex!10817 C!21820 C!21820) Unit!57464)

(assert (=> b!3707373 (= lt!1296545 (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!12 r!25965 (h!44994 s!14922) c!13398))))

(declare-fun b!3707374 () Bool)

(declare-fun tp!1127979 () Bool)

(assert (=> b!3707374 (= e!2296481 tp!1127979)))

(declare-fun b!3707375 () Bool)

(declare-fun tp!1127977 () Bool)

(declare-fun tp!1127980 () Bool)

(assert (=> b!3707375 (= e!2296481 (and tp!1127977 tp!1127980))))

(declare-fun b!3707376 () Bool)

(declare-fun tp!1127976 () Bool)

(assert (=> b!3707376 (= e!2296480 (and tp_is_empty!18649 tp!1127976))))

(assert (= (and start!349634 res!1508072) b!3707370))

(assert (= (and b!3707370 res!1508073) b!3707369))

(assert (= (and b!3707369 res!1508075) b!3707368))

(assert (= (and b!3707368 res!1508076) b!3707373))

(assert (= (and b!3707373 (not res!1508071)) b!3707367))

(assert (= (and b!3707367 (not res!1508074)) b!3707366))

(assert (= (and start!349634 ((_ is ElementMatch!10817) r!25965)) b!3707371))

(assert (= (and start!349634 ((_ is Concat!17088) r!25965)) b!3707372))

(assert (= (and start!349634 ((_ is Star!10817) r!25965)) b!3707374))

(assert (= (and start!349634 ((_ is Union!10817) r!25965)) b!3707375))

(assert (= (and start!349634 ((_ is Cons!39574) s!14922)) b!3707376))

(declare-fun m!4216669 () Bool)

(assert (=> b!3707366 m!4216669))

(declare-fun m!4216671 () Bool)

(assert (=> b!3707366 m!4216671))

(declare-fun m!4216673 () Bool)

(assert (=> b!3707367 m!4216673))

(declare-fun m!4216675 () Bool)

(assert (=> b!3707369 m!4216675))

(assert (=> b!3707369 m!4216675))

(declare-fun m!4216677 () Bool)

(assert (=> b!3707369 m!4216677))

(declare-fun m!4216679 () Bool)

(assert (=> start!349634 m!4216679))

(declare-fun m!4216681 () Bool)

(assert (=> b!3707373 m!4216681))

(declare-fun m!4216683 () Bool)

(assert (=> b!3707373 m!4216683))

(declare-fun m!4216685 () Bool)

(assert (=> b!3707373 m!4216685))

(declare-fun m!4216687 () Bool)

(assert (=> b!3707373 m!4216687))

(assert (=> b!3707373 m!4216687))

(declare-fun m!4216689 () Bool)

(assert (=> b!3707373 m!4216689))

(declare-fun m!4216691 () Bool)

(assert (=> b!3707370 m!4216691))

(check-sat (not b!3707376) (not b!3707375) (not b!3707369) (not b!3707372) (not b!3707367) (not b!3707366) (not b!3707373) (not start!349634) (not b!3707374) tp_is_empty!18649 (not b!3707370))
(check-sat)
(get-model)

(declare-fun d!1086576 () Bool)

(declare-fun lt!1296552 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5717 (List!39698) (InoxSet C!21820))

(assert (=> d!1086576 (= lt!1296552 (select (content!5717 s!14922) c!13398))))

(declare-fun e!2296494 () Bool)

(assert (=> d!1086576 (= lt!1296552 e!2296494)))

(declare-fun res!1508087 () Bool)

(assert (=> d!1086576 (=> (not res!1508087) (not e!2296494))))

(assert (=> d!1086576 (= res!1508087 ((_ is Cons!39574) s!14922))))

(assert (=> d!1086576 (= (contains!7910 s!14922 c!13398) lt!1296552)))

(declare-fun b!3707387 () Bool)

(declare-fun e!2296493 () Bool)

(assert (=> b!3707387 (= e!2296494 e!2296493)))

(declare-fun res!1508088 () Bool)

(assert (=> b!3707387 (=> res!1508088 e!2296493)))

(assert (=> b!3707387 (= res!1508088 (= (h!44994 s!14922) c!13398))))

(declare-fun b!3707388 () Bool)

(assert (=> b!3707388 (= e!2296493 (contains!7910 (t!302381 s!14922) c!13398))))

(assert (= (and d!1086576 res!1508087) b!3707387))

(assert (= (and b!3707387 (not res!1508088)) b!3707388))

(declare-fun m!4216699 () Bool)

(assert (=> d!1086576 m!4216699))

(declare-fun m!4216701 () Bool)

(assert (=> d!1086576 m!4216701))

(assert (=> b!3707388 m!4216673))

(assert (=> b!3707370 d!1086576))

(declare-fun d!1086580 () Bool)

(declare-fun lt!1296555 () Int)

(assert (=> d!1086580 (>= lt!1296555 0)))

(declare-fun e!2296505 () Int)

(assert (=> d!1086580 (= lt!1296555 e!2296505)))

(declare-fun c!640318 () Bool)

(assert (=> d!1086580 (= c!640318 ((_ is Nil!39574) (t!302381 s!14922)))))

(assert (=> d!1086580 (= (ListPrimitiveSize!253 (t!302381 s!14922)) lt!1296555)))

(declare-fun b!3707409 () Bool)

(assert (=> b!3707409 (= e!2296505 0)))

(declare-fun b!3707410 () Bool)

(assert (=> b!3707410 (= e!2296505 (+ 1 (ListPrimitiveSize!253 (t!302381 (t!302381 s!14922)))))))

(assert (= (and d!1086580 c!640318) b!3707409))

(assert (= (and d!1086580 (not c!640318)) b!3707410))

(declare-fun m!4216703 () Bool)

(assert (=> b!3707410 m!4216703))

(assert (=> b!3707366 d!1086580))

(declare-fun d!1086582 () Bool)

(declare-fun lt!1296556 () Int)

(assert (=> d!1086582 (>= lt!1296556 0)))

(declare-fun e!2296506 () Int)

(assert (=> d!1086582 (= lt!1296556 e!2296506)))

(declare-fun c!640319 () Bool)

(assert (=> d!1086582 (= c!640319 ((_ is Nil!39574) s!14922))))

(assert (=> d!1086582 (= (ListPrimitiveSize!253 s!14922) lt!1296556)))

(declare-fun b!3707411 () Bool)

(assert (=> b!3707411 (= e!2296506 0)))

(declare-fun b!3707412 () Bool)

(assert (=> b!3707412 (= e!2296506 (+ 1 (ListPrimitiveSize!253 (t!302381 s!14922))))))

(assert (= (and d!1086582 c!640319) b!3707411))

(assert (= (and d!1086582 (not c!640319)) b!3707412))

(assert (=> b!3707412 m!4216669))

(assert (=> b!3707366 d!1086582))

(declare-fun d!1086584 () Bool)

(declare-fun lt!1296557 () Bool)

(assert (=> d!1086584 (= lt!1296557 (select (content!5717 (usedCharacters!1080 lt!1296546)) c!13398))))

(declare-fun e!2296508 () Bool)

(assert (=> d!1086584 (= lt!1296557 e!2296508)))

(declare-fun res!1508089 () Bool)

(assert (=> d!1086584 (=> (not res!1508089) (not e!2296508))))

(assert (=> d!1086584 (= res!1508089 ((_ is Cons!39574) (usedCharacters!1080 lt!1296546)))))

(assert (=> d!1086584 (= (contains!7910 (usedCharacters!1080 lt!1296546) c!13398) lt!1296557)))

(declare-fun b!3707413 () Bool)

(declare-fun e!2296507 () Bool)

(assert (=> b!3707413 (= e!2296508 e!2296507)))

(declare-fun res!1508090 () Bool)

(assert (=> b!3707413 (=> res!1508090 e!2296507)))

(assert (=> b!3707413 (= res!1508090 (= (h!44994 (usedCharacters!1080 lt!1296546)) c!13398))))

(declare-fun b!3707414 () Bool)

(assert (=> b!3707414 (= e!2296507 (contains!7910 (t!302381 (usedCharacters!1080 lt!1296546)) c!13398))))

(assert (= (and d!1086584 res!1508089) b!3707413))

(assert (= (and b!3707413 (not res!1508090)) b!3707414))

(assert (=> d!1086584 m!4216687))

(declare-fun m!4216705 () Bool)

(assert (=> d!1086584 m!4216705))

(declare-fun m!4216707 () Bool)

(assert (=> d!1086584 m!4216707))

(declare-fun m!4216709 () Bool)

(assert (=> b!3707414 m!4216709))

(assert (=> b!3707373 d!1086584))

(declare-fun d!1086586 () Bool)

(assert (=> d!1086586 (not (contains!7910 (usedCharacters!1080 (derivativeStep!3296 r!25965 (h!44994 s!14922))) c!13398))))

(declare-fun lt!1296560 () Unit!57464)

(declare-fun choose!22163 (Regex!10817 C!21820 C!21820) Unit!57464)

(assert (=> d!1086586 (= lt!1296560 (choose!22163 r!25965 (h!44994 s!14922) c!13398))))

(assert (=> d!1086586 (= (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!12 r!25965 (h!44994 s!14922) c!13398) lt!1296560)))

(declare-fun bs!574678 () Bool)

(assert (= bs!574678 d!1086586))

(assert (=> bs!574678 m!4216681))

(assert (=> bs!574678 m!4216681))

(declare-fun m!4216711 () Bool)

(assert (=> bs!574678 m!4216711))

(assert (=> bs!574678 m!4216711))

(declare-fun m!4216713 () Bool)

(assert (=> bs!574678 m!4216713))

(declare-fun m!4216715 () Bool)

(assert (=> bs!574678 m!4216715))

(assert (=> b!3707373 d!1086586))

(declare-fun call!267791 () Regex!10817)

(declare-fun e!2296544 () Regex!10817)

(declare-fun call!267790 () Regex!10817)

(declare-fun b!3707481 () Bool)

(assert (=> b!3707481 (= e!2296544 (Union!10817 (Concat!17088 call!267791 (regTwo!22146 r!25965)) call!267790))))

(declare-fun b!3707482 () Bool)

(declare-fun e!2296547 () Regex!10817)

(assert (=> b!3707482 (= e!2296547 EmptyLang!10817)))

(declare-fun b!3707483 () Bool)

(declare-fun c!640354 () Bool)

(assert (=> b!3707483 (= c!640354 ((_ is Union!10817) r!25965))))

(declare-fun e!2296543 () Regex!10817)

(declare-fun e!2296545 () Regex!10817)

(assert (=> b!3707483 (= e!2296543 e!2296545)))

(declare-fun b!3707484 () Bool)

(declare-fun call!267792 () Regex!10817)

(assert (=> b!3707484 (= e!2296545 (Union!10817 call!267790 call!267792))))

(declare-fun b!3707485 () Bool)

(declare-fun e!2296546 () Regex!10817)

(declare-fun call!267789 () Regex!10817)

(assert (=> b!3707485 (= e!2296546 (Concat!17088 call!267789 r!25965))))

(declare-fun b!3707486 () Bool)

(assert (=> b!3707486 (= e!2296547 e!2296543)))

(declare-fun c!640353 () Bool)

(assert (=> b!3707486 (= c!640353 ((_ is ElementMatch!10817) r!25965))))

(declare-fun b!3707487 () Bool)

(assert (=> b!3707487 (= e!2296545 e!2296546)))

(declare-fun c!640355 () Bool)

(assert (=> b!3707487 (= c!640355 ((_ is Star!10817) r!25965))))

(declare-fun bm!267784 () Bool)

(assert (=> bm!267784 (= call!267790 (derivativeStep!3296 (ite c!640354 (regOne!22147 r!25965) (regTwo!22146 r!25965)) (h!44994 s!14922)))))

(declare-fun bm!267785 () Bool)

(assert (=> bm!267785 (= call!267791 call!267789)))

(declare-fun b!3707488 () Bool)

(declare-fun c!640357 () Bool)

(declare-fun nullable!3751 (Regex!10817) Bool)

(assert (=> b!3707488 (= c!640357 (nullable!3751 (regOne!22146 r!25965)))))

(assert (=> b!3707488 (= e!2296546 e!2296544)))

(declare-fun b!3707489 () Bool)

(assert (=> b!3707489 (= e!2296543 (ite (= (h!44994 s!14922) (c!640307 r!25965)) EmptyExpr!10817 EmptyLang!10817))))

(declare-fun d!1086588 () Bool)

(declare-fun lt!1296570 () Regex!10817)

(assert (=> d!1086588 (validRegex!4924 lt!1296570)))

(assert (=> d!1086588 (= lt!1296570 e!2296547)))

(declare-fun c!640356 () Bool)

(assert (=> d!1086588 (= c!640356 (or ((_ is EmptyExpr!10817) r!25965) ((_ is EmptyLang!10817) r!25965)))))

(assert (=> d!1086588 (validRegex!4924 r!25965)))

(assert (=> d!1086588 (= (derivativeStep!3296 r!25965 (h!44994 s!14922)) lt!1296570)))

(declare-fun bm!267786 () Bool)

(assert (=> bm!267786 (= call!267792 (derivativeStep!3296 (ite c!640354 (regTwo!22147 r!25965) (ite c!640355 (reg!11146 r!25965) (regOne!22146 r!25965))) (h!44994 s!14922)))))

(declare-fun b!3707490 () Bool)

(assert (=> b!3707490 (= e!2296544 (Union!10817 (Concat!17088 call!267791 (regTwo!22146 r!25965)) EmptyLang!10817))))

(declare-fun bm!267787 () Bool)

(assert (=> bm!267787 (= call!267789 call!267792)))

(assert (= (and d!1086588 c!640356) b!3707482))

(assert (= (and d!1086588 (not c!640356)) b!3707486))

(assert (= (and b!3707486 c!640353) b!3707489))

(assert (= (and b!3707486 (not c!640353)) b!3707483))

(assert (= (and b!3707483 c!640354) b!3707484))

(assert (= (and b!3707483 (not c!640354)) b!3707487))

(assert (= (and b!3707487 c!640355) b!3707485))

(assert (= (and b!3707487 (not c!640355)) b!3707488))

(assert (= (and b!3707488 c!640357) b!3707481))

(assert (= (and b!3707488 (not c!640357)) b!3707490))

(assert (= (or b!3707481 b!3707490) bm!267785))

(assert (= (or b!3707485 bm!267785) bm!267787))

(assert (= (or b!3707484 b!3707481) bm!267784))

(assert (= (or b!3707484 bm!267787) bm!267786))

(declare-fun m!4216737 () Bool)

(assert (=> bm!267784 m!4216737))

(declare-fun m!4216739 () Bool)

(assert (=> b!3707488 m!4216739))

(declare-fun m!4216741 () Bool)

(assert (=> d!1086588 m!4216741))

(assert (=> d!1086588 m!4216679))

(declare-fun m!4216743 () Bool)

(assert (=> bm!267786 m!4216743))

(assert (=> b!3707373 d!1086588))

(declare-fun b!3707523 () Bool)

(declare-fun e!2296567 () List!39698)

(assert (=> b!3707523 (= e!2296567 (Cons!39574 (c!640307 lt!1296546) Nil!39574))))

(declare-fun b!3707524 () Bool)

(declare-fun e!2296565 () List!39698)

(assert (=> b!3707524 (= e!2296565 Nil!39574)))

(declare-fun c!640376 () Bool)

(declare-fun call!267812 () List!39698)

(declare-fun c!640374 () Bool)

(declare-fun bm!267804 () Bool)

(assert (=> bm!267804 (= call!267812 (usedCharacters!1080 (ite c!640374 (reg!11146 lt!1296546) (ite c!640376 (regOne!22147 lt!1296546) (regTwo!22146 lt!1296546)))))))

(declare-fun b!3707525 () Bool)

(assert (=> b!3707525 (= e!2296565 e!2296567)))

(declare-fun c!640375 () Bool)

(assert (=> b!3707525 (= c!640375 ((_ is ElementMatch!10817) lt!1296546))))

(declare-fun b!3707526 () Bool)

(declare-fun e!2296568 () List!39698)

(declare-fun call!267811 () List!39698)

(assert (=> b!3707526 (= e!2296568 call!267811)))

(declare-fun b!3707527 () Bool)

(assert (=> b!3707527 (= c!640374 ((_ is Star!10817) lt!1296546))))

(declare-fun e!2296566 () List!39698)

(assert (=> b!3707527 (= e!2296567 e!2296566)))

(declare-fun b!3707528 () Bool)

(assert (=> b!3707528 (= e!2296566 call!267812)))

(declare-fun d!1086600 () Bool)

(declare-fun c!640373 () Bool)

(assert (=> d!1086600 (= c!640373 (or ((_ is EmptyExpr!10817) lt!1296546) ((_ is EmptyLang!10817) lt!1296546)))))

(assert (=> d!1086600 (= (usedCharacters!1080 lt!1296546) e!2296565)))

(declare-fun b!3707529 () Bool)

(assert (=> b!3707529 (= e!2296566 e!2296568)))

(assert (=> b!3707529 (= c!640376 ((_ is Union!10817) lt!1296546))))

(declare-fun b!3707530 () Bool)

(assert (=> b!3707530 (= e!2296568 call!267811)))

(declare-fun bm!267805 () Bool)

(declare-fun call!267809 () List!39698)

(assert (=> bm!267805 (= call!267809 call!267812)))

(declare-fun bm!267806 () Bool)

(declare-fun call!267810 () List!39698)

(declare-fun ++!9780 (List!39698 List!39698) List!39698)

(assert (=> bm!267806 (= call!267811 (++!9780 (ite c!640376 call!267809 call!267810) (ite c!640376 call!267810 call!267809)))))

(declare-fun bm!267807 () Bool)

(assert (=> bm!267807 (= call!267810 (usedCharacters!1080 (ite c!640376 (regTwo!22147 lt!1296546) (regOne!22146 lt!1296546))))))

(assert (= (and d!1086600 c!640373) b!3707524))

(assert (= (and d!1086600 (not c!640373)) b!3707525))

(assert (= (and b!3707525 c!640375) b!3707523))

(assert (= (and b!3707525 (not c!640375)) b!3707527))

(assert (= (and b!3707527 c!640374) b!3707528))

(assert (= (and b!3707527 (not c!640374)) b!3707529))

(assert (= (and b!3707529 c!640376) b!3707530))

(assert (= (and b!3707529 (not c!640376)) b!3707526))

(assert (= (or b!3707530 b!3707526) bm!267805))

(assert (= (or b!3707530 b!3707526) bm!267807))

(assert (= (or b!3707530 b!3707526) bm!267806))

(assert (= (or b!3707528 bm!267805) bm!267804))

(declare-fun m!4216753 () Bool)

(assert (=> bm!267804 m!4216753))

(declare-fun m!4216755 () Bool)

(assert (=> bm!267806 m!4216755))

(declare-fun m!4216757 () Bool)

(assert (=> bm!267807 m!4216757))

(assert (=> b!3707373 d!1086600))

(declare-fun b!3707570 () Bool)

(declare-fun res!1508121 () Bool)

(declare-fun e!2296605 () Bool)

(assert (=> b!3707570 (=> res!1508121 e!2296605)))

(assert (=> b!3707570 (= res!1508121 (not ((_ is Concat!17088) lt!1296546)))))

(declare-fun e!2296606 () Bool)

(assert (=> b!3707570 (= e!2296606 e!2296605)))

(declare-fun b!3707571 () Bool)

(declare-fun e!2296604 () Bool)

(declare-fun call!267828 () Bool)

(assert (=> b!3707571 (= e!2296604 call!267828)))

(declare-fun b!3707572 () Bool)

(declare-fun e!2296602 () Bool)

(assert (=> b!3707572 (= e!2296602 call!267828)))

(declare-fun b!3707573 () Bool)

(declare-fun res!1508118 () Bool)

(assert (=> b!3707573 (=> (not res!1508118) (not e!2296604))))

(declare-fun call!267829 () Bool)

(assert (=> b!3707573 (= res!1508118 call!267829)))

(assert (=> b!3707573 (= e!2296606 e!2296604)))

(declare-fun b!3707574 () Bool)

(assert (=> b!3707574 (= e!2296605 e!2296602)))

(declare-fun res!1508119 () Bool)

(assert (=> b!3707574 (=> (not res!1508119) (not e!2296602))))

(assert (=> b!3707574 (= res!1508119 call!267829)))

(declare-fun bm!267823 () Bool)

(declare-fun c!640386 () Bool)

(assert (=> bm!267823 (= call!267829 (validRegex!4924 (ite c!640386 (regOne!22147 lt!1296546) (regOne!22146 lt!1296546))))))

(declare-fun d!1086604 () Bool)

(declare-fun res!1508120 () Bool)

(declare-fun e!2296603 () Bool)

(assert (=> d!1086604 (=> res!1508120 e!2296603)))

(assert (=> d!1086604 (= res!1508120 ((_ is ElementMatch!10817) lt!1296546))))

(assert (=> d!1086604 (= (validRegex!4924 lt!1296546) e!2296603)))

(declare-fun b!3707575 () Bool)

(declare-fun e!2296601 () Bool)

(declare-fun e!2296600 () Bool)

(assert (=> b!3707575 (= e!2296601 e!2296600)))

(declare-fun res!1508122 () Bool)

(assert (=> b!3707575 (= res!1508122 (not (nullable!3751 (reg!11146 lt!1296546))))))

(assert (=> b!3707575 (=> (not res!1508122) (not e!2296600))))

(declare-fun b!3707576 () Bool)

(declare-fun call!267830 () Bool)

(assert (=> b!3707576 (= e!2296600 call!267830)))

(declare-fun b!3707577 () Bool)

(assert (=> b!3707577 (= e!2296601 e!2296606)))

(assert (=> b!3707577 (= c!640386 ((_ is Union!10817) lt!1296546))))

(declare-fun c!640387 () Bool)

(declare-fun bm!267824 () Bool)

(assert (=> bm!267824 (= call!267830 (validRegex!4924 (ite c!640387 (reg!11146 lt!1296546) (ite c!640386 (regTwo!22147 lt!1296546) (regTwo!22146 lt!1296546)))))))

(declare-fun bm!267825 () Bool)

(assert (=> bm!267825 (= call!267828 call!267830)))

(declare-fun b!3707578 () Bool)

(assert (=> b!3707578 (= e!2296603 e!2296601)))

(assert (=> b!3707578 (= c!640387 ((_ is Star!10817) lt!1296546))))

(assert (= (and d!1086604 (not res!1508120)) b!3707578))

(assert (= (and b!3707578 c!640387) b!3707575))

(assert (= (and b!3707578 (not c!640387)) b!3707577))

(assert (= (and b!3707575 res!1508122) b!3707576))

(assert (= (and b!3707577 c!640386) b!3707573))

(assert (= (and b!3707577 (not c!640386)) b!3707570))

(assert (= (and b!3707573 res!1508118) b!3707571))

(assert (= (and b!3707570 (not res!1508121)) b!3707574))

(assert (= (and b!3707574 res!1508119) b!3707572))

(assert (= (or b!3707573 b!3707574) bm!267823))

(assert (= (or b!3707571 b!3707572) bm!267825))

(assert (= (or b!3707576 bm!267825) bm!267824))

(declare-fun m!4216777 () Bool)

(assert (=> bm!267823 m!4216777))

(declare-fun m!4216779 () Bool)

(assert (=> b!3707575 m!4216779))

(declare-fun m!4216781 () Bool)

(assert (=> bm!267824 m!4216781))

(assert (=> b!3707373 d!1086604))

(declare-fun b!3707590 () Bool)

(declare-fun res!1508133 () Bool)

(declare-fun e!2296621 () Bool)

(assert (=> b!3707590 (=> res!1508133 e!2296621)))

(assert (=> b!3707590 (= res!1508133 (not ((_ is Concat!17088) r!25965)))))

(declare-fun e!2296622 () Bool)

(assert (=> b!3707590 (= e!2296622 e!2296621)))

(declare-fun b!3707591 () Bool)

(declare-fun e!2296620 () Bool)

(declare-fun call!267834 () Bool)

(assert (=> b!3707591 (= e!2296620 call!267834)))

(declare-fun b!3707592 () Bool)

(declare-fun e!2296618 () Bool)

(assert (=> b!3707592 (= e!2296618 call!267834)))

(declare-fun b!3707593 () Bool)

(declare-fun res!1508130 () Bool)

(assert (=> b!3707593 (=> (not res!1508130) (not e!2296620))))

(declare-fun call!267835 () Bool)

(assert (=> b!3707593 (= res!1508130 call!267835)))

(assert (=> b!3707593 (= e!2296622 e!2296620)))

(declare-fun b!3707594 () Bool)

(assert (=> b!3707594 (= e!2296621 e!2296618)))

(declare-fun res!1508131 () Bool)

(assert (=> b!3707594 (=> (not res!1508131) (not e!2296618))))

(assert (=> b!3707594 (= res!1508131 call!267835)))

(declare-fun bm!267829 () Bool)

(declare-fun c!640390 () Bool)

(assert (=> bm!267829 (= call!267835 (validRegex!4924 (ite c!640390 (regOne!22147 r!25965) (regOne!22146 r!25965))))))

(declare-fun d!1086612 () Bool)

(declare-fun res!1508132 () Bool)

(declare-fun e!2296619 () Bool)

(assert (=> d!1086612 (=> res!1508132 e!2296619)))

(assert (=> d!1086612 (= res!1508132 ((_ is ElementMatch!10817) r!25965))))

(assert (=> d!1086612 (= (validRegex!4924 r!25965) e!2296619)))

(declare-fun b!3707595 () Bool)

(declare-fun e!2296617 () Bool)

(declare-fun e!2296616 () Bool)

(assert (=> b!3707595 (= e!2296617 e!2296616)))

(declare-fun res!1508134 () Bool)

(assert (=> b!3707595 (= res!1508134 (not (nullable!3751 (reg!11146 r!25965))))))

(assert (=> b!3707595 (=> (not res!1508134) (not e!2296616))))

(declare-fun b!3707596 () Bool)

(declare-fun call!267836 () Bool)

(assert (=> b!3707596 (= e!2296616 call!267836)))

(declare-fun b!3707597 () Bool)

(assert (=> b!3707597 (= e!2296617 e!2296622)))

(assert (=> b!3707597 (= c!640390 ((_ is Union!10817) r!25965))))

(declare-fun bm!267830 () Bool)

(declare-fun c!640391 () Bool)

(assert (=> bm!267830 (= call!267836 (validRegex!4924 (ite c!640391 (reg!11146 r!25965) (ite c!640390 (regTwo!22147 r!25965) (regTwo!22146 r!25965)))))))

(declare-fun bm!267831 () Bool)

(assert (=> bm!267831 (= call!267834 call!267836)))

(declare-fun b!3707598 () Bool)

(assert (=> b!3707598 (= e!2296619 e!2296617)))

(assert (=> b!3707598 (= c!640391 ((_ is Star!10817) r!25965))))

(assert (= (and d!1086612 (not res!1508132)) b!3707598))

(assert (= (and b!3707598 c!640391) b!3707595))

(assert (= (and b!3707598 (not c!640391)) b!3707597))

(assert (= (and b!3707595 res!1508134) b!3707596))

(assert (= (and b!3707597 c!640390) b!3707593))

(assert (= (and b!3707597 (not c!640390)) b!3707590))

(assert (= (and b!3707593 res!1508130) b!3707591))

(assert (= (and b!3707590 (not res!1508133)) b!3707594))

(assert (= (and b!3707594 res!1508131) b!3707592))

(assert (= (or b!3707593 b!3707594) bm!267829))

(assert (= (or b!3707591 b!3707592) bm!267831))

(assert (= (or b!3707596 bm!267831) bm!267830))

(declare-fun m!4216793 () Bool)

(assert (=> bm!267829 m!4216793))

(declare-fun m!4216795 () Bool)

(assert (=> b!3707595 m!4216795))

(declare-fun m!4216797 () Bool)

(assert (=> bm!267830 m!4216797))

(assert (=> start!349634 d!1086612))

(declare-fun d!1086616 () Bool)

(declare-fun lt!1296577 () Bool)

(assert (=> d!1086616 (= lt!1296577 (select (content!5717 (t!302381 s!14922)) c!13398))))

(declare-fun e!2296628 () Bool)

(assert (=> d!1086616 (= lt!1296577 e!2296628)))

(declare-fun res!1508137 () Bool)

(assert (=> d!1086616 (=> (not res!1508137) (not e!2296628))))

(assert (=> d!1086616 (= res!1508137 ((_ is Cons!39574) (t!302381 s!14922)))))

(assert (=> d!1086616 (= (contains!7910 (t!302381 s!14922) c!13398) lt!1296577)))

(declare-fun b!3707609 () Bool)

(declare-fun e!2296627 () Bool)

(assert (=> b!3707609 (= e!2296628 e!2296627)))

(declare-fun res!1508138 () Bool)

(assert (=> b!3707609 (=> res!1508138 e!2296627)))

(assert (=> b!3707609 (= res!1508138 (= (h!44994 (t!302381 s!14922)) c!13398))))

(declare-fun b!3707610 () Bool)

(assert (=> b!3707610 (= e!2296627 (contains!7910 (t!302381 (t!302381 s!14922)) c!13398))))

(assert (= (and d!1086616 res!1508137) b!3707609))

(assert (= (and b!3707609 (not res!1508138)) b!3707610))

(declare-fun m!4216799 () Bool)

(assert (=> d!1086616 m!4216799))

(declare-fun m!4216801 () Bool)

(assert (=> d!1086616 m!4216801))

(declare-fun m!4216803 () Bool)

(assert (=> b!3707610 m!4216803))

(assert (=> b!3707367 d!1086616))

(declare-fun d!1086618 () Bool)

(declare-fun lt!1296578 () Bool)

(assert (=> d!1086618 (= lt!1296578 (select (content!5717 (usedCharacters!1080 r!25965)) c!13398))))

(declare-fun e!2296630 () Bool)

(assert (=> d!1086618 (= lt!1296578 e!2296630)))

(declare-fun res!1508139 () Bool)

(assert (=> d!1086618 (=> (not res!1508139) (not e!2296630))))

(assert (=> d!1086618 (= res!1508139 ((_ is Cons!39574) (usedCharacters!1080 r!25965)))))

(assert (=> d!1086618 (= (contains!7910 (usedCharacters!1080 r!25965) c!13398) lt!1296578)))

(declare-fun b!3707613 () Bool)

(declare-fun e!2296629 () Bool)

(assert (=> b!3707613 (= e!2296630 e!2296629)))

(declare-fun res!1508140 () Bool)

(assert (=> b!3707613 (=> res!1508140 e!2296629)))

(assert (=> b!3707613 (= res!1508140 (= (h!44994 (usedCharacters!1080 r!25965)) c!13398))))

(declare-fun b!3707614 () Bool)

(assert (=> b!3707614 (= e!2296629 (contains!7910 (t!302381 (usedCharacters!1080 r!25965)) c!13398))))

(assert (= (and d!1086618 res!1508139) b!3707613))

(assert (= (and b!3707613 (not res!1508140)) b!3707614))

(assert (=> d!1086618 m!4216675))

(declare-fun m!4216805 () Bool)

(assert (=> d!1086618 m!4216805))

(declare-fun m!4216807 () Bool)

(assert (=> d!1086618 m!4216807))

(declare-fun m!4216809 () Bool)

(assert (=> b!3707614 m!4216809))

(assert (=> b!3707369 d!1086618))

(declare-fun b!3707619 () Bool)

(declare-fun e!2296634 () List!39698)

(assert (=> b!3707619 (= e!2296634 (Cons!39574 (c!640307 r!25965) Nil!39574))))

(declare-fun b!3707620 () Bool)

(declare-fun e!2296631 () List!39698)

(assert (=> b!3707620 (= e!2296631 Nil!39574)))

(declare-fun c!640393 () Bool)

(declare-fun bm!267832 () Bool)

(declare-fun call!267840 () List!39698)

(declare-fun c!640395 () Bool)

(assert (=> bm!267832 (= call!267840 (usedCharacters!1080 (ite c!640393 (reg!11146 r!25965) (ite c!640395 (regOne!22147 r!25965) (regTwo!22146 r!25965)))))))

(declare-fun b!3707621 () Bool)

(assert (=> b!3707621 (= e!2296631 e!2296634)))

(declare-fun c!640394 () Bool)

(assert (=> b!3707621 (= c!640394 ((_ is ElementMatch!10817) r!25965))))

(declare-fun b!3707622 () Bool)

(declare-fun e!2296635 () List!39698)

(declare-fun call!267839 () List!39698)

(assert (=> b!3707622 (= e!2296635 call!267839)))

(declare-fun b!3707623 () Bool)

(assert (=> b!3707623 (= c!640393 ((_ is Star!10817) r!25965))))

(declare-fun e!2296633 () List!39698)

(assert (=> b!3707623 (= e!2296634 e!2296633)))

(declare-fun b!3707624 () Bool)

(assert (=> b!3707624 (= e!2296633 call!267840)))

(declare-fun d!1086620 () Bool)

(declare-fun c!640392 () Bool)

(assert (=> d!1086620 (= c!640392 (or ((_ is EmptyExpr!10817) r!25965) ((_ is EmptyLang!10817) r!25965)))))

(assert (=> d!1086620 (= (usedCharacters!1080 r!25965) e!2296631)))

(declare-fun b!3707625 () Bool)

(assert (=> b!3707625 (= e!2296633 e!2296635)))

(assert (=> b!3707625 (= c!640395 ((_ is Union!10817) r!25965))))

(declare-fun b!3707626 () Bool)

(assert (=> b!3707626 (= e!2296635 call!267839)))

(declare-fun bm!267833 () Bool)

(declare-fun call!267837 () List!39698)

(assert (=> bm!267833 (= call!267837 call!267840)))

(declare-fun call!267838 () List!39698)

(declare-fun bm!267834 () Bool)

(assert (=> bm!267834 (= call!267839 (++!9780 (ite c!640395 call!267837 call!267838) (ite c!640395 call!267838 call!267837)))))

(declare-fun bm!267835 () Bool)

(assert (=> bm!267835 (= call!267838 (usedCharacters!1080 (ite c!640395 (regTwo!22147 r!25965) (regOne!22146 r!25965))))))

(assert (= (and d!1086620 c!640392) b!3707620))

(assert (= (and d!1086620 (not c!640392)) b!3707621))

(assert (= (and b!3707621 c!640394) b!3707619))

(assert (= (and b!3707621 (not c!640394)) b!3707623))

(assert (= (and b!3707623 c!640393) b!3707624))

(assert (= (and b!3707623 (not c!640393)) b!3707625))

(assert (= (and b!3707625 c!640395) b!3707626))

(assert (= (and b!3707625 (not c!640395)) b!3707622))

(assert (= (or b!3707626 b!3707622) bm!267833))

(assert (= (or b!3707626 b!3707622) bm!267835))

(assert (= (or b!3707626 b!3707622) bm!267834))

(assert (= (or b!3707624 bm!267833) bm!267832))

(declare-fun m!4216811 () Bool)

(assert (=> bm!267832 m!4216811))

(declare-fun m!4216813 () Bool)

(assert (=> bm!267834 m!4216813))

(declare-fun m!4216815 () Bool)

(assert (=> bm!267835 m!4216815))

(assert (=> b!3707369 d!1086620))

(declare-fun b!3707659 () Bool)

(declare-fun e!2296645 () Bool)

(declare-fun tp!1128032 () Bool)

(declare-fun tp!1128030 () Bool)

(assert (=> b!3707659 (= e!2296645 (and tp!1128032 tp!1128030))))

(declare-fun b!3707661 () Bool)

(declare-fun tp!1128031 () Bool)

(declare-fun tp!1128033 () Bool)

(assert (=> b!3707661 (= e!2296645 (and tp!1128031 tp!1128033))))

(declare-fun b!3707658 () Bool)

(assert (=> b!3707658 (= e!2296645 tp_is_empty!18649)))

(declare-fun b!3707660 () Bool)

(declare-fun tp!1128029 () Bool)

(assert (=> b!3707660 (= e!2296645 tp!1128029)))

(assert (=> b!3707375 (= tp!1127977 e!2296645)))

(assert (= (and b!3707375 ((_ is ElementMatch!10817) (regOne!22147 r!25965))) b!3707658))

(assert (= (and b!3707375 ((_ is Concat!17088) (regOne!22147 r!25965))) b!3707659))

(assert (= (and b!3707375 ((_ is Star!10817) (regOne!22147 r!25965))) b!3707660))

(assert (= (and b!3707375 ((_ is Union!10817) (regOne!22147 r!25965))) b!3707661))

(declare-fun b!3707663 () Bool)

(declare-fun e!2296646 () Bool)

(declare-fun tp!1128037 () Bool)

(declare-fun tp!1128035 () Bool)

(assert (=> b!3707663 (= e!2296646 (and tp!1128037 tp!1128035))))

(declare-fun b!3707665 () Bool)

(declare-fun tp!1128036 () Bool)

(declare-fun tp!1128038 () Bool)

(assert (=> b!3707665 (= e!2296646 (and tp!1128036 tp!1128038))))

(declare-fun b!3707662 () Bool)

(assert (=> b!3707662 (= e!2296646 tp_is_empty!18649)))

(declare-fun b!3707664 () Bool)

(declare-fun tp!1128034 () Bool)

(assert (=> b!3707664 (= e!2296646 tp!1128034)))

(assert (=> b!3707375 (= tp!1127980 e!2296646)))

(assert (= (and b!3707375 ((_ is ElementMatch!10817) (regTwo!22147 r!25965))) b!3707662))

(assert (= (and b!3707375 ((_ is Concat!17088) (regTwo!22147 r!25965))) b!3707663))

(assert (= (and b!3707375 ((_ is Star!10817) (regTwo!22147 r!25965))) b!3707664))

(assert (= (and b!3707375 ((_ is Union!10817) (regTwo!22147 r!25965))) b!3707665))

(declare-fun b!3707670 () Bool)

(declare-fun e!2296649 () Bool)

(declare-fun tp!1128041 () Bool)

(assert (=> b!3707670 (= e!2296649 (and tp_is_empty!18649 tp!1128041))))

(assert (=> b!3707376 (= tp!1127976 e!2296649)))

(assert (= (and b!3707376 ((_ is Cons!39574) (t!302381 s!14922))) b!3707670))

(declare-fun b!3707672 () Bool)

(declare-fun e!2296650 () Bool)

(declare-fun tp!1128045 () Bool)

(declare-fun tp!1128043 () Bool)

(assert (=> b!3707672 (= e!2296650 (and tp!1128045 tp!1128043))))

(declare-fun b!3707674 () Bool)

(declare-fun tp!1128044 () Bool)

(declare-fun tp!1128046 () Bool)

(assert (=> b!3707674 (= e!2296650 (and tp!1128044 tp!1128046))))

(declare-fun b!3707671 () Bool)

(assert (=> b!3707671 (= e!2296650 tp_is_empty!18649)))

(declare-fun b!3707673 () Bool)

(declare-fun tp!1128042 () Bool)

(assert (=> b!3707673 (= e!2296650 tp!1128042)))

(assert (=> b!3707372 (= tp!1127978 e!2296650)))

(assert (= (and b!3707372 ((_ is ElementMatch!10817) (regOne!22146 r!25965))) b!3707671))

(assert (= (and b!3707372 ((_ is Concat!17088) (regOne!22146 r!25965))) b!3707672))

(assert (= (and b!3707372 ((_ is Star!10817) (regOne!22146 r!25965))) b!3707673))

(assert (= (and b!3707372 ((_ is Union!10817) (regOne!22146 r!25965))) b!3707674))

(declare-fun b!3707676 () Bool)

(declare-fun e!2296651 () Bool)

(declare-fun tp!1128050 () Bool)

(declare-fun tp!1128048 () Bool)

(assert (=> b!3707676 (= e!2296651 (and tp!1128050 tp!1128048))))

(declare-fun b!3707678 () Bool)

(declare-fun tp!1128049 () Bool)

(declare-fun tp!1128051 () Bool)

(assert (=> b!3707678 (= e!2296651 (and tp!1128049 tp!1128051))))

(declare-fun b!3707675 () Bool)

(assert (=> b!3707675 (= e!2296651 tp_is_empty!18649)))

(declare-fun b!3707677 () Bool)

(declare-fun tp!1128047 () Bool)

(assert (=> b!3707677 (= e!2296651 tp!1128047)))

(assert (=> b!3707372 (= tp!1127975 e!2296651)))

(assert (= (and b!3707372 ((_ is ElementMatch!10817) (regTwo!22146 r!25965))) b!3707675))

(assert (= (and b!3707372 ((_ is Concat!17088) (regTwo!22146 r!25965))) b!3707676))

(assert (= (and b!3707372 ((_ is Star!10817) (regTwo!22146 r!25965))) b!3707677))

(assert (= (and b!3707372 ((_ is Union!10817) (regTwo!22146 r!25965))) b!3707678))

(declare-fun b!3707680 () Bool)

(declare-fun e!2296652 () Bool)

(declare-fun tp!1128055 () Bool)

(declare-fun tp!1128053 () Bool)

(assert (=> b!3707680 (= e!2296652 (and tp!1128055 tp!1128053))))

(declare-fun b!3707682 () Bool)

(declare-fun tp!1128054 () Bool)

(declare-fun tp!1128056 () Bool)

(assert (=> b!3707682 (= e!2296652 (and tp!1128054 tp!1128056))))

(declare-fun b!3707679 () Bool)

(assert (=> b!3707679 (= e!2296652 tp_is_empty!18649)))

(declare-fun b!3707681 () Bool)

(declare-fun tp!1128052 () Bool)

(assert (=> b!3707681 (= e!2296652 tp!1128052)))

(assert (=> b!3707374 (= tp!1127979 e!2296652)))

(assert (= (and b!3707374 ((_ is ElementMatch!10817) (reg!11146 r!25965))) b!3707679))

(assert (= (and b!3707374 ((_ is Concat!17088) (reg!11146 r!25965))) b!3707680))

(assert (= (and b!3707374 ((_ is Star!10817) (reg!11146 r!25965))) b!3707681))

(assert (= (and b!3707374 ((_ is Union!10817) (reg!11146 r!25965))) b!3707682))

(check-sat (not bm!267784) (not b!3707661) (not b!3707680) (not b!3707674) (not d!1086588) (not b!3707677) (not b!3707412) (not d!1086586) (not b!3707488) (not b!3707664) (not b!3707676) (not bm!267786) (not bm!267824) (not d!1086584) (not b!3707595) (not bm!267832) (not d!1086616) (not b!3707678) (not b!3707388) (not bm!267804) (not b!3707665) (not bm!267807) (not b!3707663) (not d!1086576) (not b!3707682) (not b!3707681) (not b!3707614) (not b!3707660) (not b!3707659) (not b!3707410) (not bm!267823) (not b!3707575) (not bm!267829) (not bm!267834) (not bm!267830) (not bm!267806) (not b!3707414) tp_is_empty!18649 (not b!3707672) (not b!3707610) (not bm!267835) (not d!1086618) (not b!3707673) (not b!3707670))
(check-sat)
