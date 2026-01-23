; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!735628 () Bool)

(assert start!735628)

(declare-fun b!7642454 () Bool)

(declare-fun e!4542597 () Bool)

(declare-fun tp!2230960 () Bool)

(assert (=> b!7642454 (= e!4542597 tp!2230960)))

(declare-fun res!3061058 () Bool)

(declare-fun e!4542600 () Bool)

(assert (=> start!735628 (=> (not res!3061058) (not e!4542600))))

(declare-datatypes ((C!41224 0))(
  ( (C!41225 (val!31052 Int)) )
))
(declare-datatypes ((Regex!20449 0))(
  ( (ElementMatch!20449 (c!1407686 C!41224)) (Concat!29294 (regOne!41410 Regex!20449) (regTwo!41410 Regex!20449)) (EmptyExpr!20449) (Star!20449 (reg!20778 Regex!20449)) (EmptyLang!20449) (Union!20449 (regOne!41411 Regex!20449) (regTwo!41411 Regex!20449)) )
))
(declare-fun r!14126 () Regex!20449)

(declare-fun validRegex!10867 (Regex!20449) Bool)

(assert (=> start!735628 (= res!3061058 (validRegex!10867 r!14126))))

(assert (=> start!735628 e!4542600))

(assert (=> start!735628 e!4542597))

(declare-fun e!4542598 () Bool)

(assert (=> start!735628 e!4542598))

(declare-fun b!7642455 () Bool)

(declare-fun tp!2230965 () Bool)

(declare-fun tp!2230962 () Bool)

(assert (=> b!7642455 (= e!4542597 (and tp!2230965 tp!2230962))))

(declare-fun b!7642456 () Bool)

(declare-fun res!3061057 () Bool)

(assert (=> b!7642456 (=> (not res!3061057) (not e!4542600))))

(get-info :version)

(assert (=> b!7642456 (= res!3061057 (and (not ((_ is EmptyExpr!20449) r!14126)) (not ((_ is EmptyLang!20449) r!14126)) (not ((_ is ElementMatch!20449) r!14126)) ((_ is Union!20449) r!14126)))))

(declare-fun b!7642457 () Bool)

(declare-fun e!4542599 () Bool)

(assert (=> b!7642457 (= e!4542600 (not e!4542599))))

(declare-fun res!3061056 () Bool)

(assert (=> b!7642457 (=> res!3061056 e!4542599)))

(assert (=> b!7642457 (= res!3061056 (not (validRegex!10867 (regTwo!41411 r!14126))))))

(declare-fun lt!2660640 () Bool)

(declare-datatypes ((List!73300 0))(
  ( (Nil!73176) (Cons!73176 (h!79624 C!41224) (t!388035 List!73300)) )
))
(declare-fun s!9605 () List!73300)

(declare-fun matchRSpec!4572 (Regex!20449 List!73300) Bool)

(assert (=> b!7642457 (= lt!2660640 (matchRSpec!4572 (regOne!41411 r!14126) s!9605))))

(declare-datatypes ((Unit!167874 0))(
  ( (Unit!167875) )
))
(declare-fun lt!2660638 () Unit!167874)

(declare-fun mainMatchTheorem!4552 (Regex!20449 List!73300) Unit!167874)

(assert (=> b!7642457 (= lt!2660638 (mainMatchTheorem!4552 (regOne!41411 r!14126) s!9605))))

(declare-fun e!4542601 () Bool)

(assert (=> b!7642457 e!4542601))

(declare-fun res!3061054 () Bool)

(assert (=> b!7642457 (=> res!3061054 e!4542601)))

(assert (=> b!7642457 (= res!3061054 lt!2660640)))

(declare-fun matchR!9950 (Regex!20449 List!73300) Bool)

(assert (=> b!7642457 (= lt!2660640 (matchR!9950 (regOne!41411 r!14126) s!9605))))

(declare-fun lt!2660637 () Unit!167874)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!352 (Regex!20449 Regex!20449 List!73300) Unit!167874)

(assert (=> b!7642457 (= lt!2660637 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!352 (regOne!41411 r!14126) (regTwo!41411 r!14126) s!9605))))

(declare-fun b!7642458 () Bool)

(declare-fun tp_is_empty!51253 () Bool)

(declare-fun tp!2230961 () Bool)

(assert (=> b!7642458 (= e!4542598 (and tp_is_empty!51253 tp!2230961))))

(declare-fun b!7642459 () Bool)

(declare-fun res!3061055 () Bool)

(assert (=> b!7642459 (=> (not res!3061055) (not e!4542600))))

(assert (=> b!7642459 (= res!3061055 (matchR!9950 r!14126 s!9605))))

(declare-fun b!7642460 () Bool)

(assert (=> b!7642460 (= e!4542597 tp_is_empty!51253)))

(declare-fun b!7642461 () Bool)

(declare-fun lt!2660639 () Int)

(declare-fun regexDepth!483 (Regex!20449) Int)

(assert (=> b!7642461 (= e!4542599 (< (+ lt!2660639 (regexDepth!483 (regTwo!41411 r!14126))) (+ lt!2660639 (regexDepth!483 r!14126))))))

(declare-fun size!42589 (List!73300) Int)

(assert (=> b!7642461 (= lt!2660639 (size!42589 s!9605))))

(declare-fun b!7642462 () Bool)

(declare-fun tp!2230963 () Bool)

(declare-fun tp!2230964 () Bool)

(assert (=> b!7642462 (= e!4542597 (and tp!2230963 tp!2230964))))

(declare-fun b!7642463 () Bool)

(assert (=> b!7642463 (= e!4542601 (matchR!9950 (regTwo!41411 r!14126) s!9605))))

(assert (= (and start!735628 res!3061058) b!7642456))

(assert (= (and b!7642456 res!3061057) b!7642459))

(assert (= (and b!7642459 res!3061055) b!7642457))

(assert (= (and b!7642457 (not res!3061054)) b!7642463))

(assert (= (and b!7642457 (not res!3061056)) b!7642461))

(assert (= (and start!735628 ((_ is ElementMatch!20449) r!14126)) b!7642460))

(assert (= (and start!735628 ((_ is Concat!29294) r!14126)) b!7642455))

(assert (= (and start!735628 ((_ is Star!20449) r!14126)) b!7642454))

(assert (= (and start!735628 ((_ is Union!20449) r!14126)) b!7642462))

(assert (= (and start!735628 ((_ is Cons!73176) s!9605)) b!7642458))

(declare-fun m!8163412 () Bool)

(assert (=> b!7642459 m!8163412))

(declare-fun m!8163414 () Bool)

(assert (=> b!7642463 m!8163414))

(declare-fun m!8163416 () Bool)

(assert (=> b!7642457 m!8163416))

(declare-fun m!8163418 () Bool)

(assert (=> b!7642457 m!8163418))

(declare-fun m!8163420 () Bool)

(assert (=> b!7642457 m!8163420))

(declare-fun m!8163422 () Bool)

(assert (=> b!7642457 m!8163422))

(declare-fun m!8163424 () Bool)

(assert (=> b!7642457 m!8163424))

(declare-fun m!8163426 () Bool)

(assert (=> b!7642461 m!8163426))

(declare-fun m!8163428 () Bool)

(assert (=> b!7642461 m!8163428))

(declare-fun m!8163430 () Bool)

(assert (=> b!7642461 m!8163430))

(declare-fun m!8163432 () Bool)

(assert (=> start!735628 m!8163432))

(check-sat (not b!7642457) (not b!7642462) (not b!7642458) (not b!7642461) (not start!735628) tp_is_empty!51253 (not b!7642463) (not b!7642454) (not b!7642455) (not b!7642459))
(check-sat)
(get-model)

(declare-fun d!2325272 () Bool)

(declare-fun res!3061089 () Bool)

(declare-fun e!4542633 () Bool)

(assert (=> d!2325272 (=> res!3061089 e!4542633)))

(assert (=> d!2325272 (= res!3061089 ((_ is ElementMatch!20449) r!14126))))

(assert (=> d!2325272 (= (validRegex!10867 r!14126) e!4542633)))

(declare-fun b!7642510 () Bool)

(declare-fun e!4542632 () Bool)

(declare-fun e!4542634 () Bool)

(assert (=> b!7642510 (= e!4542632 e!4542634)))

(declare-fun res!3061087 () Bool)

(declare-fun nullable!8954 (Regex!20449) Bool)

(assert (=> b!7642510 (= res!3061087 (not (nullable!8954 (reg!20778 r!14126))))))

(assert (=> b!7642510 (=> (not res!3061087) (not e!4542634))))

(declare-fun b!7642511 () Bool)

(declare-fun e!4542631 () Bool)

(declare-fun e!4542635 () Bool)

(assert (=> b!7642511 (= e!4542631 e!4542635)))

(declare-fun res!3061088 () Bool)

(assert (=> b!7642511 (=> (not res!3061088) (not e!4542635))))

(declare-fun call!701520 () Bool)

(assert (=> b!7642511 (= res!3061088 call!701520)))

(declare-fun b!7642512 () Bool)

(declare-fun call!701519 () Bool)

(assert (=> b!7642512 (= e!4542635 call!701519)))

(declare-fun bm!701514 () Bool)

(declare-fun call!701521 () Bool)

(assert (=> bm!701514 (= call!701520 call!701521)))

(declare-fun b!7642513 () Bool)

(assert (=> b!7642513 (= e!4542633 e!4542632)))

(declare-fun c!1407697 () Bool)

(assert (=> b!7642513 (= c!1407697 ((_ is Star!20449) r!14126))))

(declare-fun b!7642514 () Bool)

(assert (=> b!7642514 (= e!4542634 call!701521)))

(declare-fun b!7642515 () Bool)

(declare-fun res!3061086 () Bool)

(declare-fun e!4542636 () Bool)

(assert (=> b!7642515 (=> (not res!3061086) (not e!4542636))))

(assert (=> b!7642515 (= res!3061086 call!701520)))

(declare-fun e!4542630 () Bool)

(assert (=> b!7642515 (= e!4542630 e!4542636)))

(declare-fun c!1407698 () Bool)

(declare-fun bm!701515 () Bool)

(assert (=> bm!701515 (= call!701521 (validRegex!10867 (ite c!1407697 (reg!20778 r!14126) (ite c!1407698 (regOne!41411 r!14126) (regOne!41410 r!14126)))))))

(declare-fun bm!701516 () Bool)

(assert (=> bm!701516 (= call!701519 (validRegex!10867 (ite c!1407698 (regTwo!41411 r!14126) (regTwo!41410 r!14126))))))

(declare-fun b!7642516 () Bool)

(declare-fun res!3061085 () Bool)

(assert (=> b!7642516 (=> res!3061085 e!4542631)))

(assert (=> b!7642516 (= res!3061085 (not ((_ is Concat!29294) r!14126)))))

(assert (=> b!7642516 (= e!4542630 e!4542631)))

(declare-fun b!7642517 () Bool)

(assert (=> b!7642517 (= e!4542632 e!4542630)))

(assert (=> b!7642517 (= c!1407698 ((_ is Union!20449) r!14126))))

(declare-fun b!7642518 () Bool)

(assert (=> b!7642518 (= e!4542636 call!701519)))

(assert (= (and d!2325272 (not res!3061089)) b!7642513))

(assert (= (and b!7642513 c!1407697) b!7642510))

(assert (= (and b!7642513 (not c!1407697)) b!7642517))

(assert (= (and b!7642510 res!3061087) b!7642514))

(assert (= (and b!7642517 c!1407698) b!7642515))

(assert (= (and b!7642517 (not c!1407698)) b!7642516))

(assert (= (and b!7642515 res!3061086) b!7642518))

(assert (= (and b!7642516 (not res!3061085)) b!7642511))

(assert (= (and b!7642511 res!3061088) b!7642512))

(assert (= (or b!7642515 b!7642511) bm!701514))

(assert (= (or b!7642518 b!7642512) bm!701516))

(assert (= (or b!7642514 bm!701514) bm!701515))

(declare-fun m!8163434 () Bool)

(assert (=> b!7642510 m!8163434))

(declare-fun m!8163436 () Bool)

(assert (=> bm!701515 m!8163436))

(declare-fun m!8163438 () Bool)

(assert (=> bm!701516 m!8163438))

(assert (=> start!735628 d!2325272))

(declare-fun d!2325276 () Bool)

(declare-fun e!4542699 () Bool)

(assert (=> d!2325276 e!4542699))

(declare-fun res!3061125 () Bool)

(assert (=> d!2325276 (=> (not res!3061125) (not e!4542699))))

(declare-fun lt!2660646 () Int)

(assert (=> d!2325276 (= res!3061125 (> lt!2660646 0))))

(declare-fun e!4542705 () Int)

(assert (=> d!2325276 (= lt!2660646 e!4542705)))

(declare-fun c!1407730 () Bool)

(assert (=> d!2325276 (= c!1407730 ((_ is ElementMatch!20449) (regTwo!41411 r!14126)))))

(assert (=> d!2325276 (= (regexDepth!483 (regTwo!41411 r!14126)) lt!2660646)))

(declare-fun b!7642616 () Bool)

(declare-fun e!4542707 () Int)

(declare-fun call!701549 () Int)

(assert (=> b!7642616 (= e!4542707 (+ 1 call!701549))))

(declare-fun b!7642617 () Bool)

(declare-fun e!4542703 () Int)

(assert (=> b!7642617 (= e!4542703 (+ 1 call!701549))))

(declare-fun b!7642618 () Bool)

(declare-fun e!4542702 () Bool)

(declare-fun call!701548 () Int)

(assert (=> b!7642618 (= e!4542702 (> lt!2660646 call!701548))))

(declare-fun b!7642619 () Bool)

(declare-fun c!1407733 () Bool)

(assert (=> b!7642619 (= c!1407733 ((_ is Union!20449) (regTwo!41411 r!14126)))))

(declare-fun e!4542700 () Int)

(assert (=> b!7642619 (= e!4542700 e!4542707)))

(declare-fun b!7642620 () Bool)

(declare-fun e!4542706 () Bool)

(declare-fun e!4542708 () Bool)

(assert (=> b!7642620 (= e!4542706 e!4542708)))

(declare-fun res!3061127 () Bool)

(declare-fun call!701550 () Int)

(assert (=> b!7642620 (= res!3061127 (> lt!2660646 call!701550))))

(assert (=> b!7642620 (=> (not res!3061127) (not e!4542708))))

(declare-fun b!7642621 () Bool)

(declare-fun e!4542704 () Bool)

(assert (=> b!7642621 (= e!4542706 e!4542704)))

(declare-fun c!1407734 () Bool)

(assert (=> b!7642621 (= c!1407734 ((_ is Concat!29294) (regTwo!41411 r!14126)))))

(declare-fun b!7642622 () Bool)

(assert (=> b!7642622 (= e!4542705 1)))

(declare-fun bm!701541 () Bool)

(declare-fun call!701546 () Int)

(assert (=> bm!701541 (= call!701546 (regexDepth!483 (ite c!1407733 (regTwo!41411 (regTwo!41411 r!14126)) (regOne!41410 (regTwo!41411 r!14126)))))))

(declare-fun bm!701542 () Bool)

(declare-fun c!1407735 () Bool)

(assert (=> bm!701542 (= call!701548 (regexDepth!483 (ite c!1407735 (regTwo!41411 (regTwo!41411 r!14126)) (regTwo!41410 (regTwo!41411 r!14126)))))))

(declare-fun b!7642623 () Bool)

(assert (=> b!7642623 (= e!4542699 e!4542706)))

(assert (=> b!7642623 (= c!1407735 ((_ is Union!20449) (regTwo!41411 r!14126)))))

(declare-fun b!7642624 () Bool)

(declare-fun e!4542701 () Bool)

(declare-fun call!701551 () Int)

(assert (=> b!7642624 (= e!4542701 (> lt!2660646 call!701551))))

(declare-fun b!7642625 () Bool)

(assert (=> b!7642625 (= e!4542707 e!4542703)))

(declare-fun c!1407731 () Bool)

(assert (=> b!7642625 (= c!1407731 ((_ is Concat!29294) (regTwo!41411 r!14126)))))

(declare-fun bm!701543 () Bool)

(declare-fun c!1407732 () Bool)

(declare-fun call!701547 () Int)

(assert (=> bm!701543 (= call!701547 (regexDepth!483 (ite c!1407732 (reg!20778 (regTwo!41411 r!14126)) (ite c!1407733 (regOne!41411 (regTwo!41411 r!14126)) (regTwo!41410 (regTwo!41411 r!14126))))))))

(declare-fun call!701552 () Int)

(declare-fun bm!701544 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!701544 (= call!701549 (maxBigInt!0 (ite c!1407733 call!701552 call!701546) (ite c!1407733 call!701546 call!701552)))))

(declare-fun b!7642626 () Bool)

(assert (=> b!7642626 (= e!4542701 (= lt!2660646 1))))

(declare-fun bm!701545 () Bool)

(assert (=> bm!701545 (= call!701552 call!701547)))

(declare-fun b!7642627 () Bool)

(assert (=> b!7642627 (= e!4542705 e!4542700)))

(assert (=> b!7642627 (= c!1407732 ((_ is Star!20449) (regTwo!41411 r!14126)))))

(declare-fun b!7642628 () Bool)

(assert (=> b!7642628 (= e!4542700 (+ 1 call!701547))))

(declare-fun b!7642629 () Bool)

(assert (=> b!7642629 (= e!4542703 1)))

(declare-fun bm!701546 () Bool)

(assert (=> bm!701546 (= call!701550 (regexDepth!483 (ite c!1407735 (regOne!41411 (regTwo!41411 r!14126)) (ite c!1407734 (regOne!41410 (regTwo!41411 r!14126)) (reg!20778 (regTwo!41411 r!14126))))))))

(declare-fun b!7642630 () Bool)

(declare-fun c!1407736 () Bool)

(assert (=> b!7642630 (= c!1407736 ((_ is Star!20449) (regTwo!41411 r!14126)))))

(assert (=> b!7642630 (= e!4542704 e!4542701)))

(declare-fun b!7642631 () Bool)

(declare-fun res!3061126 () Bool)

(assert (=> b!7642631 (=> (not res!3061126) (not e!4542702))))

(assert (=> b!7642631 (= res!3061126 (> lt!2660646 call!701551))))

(assert (=> b!7642631 (= e!4542704 e!4542702)))

(declare-fun bm!701547 () Bool)

(assert (=> bm!701547 (= call!701551 call!701550)))

(declare-fun b!7642632 () Bool)

(assert (=> b!7642632 (= e!4542708 (> lt!2660646 call!701548))))

(assert (= (and d!2325276 c!1407730) b!7642622))

(assert (= (and d!2325276 (not c!1407730)) b!7642627))

(assert (= (and b!7642627 c!1407732) b!7642628))

(assert (= (and b!7642627 (not c!1407732)) b!7642619))

(assert (= (and b!7642619 c!1407733) b!7642616))

(assert (= (and b!7642619 (not c!1407733)) b!7642625))

(assert (= (and b!7642625 c!1407731) b!7642617))

(assert (= (and b!7642625 (not c!1407731)) b!7642629))

(assert (= (or b!7642616 b!7642617) bm!701545))

(assert (= (or b!7642616 b!7642617) bm!701541))

(assert (= (or b!7642616 b!7642617) bm!701544))

(assert (= (or b!7642628 bm!701545) bm!701543))

(assert (= (and d!2325276 res!3061125) b!7642623))

(assert (= (and b!7642623 c!1407735) b!7642620))

(assert (= (and b!7642623 (not c!1407735)) b!7642621))

(assert (= (and b!7642620 res!3061127) b!7642632))

(assert (= (and b!7642621 c!1407734) b!7642631))

(assert (= (and b!7642621 (not c!1407734)) b!7642630))

(assert (= (and b!7642631 res!3061126) b!7642618))

(assert (= (and b!7642630 c!1407736) b!7642624))

(assert (= (and b!7642630 (not c!1407736)) b!7642626))

(assert (= (or b!7642631 b!7642624) bm!701547))

(assert (= (or b!7642620 bm!701547) bm!701546))

(assert (= (or b!7642632 b!7642618) bm!701542))

(declare-fun m!8163460 () Bool)

(assert (=> bm!701544 m!8163460))

(declare-fun m!8163462 () Bool)

(assert (=> bm!701541 m!8163462))

(declare-fun m!8163464 () Bool)

(assert (=> bm!701543 m!8163464))

(declare-fun m!8163466 () Bool)

(assert (=> bm!701546 m!8163466))

(declare-fun m!8163468 () Bool)

(assert (=> bm!701542 m!8163468))

(assert (=> b!7642461 d!2325276))

(declare-fun d!2325282 () Bool)

(declare-fun e!4542709 () Bool)

(assert (=> d!2325282 e!4542709))

(declare-fun res!3061128 () Bool)

(assert (=> d!2325282 (=> (not res!3061128) (not e!4542709))))

(declare-fun lt!2660647 () Int)

(assert (=> d!2325282 (= res!3061128 (> lt!2660647 0))))

(declare-fun e!4542715 () Int)

(assert (=> d!2325282 (= lt!2660647 e!4542715)))

(declare-fun c!1407737 () Bool)

(assert (=> d!2325282 (= c!1407737 ((_ is ElementMatch!20449) r!14126))))

(assert (=> d!2325282 (= (regexDepth!483 r!14126) lt!2660647)))

(declare-fun b!7642633 () Bool)

(declare-fun e!4542717 () Int)

(declare-fun call!701556 () Int)

(assert (=> b!7642633 (= e!4542717 (+ 1 call!701556))))

(declare-fun b!7642634 () Bool)

(declare-fun e!4542713 () Int)

(assert (=> b!7642634 (= e!4542713 (+ 1 call!701556))))

(declare-fun b!7642635 () Bool)

(declare-fun e!4542712 () Bool)

(declare-fun call!701555 () Int)

(assert (=> b!7642635 (= e!4542712 (> lt!2660647 call!701555))))

(declare-fun b!7642636 () Bool)

(declare-fun c!1407740 () Bool)

(assert (=> b!7642636 (= c!1407740 ((_ is Union!20449) r!14126))))

(declare-fun e!4542710 () Int)

(assert (=> b!7642636 (= e!4542710 e!4542717)))

(declare-fun b!7642637 () Bool)

(declare-fun e!4542716 () Bool)

(declare-fun e!4542718 () Bool)

(assert (=> b!7642637 (= e!4542716 e!4542718)))

(declare-fun res!3061130 () Bool)

(declare-fun call!701557 () Int)

(assert (=> b!7642637 (= res!3061130 (> lt!2660647 call!701557))))

(assert (=> b!7642637 (=> (not res!3061130) (not e!4542718))))

(declare-fun b!7642638 () Bool)

(declare-fun e!4542714 () Bool)

(assert (=> b!7642638 (= e!4542716 e!4542714)))

(declare-fun c!1407741 () Bool)

(assert (=> b!7642638 (= c!1407741 ((_ is Concat!29294) r!14126))))

(declare-fun b!7642639 () Bool)

(assert (=> b!7642639 (= e!4542715 1)))

(declare-fun bm!701548 () Bool)

(declare-fun call!701553 () Int)

(assert (=> bm!701548 (= call!701553 (regexDepth!483 (ite c!1407740 (regTwo!41411 r!14126) (regOne!41410 r!14126))))))

(declare-fun bm!701549 () Bool)

(declare-fun c!1407742 () Bool)

(assert (=> bm!701549 (= call!701555 (regexDepth!483 (ite c!1407742 (regTwo!41411 r!14126) (regTwo!41410 r!14126))))))

(declare-fun b!7642640 () Bool)

(assert (=> b!7642640 (= e!4542709 e!4542716)))

(assert (=> b!7642640 (= c!1407742 ((_ is Union!20449) r!14126))))

(declare-fun b!7642641 () Bool)

(declare-fun e!4542711 () Bool)

(declare-fun call!701558 () Int)

(assert (=> b!7642641 (= e!4542711 (> lt!2660647 call!701558))))

(declare-fun b!7642642 () Bool)

(assert (=> b!7642642 (= e!4542717 e!4542713)))

(declare-fun c!1407738 () Bool)

(assert (=> b!7642642 (= c!1407738 ((_ is Concat!29294) r!14126))))

(declare-fun call!701554 () Int)

(declare-fun bm!701550 () Bool)

(declare-fun c!1407739 () Bool)

(assert (=> bm!701550 (= call!701554 (regexDepth!483 (ite c!1407739 (reg!20778 r!14126) (ite c!1407740 (regOne!41411 r!14126) (regTwo!41410 r!14126)))))))

(declare-fun call!701559 () Int)

(declare-fun bm!701551 () Bool)

(assert (=> bm!701551 (= call!701556 (maxBigInt!0 (ite c!1407740 call!701559 call!701553) (ite c!1407740 call!701553 call!701559)))))

(declare-fun b!7642643 () Bool)

(assert (=> b!7642643 (= e!4542711 (= lt!2660647 1))))

(declare-fun bm!701552 () Bool)

(assert (=> bm!701552 (= call!701559 call!701554)))

(declare-fun b!7642644 () Bool)

(assert (=> b!7642644 (= e!4542715 e!4542710)))

(assert (=> b!7642644 (= c!1407739 ((_ is Star!20449) r!14126))))

(declare-fun b!7642645 () Bool)

(assert (=> b!7642645 (= e!4542710 (+ 1 call!701554))))

(declare-fun b!7642646 () Bool)

(assert (=> b!7642646 (= e!4542713 1)))

(declare-fun bm!701553 () Bool)

(assert (=> bm!701553 (= call!701557 (regexDepth!483 (ite c!1407742 (regOne!41411 r!14126) (ite c!1407741 (regOne!41410 r!14126) (reg!20778 r!14126)))))))

(declare-fun b!7642647 () Bool)

(declare-fun c!1407743 () Bool)

(assert (=> b!7642647 (= c!1407743 ((_ is Star!20449) r!14126))))

(assert (=> b!7642647 (= e!4542714 e!4542711)))

(declare-fun b!7642648 () Bool)

(declare-fun res!3061129 () Bool)

(assert (=> b!7642648 (=> (not res!3061129) (not e!4542712))))

(assert (=> b!7642648 (= res!3061129 (> lt!2660647 call!701558))))

(assert (=> b!7642648 (= e!4542714 e!4542712)))

(declare-fun bm!701554 () Bool)

(assert (=> bm!701554 (= call!701558 call!701557)))

(declare-fun b!7642649 () Bool)

(assert (=> b!7642649 (= e!4542718 (> lt!2660647 call!701555))))

(assert (= (and d!2325282 c!1407737) b!7642639))

(assert (= (and d!2325282 (not c!1407737)) b!7642644))

(assert (= (and b!7642644 c!1407739) b!7642645))

(assert (= (and b!7642644 (not c!1407739)) b!7642636))

(assert (= (and b!7642636 c!1407740) b!7642633))

(assert (= (and b!7642636 (not c!1407740)) b!7642642))

(assert (= (and b!7642642 c!1407738) b!7642634))

(assert (= (and b!7642642 (not c!1407738)) b!7642646))

(assert (= (or b!7642633 b!7642634) bm!701552))

(assert (= (or b!7642633 b!7642634) bm!701548))

(assert (= (or b!7642633 b!7642634) bm!701551))

(assert (= (or b!7642645 bm!701552) bm!701550))

(assert (= (and d!2325282 res!3061128) b!7642640))

(assert (= (and b!7642640 c!1407742) b!7642637))

(assert (= (and b!7642640 (not c!1407742)) b!7642638))

(assert (= (and b!7642637 res!3061130) b!7642649))

(assert (= (and b!7642638 c!1407741) b!7642648))

(assert (= (and b!7642638 (not c!1407741)) b!7642647))

(assert (= (and b!7642648 res!3061129) b!7642635))

(assert (= (and b!7642647 c!1407743) b!7642641))

(assert (= (and b!7642647 (not c!1407743)) b!7642643))

(assert (= (or b!7642648 b!7642641) bm!701554))

(assert (= (or b!7642637 bm!701554) bm!701553))

(assert (= (or b!7642649 b!7642635) bm!701549))

(declare-fun m!8163470 () Bool)

(assert (=> bm!701551 m!8163470))

(declare-fun m!8163472 () Bool)

(assert (=> bm!701548 m!8163472))

(declare-fun m!8163474 () Bool)

(assert (=> bm!701550 m!8163474))

(declare-fun m!8163476 () Bool)

(assert (=> bm!701553 m!8163476))

(declare-fun m!8163478 () Bool)

(assert (=> bm!701549 m!8163478))

(assert (=> b!7642461 d!2325282))

(declare-fun d!2325284 () Bool)

(declare-fun lt!2660650 () Int)

(assert (=> d!2325284 (>= lt!2660650 0)))

(declare-fun e!4542721 () Int)

(assert (=> d!2325284 (= lt!2660650 e!4542721)))

(declare-fun c!1407746 () Bool)

(assert (=> d!2325284 (= c!1407746 ((_ is Nil!73176) s!9605))))

(assert (=> d!2325284 (= (size!42589 s!9605) lt!2660650)))

(declare-fun b!7642654 () Bool)

(assert (=> b!7642654 (= e!4542721 0)))

(declare-fun b!7642655 () Bool)

(assert (=> b!7642655 (= e!4542721 (+ 1 (size!42589 (t!388035 s!9605))))))

(assert (= (and d!2325284 c!1407746) b!7642654))

(assert (= (and d!2325284 (not c!1407746)) b!7642655))

(declare-fun m!8163480 () Bool)

(assert (=> b!7642655 m!8163480))

(assert (=> b!7642461 d!2325284))

(declare-fun b!7642684 () Bool)

(declare-fun res!3061149 () Bool)

(declare-fun e!4542737 () Bool)

(assert (=> b!7642684 (=> res!3061149 e!4542737)))

(assert (=> b!7642684 (= res!3061149 (not ((_ is ElementMatch!20449) r!14126)))))

(declare-fun e!4542740 () Bool)

(assert (=> b!7642684 (= e!4542740 e!4542737)))

(declare-fun d!2325286 () Bool)

(declare-fun e!4542741 () Bool)

(assert (=> d!2325286 e!4542741))

(declare-fun c!1407755 () Bool)

(assert (=> d!2325286 (= c!1407755 ((_ is EmptyExpr!20449) r!14126))))

(declare-fun lt!2660653 () Bool)

(declare-fun e!4542742 () Bool)

(assert (=> d!2325286 (= lt!2660653 e!4542742)))

(declare-fun c!1407754 () Bool)

(declare-fun isEmpty!41805 (List!73300) Bool)

(assert (=> d!2325286 (= c!1407754 (isEmpty!41805 s!9605))))

(assert (=> d!2325286 (validRegex!10867 r!14126)))

(assert (=> d!2325286 (= (matchR!9950 r!14126 s!9605) lt!2660653)))

(declare-fun b!7642685 () Bool)

(declare-fun res!3061152 () Bool)

(declare-fun e!4542736 () Bool)

(assert (=> b!7642685 (=> (not res!3061152) (not e!4542736))))

(declare-fun tail!15265 (List!73300) List!73300)

(assert (=> b!7642685 (= res!3061152 (isEmpty!41805 (tail!15265 s!9605)))))

(declare-fun b!7642686 () Bool)

(declare-fun res!3061151 () Bool)

(declare-fun e!4542738 () Bool)

(assert (=> b!7642686 (=> res!3061151 e!4542738)))

(assert (=> b!7642686 (= res!3061151 (not (isEmpty!41805 (tail!15265 s!9605))))))

(declare-fun bm!701557 () Bool)

(declare-fun call!701562 () Bool)

(assert (=> bm!701557 (= call!701562 (isEmpty!41805 s!9605))))

(declare-fun b!7642687 () Bool)

(assert (=> b!7642687 (= e!4542740 (not lt!2660653))))

(declare-fun b!7642688 () Bool)

(declare-fun head!15725 (List!73300) C!41224)

(assert (=> b!7642688 (= e!4542736 (= (head!15725 s!9605) (c!1407686 r!14126)))))

(declare-fun b!7642689 () Bool)

(declare-fun res!3061154 () Bool)

(assert (=> b!7642689 (=> res!3061154 e!4542737)))

(assert (=> b!7642689 (= res!3061154 e!4542736)))

(declare-fun res!3061150 () Bool)

(assert (=> b!7642689 (=> (not res!3061150) (not e!4542736))))

(assert (=> b!7642689 (= res!3061150 lt!2660653)))

(declare-fun b!7642690 () Bool)

(assert (=> b!7642690 (= e!4542741 (= lt!2660653 call!701562))))

(declare-fun b!7642691 () Bool)

(declare-fun res!3061148 () Bool)

(assert (=> b!7642691 (=> (not res!3061148) (not e!4542736))))

(assert (=> b!7642691 (= res!3061148 (not call!701562))))

(declare-fun b!7642692 () Bool)

(assert (=> b!7642692 (= e!4542742 (nullable!8954 r!14126))))

(declare-fun b!7642693 () Bool)

(assert (=> b!7642693 (= e!4542741 e!4542740)))

(declare-fun c!1407753 () Bool)

(assert (=> b!7642693 (= c!1407753 ((_ is EmptyLang!20449) r!14126))))

(declare-fun b!7642694 () Bool)

(declare-fun e!4542739 () Bool)

(assert (=> b!7642694 (= e!4542739 e!4542738)))

(declare-fun res!3061153 () Bool)

(assert (=> b!7642694 (=> res!3061153 e!4542738)))

(assert (=> b!7642694 (= res!3061153 call!701562)))

(declare-fun b!7642695 () Bool)

(assert (=> b!7642695 (= e!4542738 (not (= (head!15725 s!9605) (c!1407686 r!14126))))))

(declare-fun b!7642696 () Bool)

(assert (=> b!7642696 (= e!4542737 e!4542739)))

(declare-fun res!3061147 () Bool)

(assert (=> b!7642696 (=> (not res!3061147) (not e!4542739))))

(assert (=> b!7642696 (= res!3061147 (not lt!2660653))))

(declare-fun b!7642697 () Bool)

(declare-fun derivativeStep!5925 (Regex!20449 C!41224) Regex!20449)

(assert (=> b!7642697 (= e!4542742 (matchR!9950 (derivativeStep!5925 r!14126 (head!15725 s!9605)) (tail!15265 s!9605)))))

(assert (= (and d!2325286 c!1407754) b!7642692))

(assert (= (and d!2325286 (not c!1407754)) b!7642697))

(assert (= (and d!2325286 c!1407755) b!7642690))

(assert (= (and d!2325286 (not c!1407755)) b!7642693))

(assert (= (and b!7642693 c!1407753) b!7642687))

(assert (= (and b!7642693 (not c!1407753)) b!7642684))

(assert (= (and b!7642684 (not res!3061149)) b!7642689))

(assert (= (and b!7642689 res!3061150) b!7642691))

(assert (= (and b!7642691 res!3061148) b!7642685))

(assert (= (and b!7642685 res!3061152) b!7642688))

(assert (= (and b!7642689 (not res!3061154)) b!7642696))

(assert (= (and b!7642696 res!3061147) b!7642694))

(assert (= (and b!7642694 (not res!3061153)) b!7642686))

(assert (= (and b!7642686 (not res!3061151)) b!7642695))

(assert (= (or b!7642690 b!7642691 b!7642694) bm!701557))

(declare-fun m!8163482 () Bool)

(assert (=> d!2325286 m!8163482))

(assert (=> d!2325286 m!8163432))

(declare-fun m!8163484 () Bool)

(assert (=> b!7642695 m!8163484))

(declare-fun m!8163486 () Bool)

(assert (=> b!7642686 m!8163486))

(assert (=> b!7642686 m!8163486))

(declare-fun m!8163488 () Bool)

(assert (=> b!7642686 m!8163488))

(assert (=> bm!701557 m!8163482))

(declare-fun m!8163490 () Bool)

(assert (=> b!7642692 m!8163490))

(assert (=> b!7642685 m!8163486))

(assert (=> b!7642685 m!8163486))

(assert (=> b!7642685 m!8163488))

(assert (=> b!7642697 m!8163484))

(assert (=> b!7642697 m!8163484))

(declare-fun m!8163492 () Bool)

(assert (=> b!7642697 m!8163492))

(assert (=> b!7642697 m!8163486))

(assert (=> b!7642697 m!8163492))

(assert (=> b!7642697 m!8163486))

(declare-fun m!8163494 () Bool)

(assert (=> b!7642697 m!8163494))

(assert (=> b!7642688 m!8163484))

(assert (=> b!7642459 d!2325286))

(declare-fun b!7642698 () Bool)

(declare-fun res!3061157 () Bool)

(declare-fun e!4542744 () Bool)

(assert (=> b!7642698 (=> res!3061157 e!4542744)))

(assert (=> b!7642698 (= res!3061157 (not ((_ is ElementMatch!20449) (regTwo!41411 r!14126))))))

(declare-fun e!4542747 () Bool)

(assert (=> b!7642698 (= e!4542747 e!4542744)))

(declare-fun d!2325288 () Bool)

(declare-fun e!4542748 () Bool)

(assert (=> d!2325288 e!4542748))

(declare-fun c!1407758 () Bool)

(assert (=> d!2325288 (= c!1407758 ((_ is EmptyExpr!20449) (regTwo!41411 r!14126)))))

(declare-fun lt!2660654 () Bool)

(declare-fun e!4542749 () Bool)

(assert (=> d!2325288 (= lt!2660654 e!4542749)))

(declare-fun c!1407757 () Bool)

(assert (=> d!2325288 (= c!1407757 (isEmpty!41805 s!9605))))

(assert (=> d!2325288 (validRegex!10867 (regTwo!41411 r!14126))))

(assert (=> d!2325288 (= (matchR!9950 (regTwo!41411 r!14126) s!9605) lt!2660654)))

(declare-fun b!7642699 () Bool)

(declare-fun res!3061160 () Bool)

(declare-fun e!4542743 () Bool)

(assert (=> b!7642699 (=> (not res!3061160) (not e!4542743))))

(assert (=> b!7642699 (= res!3061160 (isEmpty!41805 (tail!15265 s!9605)))))

(declare-fun b!7642700 () Bool)

(declare-fun res!3061159 () Bool)

(declare-fun e!4542745 () Bool)

(assert (=> b!7642700 (=> res!3061159 e!4542745)))

(assert (=> b!7642700 (= res!3061159 (not (isEmpty!41805 (tail!15265 s!9605))))))

(declare-fun bm!701558 () Bool)

(declare-fun call!701563 () Bool)

(assert (=> bm!701558 (= call!701563 (isEmpty!41805 s!9605))))

(declare-fun b!7642701 () Bool)

(assert (=> b!7642701 (= e!4542747 (not lt!2660654))))

(declare-fun b!7642702 () Bool)

(assert (=> b!7642702 (= e!4542743 (= (head!15725 s!9605) (c!1407686 (regTwo!41411 r!14126))))))

(declare-fun b!7642703 () Bool)

(declare-fun res!3061162 () Bool)

(assert (=> b!7642703 (=> res!3061162 e!4542744)))

(assert (=> b!7642703 (= res!3061162 e!4542743)))

(declare-fun res!3061158 () Bool)

(assert (=> b!7642703 (=> (not res!3061158) (not e!4542743))))

(assert (=> b!7642703 (= res!3061158 lt!2660654)))

(declare-fun b!7642704 () Bool)

(assert (=> b!7642704 (= e!4542748 (= lt!2660654 call!701563))))

(declare-fun b!7642705 () Bool)

(declare-fun res!3061156 () Bool)

(assert (=> b!7642705 (=> (not res!3061156) (not e!4542743))))

(assert (=> b!7642705 (= res!3061156 (not call!701563))))

(declare-fun b!7642706 () Bool)

(assert (=> b!7642706 (= e!4542749 (nullable!8954 (regTwo!41411 r!14126)))))

(declare-fun b!7642707 () Bool)

(assert (=> b!7642707 (= e!4542748 e!4542747)))

(declare-fun c!1407756 () Bool)

(assert (=> b!7642707 (= c!1407756 ((_ is EmptyLang!20449) (regTwo!41411 r!14126)))))

(declare-fun b!7642708 () Bool)

(declare-fun e!4542746 () Bool)

(assert (=> b!7642708 (= e!4542746 e!4542745)))

(declare-fun res!3061161 () Bool)

(assert (=> b!7642708 (=> res!3061161 e!4542745)))

(assert (=> b!7642708 (= res!3061161 call!701563)))

(declare-fun b!7642709 () Bool)

(assert (=> b!7642709 (= e!4542745 (not (= (head!15725 s!9605) (c!1407686 (regTwo!41411 r!14126)))))))

(declare-fun b!7642710 () Bool)

(assert (=> b!7642710 (= e!4542744 e!4542746)))

(declare-fun res!3061155 () Bool)

(assert (=> b!7642710 (=> (not res!3061155) (not e!4542746))))

(assert (=> b!7642710 (= res!3061155 (not lt!2660654))))

(declare-fun b!7642711 () Bool)

(assert (=> b!7642711 (= e!4542749 (matchR!9950 (derivativeStep!5925 (regTwo!41411 r!14126) (head!15725 s!9605)) (tail!15265 s!9605)))))

(assert (= (and d!2325288 c!1407757) b!7642706))

(assert (= (and d!2325288 (not c!1407757)) b!7642711))

(assert (= (and d!2325288 c!1407758) b!7642704))

(assert (= (and d!2325288 (not c!1407758)) b!7642707))

(assert (= (and b!7642707 c!1407756) b!7642701))

(assert (= (and b!7642707 (not c!1407756)) b!7642698))

(assert (= (and b!7642698 (not res!3061157)) b!7642703))

(assert (= (and b!7642703 res!3061158) b!7642705))

(assert (= (and b!7642705 res!3061156) b!7642699))

(assert (= (and b!7642699 res!3061160) b!7642702))

(assert (= (and b!7642703 (not res!3061162)) b!7642710))

(assert (= (and b!7642710 res!3061155) b!7642708))

(assert (= (and b!7642708 (not res!3061161)) b!7642700))

(assert (= (and b!7642700 (not res!3061159)) b!7642709))

(assert (= (or b!7642704 b!7642705 b!7642708) bm!701558))

(assert (=> d!2325288 m!8163482))

(assert (=> d!2325288 m!8163420))

(assert (=> b!7642709 m!8163484))

(assert (=> b!7642700 m!8163486))

(assert (=> b!7642700 m!8163486))

(assert (=> b!7642700 m!8163488))

(assert (=> bm!701558 m!8163482))

(declare-fun m!8163496 () Bool)

(assert (=> b!7642706 m!8163496))

(assert (=> b!7642699 m!8163486))

(assert (=> b!7642699 m!8163486))

(assert (=> b!7642699 m!8163488))

(assert (=> b!7642711 m!8163484))

(assert (=> b!7642711 m!8163484))

(declare-fun m!8163498 () Bool)

(assert (=> b!7642711 m!8163498))

(assert (=> b!7642711 m!8163486))

(assert (=> b!7642711 m!8163498))

(assert (=> b!7642711 m!8163486))

(declare-fun m!8163500 () Bool)

(assert (=> b!7642711 m!8163500))

(assert (=> b!7642702 m!8163484))

(assert (=> b!7642463 d!2325288))

(declare-fun b!7642928 () Bool)

(assert (=> b!7642928 true))

(assert (=> b!7642928 true))

(declare-fun bs!1944743 () Bool)

(declare-fun b!7642926 () Bool)

(assert (= bs!1944743 (and b!7642926 b!7642928)))

(declare-fun lambda!469671 () Int)

(declare-fun lambda!469670 () Int)

(assert (=> bs!1944743 (not (= lambda!469671 lambda!469670))))

(assert (=> b!7642926 true))

(assert (=> b!7642926 true))

(declare-fun b!7642921 () Bool)

(declare-fun e!4542860 () Bool)

(assert (=> b!7642921 (= e!4542860 (= s!9605 (Cons!73176 (c!1407686 (regOne!41411 r!14126)) Nil!73176)))))

(declare-fun b!7642922 () Bool)

(declare-fun e!4542859 () Bool)

(declare-fun call!701607 () Bool)

(assert (=> b!7642922 (= e!4542859 call!701607)))

(declare-fun b!7642923 () Bool)

(declare-fun e!4542862 () Bool)

(declare-fun e!4542865 () Bool)

(assert (=> b!7642923 (= e!4542862 e!4542865)))

(declare-fun res!3061231 () Bool)

(assert (=> b!7642923 (= res!3061231 (matchRSpec!4572 (regOne!41411 (regOne!41411 r!14126)) s!9605))))

(assert (=> b!7642923 (=> res!3061231 e!4542865)))

(declare-fun b!7642924 () Bool)

(declare-fun c!1407811 () Bool)

(assert (=> b!7642924 (= c!1407811 ((_ is ElementMatch!20449) (regOne!41411 r!14126)))))

(declare-fun e!4542861 () Bool)

(assert (=> b!7642924 (= e!4542861 e!4542860)))

(declare-fun d!2325290 () Bool)

(declare-fun c!1407813 () Bool)

(assert (=> d!2325290 (= c!1407813 ((_ is EmptyExpr!20449) (regOne!41411 r!14126)))))

(assert (=> d!2325290 (= (matchRSpec!4572 (regOne!41411 r!14126) s!9605) e!4542859)))

(declare-fun bm!701602 () Bool)

(assert (=> bm!701602 (= call!701607 (isEmpty!41805 s!9605))))

(declare-fun b!7642925 () Bool)

(assert (=> b!7642925 (= e!4542865 (matchRSpec!4572 (regTwo!41411 (regOne!41411 r!14126)) s!9605))))

(declare-fun e!4542864 () Bool)

(declare-fun call!701608 () Bool)

(assert (=> b!7642926 (= e!4542864 call!701608)))

(declare-fun b!7642927 () Bool)

(assert (=> b!7642927 (= e!4542862 e!4542864)))

(declare-fun c!1407810 () Bool)

(assert (=> b!7642927 (= c!1407810 ((_ is Star!20449) (regOne!41411 r!14126)))))

(declare-fun e!4542863 () Bool)

(assert (=> b!7642928 (= e!4542863 call!701608)))

(declare-fun b!7642929 () Bool)

(declare-fun res!3061232 () Bool)

(assert (=> b!7642929 (=> res!3061232 e!4542863)))

(assert (=> b!7642929 (= res!3061232 call!701607)))

(assert (=> b!7642929 (= e!4542864 e!4542863)))

(declare-fun b!7642930 () Bool)

(declare-fun c!1407812 () Bool)

(assert (=> b!7642930 (= c!1407812 ((_ is Union!20449) (regOne!41411 r!14126)))))

(assert (=> b!7642930 (= e!4542860 e!4542862)))

(declare-fun b!7642931 () Bool)

(assert (=> b!7642931 (= e!4542859 e!4542861)))

(declare-fun res!3061233 () Bool)

(assert (=> b!7642931 (= res!3061233 (not ((_ is EmptyLang!20449) (regOne!41411 r!14126))))))

(assert (=> b!7642931 (=> (not res!3061233) (not e!4542861))))

(declare-fun bm!701603 () Bool)

(declare-fun Exists!4593 (Int) Bool)

(assert (=> bm!701603 (= call!701608 (Exists!4593 (ite c!1407810 lambda!469670 lambda!469671)))))

(assert (= (and d!2325290 c!1407813) b!7642922))

(assert (= (and d!2325290 (not c!1407813)) b!7642931))

(assert (= (and b!7642931 res!3061233) b!7642924))

(assert (= (and b!7642924 c!1407811) b!7642921))

(assert (= (and b!7642924 (not c!1407811)) b!7642930))

(assert (= (and b!7642930 c!1407812) b!7642923))

(assert (= (and b!7642930 (not c!1407812)) b!7642927))

(assert (= (and b!7642923 (not res!3061231)) b!7642925))

(assert (= (and b!7642927 c!1407810) b!7642929))

(assert (= (and b!7642927 (not c!1407810)) b!7642926))

(assert (= (and b!7642929 (not res!3061232)) b!7642928))

(assert (= (or b!7642928 b!7642926) bm!701603))

(assert (= (or b!7642922 b!7642929) bm!701602))

(declare-fun m!8163554 () Bool)

(assert (=> b!7642923 m!8163554))

(assert (=> bm!701602 m!8163482))

(declare-fun m!8163556 () Bool)

(assert (=> b!7642925 m!8163556))

(declare-fun m!8163558 () Bool)

(assert (=> bm!701603 m!8163558))

(assert (=> b!7642457 d!2325290))

(declare-fun d!2325308 () Bool)

(declare-fun e!4542871 () Bool)

(assert (=> d!2325308 e!4542871))

(declare-fun res!3061239 () Bool)

(assert (=> d!2325308 (=> res!3061239 e!4542871)))

(assert (=> d!2325308 (= res!3061239 (matchR!9950 (regOne!41411 r!14126) s!9605))))

(declare-fun lt!2660672 () Unit!167874)

(declare-fun choose!59018 (Regex!20449 Regex!20449 List!73300) Unit!167874)

(assert (=> d!2325308 (= lt!2660672 (choose!59018 (regOne!41411 r!14126) (regTwo!41411 r!14126) s!9605))))

(declare-fun e!4542870 () Bool)

(assert (=> d!2325308 e!4542870))

(declare-fun res!3061238 () Bool)

(assert (=> d!2325308 (=> (not res!3061238) (not e!4542870))))

(assert (=> d!2325308 (= res!3061238 (validRegex!10867 (regOne!41411 r!14126)))))

(assert (=> d!2325308 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!352 (regOne!41411 r!14126) (regTwo!41411 r!14126) s!9605) lt!2660672)))

(declare-fun b!7642940 () Bool)

(assert (=> b!7642940 (= e!4542870 (validRegex!10867 (regTwo!41411 r!14126)))))

(declare-fun b!7642941 () Bool)

(assert (=> b!7642941 (= e!4542871 (matchR!9950 (regTwo!41411 r!14126) s!9605))))

(assert (= (and d!2325308 res!3061238) b!7642940))

(assert (= (and d!2325308 (not res!3061239)) b!7642941))

(assert (=> d!2325308 m!8163424))

(declare-fun m!8163560 () Bool)

(assert (=> d!2325308 m!8163560))

(declare-fun m!8163562 () Bool)

(assert (=> d!2325308 m!8163562))

(assert (=> b!7642940 m!8163420))

(assert (=> b!7642941 m!8163414))

(assert (=> b!7642457 d!2325308))

(declare-fun d!2325310 () Bool)

(declare-fun res!3061244 () Bool)

(declare-fun e!4542875 () Bool)

(assert (=> d!2325310 (=> res!3061244 e!4542875)))

(assert (=> d!2325310 (= res!3061244 ((_ is ElementMatch!20449) (regTwo!41411 r!14126)))))

(assert (=> d!2325310 (= (validRegex!10867 (regTwo!41411 r!14126)) e!4542875)))

(declare-fun b!7642942 () Bool)

(declare-fun e!4542874 () Bool)

(declare-fun e!4542876 () Bool)

(assert (=> b!7642942 (= e!4542874 e!4542876)))

(declare-fun res!3061242 () Bool)

(assert (=> b!7642942 (= res!3061242 (not (nullable!8954 (reg!20778 (regTwo!41411 r!14126)))))))

(assert (=> b!7642942 (=> (not res!3061242) (not e!4542876))))

(declare-fun b!7642943 () Bool)

(declare-fun e!4542873 () Bool)

(declare-fun e!4542877 () Bool)

(assert (=> b!7642943 (= e!4542873 e!4542877)))

(declare-fun res!3061243 () Bool)

(assert (=> b!7642943 (=> (not res!3061243) (not e!4542877))))

(declare-fun call!701610 () Bool)

(assert (=> b!7642943 (= res!3061243 call!701610)))

(declare-fun b!7642944 () Bool)

(declare-fun call!701609 () Bool)

(assert (=> b!7642944 (= e!4542877 call!701609)))

(declare-fun bm!701604 () Bool)

(declare-fun call!701611 () Bool)

(assert (=> bm!701604 (= call!701610 call!701611)))

(declare-fun b!7642945 () Bool)

(assert (=> b!7642945 (= e!4542875 e!4542874)))

(declare-fun c!1407814 () Bool)

(assert (=> b!7642945 (= c!1407814 ((_ is Star!20449) (regTwo!41411 r!14126)))))

(declare-fun b!7642946 () Bool)

(assert (=> b!7642946 (= e!4542876 call!701611)))

(declare-fun b!7642947 () Bool)

(declare-fun res!3061241 () Bool)

(declare-fun e!4542878 () Bool)

(assert (=> b!7642947 (=> (not res!3061241) (not e!4542878))))

(assert (=> b!7642947 (= res!3061241 call!701610)))

(declare-fun e!4542872 () Bool)

(assert (=> b!7642947 (= e!4542872 e!4542878)))

(declare-fun bm!701605 () Bool)

(declare-fun c!1407815 () Bool)

(assert (=> bm!701605 (= call!701611 (validRegex!10867 (ite c!1407814 (reg!20778 (regTwo!41411 r!14126)) (ite c!1407815 (regOne!41411 (regTwo!41411 r!14126)) (regOne!41410 (regTwo!41411 r!14126))))))))

(declare-fun bm!701606 () Bool)

(assert (=> bm!701606 (= call!701609 (validRegex!10867 (ite c!1407815 (regTwo!41411 (regTwo!41411 r!14126)) (regTwo!41410 (regTwo!41411 r!14126)))))))

(declare-fun b!7642948 () Bool)

(declare-fun res!3061240 () Bool)

(assert (=> b!7642948 (=> res!3061240 e!4542873)))

(assert (=> b!7642948 (= res!3061240 (not ((_ is Concat!29294) (regTwo!41411 r!14126))))))

(assert (=> b!7642948 (= e!4542872 e!4542873)))

(declare-fun b!7642949 () Bool)

(assert (=> b!7642949 (= e!4542874 e!4542872)))

(assert (=> b!7642949 (= c!1407815 ((_ is Union!20449) (regTwo!41411 r!14126)))))

(declare-fun b!7642950 () Bool)

(assert (=> b!7642950 (= e!4542878 call!701609)))

(assert (= (and d!2325310 (not res!3061244)) b!7642945))

(assert (= (and b!7642945 c!1407814) b!7642942))

(assert (= (and b!7642945 (not c!1407814)) b!7642949))

(assert (= (and b!7642942 res!3061242) b!7642946))

(assert (= (and b!7642949 c!1407815) b!7642947))

(assert (= (and b!7642949 (not c!1407815)) b!7642948))

(assert (= (and b!7642947 res!3061241) b!7642950))

(assert (= (and b!7642948 (not res!3061240)) b!7642943))

(assert (= (and b!7642943 res!3061243) b!7642944))

(assert (= (or b!7642947 b!7642943) bm!701604))

(assert (= (or b!7642950 b!7642944) bm!701606))

(assert (= (or b!7642946 bm!701604) bm!701605))

(declare-fun m!8163564 () Bool)

(assert (=> b!7642942 m!8163564))

(declare-fun m!8163566 () Bool)

(assert (=> bm!701605 m!8163566))

(declare-fun m!8163568 () Bool)

(assert (=> bm!701606 m!8163568))

(assert (=> b!7642457 d!2325310))

(declare-fun d!2325312 () Bool)

(assert (=> d!2325312 (= (matchR!9950 (regOne!41411 r!14126) s!9605) (matchRSpec!4572 (regOne!41411 r!14126) s!9605))))

(declare-fun lt!2660675 () Unit!167874)

(declare-fun choose!59019 (Regex!20449 List!73300) Unit!167874)

(assert (=> d!2325312 (= lt!2660675 (choose!59019 (regOne!41411 r!14126) s!9605))))

(assert (=> d!2325312 (validRegex!10867 (regOne!41411 r!14126))))

(assert (=> d!2325312 (= (mainMatchTheorem!4552 (regOne!41411 r!14126) s!9605) lt!2660675)))

(declare-fun bs!1944744 () Bool)

(assert (= bs!1944744 d!2325312))

(assert (=> bs!1944744 m!8163424))

(assert (=> bs!1944744 m!8163416))

(declare-fun m!8163570 () Bool)

(assert (=> bs!1944744 m!8163570))

(assert (=> bs!1944744 m!8163562))

(assert (=> b!7642457 d!2325312))

(declare-fun b!7642951 () Bool)

(declare-fun res!3061247 () Bool)

(declare-fun e!4542880 () Bool)

(assert (=> b!7642951 (=> res!3061247 e!4542880)))

(assert (=> b!7642951 (= res!3061247 (not ((_ is ElementMatch!20449) (regOne!41411 r!14126))))))

(declare-fun e!4542883 () Bool)

(assert (=> b!7642951 (= e!4542883 e!4542880)))

(declare-fun d!2325314 () Bool)

(declare-fun e!4542884 () Bool)

(assert (=> d!2325314 e!4542884))

(declare-fun c!1407818 () Bool)

(assert (=> d!2325314 (= c!1407818 ((_ is EmptyExpr!20449) (regOne!41411 r!14126)))))

(declare-fun lt!2660676 () Bool)

(declare-fun e!4542885 () Bool)

(assert (=> d!2325314 (= lt!2660676 e!4542885)))

(declare-fun c!1407817 () Bool)

(assert (=> d!2325314 (= c!1407817 (isEmpty!41805 s!9605))))

(assert (=> d!2325314 (validRegex!10867 (regOne!41411 r!14126))))

(assert (=> d!2325314 (= (matchR!9950 (regOne!41411 r!14126) s!9605) lt!2660676)))

(declare-fun b!7642952 () Bool)

(declare-fun res!3061250 () Bool)

(declare-fun e!4542879 () Bool)

(assert (=> b!7642952 (=> (not res!3061250) (not e!4542879))))

(assert (=> b!7642952 (= res!3061250 (isEmpty!41805 (tail!15265 s!9605)))))

(declare-fun b!7642953 () Bool)

(declare-fun res!3061249 () Bool)

(declare-fun e!4542881 () Bool)

(assert (=> b!7642953 (=> res!3061249 e!4542881)))

(assert (=> b!7642953 (= res!3061249 (not (isEmpty!41805 (tail!15265 s!9605))))))

(declare-fun bm!701607 () Bool)

(declare-fun call!701612 () Bool)

(assert (=> bm!701607 (= call!701612 (isEmpty!41805 s!9605))))

(declare-fun b!7642954 () Bool)

(assert (=> b!7642954 (= e!4542883 (not lt!2660676))))

(declare-fun b!7642955 () Bool)

(assert (=> b!7642955 (= e!4542879 (= (head!15725 s!9605) (c!1407686 (regOne!41411 r!14126))))))

(declare-fun b!7642956 () Bool)

(declare-fun res!3061252 () Bool)

(assert (=> b!7642956 (=> res!3061252 e!4542880)))

(assert (=> b!7642956 (= res!3061252 e!4542879)))

(declare-fun res!3061248 () Bool)

(assert (=> b!7642956 (=> (not res!3061248) (not e!4542879))))

(assert (=> b!7642956 (= res!3061248 lt!2660676)))

(declare-fun b!7642957 () Bool)

(assert (=> b!7642957 (= e!4542884 (= lt!2660676 call!701612))))

(declare-fun b!7642958 () Bool)

(declare-fun res!3061246 () Bool)

(assert (=> b!7642958 (=> (not res!3061246) (not e!4542879))))

(assert (=> b!7642958 (= res!3061246 (not call!701612))))

(declare-fun b!7642959 () Bool)

(assert (=> b!7642959 (= e!4542885 (nullable!8954 (regOne!41411 r!14126)))))

(declare-fun b!7642960 () Bool)

(assert (=> b!7642960 (= e!4542884 e!4542883)))

(declare-fun c!1407816 () Bool)

(assert (=> b!7642960 (= c!1407816 ((_ is EmptyLang!20449) (regOne!41411 r!14126)))))

(declare-fun b!7642961 () Bool)

(declare-fun e!4542882 () Bool)

(assert (=> b!7642961 (= e!4542882 e!4542881)))

(declare-fun res!3061251 () Bool)

(assert (=> b!7642961 (=> res!3061251 e!4542881)))

(assert (=> b!7642961 (= res!3061251 call!701612)))

(declare-fun b!7642962 () Bool)

(assert (=> b!7642962 (= e!4542881 (not (= (head!15725 s!9605) (c!1407686 (regOne!41411 r!14126)))))))

(declare-fun b!7642963 () Bool)

(assert (=> b!7642963 (= e!4542880 e!4542882)))

(declare-fun res!3061245 () Bool)

(assert (=> b!7642963 (=> (not res!3061245) (not e!4542882))))

(assert (=> b!7642963 (= res!3061245 (not lt!2660676))))

(declare-fun b!7642964 () Bool)

(assert (=> b!7642964 (= e!4542885 (matchR!9950 (derivativeStep!5925 (regOne!41411 r!14126) (head!15725 s!9605)) (tail!15265 s!9605)))))

(assert (= (and d!2325314 c!1407817) b!7642959))

(assert (= (and d!2325314 (not c!1407817)) b!7642964))

(assert (= (and d!2325314 c!1407818) b!7642957))

(assert (= (and d!2325314 (not c!1407818)) b!7642960))

(assert (= (and b!7642960 c!1407816) b!7642954))

(assert (= (and b!7642960 (not c!1407816)) b!7642951))

(assert (= (and b!7642951 (not res!3061247)) b!7642956))

(assert (= (and b!7642956 res!3061248) b!7642958))

(assert (= (and b!7642958 res!3061246) b!7642952))

(assert (= (and b!7642952 res!3061250) b!7642955))

(assert (= (and b!7642956 (not res!3061252)) b!7642963))

(assert (= (and b!7642963 res!3061245) b!7642961))

(assert (= (and b!7642961 (not res!3061251)) b!7642953))

(assert (= (and b!7642953 (not res!3061249)) b!7642962))

(assert (= (or b!7642957 b!7642958 b!7642961) bm!701607))

(assert (=> d!2325314 m!8163482))

(assert (=> d!2325314 m!8163562))

(assert (=> b!7642962 m!8163484))

(assert (=> b!7642953 m!8163486))

(assert (=> b!7642953 m!8163486))

(assert (=> b!7642953 m!8163488))

(assert (=> bm!701607 m!8163482))

(declare-fun m!8163572 () Bool)

(assert (=> b!7642959 m!8163572))

(assert (=> b!7642952 m!8163486))

(assert (=> b!7642952 m!8163486))

(assert (=> b!7642952 m!8163488))

(assert (=> b!7642964 m!8163484))

(assert (=> b!7642964 m!8163484))

(declare-fun m!8163574 () Bool)

(assert (=> b!7642964 m!8163574))

(assert (=> b!7642964 m!8163486))

(assert (=> b!7642964 m!8163574))

(assert (=> b!7642964 m!8163486))

(declare-fun m!8163576 () Bool)

(assert (=> b!7642964 m!8163576))

(assert (=> b!7642955 m!8163484))

(assert (=> b!7642457 d!2325314))

(declare-fun b!7642976 () Bool)

(declare-fun e!4542888 () Bool)

(declare-fun tp!2231015 () Bool)

(declare-fun tp!2231014 () Bool)

(assert (=> b!7642976 (= e!4542888 (and tp!2231015 tp!2231014))))

(declare-fun b!7642978 () Bool)

(declare-fun tp!2231018 () Bool)

(declare-fun tp!2231016 () Bool)

(assert (=> b!7642978 (= e!4542888 (and tp!2231018 tp!2231016))))

(declare-fun b!7642977 () Bool)

(declare-fun tp!2231017 () Bool)

(assert (=> b!7642977 (= e!4542888 tp!2231017)))

(declare-fun b!7642975 () Bool)

(assert (=> b!7642975 (= e!4542888 tp_is_empty!51253)))

(assert (=> b!7642455 (= tp!2230965 e!4542888)))

(assert (= (and b!7642455 ((_ is ElementMatch!20449) (regOne!41410 r!14126))) b!7642975))

(assert (= (and b!7642455 ((_ is Concat!29294) (regOne!41410 r!14126))) b!7642976))

(assert (= (and b!7642455 ((_ is Star!20449) (regOne!41410 r!14126))) b!7642977))

(assert (= (and b!7642455 ((_ is Union!20449) (regOne!41410 r!14126))) b!7642978))

(declare-fun b!7642980 () Bool)

(declare-fun e!4542889 () Bool)

(declare-fun tp!2231020 () Bool)

(declare-fun tp!2231019 () Bool)

(assert (=> b!7642980 (= e!4542889 (and tp!2231020 tp!2231019))))

(declare-fun b!7642982 () Bool)

(declare-fun tp!2231023 () Bool)

(declare-fun tp!2231021 () Bool)

(assert (=> b!7642982 (= e!4542889 (and tp!2231023 tp!2231021))))

(declare-fun b!7642981 () Bool)

(declare-fun tp!2231022 () Bool)

(assert (=> b!7642981 (= e!4542889 tp!2231022)))

(declare-fun b!7642979 () Bool)

(assert (=> b!7642979 (= e!4542889 tp_is_empty!51253)))

(assert (=> b!7642455 (= tp!2230962 e!4542889)))

(assert (= (and b!7642455 ((_ is ElementMatch!20449) (regTwo!41410 r!14126))) b!7642979))

(assert (= (and b!7642455 ((_ is Concat!29294) (regTwo!41410 r!14126))) b!7642980))

(assert (= (and b!7642455 ((_ is Star!20449) (regTwo!41410 r!14126))) b!7642981))

(assert (= (and b!7642455 ((_ is Union!20449) (regTwo!41410 r!14126))) b!7642982))

(declare-fun b!7642984 () Bool)

(declare-fun e!4542890 () Bool)

(declare-fun tp!2231025 () Bool)

(declare-fun tp!2231024 () Bool)

(assert (=> b!7642984 (= e!4542890 (and tp!2231025 tp!2231024))))

(declare-fun b!7642986 () Bool)

(declare-fun tp!2231028 () Bool)

(declare-fun tp!2231026 () Bool)

(assert (=> b!7642986 (= e!4542890 (and tp!2231028 tp!2231026))))

(declare-fun b!7642985 () Bool)

(declare-fun tp!2231027 () Bool)

(assert (=> b!7642985 (= e!4542890 tp!2231027)))

(declare-fun b!7642983 () Bool)

(assert (=> b!7642983 (= e!4542890 tp_is_empty!51253)))

(assert (=> b!7642454 (= tp!2230960 e!4542890)))

(assert (= (and b!7642454 ((_ is ElementMatch!20449) (reg!20778 r!14126))) b!7642983))

(assert (= (and b!7642454 ((_ is Concat!29294) (reg!20778 r!14126))) b!7642984))

(assert (= (and b!7642454 ((_ is Star!20449) (reg!20778 r!14126))) b!7642985))

(assert (= (and b!7642454 ((_ is Union!20449) (reg!20778 r!14126))) b!7642986))

(declare-fun b!7642991 () Bool)

(declare-fun e!4542893 () Bool)

(declare-fun tp!2231031 () Bool)

(assert (=> b!7642991 (= e!4542893 (and tp_is_empty!51253 tp!2231031))))

(assert (=> b!7642458 (= tp!2230961 e!4542893)))

(assert (= (and b!7642458 ((_ is Cons!73176) (t!388035 s!9605))) b!7642991))

(declare-fun b!7642993 () Bool)

(declare-fun e!4542894 () Bool)

(declare-fun tp!2231033 () Bool)

(declare-fun tp!2231032 () Bool)

(assert (=> b!7642993 (= e!4542894 (and tp!2231033 tp!2231032))))

(declare-fun b!7642995 () Bool)

(declare-fun tp!2231036 () Bool)

(declare-fun tp!2231034 () Bool)

(assert (=> b!7642995 (= e!4542894 (and tp!2231036 tp!2231034))))

(declare-fun b!7642994 () Bool)

(declare-fun tp!2231035 () Bool)

(assert (=> b!7642994 (= e!4542894 tp!2231035)))

(declare-fun b!7642992 () Bool)

(assert (=> b!7642992 (= e!4542894 tp_is_empty!51253)))

(assert (=> b!7642462 (= tp!2230963 e!4542894)))

(assert (= (and b!7642462 ((_ is ElementMatch!20449) (regOne!41411 r!14126))) b!7642992))

(assert (= (and b!7642462 ((_ is Concat!29294) (regOne!41411 r!14126))) b!7642993))

(assert (= (and b!7642462 ((_ is Star!20449) (regOne!41411 r!14126))) b!7642994))

(assert (= (and b!7642462 ((_ is Union!20449) (regOne!41411 r!14126))) b!7642995))

(declare-fun b!7642997 () Bool)

(declare-fun e!4542895 () Bool)

(declare-fun tp!2231038 () Bool)

(declare-fun tp!2231037 () Bool)

(assert (=> b!7642997 (= e!4542895 (and tp!2231038 tp!2231037))))

(declare-fun b!7642999 () Bool)

(declare-fun tp!2231041 () Bool)

(declare-fun tp!2231039 () Bool)

(assert (=> b!7642999 (= e!4542895 (and tp!2231041 tp!2231039))))

(declare-fun b!7642998 () Bool)

(declare-fun tp!2231040 () Bool)

(assert (=> b!7642998 (= e!4542895 tp!2231040)))

(declare-fun b!7642996 () Bool)

(assert (=> b!7642996 (= e!4542895 tp_is_empty!51253)))

(assert (=> b!7642462 (= tp!2230964 e!4542895)))

(assert (= (and b!7642462 ((_ is ElementMatch!20449) (regTwo!41411 r!14126))) b!7642996))

(assert (= (and b!7642462 ((_ is Concat!29294) (regTwo!41411 r!14126))) b!7642997))

(assert (= (and b!7642462 ((_ is Star!20449) (regTwo!41411 r!14126))) b!7642998))

(assert (= (and b!7642462 ((_ is Union!20449) (regTwo!41411 r!14126))) b!7642999))

(check-sat (not b!7642984) (not bm!701550) (not b!7642959) (not b!7642952) (not b!7642699) (not b!7642981) tp_is_empty!51253 (not bm!701515) (not b!7642685) (not bm!701551) (not bm!701541) (not b!7642925) (not b!7642982) (not bm!701603) (not b!7642955) (not b!7642923) (not d!2325308) (not b!7642997) (not b!7642995) (not bm!701602) (not b!7642986) (not b!7642980) (not b!7642994) (not b!7642964) (not bm!701553) (not bm!701607) (not bm!701543) (not b!7642700) (not b!7642702) (not b!7642998) (not d!2325286) (not bm!701516) (not b!7642953) (not b!7642978) (not bm!701549) (not b!7642977) (not bm!701606) (not bm!701557) (not b!7642697) (not bm!701546) (not b!7642976) (not b!7642711) (not b!7642709) (not b!7642686) (not bm!701558) (not b!7642942) (not b!7642991) (not b!7642706) (not d!2325312) (not bm!701605) (not bm!701542) (not b!7642655) (not b!7642999) (not b!7642695) (not d!2325288) (not d!2325314) (not b!7642510) (not b!7642688) (not b!7642962) (not b!7642993) (not b!7642692) (not b!7642941) (not b!7642940) (not bm!701544) (not b!7642985) (not bm!701548))
(check-sat)
