; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742542 () Bool)

(assert start!742542)

(declare-fun b!7839558 () Bool)

(declare-fun e!4635309 () Bool)

(declare-datatypes ((C!42360 0))(
  ( (C!42361 (val!31620 Int)) )
))
(declare-datatypes ((List!73854 0))(
  ( (Nil!73730) (Cons!73730 (h!80178 C!42360) (t!388589 List!73854)) )
))
(declare-fun s2!2463 () List!73854)

(declare-fun size!42783 (List!73854) Int)

(assert (=> b!7839558 (= e!4635309 (< (size!42783 s2!2463) 0))))

(declare-fun b!7839559 () Bool)

(declare-fun e!4635306 () Bool)

(declare-fun tp_is_empty!52389 () Bool)

(declare-fun tp!2320017 () Bool)

(assert (=> b!7839559 (= e!4635306 (and tp_is_empty!52389 tp!2320017))))

(declare-fun res!3118010 () Bool)

(assert (=> start!742542 (=> (not res!3118010) (not e!4635309))))

(declare-datatypes ((Regex!21017 0))(
  ( (ElementMatch!21017 (c!1441398 C!42360)) (Concat!29862 (regOne!42546 Regex!21017) (regTwo!42546 Regex!21017)) (EmptyExpr!21017) (Star!21017 (reg!21346 Regex!21017)) (EmptyLang!21017) (Union!21017 (regOne!42547 Regex!21017) (regTwo!42547 Regex!21017)) )
))
(declare-fun r1!3326 () Regex!21017)

(declare-fun validRegex!11431 (Regex!21017) Bool)

(assert (=> start!742542 (= res!3118010 (validRegex!11431 r1!3326))))

(assert (=> start!742542 e!4635309))

(assert (=> start!742542 e!4635306))

(declare-fun e!4635305 () Bool)

(assert (=> start!742542 e!4635305))

(declare-fun e!4635304 () Bool)

(assert (=> start!742542 e!4635304))

(declare-fun e!4635308 () Bool)

(assert (=> start!742542 e!4635308))

(declare-fun e!4635307 () Bool)

(assert (=> start!742542 e!4635307))

(declare-fun b!7839560 () Bool)

(declare-fun tp!2320018 () Bool)

(assert (=> b!7839560 (= e!4635304 (and tp_is_empty!52389 tp!2320018))))

(declare-fun b!7839561 () Bool)

(declare-fun tp!2320027 () Bool)

(declare-fun tp!2320020 () Bool)

(assert (=> b!7839561 (= e!4635308 (and tp!2320027 tp!2320020))))

(declare-fun b!7839562 () Bool)

(declare-fun res!3118009 () Bool)

(assert (=> b!7839562 (=> (not res!3118009) (not e!4635309))))

(declare-fun r2!3226 () Regex!21017)

(assert (=> b!7839562 (= res!3118009 (validRegex!11431 r2!3226))))

(declare-fun b!7839563 () Bool)

(assert (=> b!7839563 (= e!4635308 tp_is_empty!52389)))

(declare-fun b!7839564 () Bool)

(declare-fun tp!2320016 () Bool)

(declare-fun tp!2320019 () Bool)

(assert (=> b!7839564 (= e!4635305 (and tp!2320016 tp!2320019))))

(declare-fun b!7839565 () Bool)

(declare-fun tp!2320015 () Bool)

(declare-fun tp!2320024 () Bool)

(assert (=> b!7839565 (= e!4635308 (and tp!2320015 tp!2320024))))

(declare-fun b!7839566 () Bool)

(declare-fun tp!2320021 () Bool)

(assert (=> b!7839566 (= e!4635307 (and tp_is_empty!52389 tp!2320021))))

(declare-fun b!7839567 () Bool)

(declare-fun tp!2320025 () Bool)

(assert (=> b!7839567 (= e!4635305 tp!2320025)))

(declare-fun b!7839568 () Bool)

(assert (=> b!7839568 (= e!4635305 tp_is_empty!52389)))

(declare-fun b!7839569 () Bool)

(declare-fun tp!2320022 () Bool)

(assert (=> b!7839569 (= e!4635308 tp!2320022)))

(declare-fun b!7839570 () Bool)

(declare-fun res!3118008 () Bool)

(assert (=> b!7839570 (=> (not res!3118008) (not e!4635309))))

(declare-fun s1!2717 () List!73854)

(declare-fun s!10212 () List!73854)

(declare-fun ++!18051 (List!73854 List!73854) List!73854)

(assert (=> b!7839570 (= res!3118008 (= (++!18051 s1!2717 s2!2463) s!10212))))

(declare-fun b!7839571 () Bool)

(declare-fun tp!2320023 () Bool)

(declare-fun tp!2320026 () Bool)

(assert (=> b!7839571 (= e!4635305 (and tp!2320023 tp!2320026))))

(assert (= (and start!742542 res!3118010) b!7839562))

(assert (= (and b!7839562 res!3118009) b!7839570))

(assert (= (and b!7839570 res!3118008) b!7839558))

(get-info :version)

(assert (= (and start!742542 ((_ is Cons!73730) s1!2717)) b!7839559))

(assert (= (and start!742542 ((_ is ElementMatch!21017) r1!3326)) b!7839568))

(assert (= (and start!742542 ((_ is Concat!29862) r1!3326)) b!7839564))

(assert (= (and start!742542 ((_ is Star!21017) r1!3326)) b!7839567))

(assert (= (and start!742542 ((_ is Union!21017) r1!3326)) b!7839571))

(assert (= (and start!742542 ((_ is Cons!73730) s!10212)) b!7839560))

(assert (= (and start!742542 ((_ is ElementMatch!21017) r2!3226)) b!7839563))

(assert (= (and start!742542 ((_ is Concat!29862) r2!3226)) b!7839565))

(assert (= (and start!742542 ((_ is Star!21017) r2!3226)) b!7839569))

(assert (= (and start!742542 ((_ is Union!21017) r2!3226)) b!7839561))

(assert (= (and start!742542 ((_ is Cons!73730) s2!2463)) b!7839566))

(declare-fun m!8252982 () Bool)

(assert (=> b!7839558 m!8252982))

(declare-fun m!8252984 () Bool)

(assert (=> start!742542 m!8252984))

(declare-fun m!8252986 () Bool)

(assert (=> b!7839562 m!8252986))

(declare-fun m!8252988 () Bool)

(assert (=> b!7839570 m!8252988))

(check-sat (not b!7839559) (not start!742542) (not b!7839562) (not b!7839561) (not b!7839564) (not b!7839558) (not b!7839571) (not b!7839570) (not b!7839566) tp_is_empty!52389 (not b!7839560) (not b!7839565) (not b!7839567) (not b!7839569))
(check-sat)
(get-model)

(declare-fun bm!726608 () Bool)

(declare-fun call!726613 () Bool)

(declare-fun call!726614 () Bool)

(assert (=> bm!726608 (= call!726613 call!726614)))

(declare-fun b!7839614 () Bool)

(declare-fun e!4635346 () Bool)

(declare-fun e!4635347 () Bool)

(assert (=> b!7839614 (= e!4635346 e!4635347)))

(declare-fun res!3118032 () Bool)

(declare-fun nullable!9310 (Regex!21017) Bool)

(assert (=> b!7839614 (= res!3118032 (not (nullable!9310 (reg!21346 r2!3226))))))

(assert (=> b!7839614 (=> (not res!3118032) (not e!4635347))))

(declare-fun bm!726609 () Bool)

(declare-fun call!726615 () Bool)

(declare-fun c!1441411 () Bool)

(assert (=> bm!726609 (= call!726615 (validRegex!11431 (ite c!1441411 (regOne!42547 r2!3226) (regOne!42546 r2!3226))))))

(declare-fun d!2351964 () Bool)

(declare-fun res!3118035 () Bool)

(declare-fun e!4635343 () Bool)

(assert (=> d!2351964 (=> res!3118035 e!4635343)))

(assert (=> d!2351964 (= res!3118035 ((_ is ElementMatch!21017) r2!3226))))

(assert (=> d!2351964 (= (validRegex!11431 r2!3226) e!4635343)))

(declare-fun b!7839615 () Bool)

(declare-fun e!4635345 () Bool)

(assert (=> b!7839615 (= e!4635345 call!726613)))

(declare-fun b!7839616 () Bool)

(declare-fun res!3118034 () Bool)

(assert (=> b!7839616 (=> (not res!3118034) (not e!4635345))))

(assert (=> b!7839616 (= res!3118034 call!726615)))

(declare-fun e!4635344 () Bool)

(assert (=> b!7839616 (= e!4635344 e!4635345)))

(declare-fun bm!726610 () Bool)

(declare-fun c!1441410 () Bool)

(assert (=> bm!726610 (= call!726614 (validRegex!11431 (ite c!1441410 (reg!21346 r2!3226) (ite c!1441411 (regTwo!42547 r2!3226) (regTwo!42546 r2!3226)))))))

(declare-fun b!7839617 () Bool)

(declare-fun res!3118033 () Bool)

(declare-fun e!4635341 () Bool)

(assert (=> b!7839617 (=> res!3118033 e!4635341)))

(assert (=> b!7839617 (= res!3118033 (not ((_ is Concat!29862) r2!3226)))))

(assert (=> b!7839617 (= e!4635344 e!4635341)))

(declare-fun b!7839618 () Bool)

(assert (=> b!7839618 (= e!4635343 e!4635346)))

(assert (=> b!7839618 (= c!1441410 ((_ is Star!21017) r2!3226))))

(declare-fun b!7839619 () Bool)

(declare-fun e!4635342 () Bool)

(assert (=> b!7839619 (= e!4635342 call!726613)))

(declare-fun b!7839620 () Bool)

(assert (=> b!7839620 (= e!4635347 call!726614)))

(declare-fun b!7839621 () Bool)

(assert (=> b!7839621 (= e!4635341 e!4635342)))

(declare-fun res!3118031 () Bool)

(assert (=> b!7839621 (=> (not res!3118031) (not e!4635342))))

(assert (=> b!7839621 (= res!3118031 call!726615)))

(declare-fun b!7839622 () Bool)

(assert (=> b!7839622 (= e!4635346 e!4635344)))

(assert (=> b!7839622 (= c!1441411 ((_ is Union!21017) r2!3226))))

(assert (= (and d!2351964 (not res!3118035)) b!7839618))

(assert (= (and b!7839618 c!1441410) b!7839614))

(assert (= (and b!7839618 (not c!1441410)) b!7839622))

(assert (= (and b!7839614 res!3118032) b!7839620))

(assert (= (and b!7839622 c!1441411) b!7839616))

(assert (= (and b!7839622 (not c!1441411)) b!7839617))

(assert (= (and b!7839616 res!3118034) b!7839615))

(assert (= (and b!7839617 (not res!3118033)) b!7839621))

(assert (= (and b!7839621 res!3118031) b!7839619))

(assert (= (or b!7839616 b!7839621) bm!726609))

(assert (= (or b!7839615 b!7839619) bm!726608))

(assert (= (or b!7839620 bm!726608) bm!726610))

(declare-fun m!8252992 () Bool)

(assert (=> b!7839614 m!8252992))

(declare-fun m!8252994 () Bool)

(assert (=> bm!726609 m!8252994))

(declare-fun m!8252996 () Bool)

(assert (=> bm!726610 m!8252996))

(assert (=> b!7839562 d!2351964))

(declare-fun bm!726617 () Bool)

(declare-fun call!726622 () Bool)

(declare-fun call!726623 () Bool)

(assert (=> bm!726617 (= call!726622 call!726623)))

(declare-fun b!7839623 () Bool)

(declare-fun e!4635353 () Bool)

(declare-fun e!4635354 () Bool)

(assert (=> b!7839623 (= e!4635353 e!4635354)))

(declare-fun res!3118037 () Bool)

(assert (=> b!7839623 (= res!3118037 (not (nullable!9310 (reg!21346 r1!3326))))))

(assert (=> b!7839623 (=> (not res!3118037) (not e!4635354))))

(declare-fun bm!726618 () Bool)

(declare-fun call!726624 () Bool)

(declare-fun c!1441413 () Bool)

(assert (=> bm!726618 (= call!726624 (validRegex!11431 (ite c!1441413 (regOne!42547 r1!3326) (regOne!42546 r1!3326))))))

(declare-fun d!2351970 () Bool)

(declare-fun res!3118040 () Bool)

(declare-fun e!4635350 () Bool)

(assert (=> d!2351970 (=> res!3118040 e!4635350)))

(assert (=> d!2351970 (= res!3118040 ((_ is ElementMatch!21017) r1!3326))))

(assert (=> d!2351970 (= (validRegex!11431 r1!3326) e!4635350)))

(declare-fun b!7839624 () Bool)

(declare-fun e!4635352 () Bool)

(assert (=> b!7839624 (= e!4635352 call!726622)))

(declare-fun b!7839625 () Bool)

(declare-fun res!3118039 () Bool)

(assert (=> b!7839625 (=> (not res!3118039) (not e!4635352))))

(assert (=> b!7839625 (= res!3118039 call!726624)))

(declare-fun e!4635351 () Bool)

(assert (=> b!7839625 (= e!4635351 e!4635352)))

(declare-fun c!1441412 () Bool)

(declare-fun bm!726619 () Bool)

(assert (=> bm!726619 (= call!726623 (validRegex!11431 (ite c!1441412 (reg!21346 r1!3326) (ite c!1441413 (regTwo!42547 r1!3326) (regTwo!42546 r1!3326)))))))

(declare-fun b!7839626 () Bool)

(declare-fun res!3118038 () Bool)

(declare-fun e!4635348 () Bool)

(assert (=> b!7839626 (=> res!3118038 e!4635348)))

(assert (=> b!7839626 (= res!3118038 (not ((_ is Concat!29862) r1!3326)))))

(assert (=> b!7839626 (= e!4635351 e!4635348)))

(declare-fun b!7839627 () Bool)

(assert (=> b!7839627 (= e!4635350 e!4635353)))

(assert (=> b!7839627 (= c!1441412 ((_ is Star!21017) r1!3326))))

(declare-fun b!7839628 () Bool)

(declare-fun e!4635349 () Bool)

(assert (=> b!7839628 (= e!4635349 call!726622)))

(declare-fun b!7839629 () Bool)

(assert (=> b!7839629 (= e!4635354 call!726623)))

(declare-fun b!7839630 () Bool)

(assert (=> b!7839630 (= e!4635348 e!4635349)))

(declare-fun res!3118036 () Bool)

(assert (=> b!7839630 (=> (not res!3118036) (not e!4635349))))

(assert (=> b!7839630 (= res!3118036 call!726624)))

(declare-fun b!7839631 () Bool)

(assert (=> b!7839631 (= e!4635353 e!4635351)))

(assert (=> b!7839631 (= c!1441413 ((_ is Union!21017) r1!3326))))

(assert (= (and d!2351970 (not res!3118040)) b!7839627))

(assert (= (and b!7839627 c!1441412) b!7839623))

(assert (= (and b!7839627 (not c!1441412)) b!7839631))

(assert (= (and b!7839623 res!3118037) b!7839629))

(assert (= (and b!7839631 c!1441413) b!7839625))

(assert (= (and b!7839631 (not c!1441413)) b!7839626))

(assert (= (and b!7839625 res!3118039) b!7839624))

(assert (= (and b!7839626 (not res!3118038)) b!7839630))

(assert (= (and b!7839630 res!3118036) b!7839628))

(assert (= (or b!7839625 b!7839630) bm!726618))

(assert (= (or b!7839624 b!7839628) bm!726617))

(assert (= (or b!7839629 bm!726617) bm!726619))

(declare-fun m!8252998 () Bool)

(assert (=> b!7839623 m!8252998))

(declare-fun m!8253000 () Bool)

(assert (=> bm!726618 m!8253000))

(declare-fun m!8253002 () Bool)

(assert (=> bm!726619 m!8253002))

(assert (=> start!742542 d!2351970))

(declare-fun d!2351972 () Bool)

(declare-fun lt!2678358 () Int)

(assert (=> d!2351972 (>= lt!2678358 0)))

(declare-fun e!4635357 () Int)

(assert (=> d!2351972 (= lt!2678358 e!4635357)))

(declare-fun c!1441416 () Bool)

(assert (=> d!2351972 (= c!1441416 ((_ is Nil!73730) s2!2463))))

(assert (=> d!2351972 (= (size!42783 s2!2463) lt!2678358)))

(declare-fun b!7839636 () Bool)

(assert (=> b!7839636 (= e!4635357 0)))

(declare-fun b!7839637 () Bool)

(assert (=> b!7839637 (= e!4635357 (+ 1 (size!42783 (t!388589 s2!2463))))))

(assert (= (and d!2351972 c!1441416) b!7839636))

(assert (= (and d!2351972 (not c!1441416)) b!7839637))

(declare-fun m!8253004 () Bool)

(assert (=> b!7839637 m!8253004))

(assert (=> b!7839558 d!2351972))

(declare-fun b!7839673 () Bool)

(declare-fun e!4635381 () List!73854)

(assert (=> b!7839673 (= e!4635381 (Cons!73730 (h!80178 s1!2717) (++!18051 (t!388589 s1!2717) s2!2463)))))

(declare-fun b!7839675 () Bool)

(declare-fun e!4635380 () Bool)

(declare-fun lt!2678363 () List!73854)

(assert (=> b!7839675 (= e!4635380 (or (not (= s2!2463 Nil!73730)) (= lt!2678363 s1!2717)))))

(declare-fun b!7839672 () Bool)

(assert (=> b!7839672 (= e!4635381 s2!2463)))

(declare-fun d!2351974 () Bool)

(assert (=> d!2351974 e!4635380))

(declare-fun res!3118059 () Bool)

(assert (=> d!2351974 (=> (not res!3118059) (not e!4635380))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15651 (List!73854) (InoxSet C!42360))

(assert (=> d!2351974 (= res!3118059 (= (content!15651 lt!2678363) ((_ map or) (content!15651 s1!2717) (content!15651 s2!2463))))))

(assert (=> d!2351974 (= lt!2678363 e!4635381)))

(declare-fun c!1441425 () Bool)

(assert (=> d!2351974 (= c!1441425 ((_ is Nil!73730) s1!2717))))

(assert (=> d!2351974 (= (++!18051 s1!2717 s2!2463) lt!2678363)))

(declare-fun b!7839674 () Bool)

(declare-fun res!3118060 () Bool)

(assert (=> b!7839674 (=> (not res!3118060) (not e!4635380))))

(assert (=> b!7839674 (= res!3118060 (= (size!42783 lt!2678363) (+ (size!42783 s1!2717) (size!42783 s2!2463))))))

(assert (= (and d!2351974 c!1441425) b!7839672))

(assert (= (and d!2351974 (not c!1441425)) b!7839673))

(assert (= (and d!2351974 res!3118059) b!7839674))

(assert (= (and b!7839674 res!3118060) b!7839675))

(declare-fun m!8253018 () Bool)

(assert (=> b!7839673 m!8253018))

(declare-fun m!8253020 () Bool)

(assert (=> d!2351974 m!8253020))

(declare-fun m!8253022 () Bool)

(assert (=> d!2351974 m!8253022))

(declare-fun m!8253024 () Bool)

(assert (=> d!2351974 m!8253024))

(declare-fun m!8253026 () Bool)

(assert (=> b!7839674 m!8253026))

(declare-fun m!8253028 () Bool)

(assert (=> b!7839674 m!8253028))

(assert (=> b!7839674 m!8252982))

(assert (=> b!7839570 d!2351974))

(declare-fun b!7839691 () Bool)

(declare-fun e!4635386 () Bool)

(declare-fun tp!2320039 () Bool)

(declare-fun tp!2320042 () Bool)

(assert (=> b!7839691 (= e!4635386 (and tp!2320039 tp!2320042))))

(declare-fun b!7839692 () Bool)

(declare-fun tp!2320038 () Bool)

(assert (=> b!7839692 (= e!4635386 tp!2320038)))

(declare-fun b!7839690 () Bool)

(assert (=> b!7839690 (= e!4635386 tp_is_empty!52389)))

(declare-fun b!7839693 () Bool)

(declare-fun tp!2320041 () Bool)

(declare-fun tp!2320040 () Bool)

(assert (=> b!7839693 (= e!4635386 (and tp!2320041 tp!2320040))))

(assert (=> b!7839567 (= tp!2320025 e!4635386)))

(assert (= (and b!7839567 ((_ is ElementMatch!21017) (reg!21346 r1!3326))) b!7839690))

(assert (= (and b!7839567 ((_ is Concat!29862) (reg!21346 r1!3326))) b!7839691))

(assert (= (and b!7839567 ((_ is Star!21017) (reg!21346 r1!3326))) b!7839692))

(assert (= (and b!7839567 ((_ is Union!21017) (reg!21346 r1!3326))) b!7839693))

(declare-fun b!7839699 () Bool)

(declare-fun e!4635389 () Bool)

(declare-fun tp!2320046 () Bool)

(declare-fun tp!2320049 () Bool)

(assert (=> b!7839699 (= e!4635389 (and tp!2320046 tp!2320049))))

(declare-fun b!7839700 () Bool)

(declare-fun tp!2320045 () Bool)

(assert (=> b!7839700 (= e!4635389 tp!2320045)))

(declare-fun b!7839698 () Bool)

(assert (=> b!7839698 (= e!4635389 tp_is_empty!52389)))

(declare-fun b!7839701 () Bool)

(declare-fun tp!2320048 () Bool)

(declare-fun tp!2320047 () Bool)

(assert (=> b!7839701 (= e!4635389 (and tp!2320048 tp!2320047))))

(assert (=> b!7839569 (= tp!2320022 e!4635389)))

(assert (= (and b!7839569 ((_ is ElementMatch!21017) (reg!21346 r2!3226))) b!7839698))

(assert (= (and b!7839569 ((_ is Concat!29862) (reg!21346 r2!3226))) b!7839699))

(assert (= (and b!7839569 ((_ is Star!21017) (reg!21346 r2!3226))) b!7839700))

(assert (= (and b!7839569 ((_ is Union!21017) (reg!21346 r2!3226))) b!7839701))

(declare-fun b!7839703 () Bool)

(declare-fun e!4635390 () Bool)

(declare-fun tp!2320051 () Bool)

(declare-fun tp!2320054 () Bool)

(assert (=> b!7839703 (= e!4635390 (and tp!2320051 tp!2320054))))

(declare-fun b!7839704 () Bool)

(declare-fun tp!2320050 () Bool)

(assert (=> b!7839704 (= e!4635390 tp!2320050)))

(declare-fun b!7839702 () Bool)

(assert (=> b!7839702 (= e!4635390 tp_is_empty!52389)))

(declare-fun b!7839705 () Bool)

(declare-fun tp!2320053 () Bool)

(declare-fun tp!2320052 () Bool)

(assert (=> b!7839705 (= e!4635390 (and tp!2320053 tp!2320052))))

(assert (=> b!7839564 (= tp!2320016 e!4635390)))

(assert (= (and b!7839564 ((_ is ElementMatch!21017) (regOne!42546 r1!3326))) b!7839702))

(assert (= (and b!7839564 ((_ is Concat!29862) (regOne!42546 r1!3326))) b!7839703))

(assert (= (and b!7839564 ((_ is Star!21017) (regOne!42546 r1!3326))) b!7839704))

(assert (= (and b!7839564 ((_ is Union!21017) (regOne!42546 r1!3326))) b!7839705))

(declare-fun b!7839710 () Bool)

(declare-fun e!4635392 () Bool)

(declare-fun tp!2320057 () Bool)

(declare-fun tp!2320060 () Bool)

(assert (=> b!7839710 (= e!4635392 (and tp!2320057 tp!2320060))))

(declare-fun b!7839711 () Bool)

(declare-fun tp!2320056 () Bool)

(assert (=> b!7839711 (= e!4635392 tp!2320056)))

(declare-fun b!7839709 () Bool)

(assert (=> b!7839709 (= e!4635392 tp_is_empty!52389)))

(declare-fun b!7839712 () Bool)

(declare-fun tp!2320059 () Bool)

(declare-fun tp!2320058 () Bool)

(assert (=> b!7839712 (= e!4635392 (and tp!2320059 tp!2320058))))

(assert (=> b!7839564 (= tp!2320019 e!4635392)))

(assert (= (and b!7839564 ((_ is ElementMatch!21017) (regTwo!42546 r1!3326))) b!7839709))

(assert (= (and b!7839564 ((_ is Concat!29862) (regTwo!42546 r1!3326))) b!7839710))

(assert (= (and b!7839564 ((_ is Star!21017) (regTwo!42546 r1!3326))) b!7839711))

(assert (= (and b!7839564 ((_ is Union!21017) (regTwo!42546 r1!3326))) b!7839712))

(declare-fun b!7839725 () Bool)

(declare-fun e!4635397 () Bool)

(declare-fun tp!2320073 () Bool)

(assert (=> b!7839725 (= e!4635397 (and tp_is_empty!52389 tp!2320073))))

(assert (=> b!7839559 (= tp!2320017 e!4635397)))

(assert (= (and b!7839559 ((_ is Cons!73730) (t!388589 s1!2717))) b!7839725))

(declare-fun b!7839727 () Bool)

(declare-fun e!4635398 () Bool)

(declare-fun tp!2320075 () Bool)

(declare-fun tp!2320078 () Bool)

(assert (=> b!7839727 (= e!4635398 (and tp!2320075 tp!2320078))))

(declare-fun b!7839728 () Bool)

(declare-fun tp!2320074 () Bool)

(assert (=> b!7839728 (= e!4635398 tp!2320074)))

(declare-fun b!7839726 () Bool)

(assert (=> b!7839726 (= e!4635398 tp_is_empty!52389)))

(declare-fun b!7839729 () Bool)

(declare-fun tp!2320077 () Bool)

(declare-fun tp!2320076 () Bool)

(assert (=> b!7839729 (= e!4635398 (and tp!2320077 tp!2320076))))

(assert (=> b!7839565 (= tp!2320015 e!4635398)))

(assert (= (and b!7839565 ((_ is ElementMatch!21017) (regOne!42546 r2!3226))) b!7839726))

(assert (= (and b!7839565 ((_ is Concat!29862) (regOne!42546 r2!3226))) b!7839727))

(assert (= (and b!7839565 ((_ is Star!21017) (regOne!42546 r2!3226))) b!7839728))

(assert (= (and b!7839565 ((_ is Union!21017) (regOne!42546 r2!3226))) b!7839729))

(declare-fun b!7839731 () Bool)

(declare-fun e!4635399 () Bool)

(declare-fun tp!2320080 () Bool)

(declare-fun tp!2320083 () Bool)

(assert (=> b!7839731 (= e!4635399 (and tp!2320080 tp!2320083))))

(declare-fun b!7839732 () Bool)

(declare-fun tp!2320079 () Bool)

(assert (=> b!7839732 (= e!4635399 tp!2320079)))

(declare-fun b!7839730 () Bool)

(assert (=> b!7839730 (= e!4635399 tp_is_empty!52389)))

(declare-fun b!7839733 () Bool)

(declare-fun tp!2320082 () Bool)

(declare-fun tp!2320081 () Bool)

(assert (=> b!7839733 (= e!4635399 (and tp!2320082 tp!2320081))))

(assert (=> b!7839565 (= tp!2320024 e!4635399)))

(assert (= (and b!7839565 ((_ is ElementMatch!21017) (regTwo!42546 r2!3226))) b!7839730))

(assert (= (and b!7839565 ((_ is Concat!29862) (regTwo!42546 r2!3226))) b!7839731))

(assert (= (and b!7839565 ((_ is Star!21017) (regTwo!42546 r2!3226))) b!7839732))

(assert (= (and b!7839565 ((_ is Union!21017) (regTwo!42546 r2!3226))) b!7839733))

(declare-fun b!7839738 () Bool)

(declare-fun e!4635401 () Bool)

(declare-fun tp!2320089 () Bool)

(assert (=> b!7839738 (= e!4635401 (and tp_is_empty!52389 tp!2320089))))

(assert (=> b!7839560 (= tp!2320018 e!4635401)))

(assert (= (and b!7839560 ((_ is Cons!73730) (t!388589 s!10212))) b!7839738))

(declare-fun b!7839740 () Bool)

(declare-fun e!4635402 () Bool)

(declare-fun tp!2320091 () Bool)

(declare-fun tp!2320094 () Bool)

(assert (=> b!7839740 (= e!4635402 (and tp!2320091 tp!2320094))))

(declare-fun b!7839741 () Bool)

(declare-fun tp!2320090 () Bool)

(assert (=> b!7839741 (= e!4635402 tp!2320090)))

(declare-fun b!7839739 () Bool)

(assert (=> b!7839739 (= e!4635402 tp_is_empty!52389)))

(declare-fun b!7839742 () Bool)

(declare-fun tp!2320093 () Bool)

(declare-fun tp!2320092 () Bool)

(assert (=> b!7839742 (= e!4635402 (and tp!2320093 tp!2320092))))

(assert (=> b!7839571 (= tp!2320023 e!4635402)))

(assert (= (and b!7839571 ((_ is ElementMatch!21017) (regOne!42547 r1!3326))) b!7839739))

(assert (= (and b!7839571 ((_ is Concat!29862) (regOne!42547 r1!3326))) b!7839740))

(assert (= (and b!7839571 ((_ is Star!21017) (regOne!42547 r1!3326))) b!7839741))

(assert (= (and b!7839571 ((_ is Union!21017) (regOne!42547 r1!3326))) b!7839742))

(declare-fun b!7839745 () Bool)

(declare-fun e!4635404 () Bool)

(declare-fun tp!2320097 () Bool)

(declare-fun tp!2320100 () Bool)

(assert (=> b!7839745 (= e!4635404 (and tp!2320097 tp!2320100))))

(declare-fun b!7839746 () Bool)

(declare-fun tp!2320096 () Bool)

(assert (=> b!7839746 (= e!4635404 tp!2320096)))

(declare-fun b!7839744 () Bool)

(assert (=> b!7839744 (= e!4635404 tp_is_empty!52389)))

(declare-fun b!7839747 () Bool)

(declare-fun tp!2320099 () Bool)

(declare-fun tp!2320098 () Bool)

(assert (=> b!7839747 (= e!4635404 (and tp!2320099 tp!2320098))))

(assert (=> b!7839571 (= tp!2320026 e!4635404)))

(assert (= (and b!7839571 ((_ is ElementMatch!21017) (regTwo!42547 r1!3326))) b!7839744))

(assert (= (and b!7839571 ((_ is Concat!29862) (regTwo!42547 r1!3326))) b!7839745))

(assert (= (and b!7839571 ((_ is Star!21017) (regTwo!42547 r1!3326))) b!7839746))

(assert (= (and b!7839571 ((_ is Union!21017) (regTwo!42547 r1!3326))) b!7839747))

(declare-fun b!7839752 () Bool)

(declare-fun e!4635406 () Bool)

(declare-fun tp!2320106 () Bool)

(assert (=> b!7839752 (= e!4635406 (and tp_is_empty!52389 tp!2320106))))

(assert (=> b!7839566 (= tp!2320021 e!4635406)))

(assert (= (and b!7839566 ((_ is Cons!73730) (t!388589 s2!2463))) b!7839752))

(declare-fun b!7839758 () Bool)

(declare-fun e!4635408 () Bool)

(declare-fun tp!2320113 () Bool)

(declare-fun tp!2320116 () Bool)

(assert (=> b!7839758 (= e!4635408 (and tp!2320113 tp!2320116))))

(declare-fun b!7839759 () Bool)

(declare-fun tp!2320112 () Bool)

(assert (=> b!7839759 (= e!4635408 tp!2320112)))

(declare-fun b!7839757 () Bool)

(assert (=> b!7839757 (= e!4635408 tp_is_empty!52389)))

(declare-fun b!7839760 () Bool)

(declare-fun tp!2320115 () Bool)

(declare-fun tp!2320114 () Bool)

(assert (=> b!7839760 (= e!4635408 (and tp!2320115 tp!2320114))))

(assert (=> b!7839561 (= tp!2320027 e!4635408)))

(assert (= (and b!7839561 ((_ is ElementMatch!21017) (regOne!42547 r2!3226))) b!7839757))

(assert (= (and b!7839561 ((_ is Concat!29862) (regOne!42547 r2!3226))) b!7839758))

(assert (= (and b!7839561 ((_ is Star!21017) (regOne!42547 r2!3226))) b!7839759))

(assert (= (and b!7839561 ((_ is Union!21017) (regOne!42547 r2!3226))) b!7839760))

(declare-fun b!7839766 () Bool)

(declare-fun e!4635410 () Bool)

(declare-fun tp!2320123 () Bool)

(declare-fun tp!2320126 () Bool)

(assert (=> b!7839766 (= e!4635410 (and tp!2320123 tp!2320126))))

(declare-fun b!7839767 () Bool)

(declare-fun tp!2320122 () Bool)

(assert (=> b!7839767 (= e!4635410 tp!2320122)))

(declare-fun b!7839765 () Bool)

(assert (=> b!7839765 (= e!4635410 tp_is_empty!52389)))

(declare-fun b!7839768 () Bool)

(declare-fun tp!2320125 () Bool)

(declare-fun tp!2320124 () Bool)

(assert (=> b!7839768 (= e!4635410 (and tp!2320125 tp!2320124))))

(assert (=> b!7839561 (= tp!2320020 e!4635410)))

(assert (= (and b!7839561 ((_ is ElementMatch!21017) (regTwo!42547 r2!3226))) b!7839765))

(assert (= (and b!7839561 ((_ is Concat!29862) (regTwo!42547 r2!3226))) b!7839766))

(assert (= (and b!7839561 ((_ is Star!21017) (regTwo!42547 r2!3226))) b!7839767))

(assert (= (and b!7839561 ((_ is Union!21017) (regTwo!42547 r2!3226))) b!7839768))

(check-sat (not b!7839623) (not b!7839699) (not b!7839742) (not b!7839760) (not bm!726618) (not b!7839766) (not b!7839712) (not d!2351974) (not b!7839740) (not b!7839758) (not b!7839692) (not b!7839691) (not b!7839729) (not b!7839731) (not b!7839747) (not b!7839732) (not b!7839738) (not b!7839673) (not b!7839674) (not b!7839700) (not b!7839746) (not b!7839752) (not b!7839703) (not b!7839693) (not bm!726619) (not b!7839725) (not bm!726609) (not b!7839767) (not b!7839768) (not bm!726610) (not b!7839704) (not b!7839727) (not b!7839728) (not b!7839705) (not b!7839741) (not b!7839733) (not b!7839745) (not b!7839710) (not b!7839759) (not b!7839614) tp_is_empty!52389 (not b!7839637) (not b!7839711) (not b!7839701))
(check-sat)
