; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!743350 () Bool)

(assert start!743350)

(declare-fun b!7854573 () Bool)

(declare-fun e!4642544 () Bool)

(declare-fun tp!2326769 () Bool)

(assert (=> b!7854573 (= e!4642544 tp!2326769)))

(declare-fun b!7854574 () Bool)

(declare-fun res!3123029 () Bool)

(declare-fun e!4642543 () Bool)

(assert (=> b!7854574 (=> (not res!3123029) (not e!4642543))))

(declare-datatypes ((C!42516 0))(
  ( (C!42517 (val!31720 Int)) )
))
(declare-datatypes ((Regex!21095 0))(
  ( (ElementMatch!21095 (c!1443559 C!42516)) (Concat!29940 (regOne!42702 Regex!21095) (regTwo!42702 Regex!21095)) (EmptyExpr!21095) (Star!21095 (reg!21424 Regex!21095)) (EmptyLang!21095) (Union!21095 (regOne!42703 Regex!21095) (regTwo!42703 Regex!21095)) )
))
(declare-fun r2!6165 () Regex!21095)

(declare-fun validRegex!11505 (Regex!21095) Bool)

(assert (=> b!7854574 (= res!3123029 (validRegex!11505 r2!6165))))

(declare-fun b!7854575 () Bool)

(declare-fun e!4642546 () Bool)

(declare-fun e!4642547 () Bool)

(assert (=> b!7854575 (= e!4642546 e!4642547)))

(declare-fun res!3123030 () Bool)

(assert (=> b!7854575 (=> res!3123030 e!4642547)))

(declare-fun lt!2679874 () Regex!21095)

(declare-fun r1!6227 () Regex!21095)

(declare-datatypes ((List!73954 0))(
  ( (Nil!73830) (Cons!73830 (h!80278 C!42516) (t!388689 List!73954)) )
))
(declare-fun s1!4084 () List!73954)

(declare-fun lt!2679875 () Regex!21095)

(declare-fun derivativeStep!6330 (Regex!21095 C!42516) Regex!21095)

(assert (=> b!7854575 (= res!3123030 (not (= (derivativeStep!6330 (Concat!29940 r1!6227 r2!6165) (h!80278 s1!4084)) (Union!21095 lt!2679875 lt!2679874))))))

(assert (=> b!7854575 (= lt!2679874 (derivativeStep!6330 r2!6165 (h!80278 s1!4084)))))

(declare-fun b!7854576 () Bool)

(declare-fun tp!2326771 () Bool)

(declare-fun tp!2326772 () Bool)

(assert (=> b!7854576 (= e!4642544 (and tp!2326771 tp!2326772))))

(declare-fun b!7854578 () Bool)

(declare-fun e!4642549 () Bool)

(declare-fun tp_is_empty!52589 () Bool)

(declare-fun tp!2326762 () Bool)

(assert (=> b!7854578 (= e!4642549 (and tp_is_empty!52589 tp!2326762))))

(declare-fun b!7854579 () Bool)

(declare-fun e!4642542 () Bool)

(assert (=> b!7854579 (= e!4642542 tp_is_empty!52589)))

(declare-fun b!7854580 () Bool)

(declare-fun res!3123031 () Bool)

(assert (=> b!7854580 (=> (not res!3123031) (not e!4642543))))

(get-info :version)

(assert (=> b!7854580 (= res!3123031 ((_ is Cons!73830) s1!4084))))

(declare-fun b!7854581 () Bool)

(declare-fun e!4642548 () Bool)

(assert (=> b!7854581 (= e!4642548 (validRegex!11505 lt!2679874))))

(declare-fun b!7854582 () Bool)

(declare-fun res!3123032 () Bool)

(assert (=> b!7854582 (=> (not res!3123032) (not e!4642543))))

(declare-fun matchR!10531 (Regex!21095 List!73954) Bool)

(assert (=> b!7854582 (= res!3123032 (matchR!10531 r1!6227 s1!4084))))

(declare-fun b!7854583 () Bool)

(assert (=> b!7854583 (= e!4642547 e!4642548)))

(declare-fun res!3123027 () Bool)

(assert (=> b!7854583 (=> (not res!3123027) (not e!4642548))))

(assert (=> b!7854583 (= res!3123027 (validRegex!11505 lt!2679875))))

(declare-fun b!7854584 () Bool)

(assert (=> b!7854584 (= e!4642544 tp_is_empty!52589)))

(declare-fun b!7854585 () Bool)

(declare-fun e!4642545 () Bool)

(declare-fun tp!2326761 () Bool)

(assert (=> b!7854585 (= e!4642545 (and tp_is_empty!52589 tp!2326761))))

(declare-fun b!7854586 () Bool)

(assert (=> b!7854586 (= e!4642543 (not e!4642546))))

(declare-fun res!3123025 () Bool)

(assert (=> b!7854586 (=> res!3123025 e!4642546)))

(declare-fun nullable!9367 (Regex!21095) Bool)

(assert (=> b!7854586 (= res!3123025 (not (nullable!9367 r1!6227)))))

(declare-fun s2!3706 () List!73954)

(declare-fun ++!18095 (List!73954 List!73954) List!73954)

(assert (=> b!7854586 (matchR!10531 lt!2679875 (++!18095 (t!388689 s1!4084) s2!3706))))

(declare-fun lt!2679877 () Regex!21095)

(assert (=> b!7854586 (= lt!2679875 (Concat!29940 lt!2679877 r2!6165))))

(declare-datatypes ((Unit!168916 0))(
  ( (Unit!168917) )
))
(declare-fun lt!2679876 () Unit!168916)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!454 (Regex!21095 Regex!21095 List!73954 List!73954) Unit!168916)

(assert (=> b!7854586 (= lt!2679876 (lemmaTwoRegexMatchThenConcatMatchesConcatString!454 lt!2679877 r2!6165 (t!388689 s1!4084) s2!3706))))

(assert (=> b!7854586 (= lt!2679877 (derivativeStep!6330 r1!6227 (h!80278 s1!4084)))))

(declare-fun b!7854577 () Bool)

(declare-fun res!3123026 () Bool)

(assert (=> b!7854577 (=> (not res!3123026) (not e!4642543))))

(assert (=> b!7854577 (= res!3123026 (matchR!10531 r2!6165 s2!3706))))

(declare-fun res!3123028 () Bool)

(assert (=> start!743350 (=> (not res!3123028) (not e!4642543))))

(assert (=> start!743350 (= res!3123028 (validRegex!11505 r1!6227))))

(assert (=> start!743350 e!4642543))

(assert (=> start!743350 e!4642544))

(assert (=> start!743350 e!4642542))

(assert (=> start!743350 e!4642545))

(assert (=> start!743350 e!4642549))

(declare-fun b!7854587 () Bool)

(declare-fun tp!2326765 () Bool)

(assert (=> b!7854587 (= e!4642542 tp!2326765)))

(declare-fun b!7854588 () Bool)

(declare-fun tp!2326763 () Bool)

(declare-fun tp!2326764 () Bool)

(assert (=> b!7854588 (= e!4642542 (and tp!2326763 tp!2326764))))

(declare-fun b!7854589 () Bool)

(declare-fun tp!2326767 () Bool)

(declare-fun tp!2326766 () Bool)

(assert (=> b!7854589 (= e!4642544 (and tp!2326767 tp!2326766))))

(declare-fun b!7854590 () Bool)

(declare-fun tp!2326770 () Bool)

(declare-fun tp!2326768 () Bool)

(assert (=> b!7854590 (= e!4642542 (and tp!2326770 tp!2326768))))

(assert (= (and start!743350 res!3123028) b!7854574))

(assert (= (and b!7854574 res!3123029) b!7854582))

(assert (= (and b!7854582 res!3123032) b!7854577))

(assert (= (and b!7854577 res!3123026) b!7854580))

(assert (= (and b!7854580 res!3123031) b!7854586))

(assert (= (and b!7854586 (not res!3123025)) b!7854575))

(assert (= (and b!7854575 (not res!3123030)) b!7854583))

(assert (= (and b!7854583 res!3123027) b!7854581))

(assert (= (and start!743350 ((_ is ElementMatch!21095) r1!6227)) b!7854584))

(assert (= (and start!743350 ((_ is Concat!29940) r1!6227)) b!7854589))

(assert (= (and start!743350 ((_ is Star!21095) r1!6227)) b!7854573))

(assert (= (and start!743350 ((_ is Union!21095) r1!6227)) b!7854576))

(assert (= (and start!743350 ((_ is ElementMatch!21095) r2!6165)) b!7854579))

(assert (= (and start!743350 ((_ is Concat!29940) r2!6165)) b!7854590))

(assert (= (and start!743350 ((_ is Star!21095) r2!6165)) b!7854587))

(assert (= (and start!743350 ((_ is Union!21095) r2!6165)) b!7854588))

(assert (= (and start!743350 ((_ is Cons!73830) s1!4084)) b!7854585))

(assert (= (and start!743350 ((_ is Cons!73830) s2!3706)) b!7854578))

(declare-fun m!8259606 () Bool)

(assert (=> b!7854586 m!8259606))

(declare-fun m!8259608 () Bool)

(assert (=> b!7854586 m!8259608))

(declare-fun m!8259610 () Bool)

(assert (=> b!7854586 m!8259610))

(declare-fun m!8259612 () Bool)

(assert (=> b!7854586 m!8259612))

(assert (=> b!7854586 m!8259612))

(declare-fun m!8259614 () Bool)

(assert (=> b!7854586 m!8259614))

(declare-fun m!8259616 () Bool)

(assert (=> b!7854577 m!8259616))

(declare-fun m!8259618 () Bool)

(assert (=> b!7854575 m!8259618))

(declare-fun m!8259620 () Bool)

(assert (=> b!7854575 m!8259620))

(declare-fun m!8259622 () Bool)

(assert (=> b!7854581 m!8259622))

(declare-fun m!8259624 () Bool)

(assert (=> b!7854582 m!8259624))

(declare-fun m!8259626 () Bool)

(assert (=> start!743350 m!8259626))

(declare-fun m!8259628 () Bool)

(assert (=> b!7854574 m!8259628))

(declare-fun m!8259630 () Bool)

(assert (=> b!7854583 m!8259630))

(check-sat tp_is_empty!52589 (not b!7854578) (not b!7854576) (not b!7854587) (not b!7854575) (not b!7854583) (not b!7854590) (not b!7854589) (not b!7854573) (not b!7854577) (not b!7854574) (not b!7854581) (not b!7854585) (not b!7854586) (not start!743350) (not b!7854582) (not b!7854588))
(check-sat)
(get-model)

(declare-fun b!7854627 () Bool)

(declare-fun res!3123054 () Bool)

(declare-fun e!4642580 () Bool)

(assert (=> b!7854627 (=> res!3123054 e!4642580)))

(assert (=> b!7854627 (= res!3123054 (not ((_ is Concat!29940) r2!6165)))))

(declare-fun e!4642582 () Bool)

(assert (=> b!7854627 (= e!4642582 e!4642580)))

(declare-fun d!2353706 () Bool)

(declare-fun res!3123056 () Bool)

(declare-fun e!4642583 () Bool)

(assert (=> d!2353706 (=> res!3123056 e!4642583)))

(assert (=> d!2353706 (= res!3123056 ((_ is ElementMatch!21095) r2!6165))))

(assert (=> d!2353706 (= (validRegex!11505 r2!6165) e!4642583)))

(declare-fun b!7854628 () Bool)

(declare-fun e!4642581 () Bool)

(assert (=> b!7854628 (= e!4642581 e!4642582)))

(declare-fun c!1443568 () Bool)

(assert (=> b!7854628 (= c!1443568 ((_ is Union!21095) r2!6165))))

(declare-fun b!7854629 () Bool)

(declare-fun res!3123057 () Bool)

(declare-fun e!4642579 () Bool)

(assert (=> b!7854629 (=> (not res!3123057) (not e!4642579))))

(declare-fun call!728051 () Bool)

(assert (=> b!7854629 (= res!3123057 call!728051)))

(assert (=> b!7854629 (= e!4642582 e!4642579)))

(declare-fun bm!728046 () Bool)

(declare-fun c!1443569 () Bool)

(declare-fun call!728053 () Bool)

(assert (=> bm!728046 (= call!728053 (validRegex!11505 (ite c!1443569 (reg!21424 r2!6165) (ite c!1443568 (regTwo!42703 r2!6165) (regOne!42702 r2!6165)))))))

(declare-fun b!7854630 () Bool)

(declare-fun e!4642578 () Bool)

(assert (=> b!7854630 (= e!4642580 e!4642578)))

(declare-fun res!3123053 () Bool)

(assert (=> b!7854630 (=> (not res!3123053) (not e!4642578))))

(declare-fun call!728052 () Bool)

(assert (=> b!7854630 (= res!3123053 call!728052)))

(declare-fun b!7854631 () Bool)

(assert (=> b!7854631 (= e!4642578 call!728051)))

(declare-fun b!7854632 () Bool)

(declare-fun e!4642584 () Bool)

(assert (=> b!7854632 (= e!4642584 call!728053)))

(declare-fun b!7854633 () Bool)

(assert (=> b!7854633 (= e!4642583 e!4642581)))

(assert (=> b!7854633 (= c!1443569 ((_ is Star!21095) r2!6165))))

(declare-fun bm!728047 () Bool)

(assert (=> bm!728047 (= call!728052 call!728053)))

(declare-fun b!7854634 () Bool)

(assert (=> b!7854634 (= e!4642579 call!728052)))

(declare-fun bm!728048 () Bool)

(assert (=> bm!728048 (= call!728051 (validRegex!11505 (ite c!1443568 (regOne!42703 r2!6165) (regTwo!42702 r2!6165))))))

(declare-fun b!7854635 () Bool)

(assert (=> b!7854635 (= e!4642581 e!4642584)))

(declare-fun res!3123055 () Bool)

(assert (=> b!7854635 (= res!3123055 (not (nullable!9367 (reg!21424 r2!6165))))))

(assert (=> b!7854635 (=> (not res!3123055) (not e!4642584))))

(assert (= (and d!2353706 (not res!3123056)) b!7854633))

(assert (= (and b!7854633 c!1443569) b!7854635))

(assert (= (and b!7854633 (not c!1443569)) b!7854628))

(assert (= (and b!7854635 res!3123055) b!7854632))

(assert (= (and b!7854628 c!1443568) b!7854629))

(assert (= (and b!7854628 (not c!1443568)) b!7854627))

(assert (= (and b!7854629 res!3123057) b!7854634))

(assert (= (and b!7854627 (not res!3123054)) b!7854630))

(assert (= (and b!7854630 res!3123053) b!7854631))

(assert (= (or b!7854629 b!7854631) bm!728048))

(assert (= (or b!7854634 b!7854630) bm!728047))

(assert (= (or b!7854632 bm!728047) bm!728046))

(declare-fun m!8259632 () Bool)

(assert (=> bm!728046 m!8259632))

(declare-fun m!8259634 () Bool)

(assert (=> bm!728048 m!8259634))

(declare-fun m!8259636 () Bool)

(assert (=> b!7854635 m!8259636))

(assert (=> b!7854574 d!2353706))

(declare-fun b!7854693 () Bool)

(declare-fun c!1443590 () Bool)

(assert (=> b!7854693 (= c!1443590 ((_ is Union!21095) (Concat!29940 r1!6227 r2!6165)))))

(declare-fun e!4642618 () Regex!21095)

(declare-fun e!4642616 () Regex!21095)

(assert (=> b!7854693 (= e!4642618 e!4642616)))

(declare-fun call!728068 () Regex!21095)

(declare-fun e!4642620 () Regex!21095)

(declare-fun b!7854694 () Bool)

(assert (=> b!7854694 (= e!4642620 (Union!21095 (Concat!29940 call!728068 (regTwo!42702 (Concat!29940 r1!6227 r2!6165))) EmptyLang!21095))))

(declare-fun b!7854695 () Bool)

(assert (=> b!7854695 (= e!4642618 (ite (= (h!80278 s1!4084) (c!1443559 (Concat!29940 r1!6227 r2!6165))) EmptyExpr!21095 EmptyLang!21095))))

(declare-fun b!7854696 () Bool)

(declare-fun call!728070 () Regex!21095)

(declare-fun e!4642617 () Regex!21095)

(assert (=> b!7854696 (= e!4642617 (Concat!29940 call!728070 (Concat!29940 r1!6227 r2!6165)))))

(declare-fun bm!728062 () Bool)

(declare-fun call!728067 () Regex!21095)

(assert (=> bm!728062 (= call!728068 call!728067)))

(declare-fun b!7854697 () Bool)

(declare-fun e!4642619 () Regex!21095)

(assert (=> b!7854697 (= e!4642619 e!4642618)))

(declare-fun c!1443589 () Bool)

(assert (=> b!7854697 (= c!1443589 ((_ is ElementMatch!21095) (Concat!29940 r1!6227 r2!6165)))))

(declare-fun b!7854698 () Bool)

(declare-fun c!1443592 () Bool)

(assert (=> b!7854698 (= c!1443592 (nullable!9367 (regOne!42702 (Concat!29940 r1!6227 r2!6165))))))

(assert (=> b!7854698 (= e!4642617 e!4642620)))

(declare-fun b!7854699 () Bool)

(declare-fun call!728069 () Regex!21095)

(assert (=> b!7854699 (= e!4642616 (Union!21095 call!728069 call!728067))))

(declare-fun d!2353710 () Bool)

(declare-fun lt!2679882 () Regex!21095)

(assert (=> d!2353710 (validRegex!11505 lt!2679882)))

(assert (=> d!2353710 (= lt!2679882 e!4642619)))

(declare-fun c!1443591 () Bool)

(assert (=> d!2353710 (= c!1443591 (or ((_ is EmptyExpr!21095) (Concat!29940 r1!6227 r2!6165)) ((_ is EmptyLang!21095) (Concat!29940 r1!6227 r2!6165))))))

(assert (=> d!2353710 (validRegex!11505 (Concat!29940 r1!6227 r2!6165))))

(assert (=> d!2353710 (= (derivativeStep!6330 (Concat!29940 r1!6227 r2!6165) (h!80278 s1!4084)) lt!2679882)))

(declare-fun c!1443588 () Bool)

(declare-fun bm!728063 () Bool)

(assert (=> bm!728063 (= call!728069 (derivativeStep!6330 (ite c!1443590 (regOne!42703 (Concat!29940 r1!6227 r2!6165)) (ite c!1443588 (reg!21424 (Concat!29940 r1!6227 r2!6165)) (regOne!42702 (Concat!29940 r1!6227 r2!6165)))) (h!80278 s1!4084)))))

(declare-fun b!7854700 () Bool)

(assert (=> b!7854700 (= e!4642619 EmptyLang!21095)))

(declare-fun bm!728064 () Bool)

(assert (=> bm!728064 (= call!728067 (derivativeStep!6330 (ite c!1443590 (regTwo!42703 (Concat!29940 r1!6227 r2!6165)) (ite c!1443592 (regTwo!42702 (Concat!29940 r1!6227 r2!6165)) (regOne!42702 (Concat!29940 r1!6227 r2!6165)))) (h!80278 s1!4084)))))

(declare-fun b!7854701 () Bool)

(assert (=> b!7854701 (= e!4642616 e!4642617)))

(assert (=> b!7854701 (= c!1443588 ((_ is Star!21095) (Concat!29940 r1!6227 r2!6165)))))

(declare-fun b!7854702 () Bool)

(assert (=> b!7854702 (= e!4642620 (Union!21095 (Concat!29940 call!728070 (regTwo!42702 (Concat!29940 r1!6227 r2!6165))) call!728068))))

(declare-fun bm!728065 () Bool)

(assert (=> bm!728065 (= call!728070 call!728069)))

(assert (= (and d!2353710 c!1443591) b!7854700))

(assert (= (and d!2353710 (not c!1443591)) b!7854697))

(assert (= (and b!7854697 c!1443589) b!7854695))

(assert (= (and b!7854697 (not c!1443589)) b!7854693))

(assert (= (and b!7854693 c!1443590) b!7854699))

(assert (= (and b!7854693 (not c!1443590)) b!7854701))

(assert (= (and b!7854701 c!1443588) b!7854696))

(assert (= (and b!7854701 (not c!1443588)) b!7854698))

(assert (= (and b!7854698 c!1443592) b!7854702))

(assert (= (and b!7854698 (not c!1443592)) b!7854694))

(assert (= (or b!7854702 b!7854694) bm!728062))

(assert (= (or b!7854696 b!7854702) bm!728065))

(assert (= (or b!7854699 bm!728062) bm!728064))

(assert (= (or b!7854699 bm!728065) bm!728063))

(declare-fun m!8259644 () Bool)

(assert (=> b!7854698 m!8259644))

(declare-fun m!8259646 () Bool)

(assert (=> d!2353710 m!8259646))

(declare-fun m!8259648 () Bool)

(assert (=> d!2353710 m!8259648))

(declare-fun m!8259650 () Bool)

(assert (=> bm!728063 m!8259650))

(declare-fun m!8259652 () Bool)

(assert (=> bm!728064 m!8259652))

(assert (=> b!7854575 d!2353710))

(declare-fun b!7854703 () Bool)

(declare-fun c!1443595 () Bool)

(assert (=> b!7854703 (= c!1443595 ((_ is Union!21095) r2!6165))))

(declare-fun e!4642623 () Regex!21095)

(declare-fun e!4642621 () Regex!21095)

(assert (=> b!7854703 (= e!4642623 e!4642621)))

(declare-fun b!7854704 () Bool)

(declare-fun e!4642625 () Regex!21095)

(declare-fun call!728072 () Regex!21095)

(assert (=> b!7854704 (= e!4642625 (Union!21095 (Concat!29940 call!728072 (regTwo!42702 r2!6165)) EmptyLang!21095))))

(declare-fun b!7854705 () Bool)

(assert (=> b!7854705 (= e!4642623 (ite (= (h!80278 s1!4084) (c!1443559 r2!6165)) EmptyExpr!21095 EmptyLang!21095))))

(declare-fun b!7854706 () Bool)

(declare-fun e!4642622 () Regex!21095)

(declare-fun call!728074 () Regex!21095)

(assert (=> b!7854706 (= e!4642622 (Concat!29940 call!728074 r2!6165))))

(declare-fun bm!728066 () Bool)

(declare-fun call!728071 () Regex!21095)

(assert (=> bm!728066 (= call!728072 call!728071)))

(declare-fun b!7854707 () Bool)

(declare-fun e!4642624 () Regex!21095)

(assert (=> b!7854707 (= e!4642624 e!4642623)))

(declare-fun c!1443594 () Bool)

(assert (=> b!7854707 (= c!1443594 ((_ is ElementMatch!21095) r2!6165))))

(declare-fun b!7854708 () Bool)

(declare-fun c!1443597 () Bool)

(assert (=> b!7854708 (= c!1443597 (nullable!9367 (regOne!42702 r2!6165)))))

(assert (=> b!7854708 (= e!4642622 e!4642625)))

(declare-fun b!7854709 () Bool)

(declare-fun call!728073 () Regex!21095)

(assert (=> b!7854709 (= e!4642621 (Union!21095 call!728073 call!728071))))

(declare-fun d!2353714 () Bool)

(declare-fun lt!2679883 () Regex!21095)

(assert (=> d!2353714 (validRegex!11505 lt!2679883)))

(assert (=> d!2353714 (= lt!2679883 e!4642624)))

(declare-fun c!1443596 () Bool)

(assert (=> d!2353714 (= c!1443596 (or ((_ is EmptyExpr!21095) r2!6165) ((_ is EmptyLang!21095) r2!6165)))))

(assert (=> d!2353714 (validRegex!11505 r2!6165)))

(assert (=> d!2353714 (= (derivativeStep!6330 r2!6165 (h!80278 s1!4084)) lt!2679883)))

(declare-fun c!1443593 () Bool)

(declare-fun bm!728067 () Bool)

(assert (=> bm!728067 (= call!728073 (derivativeStep!6330 (ite c!1443595 (regOne!42703 r2!6165) (ite c!1443593 (reg!21424 r2!6165) (regOne!42702 r2!6165))) (h!80278 s1!4084)))))

(declare-fun b!7854710 () Bool)

(assert (=> b!7854710 (= e!4642624 EmptyLang!21095)))

(declare-fun bm!728068 () Bool)

(assert (=> bm!728068 (= call!728071 (derivativeStep!6330 (ite c!1443595 (regTwo!42703 r2!6165) (ite c!1443597 (regTwo!42702 r2!6165) (regOne!42702 r2!6165))) (h!80278 s1!4084)))))

(declare-fun b!7854711 () Bool)

(assert (=> b!7854711 (= e!4642621 e!4642622)))

(assert (=> b!7854711 (= c!1443593 ((_ is Star!21095) r2!6165))))

(declare-fun b!7854712 () Bool)

(assert (=> b!7854712 (= e!4642625 (Union!21095 (Concat!29940 call!728074 (regTwo!42702 r2!6165)) call!728072))))

(declare-fun bm!728069 () Bool)

(assert (=> bm!728069 (= call!728074 call!728073)))

(assert (= (and d!2353714 c!1443596) b!7854710))

(assert (= (and d!2353714 (not c!1443596)) b!7854707))

(assert (= (and b!7854707 c!1443594) b!7854705))

(assert (= (and b!7854707 (not c!1443594)) b!7854703))

(assert (= (and b!7854703 c!1443595) b!7854709))

(assert (= (and b!7854703 (not c!1443595)) b!7854711))

(assert (= (and b!7854711 c!1443593) b!7854706))

(assert (= (and b!7854711 (not c!1443593)) b!7854708))

(assert (= (and b!7854708 c!1443597) b!7854712))

(assert (= (and b!7854708 (not c!1443597)) b!7854704))

(assert (= (or b!7854712 b!7854704) bm!728066))

(assert (= (or b!7854706 b!7854712) bm!728069))

(assert (= (or b!7854709 bm!728066) bm!728068))

(assert (= (or b!7854709 bm!728069) bm!728067))

(declare-fun m!8259654 () Bool)

(assert (=> b!7854708 m!8259654))

(declare-fun m!8259656 () Bool)

(assert (=> d!2353714 m!8259656))

(assert (=> d!2353714 m!8259628))

(declare-fun m!8259658 () Bool)

(assert (=> bm!728067 m!8259658))

(declare-fun m!8259660 () Bool)

(assert (=> bm!728068 m!8259660))

(assert (=> b!7854575 d!2353714))

(declare-fun e!4642668 () Bool)

(declare-fun b!7854789 () Bool)

(declare-fun head!16052 (List!73954) C!42516)

(assert (=> b!7854789 (= e!4642668 (not (= (head!16052 (++!18095 (t!388689 s1!4084) s2!3706)) (c!1443559 lt!2679875))))))

(declare-fun b!7854790 () Bool)

(declare-fun e!4642665 () Bool)

(assert (=> b!7854790 (= e!4642665 e!4642668)))

(declare-fun res!3123112 () Bool)

(assert (=> b!7854790 (=> res!3123112 e!4642668)))

(declare-fun call!728087 () Bool)

(assert (=> b!7854790 (= res!3123112 call!728087)))

(declare-fun b!7854791 () Bool)

(declare-fun res!3123114 () Bool)

(declare-fun e!4642670 () Bool)

(assert (=> b!7854791 (=> res!3123114 e!4642670)))

(declare-fun e!4642669 () Bool)

(assert (=> b!7854791 (= res!3123114 e!4642669)))

(declare-fun res!3123113 () Bool)

(assert (=> b!7854791 (=> (not res!3123113) (not e!4642669))))

(declare-fun lt!2679890 () Bool)

(assert (=> b!7854791 (= res!3123113 lt!2679890)))

(declare-fun b!7854792 () Bool)

(declare-fun e!4642667 () Bool)

(declare-fun tail!15595 (List!73954) List!73954)

(assert (=> b!7854792 (= e!4642667 (matchR!10531 (derivativeStep!6330 lt!2679875 (head!16052 (++!18095 (t!388689 s1!4084) s2!3706))) (tail!15595 (++!18095 (t!388689 s1!4084) s2!3706))))))

(declare-fun d!2353716 () Bool)

(declare-fun e!4642666 () Bool)

(assert (=> d!2353716 e!4642666))

(declare-fun c!1443621 () Bool)

(assert (=> d!2353716 (= c!1443621 ((_ is EmptyExpr!21095) lt!2679875))))

(assert (=> d!2353716 (= lt!2679890 e!4642667)))

(declare-fun c!1443622 () Bool)

(declare-fun isEmpty!42341 (List!73954) Bool)

(assert (=> d!2353716 (= c!1443622 (isEmpty!42341 (++!18095 (t!388689 s1!4084) s2!3706)))))

(assert (=> d!2353716 (validRegex!11505 lt!2679875)))

(assert (=> d!2353716 (= (matchR!10531 lt!2679875 (++!18095 (t!388689 s1!4084) s2!3706)) lt!2679890)))

(declare-fun b!7854793 () Bool)

(declare-fun e!4642664 () Bool)

(assert (=> b!7854793 (= e!4642664 (not lt!2679890))))

(declare-fun b!7854794 () Bool)

(declare-fun res!3123117 () Bool)

(assert (=> b!7854794 (=> res!3123117 e!4642670)))

(assert (=> b!7854794 (= res!3123117 (not ((_ is ElementMatch!21095) lt!2679875)))))

(assert (=> b!7854794 (= e!4642664 e!4642670)))

(declare-fun bm!728082 () Bool)

(assert (=> bm!728082 (= call!728087 (isEmpty!42341 (++!18095 (t!388689 s1!4084) s2!3706)))))

(declare-fun b!7854795 () Bool)

(declare-fun res!3123118 () Bool)

(assert (=> b!7854795 (=> (not res!3123118) (not e!4642669))))

(assert (=> b!7854795 (= res!3123118 (not call!728087))))

(declare-fun b!7854796 () Bool)

(declare-fun res!3123111 () Bool)

(assert (=> b!7854796 (=> res!3123111 e!4642668)))

(assert (=> b!7854796 (= res!3123111 (not (isEmpty!42341 (tail!15595 (++!18095 (t!388689 s1!4084) s2!3706)))))))

(declare-fun b!7854797 () Bool)

(assert (=> b!7854797 (= e!4642667 (nullable!9367 lt!2679875))))

(declare-fun b!7854798 () Bool)

(assert (=> b!7854798 (= e!4642666 e!4642664)))

(declare-fun c!1443620 () Bool)

(assert (=> b!7854798 (= c!1443620 ((_ is EmptyLang!21095) lt!2679875))))

(declare-fun b!7854799 () Bool)

(assert (=> b!7854799 (= e!4642666 (= lt!2679890 call!728087))))

(declare-fun b!7854800 () Bool)

(assert (=> b!7854800 (= e!4642670 e!4642665)))

(declare-fun res!3123116 () Bool)

(assert (=> b!7854800 (=> (not res!3123116) (not e!4642665))))

(assert (=> b!7854800 (= res!3123116 (not lt!2679890))))

(declare-fun b!7854801 () Bool)

(declare-fun res!3123115 () Bool)

(assert (=> b!7854801 (=> (not res!3123115) (not e!4642669))))

(assert (=> b!7854801 (= res!3123115 (isEmpty!42341 (tail!15595 (++!18095 (t!388689 s1!4084) s2!3706))))))

(declare-fun b!7854802 () Bool)

(assert (=> b!7854802 (= e!4642669 (= (head!16052 (++!18095 (t!388689 s1!4084) s2!3706)) (c!1443559 lt!2679875)))))

(assert (= (and d!2353716 c!1443622) b!7854797))

(assert (= (and d!2353716 (not c!1443622)) b!7854792))

(assert (= (and d!2353716 c!1443621) b!7854799))

(assert (= (and d!2353716 (not c!1443621)) b!7854798))

(assert (= (and b!7854798 c!1443620) b!7854793))

(assert (= (and b!7854798 (not c!1443620)) b!7854794))

(assert (= (and b!7854794 (not res!3123117)) b!7854791))

(assert (= (and b!7854791 res!3123113) b!7854795))

(assert (= (and b!7854795 res!3123118) b!7854801))

(assert (= (and b!7854801 res!3123115) b!7854802))

(assert (= (and b!7854791 (not res!3123114)) b!7854800))

(assert (= (and b!7854800 res!3123116) b!7854790))

(assert (= (and b!7854790 (not res!3123112)) b!7854796))

(assert (= (and b!7854796 (not res!3123111)) b!7854789))

(assert (= (or b!7854799 b!7854790 b!7854795) bm!728082))

(assert (=> b!7854796 m!8259612))

(declare-fun m!8259688 () Bool)

(assert (=> b!7854796 m!8259688))

(assert (=> b!7854796 m!8259688))

(declare-fun m!8259690 () Bool)

(assert (=> b!7854796 m!8259690))

(assert (=> b!7854789 m!8259612))

(declare-fun m!8259692 () Bool)

(assert (=> b!7854789 m!8259692))

(declare-fun m!8259694 () Bool)

(assert (=> b!7854797 m!8259694))

(assert (=> b!7854802 m!8259612))

(assert (=> b!7854802 m!8259692))

(assert (=> d!2353716 m!8259612))

(declare-fun m!8259696 () Bool)

(assert (=> d!2353716 m!8259696))

(assert (=> d!2353716 m!8259630))

(assert (=> b!7854792 m!8259612))

(assert (=> b!7854792 m!8259692))

(assert (=> b!7854792 m!8259692))

(declare-fun m!8259698 () Bool)

(assert (=> b!7854792 m!8259698))

(assert (=> b!7854792 m!8259612))

(assert (=> b!7854792 m!8259688))

(assert (=> b!7854792 m!8259698))

(assert (=> b!7854792 m!8259688))

(declare-fun m!8259700 () Bool)

(assert (=> b!7854792 m!8259700))

(assert (=> b!7854801 m!8259612))

(assert (=> b!7854801 m!8259688))

(assert (=> b!7854801 m!8259688))

(assert (=> b!7854801 m!8259690))

(assert (=> bm!728082 m!8259612))

(assert (=> bm!728082 m!8259696))

(assert (=> b!7854586 d!2353716))

(declare-fun d!2353722 () Bool)

(assert (=> d!2353722 (matchR!10531 (Concat!29940 lt!2679877 r2!6165) (++!18095 (t!388689 s1!4084) s2!3706))))

(declare-fun lt!2679896 () Unit!168916)

(declare-fun choose!59655 (Regex!21095 Regex!21095 List!73954 List!73954) Unit!168916)

(assert (=> d!2353722 (= lt!2679896 (choose!59655 lt!2679877 r2!6165 (t!388689 s1!4084) s2!3706))))

(declare-fun e!4642711 () Bool)

(assert (=> d!2353722 e!4642711))

(declare-fun res!3123144 () Bool)

(assert (=> d!2353722 (=> (not res!3123144) (not e!4642711))))

(assert (=> d!2353722 (= res!3123144 (validRegex!11505 lt!2679877))))

(assert (=> d!2353722 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!454 lt!2679877 r2!6165 (t!388689 s1!4084) s2!3706) lt!2679896)))

(declare-fun b!7854866 () Bool)

(assert (=> b!7854866 (= e!4642711 (validRegex!11505 r2!6165))))

(assert (= (and d!2353722 res!3123144) b!7854866))

(assert (=> d!2353722 m!8259612))

(assert (=> d!2353722 m!8259612))

(declare-fun m!8259754 () Bool)

(assert (=> d!2353722 m!8259754))

(declare-fun m!8259756 () Bool)

(assert (=> d!2353722 m!8259756))

(declare-fun m!8259758 () Bool)

(assert (=> d!2353722 m!8259758))

(assert (=> b!7854866 m!8259628))

(assert (=> b!7854586 d!2353722))

(declare-fun d!2353738 () Bool)

(declare-fun nullableFct!3692 (Regex!21095) Bool)

(assert (=> d!2353738 (= (nullable!9367 r1!6227) (nullableFct!3692 r1!6227))))

(declare-fun bs!1967118 () Bool)

(assert (= bs!1967118 d!2353738))

(declare-fun m!8259768 () Bool)

(assert (=> bs!1967118 m!8259768))

(assert (=> b!7854586 d!2353738))

(declare-fun b!7854877 () Bool)

(declare-fun c!1443649 () Bool)

(assert (=> b!7854877 (= c!1443649 ((_ is Union!21095) r1!6227))))

(declare-fun e!4642719 () Regex!21095)

(declare-fun e!4642717 () Regex!21095)

(assert (=> b!7854877 (= e!4642719 e!4642717)))

(declare-fun b!7854878 () Bool)

(declare-fun e!4642721 () Regex!21095)

(declare-fun call!728111 () Regex!21095)

(assert (=> b!7854878 (= e!4642721 (Union!21095 (Concat!29940 call!728111 (regTwo!42702 r1!6227)) EmptyLang!21095))))

(declare-fun b!7854879 () Bool)

(assert (=> b!7854879 (= e!4642719 (ite (= (h!80278 s1!4084) (c!1443559 r1!6227)) EmptyExpr!21095 EmptyLang!21095))))

(declare-fun b!7854880 () Bool)

(declare-fun e!4642718 () Regex!21095)

(declare-fun call!728113 () Regex!21095)

(assert (=> b!7854880 (= e!4642718 (Concat!29940 call!728113 r1!6227))))

(declare-fun bm!728105 () Bool)

(declare-fun call!728110 () Regex!21095)

(assert (=> bm!728105 (= call!728111 call!728110)))

(declare-fun b!7854881 () Bool)

(declare-fun e!4642720 () Regex!21095)

(assert (=> b!7854881 (= e!4642720 e!4642719)))

(declare-fun c!1443648 () Bool)

(assert (=> b!7854881 (= c!1443648 ((_ is ElementMatch!21095) r1!6227))))

(declare-fun b!7854882 () Bool)

(declare-fun c!1443651 () Bool)

(assert (=> b!7854882 (= c!1443651 (nullable!9367 (regOne!42702 r1!6227)))))

(assert (=> b!7854882 (= e!4642718 e!4642721)))

(declare-fun b!7854883 () Bool)

(declare-fun call!728112 () Regex!21095)

(assert (=> b!7854883 (= e!4642717 (Union!21095 call!728112 call!728110))))

(declare-fun d!2353742 () Bool)

(declare-fun lt!2679898 () Regex!21095)

(assert (=> d!2353742 (validRegex!11505 lt!2679898)))

(assert (=> d!2353742 (= lt!2679898 e!4642720)))

(declare-fun c!1443650 () Bool)

(assert (=> d!2353742 (= c!1443650 (or ((_ is EmptyExpr!21095) r1!6227) ((_ is EmptyLang!21095) r1!6227)))))

(assert (=> d!2353742 (validRegex!11505 r1!6227)))

(assert (=> d!2353742 (= (derivativeStep!6330 r1!6227 (h!80278 s1!4084)) lt!2679898)))

(declare-fun bm!728106 () Bool)

(declare-fun c!1443647 () Bool)

(assert (=> bm!728106 (= call!728112 (derivativeStep!6330 (ite c!1443649 (regOne!42703 r1!6227) (ite c!1443647 (reg!21424 r1!6227) (regOne!42702 r1!6227))) (h!80278 s1!4084)))))

(declare-fun b!7854884 () Bool)

(assert (=> b!7854884 (= e!4642720 EmptyLang!21095)))

(declare-fun bm!728107 () Bool)

(assert (=> bm!728107 (= call!728110 (derivativeStep!6330 (ite c!1443649 (regTwo!42703 r1!6227) (ite c!1443651 (regTwo!42702 r1!6227) (regOne!42702 r1!6227))) (h!80278 s1!4084)))))

(declare-fun b!7854885 () Bool)

(assert (=> b!7854885 (= e!4642717 e!4642718)))

(assert (=> b!7854885 (= c!1443647 ((_ is Star!21095) r1!6227))))

(declare-fun b!7854886 () Bool)

(assert (=> b!7854886 (= e!4642721 (Union!21095 (Concat!29940 call!728113 (regTwo!42702 r1!6227)) call!728111))))

(declare-fun bm!728108 () Bool)

(assert (=> bm!728108 (= call!728113 call!728112)))

(assert (= (and d!2353742 c!1443650) b!7854884))

(assert (= (and d!2353742 (not c!1443650)) b!7854881))

(assert (= (and b!7854881 c!1443648) b!7854879))

(assert (= (and b!7854881 (not c!1443648)) b!7854877))

(assert (= (and b!7854877 c!1443649) b!7854883))

(assert (= (and b!7854877 (not c!1443649)) b!7854885))

(assert (= (and b!7854885 c!1443647) b!7854880))

(assert (= (and b!7854885 (not c!1443647)) b!7854882))

(assert (= (and b!7854882 c!1443651) b!7854886))

(assert (= (and b!7854882 (not c!1443651)) b!7854878))

(assert (= (or b!7854886 b!7854878) bm!728105))

(assert (= (or b!7854880 b!7854886) bm!728108))

(assert (= (or b!7854883 bm!728105) bm!728107))

(assert (= (or b!7854883 bm!728108) bm!728106))

(declare-fun m!8259770 () Bool)

(assert (=> b!7854882 m!8259770))

(declare-fun m!8259772 () Bool)

(assert (=> d!2353742 m!8259772))

(assert (=> d!2353742 m!8259626))

(declare-fun m!8259774 () Bool)

(assert (=> bm!728106 m!8259774))

(declare-fun m!8259776 () Bool)

(assert (=> bm!728107 m!8259776))

(assert (=> b!7854586 d!2353742))

(declare-fun b!7854903 () Bool)

(declare-fun e!4642730 () List!73954)

(assert (=> b!7854903 (= e!4642730 (Cons!73830 (h!80278 (t!388689 s1!4084)) (++!18095 (t!388689 (t!388689 s1!4084)) s2!3706)))))

(declare-fun d!2353744 () Bool)

(declare-fun e!4642729 () Bool)

(assert (=> d!2353744 e!4642729))

(declare-fun res!3123152 () Bool)

(assert (=> d!2353744 (=> (not res!3123152) (not e!4642729))))

(declare-fun lt!2679906 () List!73954)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15678 (List!73954) (InoxSet C!42516))

(assert (=> d!2353744 (= res!3123152 (= (content!15678 lt!2679906) ((_ map or) (content!15678 (t!388689 s1!4084)) (content!15678 s2!3706))))))

(assert (=> d!2353744 (= lt!2679906 e!4642730)))

(declare-fun c!1443654 () Bool)

(assert (=> d!2353744 (= c!1443654 ((_ is Nil!73830) (t!388689 s1!4084)))))

(assert (=> d!2353744 (= (++!18095 (t!388689 s1!4084) s2!3706) lt!2679906)))

(declare-fun b!7854904 () Bool)

(declare-fun res!3123153 () Bool)

(assert (=> b!7854904 (=> (not res!3123153) (not e!4642729))))

(declare-fun size!42831 (List!73954) Int)

(assert (=> b!7854904 (= res!3123153 (= (size!42831 lt!2679906) (+ (size!42831 (t!388689 s1!4084)) (size!42831 s2!3706))))))

(declare-fun b!7854905 () Bool)

(assert (=> b!7854905 (= e!4642729 (or (not (= s2!3706 Nil!73830)) (= lt!2679906 (t!388689 s1!4084))))))

(declare-fun b!7854902 () Bool)

(assert (=> b!7854902 (= e!4642730 s2!3706)))

(assert (= (and d!2353744 c!1443654) b!7854902))

(assert (= (and d!2353744 (not c!1443654)) b!7854903))

(assert (= (and d!2353744 res!3123152) b!7854904))

(assert (= (and b!7854904 res!3123153) b!7854905))

(declare-fun m!8259784 () Bool)

(assert (=> b!7854903 m!8259784))

(declare-fun m!8259786 () Bool)

(assert (=> d!2353744 m!8259786))

(declare-fun m!8259788 () Bool)

(assert (=> d!2353744 m!8259788))

(declare-fun m!8259790 () Bool)

(assert (=> d!2353744 m!8259790))

(declare-fun m!8259792 () Bool)

(assert (=> b!7854904 m!8259792))

(declare-fun m!8259794 () Bool)

(assert (=> b!7854904 m!8259794))

(declare-fun m!8259796 () Bool)

(assert (=> b!7854904 m!8259796))

(assert (=> b!7854586 d!2353744))

(declare-fun b!7854910 () Bool)

(declare-fun res!3123159 () Bool)

(declare-fun e!4642737 () Bool)

(assert (=> b!7854910 (=> res!3123159 e!4642737)))

(assert (=> b!7854910 (= res!3123159 (not ((_ is Concat!29940) r1!6227)))))

(declare-fun e!4642739 () Bool)

(assert (=> b!7854910 (= e!4642739 e!4642737)))

(declare-fun d!2353748 () Bool)

(declare-fun res!3123161 () Bool)

(declare-fun e!4642740 () Bool)

(assert (=> d!2353748 (=> res!3123161 e!4642740)))

(assert (=> d!2353748 (= res!3123161 ((_ is ElementMatch!21095) r1!6227))))

(assert (=> d!2353748 (= (validRegex!11505 r1!6227) e!4642740)))

(declare-fun b!7854911 () Bool)

(declare-fun e!4642738 () Bool)

(assert (=> b!7854911 (= e!4642738 e!4642739)))

(declare-fun c!1443657 () Bool)

(assert (=> b!7854911 (= c!1443657 ((_ is Union!21095) r1!6227))))

(declare-fun b!7854912 () Bool)

(declare-fun res!3123162 () Bool)

(declare-fun e!4642736 () Bool)

(assert (=> b!7854912 (=> (not res!3123162) (not e!4642736))))

(declare-fun call!728114 () Bool)

(assert (=> b!7854912 (= res!3123162 call!728114)))

(assert (=> b!7854912 (= e!4642739 e!4642736)))

(declare-fun bm!728109 () Bool)

(declare-fun call!728116 () Bool)

(declare-fun c!1443658 () Bool)

(assert (=> bm!728109 (= call!728116 (validRegex!11505 (ite c!1443658 (reg!21424 r1!6227) (ite c!1443657 (regTwo!42703 r1!6227) (regOne!42702 r1!6227)))))))

(declare-fun b!7854913 () Bool)

(declare-fun e!4642735 () Bool)

(assert (=> b!7854913 (= e!4642737 e!4642735)))

(declare-fun res!3123158 () Bool)

(assert (=> b!7854913 (=> (not res!3123158) (not e!4642735))))

(declare-fun call!728115 () Bool)

(assert (=> b!7854913 (= res!3123158 call!728115)))

(declare-fun b!7854914 () Bool)

(assert (=> b!7854914 (= e!4642735 call!728114)))

(declare-fun b!7854915 () Bool)

(declare-fun e!4642741 () Bool)

(assert (=> b!7854915 (= e!4642741 call!728116)))

(declare-fun b!7854916 () Bool)

(assert (=> b!7854916 (= e!4642740 e!4642738)))

(assert (=> b!7854916 (= c!1443658 ((_ is Star!21095) r1!6227))))

(declare-fun bm!728110 () Bool)

(assert (=> bm!728110 (= call!728115 call!728116)))

(declare-fun b!7854917 () Bool)

(assert (=> b!7854917 (= e!4642736 call!728115)))

(declare-fun bm!728111 () Bool)

(assert (=> bm!728111 (= call!728114 (validRegex!11505 (ite c!1443657 (regOne!42703 r1!6227) (regTwo!42702 r1!6227))))))

(declare-fun b!7854918 () Bool)

(assert (=> b!7854918 (= e!4642738 e!4642741)))

(declare-fun res!3123160 () Bool)

(assert (=> b!7854918 (= res!3123160 (not (nullable!9367 (reg!21424 r1!6227))))))

(assert (=> b!7854918 (=> (not res!3123160) (not e!4642741))))

(assert (= (and d!2353748 (not res!3123161)) b!7854916))

(assert (= (and b!7854916 c!1443658) b!7854918))

(assert (= (and b!7854916 (not c!1443658)) b!7854911))

(assert (= (and b!7854918 res!3123160) b!7854915))

(assert (= (and b!7854911 c!1443657) b!7854912))

(assert (= (and b!7854911 (not c!1443657)) b!7854910))

(assert (= (and b!7854912 res!3123162) b!7854917))

(assert (= (and b!7854910 (not res!3123159)) b!7854913))

(assert (= (and b!7854913 res!3123158) b!7854914))

(assert (= (or b!7854912 b!7854914) bm!728111))

(assert (= (or b!7854917 b!7854913) bm!728110))

(assert (= (or b!7854915 bm!728110) bm!728109))

(declare-fun m!8259798 () Bool)

(assert (=> bm!728109 m!8259798))

(declare-fun m!8259800 () Bool)

(assert (=> bm!728111 m!8259800))

(declare-fun m!8259802 () Bool)

(assert (=> b!7854918 m!8259802))

(assert (=> start!743350 d!2353748))

(declare-fun b!7854919 () Bool)

(declare-fun e!4642746 () Bool)

(assert (=> b!7854919 (= e!4642746 (not (= (head!16052 s1!4084) (c!1443559 r1!6227))))))

(declare-fun b!7854920 () Bool)

(declare-fun e!4642743 () Bool)

(assert (=> b!7854920 (= e!4642743 e!4642746)))

(declare-fun res!3123164 () Bool)

(assert (=> b!7854920 (=> res!3123164 e!4642746)))

(declare-fun call!728117 () Bool)

(assert (=> b!7854920 (= res!3123164 call!728117)))

(declare-fun b!7854921 () Bool)

(declare-fun res!3123166 () Bool)

(declare-fun e!4642748 () Bool)

(assert (=> b!7854921 (=> res!3123166 e!4642748)))

(declare-fun e!4642747 () Bool)

(assert (=> b!7854921 (= res!3123166 e!4642747)))

(declare-fun res!3123165 () Bool)

(assert (=> b!7854921 (=> (not res!3123165) (not e!4642747))))

(declare-fun lt!2679907 () Bool)

(assert (=> b!7854921 (= res!3123165 lt!2679907)))

(declare-fun b!7854922 () Bool)

(declare-fun e!4642745 () Bool)

(assert (=> b!7854922 (= e!4642745 (matchR!10531 (derivativeStep!6330 r1!6227 (head!16052 s1!4084)) (tail!15595 s1!4084)))))

(declare-fun d!2353750 () Bool)

(declare-fun e!4642744 () Bool)

(assert (=> d!2353750 e!4642744))

(declare-fun c!1443660 () Bool)

(assert (=> d!2353750 (= c!1443660 ((_ is EmptyExpr!21095) r1!6227))))

(assert (=> d!2353750 (= lt!2679907 e!4642745)))

(declare-fun c!1443661 () Bool)

(assert (=> d!2353750 (= c!1443661 (isEmpty!42341 s1!4084))))

(assert (=> d!2353750 (validRegex!11505 r1!6227)))

(assert (=> d!2353750 (= (matchR!10531 r1!6227 s1!4084) lt!2679907)))

(declare-fun b!7854923 () Bool)

(declare-fun e!4642742 () Bool)

(assert (=> b!7854923 (= e!4642742 (not lt!2679907))))

(declare-fun b!7854924 () Bool)

(declare-fun res!3123169 () Bool)

(assert (=> b!7854924 (=> res!3123169 e!4642748)))

(assert (=> b!7854924 (= res!3123169 (not ((_ is ElementMatch!21095) r1!6227)))))

(assert (=> b!7854924 (= e!4642742 e!4642748)))

(declare-fun bm!728112 () Bool)

(assert (=> bm!728112 (= call!728117 (isEmpty!42341 s1!4084))))

(declare-fun b!7854925 () Bool)

(declare-fun res!3123170 () Bool)

(assert (=> b!7854925 (=> (not res!3123170) (not e!4642747))))

(assert (=> b!7854925 (= res!3123170 (not call!728117))))

(declare-fun b!7854926 () Bool)

(declare-fun res!3123163 () Bool)

(assert (=> b!7854926 (=> res!3123163 e!4642746)))

(assert (=> b!7854926 (= res!3123163 (not (isEmpty!42341 (tail!15595 s1!4084))))))

(declare-fun b!7854927 () Bool)

(assert (=> b!7854927 (= e!4642745 (nullable!9367 r1!6227))))

(declare-fun b!7854928 () Bool)

(assert (=> b!7854928 (= e!4642744 e!4642742)))

(declare-fun c!1443659 () Bool)

(assert (=> b!7854928 (= c!1443659 ((_ is EmptyLang!21095) r1!6227))))

(declare-fun b!7854929 () Bool)

(assert (=> b!7854929 (= e!4642744 (= lt!2679907 call!728117))))

(declare-fun b!7854930 () Bool)

(assert (=> b!7854930 (= e!4642748 e!4642743)))

(declare-fun res!3123168 () Bool)

(assert (=> b!7854930 (=> (not res!3123168) (not e!4642743))))

(assert (=> b!7854930 (= res!3123168 (not lt!2679907))))

(declare-fun b!7854931 () Bool)

(declare-fun res!3123167 () Bool)

(assert (=> b!7854931 (=> (not res!3123167) (not e!4642747))))

(assert (=> b!7854931 (= res!3123167 (isEmpty!42341 (tail!15595 s1!4084)))))

(declare-fun b!7854932 () Bool)

(assert (=> b!7854932 (= e!4642747 (= (head!16052 s1!4084) (c!1443559 r1!6227)))))

(assert (= (and d!2353750 c!1443661) b!7854927))

(assert (= (and d!2353750 (not c!1443661)) b!7854922))

(assert (= (and d!2353750 c!1443660) b!7854929))

(assert (= (and d!2353750 (not c!1443660)) b!7854928))

(assert (= (and b!7854928 c!1443659) b!7854923))

(assert (= (and b!7854928 (not c!1443659)) b!7854924))

(assert (= (and b!7854924 (not res!3123169)) b!7854921))

(assert (= (and b!7854921 res!3123165) b!7854925))

(assert (= (and b!7854925 res!3123170) b!7854931))

(assert (= (and b!7854931 res!3123167) b!7854932))

(assert (= (and b!7854921 (not res!3123166)) b!7854930))

(assert (= (and b!7854930 res!3123168) b!7854920))

(assert (= (and b!7854920 (not res!3123164)) b!7854926))

(assert (= (and b!7854926 (not res!3123163)) b!7854919))

(assert (= (or b!7854929 b!7854920 b!7854925) bm!728112))

(declare-fun m!8259818 () Bool)

(assert (=> b!7854926 m!8259818))

(assert (=> b!7854926 m!8259818))

(declare-fun m!8259820 () Bool)

(assert (=> b!7854926 m!8259820))

(declare-fun m!8259822 () Bool)

(assert (=> b!7854919 m!8259822))

(assert (=> b!7854927 m!8259606))

(assert (=> b!7854932 m!8259822))

(declare-fun m!8259824 () Bool)

(assert (=> d!2353750 m!8259824))

(assert (=> d!2353750 m!8259626))

(assert (=> b!7854922 m!8259822))

(assert (=> b!7854922 m!8259822))

(declare-fun m!8259826 () Bool)

(assert (=> b!7854922 m!8259826))

(assert (=> b!7854922 m!8259818))

(assert (=> b!7854922 m!8259826))

(assert (=> b!7854922 m!8259818))

(declare-fun m!8259828 () Bool)

(assert (=> b!7854922 m!8259828))

(assert (=> b!7854931 m!8259818))

(assert (=> b!7854931 m!8259818))

(assert (=> b!7854931 m!8259820))

(assert (=> bm!728112 m!8259824))

(assert (=> b!7854582 d!2353750))

(declare-fun b!7854947 () Bool)

(declare-fun res!3123174 () Bool)

(declare-fun e!4642755 () Bool)

(assert (=> b!7854947 (=> res!3123174 e!4642755)))

(assert (=> b!7854947 (= res!3123174 (not ((_ is Concat!29940) lt!2679874)))))

(declare-fun e!4642757 () Bool)

(assert (=> b!7854947 (= e!4642757 e!4642755)))

(declare-fun d!2353752 () Bool)

(declare-fun res!3123176 () Bool)

(declare-fun e!4642758 () Bool)

(assert (=> d!2353752 (=> res!3123176 e!4642758)))

(assert (=> d!2353752 (= res!3123176 ((_ is ElementMatch!21095) lt!2679874))))

(assert (=> d!2353752 (= (validRegex!11505 lt!2679874) e!4642758)))

(declare-fun b!7854948 () Bool)

(declare-fun e!4642756 () Bool)

(assert (=> b!7854948 (= e!4642756 e!4642757)))

(declare-fun c!1443663 () Bool)

(assert (=> b!7854948 (= c!1443663 ((_ is Union!21095) lt!2679874))))

(declare-fun b!7854949 () Bool)

(declare-fun res!3123177 () Bool)

(declare-fun e!4642754 () Bool)

(assert (=> b!7854949 (=> (not res!3123177) (not e!4642754))))

(declare-fun call!728118 () Bool)

(assert (=> b!7854949 (= res!3123177 call!728118)))

(assert (=> b!7854949 (= e!4642757 e!4642754)))

(declare-fun bm!728113 () Bool)

(declare-fun c!1443664 () Bool)

(declare-fun call!728120 () Bool)

(assert (=> bm!728113 (= call!728120 (validRegex!11505 (ite c!1443664 (reg!21424 lt!2679874) (ite c!1443663 (regTwo!42703 lt!2679874) (regOne!42702 lt!2679874)))))))

(declare-fun b!7854950 () Bool)

(declare-fun e!4642753 () Bool)

(assert (=> b!7854950 (= e!4642755 e!4642753)))

(declare-fun res!3123173 () Bool)

(assert (=> b!7854950 (=> (not res!3123173) (not e!4642753))))

(declare-fun call!728119 () Bool)

(assert (=> b!7854950 (= res!3123173 call!728119)))

(declare-fun b!7854951 () Bool)

(assert (=> b!7854951 (= e!4642753 call!728118)))

(declare-fun b!7854952 () Bool)

(declare-fun e!4642759 () Bool)

(assert (=> b!7854952 (= e!4642759 call!728120)))

(declare-fun b!7854953 () Bool)

(assert (=> b!7854953 (= e!4642758 e!4642756)))

(assert (=> b!7854953 (= c!1443664 ((_ is Star!21095) lt!2679874))))

(declare-fun bm!728114 () Bool)

(assert (=> bm!728114 (= call!728119 call!728120)))

(declare-fun b!7854954 () Bool)

(assert (=> b!7854954 (= e!4642754 call!728119)))

(declare-fun bm!728115 () Bool)

(assert (=> bm!728115 (= call!728118 (validRegex!11505 (ite c!1443663 (regOne!42703 lt!2679874) (regTwo!42702 lt!2679874))))))

(declare-fun b!7854955 () Bool)

(assert (=> b!7854955 (= e!4642756 e!4642759)))

(declare-fun res!3123175 () Bool)

(assert (=> b!7854955 (= res!3123175 (not (nullable!9367 (reg!21424 lt!2679874))))))

(assert (=> b!7854955 (=> (not res!3123175) (not e!4642759))))

(assert (= (and d!2353752 (not res!3123176)) b!7854953))

(assert (= (and b!7854953 c!1443664) b!7854955))

(assert (= (and b!7854953 (not c!1443664)) b!7854948))

(assert (= (and b!7854955 res!3123175) b!7854952))

(assert (= (and b!7854948 c!1443663) b!7854949))

(assert (= (and b!7854948 (not c!1443663)) b!7854947))

(assert (= (and b!7854949 res!3123177) b!7854954))

(assert (= (and b!7854947 (not res!3123174)) b!7854950))

(assert (= (and b!7854950 res!3123173) b!7854951))

(assert (= (or b!7854949 b!7854951) bm!728115))

(assert (= (or b!7854954 b!7854950) bm!728114))

(assert (= (or b!7854952 bm!728114) bm!728113))

(declare-fun m!8259830 () Bool)

(assert (=> bm!728113 m!8259830))

(declare-fun m!8259832 () Bool)

(assert (=> bm!728115 m!8259832))

(declare-fun m!8259834 () Bool)

(assert (=> b!7854955 m!8259834))

(assert (=> b!7854581 d!2353752))

(declare-fun b!7854960 () Bool)

(declare-fun res!3123179 () Bool)

(declare-fun e!4642763 () Bool)

(assert (=> b!7854960 (=> res!3123179 e!4642763)))

(assert (=> b!7854960 (= res!3123179 (not ((_ is Concat!29940) lt!2679875)))))

(declare-fun e!4642765 () Bool)

(assert (=> b!7854960 (= e!4642765 e!4642763)))

(declare-fun d!2353754 () Bool)

(declare-fun res!3123181 () Bool)

(declare-fun e!4642766 () Bool)

(assert (=> d!2353754 (=> res!3123181 e!4642766)))

(assert (=> d!2353754 (= res!3123181 ((_ is ElementMatch!21095) lt!2679875))))

(assert (=> d!2353754 (= (validRegex!11505 lt!2679875) e!4642766)))

(declare-fun b!7854961 () Bool)

(declare-fun e!4642764 () Bool)

(assert (=> b!7854961 (= e!4642764 e!4642765)))

(declare-fun c!1443665 () Bool)

(assert (=> b!7854961 (= c!1443665 ((_ is Union!21095) lt!2679875))))

(declare-fun b!7854962 () Bool)

(declare-fun res!3123182 () Bool)

(declare-fun e!4642762 () Bool)

(assert (=> b!7854962 (=> (not res!3123182) (not e!4642762))))

(declare-fun call!728121 () Bool)

(assert (=> b!7854962 (= res!3123182 call!728121)))

(assert (=> b!7854962 (= e!4642765 e!4642762)))

(declare-fun c!1443666 () Bool)

(declare-fun call!728123 () Bool)

(declare-fun bm!728116 () Bool)

(assert (=> bm!728116 (= call!728123 (validRegex!11505 (ite c!1443666 (reg!21424 lt!2679875) (ite c!1443665 (regTwo!42703 lt!2679875) (regOne!42702 lt!2679875)))))))

(declare-fun b!7854963 () Bool)

(declare-fun e!4642761 () Bool)

(assert (=> b!7854963 (= e!4642763 e!4642761)))

(declare-fun res!3123178 () Bool)

(assert (=> b!7854963 (=> (not res!3123178) (not e!4642761))))

(declare-fun call!728122 () Bool)

(assert (=> b!7854963 (= res!3123178 call!728122)))

(declare-fun b!7854964 () Bool)

(assert (=> b!7854964 (= e!4642761 call!728121)))

(declare-fun b!7854965 () Bool)

(declare-fun e!4642767 () Bool)

(assert (=> b!7854965 (= e!4642767 call!728123)))

(declare-fun b!7854966 () Bool)

(assert (=> b!7854966 (= e!4642766 e!4642764)))

(assert (=> b!7854966 (= c!1443666 ((_ is Star!21095) lt!2679875))))

(declare-fun bm!728117 () Bool)

(assert (=> bm!728117 (= call!728122 call!728123)))

(declare-fun b!7854967 () Bool)

(assert (=> b!7854967 (= e!4642762 call!728122)))

(declare-fun bm!728118 () Bool)

(assert (=> bm!728118 (= call!728121 (validRegex!11505 (ite c!1443665 (regOne!42703 lt!2679875) (regTwo!42702 lt!2679875))))))

(declare-fun b!7854968 () Bool)

(assert (=> b!7854968 (= e!4642764 e!4642767)))

(declare-fun res!3123180 () Bool)

(assert (=> b!7854968 (= res!3123180 (not (nullable!9367 (reg!21424 lt!2679875))))))

(assert (=> b!7854968 (=> (not res!3123180) (not e!4642767))))

(assert (= (and d!2353754 (not res!3123181)) b!7854966))

(assert (= (and b!7854966 c!1443666) b!7854968))

(assert (= (and b!7854966 (not c!1443666)) b!7854961))

(assert (= (and b!7854968 res!3123180) b!7854965))

(assert (= (and b!7854961 c!1443665) b!7854962))

(assert (= (and b!7854961 (not c!1443665)) b!7854960))

(assert (= (and b!7854962 res!3123182) b!7854967))

(assert (= (and b!7854960 (not res!3123179)) b!7854963))

(assert (= (and b!7854963 res!3123178) b!7854964))

(assert (= (or b!7854962 b!7854964) bm!728118))

(assert (= (or b!7854967 b!7854963) bm!728117))

(assert (= (or b!7854965 bm!728117) bm!728116))

(declare-fun m!8259836 () Bool)

(assert (=> bm!728116 m!8259836))

(declare-fun m!8259838 () Bool)

(assert (=> bm!728118 m!8259838))

(declare-fun m!8259840 () Bool)

(assert (=> b!7854968 m!8259840))

(assert (=> b!7854583 d!2353754))

(declare-fun b!7854981 () Bool)

(declare-fun e!4642776 () Bool)

(assert (=> b!7854981 (= e!4642776 (not (= (head!16052 s2!3706) (c!1443559 r2!6165))))))

(declare-fun b!7854982 () Bool)

(declare-fun e!4642773 () Bool)

(assert (=> b!7854982 (= e!4642773 e!4642776)))

(declare-fun res!3123184 () Bool)

(assert (=> b!7854982 (=> res!3123184 e!4642776)))

(declare-fun call!728124 () Bool)

(assert (=> b!7854982 (= res!3123184 call!728124)))

(declare-fun b!7854983 () Bool)

(declare-fun res!3123186 () Bool)

(declare-fun e!4642778 () Bool)

(assert (=> b!7854983 (=> res!3123186 e!4642778)))

(declare-fun e!4642777 () Bool)

(assert (=> b!7854983 (= res!3123186 e!4642777)))

(declare-fun res!3123185 () Bool)

(assert (=> b!7854983 (=> (not res!3123185) (not e!4642777))))

(declare-fun lt!2679909 () Bool)

(assert (=> b!7854983 (= res!3123185 lt!2679909)))

(declare-fun b!7854984 () Bool)

(declare-fun e!4642775 () Bool)

(assert (=> b!7854984 (= e!4642775 (matchR!10531 (derivativeStep!6330 r2!6165 (head!16052 s2!3706)) (tail!15595 s2!3706)))))

(declare-fun d!2353756 () Bool)

(declare-fun e!4642774 () Bool)

(assert (=> d!2353756 e!4642774))

(declare-fun c!1443668 () Bool)

(assert (=> d!2353756 (= c!1443668 ((_ is EmptyExpr!21095) r2!6165))))

(assert (=> d!2353756 (= lt!2679909 e!4642775)))

(declare-fun c!1443669 () Bool)

(assert (=> d!2353756 (= c!1443669 (isEmpty!42341 s2!3706))))

(assert (=> d!2353756 (validRegex!11505 r2!6165)))

(assert (=> d!2353756 (= (matchR!10531 r2!6165 s2!3706) lt!2679909)))

(declare-fun b!7854985 () Bool)

(declare-fun e!4642772 () Bool)

(assert (=> b!7854985 (= e!4642772 (not lt!2679909))))

(declare-fun b!7854986 () Bool)

(declare-fun res!3123189 () Bool)

(assert (=> b!7854986 (=> res!3123189 e!4642778)))

(assert (=> b!7854986 (= res!3123189 (not ((_ is ElementMatch!21095) r2!6165)))))

(assert (=> b!7854986 (= e!4642772 e!4642778)))

(declare-fun bm!728119 () Bool)

(assert (=> bm!728119 (= call!728124 (isEmpty!42341 s2!3706))))

(declare-fun b!7854987 () Bool)

(declare-fun res!3123190 () Bool)

(assert (=> b!7854987 (=> (not res!3123190) (not e!4642777))))

(assert (=> b!7854987 (= res!3123190 (not call!728124))))

(declare-fun b!7854988 () Bool)

(declare-fun res!3123183 () Bool)

(assert (=> b!7854988 (=> res!3123183 e!4642776)))

(assert (=> b!7854988 (= res!3123183 (not (isEmpty!42341 (tail!15595 s2!3706))))))

(declare-fun b!7854989 () Bool)

(assert (=> b!7854989 (= e!4642775 (nullable!9367 r2!6165))))

(declare-fun b!7854990 () Bool)

(assert (=> b!7854990 (= e!4642774 e!4642772)))

(declare-fun c!1443667 () Bool)

(assert (=> b!7854990 (= c!1443667 ((_ is EmptyLang!21095) r2!6165))))

(declare-fun b!7854991 () Bool)

(assert (=> b!7854991 (= e!4642774 (= lt!2679909 call!728124))))

(declare-fun b!7854992 () Bool)

(assert (=> b!7854992 (= e!4642778 e!4642773)))

(declare-fun res!3123188 () Bool)

(assert (=> b!7854992 (=> (not res!3123188) (not e!4642773))))

(assert (=> b!7854992 (= res!3123188 (not lt!2679909))))

(declare-fun b!7854993 () Bool)

(declare-fun res!3123187 () Bool)

(assert (=> b!7854993 (=> (not res!3123187) (not e!4642777))))

(assert (=> b!7854993 (= res!3123187 (isEmpty!42341 (tail!15595 s2!3706)))))

(declare-fun b!7854994 () Bool)

(assert (=> b!7854994 (= e!4642777 (= (head!16052 s2!3706) (c!1443559 r2!6165)))))

(assert (= (and d!2353756 c!1443669) b!7854989))

(assert (= (and d!2353756 (not c!1443669)) b!7854984))

(assert (= (and d!2353756 c!1443668) b!7854991))

(assert (= (and d!2353756 (not c!1443668)) b!7854990))

(assert (= (and b!7854990 c!1443667) b!7854985))

(assert (= (and b!7854990 (not c!1443667)) b!7854986))

(assert (= (and b!7854986 (not res!3123189)) b!7854983))

(assert (= (and b!7854983 res!3123185) b!7854987))

(assert (= (and b!7854987 res!3123190) b!7854993))

(assert (= (and b!7854993 res!3123187) b!7854994))

(assert (= (and b!7854983 (not res!3123186)) b!7854992))

(assert (= (and b!7854992 res!3123188) b!7854982))

(assert (= (and b!7854982 (not res!3123184)) b!7854988))

(assert (= (and b!7854988 (not res!3123183)) b!7854981))

(assert (= (or b!7854991 b!7854982 b!7854987) bm!728119))

(declare-fun m!8259842 () Bool)

(assert (=> b!7854988 m!8259842))

(assert (=> b!7854988 m!8259842))

(declare-fun m!8259844 () Bool)

(assert (=> b!7854988 m!8259844))

(declare-fun m!8259846 () Bool)

(assert (=> b!7854981 m!8259846))

(declare-fun m!8259848 () Bool)

(assert (=> b!7854989 m!8259848))

(assert (=> b!7854994 m!8259846))

(declare-fun m!8259850 () Bool)

(assert (=> d!2353756 m!8259850))

(assert (=> d!2353756 m!8259628))

(assert (=> b!7854984 m!8259846))

(assert (=> b!7854984 m!8259846))

(declare-fun m!8259852 () Bool)

(assert (=> b!7854984 m!8259852))

(assert (=> b!7854984 m!8259842))

(assert (=> b!7854984 m!8259852))

(assert (=> b!7854984 m!8259842))

(declare-fun m!8259854 () Bool)

(assert (=> b!7854984 m!8259854))

(assert (=> b!7854993 m!8259842))

(assert (=> b!7854993 m!8259842))

(assert (=> b!7854993 m!8259844))

(assert (=> bm!728119 m!8259850))

(assert (=> b!7854577 d!2353756))

(declare-fun b!7855035 () Bool)

(declare-fun e!4642790 () Bool)

(assert (=> b!7855035 (= e!4642790 tp_is_empty!52589)))

(declare-fun b!7855036 () Bool)

(declare-fun tp!2326849 () Bool)

(declare-fun tp!2326850 () Bool)

(assert (=> b!7855036 (= e!4642790 (and tp!2326849 tp!2326850))))

(declare-fun b!7855037 () Bool)

(declare-fun tp!2326851 () Bool)

(assert (=> b!7855037 (= e!4642790 tp!2326851)))

(assert (=> b!7854590 (= tp!2326770 e!4642790)))

(declare-fun b!7855038 () Bool)

(declare-fun tp!2326847 () Bool)

(declare-fun tp!2326848 () Bool)

(assert (=> b!7855038 (= e!4642790 (and tp!2326847 tp!2326848))))

(assert (= (and b!7854590 ((_ is ElementMatch!21095) (regOne!42702 r2!6165))) b!7855035))

(assert (= (and b!7854590 ((_ is Concat!29940) (regOne!42702 r2!6165))) b!7855036))

(assert (= (and b!7854590 ((_ is Star!21095) (regOne!42702 r2!6165))) b!7855037))

(assert (= (and b!7854590 ((_ is Union!21095) (regOne!42702 r2!6165))) b!7855038))

(declare-fun b!7855039 () Bool)

(declare-fun e!4642791 () Bool)

(assert (=> b!7855039 (= e!4642791 tp_is_empty!52589)))

(declare-fun b!7855040 () Bool)

(declare-fun tp!2326854 () Bool)

(declare-fun tp!2326855 () Bool)

(assert (=> b!7855040 (= e!4642791 (and tp!2326854 tp!2326855))))

(declare-fun b!7855041 () Bool)

(declare-fun tp!2326856 () Bool)

(assert (=> b!7855041 (= e!4642791 tp!2326856)))

(assert (=> b!7854590 (= tp!2326768 e!4642791)))

(declare-fun b!7855042 () Bool)

(declare-fun tp!2326852 () Bool)

(declare-fun tp!2326853 () Bool)

(assert (=> b!7855042 (= e!4642791 (and tp!2326852 tp!2326853))))

(assert (= (and b!7854590 ((_ is ElementMatch!21095) (regTwo!42702 r2!6165))) b!7855039))

(assert (= (and b!7854590 ((_ is Concat!29940) (regTwo!42702 r2!6165))) b!7855040))

(assert (= (and b!7854590 ((_ is Star!21095) (regTwo!42702 r2!6165))) b!7855041))

(assert (= (and b!7854590 ((_ is Union!21095) (regTwo!42702 r2!6165))) b!7855042))

(declare-fun b!7855043 () Bool)

(declare-fun e!4642792 () Bool)

(assert (=> b!7855043 (= e!4642792 tp_is_empty!52589)))

(declare-fun b!7855044 () Bool)

(declare-fun tp!2326859 () Bool)

(declare-fun tp!2326860 () Bool)

(assert (=> b!7855044 (= e!4642792 (and tp!2326859 tp!2326860))))

(declare-fun b!7855045 () Bool)

(declare-fun tp!2326861 () Bool)

(assert (=> b!7855045 (= e!4642792 tp!2326861)))

(assert (=> b!7854589 (= tp!2326767 e!4642792)))

(declare-fun b!7855046 () Bool)

(declare-fun tp!2326857 () Bool)

(declare-fun tp!2326858 () Bool)

(assert (=> b!7855046 (= e!4642792 (and tp!2326857 tp!2326858))))

(assert (= (and b!7854589 ((_ is ElementMatch!21095) (regOne!42702 r1!6227))) b!7855043))

(assert (= (and b!7854589 ((_ is Concat!29940) (regOne!42702 r1!6227))) b!7855044))

(assert (= (and b!7854589 ((_ is Star!21095) (regOne!42702 r1!6227))) b!7855045))

(assert (= (and b!7854589 ((_ is Union!21095) (regOne!42702 r1!6227))) b!7855046))

(declare-fun b!7855047 () Bool)

(declare-fun e!4642793 () Bool)

(assert (=> b!7855047 (= e!4642793 tp_is_empty!52589)))

(declare-fun b!7855048 () Bool)

(declare-fun tp!2326864 () Bool)

(declare-fun tp!2326865 () Bool)

(assert (=> b!7855048 (= e!4642793 (and tp!2326864 tp!2326865))))

(declare-fun b!7855049 () Bool)

(declare-fun tp!2326866 () Bool)

(assert (=> b!7855049 (= e!4642793 tp!2326866)))

(assert (=> b!7854589 (= tp!2326766 e!4642793)))

(declare-fun b!7855050 () Bool)

(declare-fun tp!2326862 () Bool)

(declare-fun tp!2326863 () Bool)

(assert (=> b!7855050 (= e!4642793 (and tp!2326862 tp!2326863))))

(assert (= (and b!7854589 ((_ is ElementMatch!21095) (regTwo!42702 r1!6227))) b!7855047))

(assert (= (and b!7854589 ((_ is Concat!29940) (regTwo!42702 r1!6227))) b!7855048))

(assert (= (and b!7854589 ((_ is Star!21095) (regTwo!42702 r1!6227))) b!7855049))

(assert (= (and b!7854589 ((_ is Union!21095) (regTwo!42702 r1!6227))) b!7855050))

(declare-fun b!7855051 () Bool)

(declare-fun e!4642794 () Bool)

(assert (=> b!7855051 (= e!4642794 tp_is_empty!52589)))

(declare-fun b!7855052 () Bool)

(declare-fun tp!2326869 () Bool)

(declare-fun tp!2326870 () Bool)

(assert (=> b!7855052 (= e!4642794 (and tp!2326869 tp!2326870))))

(declare-fun b!7855053 () Bool)

(declare-fun tp!2326871 () Bool)

(assert (=> b!7855053 (= e!4642794 tp!2326871)))

(assert (=> b!7854573 (= tp!2326769 e!4642794)))

(declare-fun b!7855054 () Bool)

(declare-fun tp!2326867 () Bool)

(declare-fun tp!2326868 () Bool)

(assert (=> b!7855054 (= e!4642794 (and tp!2326867 tp!2326868))))

(assert (= (and b!7854573 ((_ is ElementMatch!21095) (reg!21424 r1!6227))) b!7855051))

(assert (= (and b!7854573 ((_ is Concat!29940) (reg!21424 r1!6227))) b!7855052))

(assert (= (and b!7854573 ((_ is Star!21095) (reg!21424 r1!6227))) b!7855053))

(assert (= (and b!7854573 ((_ is Union!21095) (reg!21424 r1!6227))) b!7855054))

(declare-fun b!7855059 () Bool)

(declare-fun e!4642797 () Bool)

(declare-fun tp!2326874 () Bool)

(assert (=> b!7855059 (= e!4642797 (and tp_is_empty!52589 tp!2326874))))

(assert (=> b!7854585 (= tp!2326761 e!4642797)))

(assert (= (and b!7854585 ((_ is Cons!73830) (t!388689 s1!4084))) b!7855059))

(declare-fun b!7855060 () Bool)

(declare-fun e!4642798 () Bool)

(assert (=> b!7855060 (= e!4642798 tp_is_empty!52589)))

(declare-fun b!7855061 () Bool)

(declare-fun tp!2326877 () Bool)

(declare-fun tp!2326878 () Bool)

(assert (=> b!7855061 (= e!4642798 (and tp!2326877 tp!2326878))))

(declare-fun b!7855062 () Bool)

(declare-fun tp!2326879 () Bool)

(assert (=> b!7855062 (= e!4642798 tp!2326879)))

(assert (=> b!7854587 (= tp!2326765 e!4642798)))

(declare-fun b!7855063 () Bool)

(declare-fun tp!2326875 () Bool)

(declare-fun tp!2326876 () Bool)

(assert (=> b!7855063 (= e!4642798 (and tp!2326875 tp!2326876))))

(assert (= (and b!7854587 ((_ is ElementMatch!21095) (reg!21424 r2!6165))) b!7855060))

(assert (= (and b!7854587 ((_ is Concat!29940) (reg!21424 r2!6165))) b!7855061))

(assert (= (and b!7854587 ((_ is Star!21095) (reg!21424 r2!6165))) b!7855062))

(assert (= (and b!7854587 ((_ is Union!21095) (reg!21424 r2!6165))) b!7855063))

(declare-fun b!7855064 () Bool)

(declare-fun e!4642799 () Bool)

(assert (=> b!7855064 (= e!4642799 tp_is_empty!52589)))

(declare-fun b!7855065 () Bool)

(declare-fun tp!2326882 () Bool)

(declare-fun tp!2326883 () Bool)

(assert (=> b!7855065 (= e!4642799 (and tp!2326882 tp!2326883))))

(declare-fun b!7855066 () Bool)

(declare-fun tp!2326884 () Bool)

(assert (=> b!7855066 (= e!4642799 tp!2326884)))

(assert (=> b!7854576 (= tp!2326771 e!4642799)))

(declare-fun b!7855067 () Bool)

(declare-fun tp!2326880 () Bool)

(declare-fun tp!2326881 () Bool)

(assert (=> b!7855067 (= e!4642799 (and tp!2326880 tp!2326881))))

(assert (= (and b!7854576 ((_ is ElementMatch!21095) (regOne!42703 r1!6227))) b!7855064))

(assert (= (and b!7854576 ((_ is Concat!29940) (regOne!42703 r1!6227))) b!7855065))

(assert (= (and b!7854576 ((_ is Star!21095) (regOne!42703 r1!6227))) b!7855066))

(assert (= (and b!7854576 ((_ is Union!21095) (regOne!42703 r1!6227))) b!7855067))

(declare-fun b!7855068 () Bool)

(declare-fun e!4642800 () Bool)

(assert (=> b!7855068 (= e!4642800 tp_is_empty!52589)))

(declare-fun b!7855069 () Bool)

(declare-fun tp!2326887 () Bool)

(declare-fun tp!2326888 () Bool)

(assert (=> b!7855069 (= e!4642800 (and tp!2326887 tp!2326888))))

(declare-fun b!7855070 () Bool)

(declare-fun tp!2326889 () Bool)

(assert (=> b!7855070 (= e!4642800 tp!2326889)))

(assert (=> b!7854576 (= tp!2326772 e!4642800)))

(declare-fun b!7855071 () Bool)

(declare-fun tp!2326885 () Bool)

(declare-fun tp!2326886 () Bool)

(assert (=> b!7855071 (= e!4642800 (and tp!2326885 tp!2326886))))

(assert (= (and b!7854576 ((_ is ElementMatch!21095) (regTwo!42703 r1!6227))) b!7855068))

(assert (= (and b!7854576 ((_ is Concat!29940) (regTwo!42703 r1!6227))) b!7855069))

(assert (= (and b!7854576 ((_ is Star!21095) (regTwo!42703 r1!6227))) b!7855070))

(assert (= (and b!7854576 ((_ is Union!21095) (regTwo!42703 r1!6227))) b!7855071))

(declare-fun b!7855072 () Bool)

(declare-fun e!4642801 () Bool)

(declare-fun tp!2326890 () Bool)

(assert (=> b!7855072 (= e!4642801 (and tp_is_empty!52589 tp!2326890))))

(assert (=> b!7854578 (= tp!2326762 e!4642801)))

(assert (= (and b!7854578 ((_ is Cons!73830) (t!388689 s2!3706))) b!7855072))

(declare-fun b!7855073 () Bool)

(declare-fun e!4642802 () Bool)

(assert (=> b!7855073 (= e!4642802 tp_is_empty!52589)))

(declare-fun b!7855074 () Bool)

(declare-fun tp!2326893 () Bool)

(declare-fun tp!2326894 () Bool)

(assert (=> b!7855074 (= e!4642802 (and tp!2326893 tp!2326894))))

(declare-fun b!7855075 () Bool)

(declare-fun tp!2326895 () Bool)

(assert (=> b!7855075 (= e!4642802 tp!2326895)))

(assert (=> b!7854588 (= tp!2326763 e!4642802)))

(declare-fun b!7855076 () Bool)

(declare-fun tp!2326891 () Bool)

(declare-fun tp!2326892 () Bool)

(assert (=> b!7855076 (= e!4642802 (and tp!2326891 tp!2326892))))

(assert (= (and b!7854588 ((_ is ElementMatch!21095) (regOne!42703 r2!6165))) b!7855073))

(assert (= (and b!7854588 ((_ is Concat!29940) (regOne!42703 r2!6165))) b!7855074))

(assert (= (and b!7854588 ((_ is Star!21095) (regOne!42703 r2!6165))) b!7855075))

(assert (= (and b!7854588 ((_ is Union!21095) (regOne!42703 r2!6165))) b!7855076))

(declare-fun b!7855077 () Bool)

(declare-fun e!4642803 () Bool)

(assert (=> b!7855077 (= e!4642803 tp_is_empty!52589)))

(declare-fun b!7855078 () Bool)

(declare-fun tp!2326898 () Bool)

(declare-fun tp!2326899 () Bool)

(assert (=> b!7855078 (= e!4642803 (and tp!2326898 tp!2326899))))

(declare-fun b!7855079 () Bool)

(declare-fun tp!2326900 () Bool)

(assert (=> b!7855079 (= e!4642803 tp!2326900)))

(assert (=> b!7854588 (= tp!2326764 e!4642803)))

(declare-fun b!7855080 () Bool)

(declare-fun tp!2326896 () Bool)

(declare-fun tp!2326897 () Bool)

(assert (=> b!7855080 (= e!4642803 (and tp!2326896 tp!2326897))))

(assert (= (and b!7854588 ((_ is ElementMatch!21095) (regTwo!42703 r2!6165))) b!7855077))

(assert (= (and b!7854588 ((_ is Concat!29940) (regTwo!42703 r2!6165))) b!7855078))

(assert (= (and b!7854588 ((_ is Star!21095) (regTwo!42703 r2!6165))) b!7855079))

(assert (= (and b!7854588 ((_ is Union!21095) (regTwo!42703 r2!6165))) b!7855080))

(check-sat (not b!7855065) (not b!7855041) (not b!7854931) (not bm!728106) (not b!7854918) (not b!7855044) (not b!7855074) (not b!7855075) (not b!7854796) (not b!7854635) (not d!2353722) (not b!7854981) (not b!7855059) (not b!7854789) (not bm!728068) (not bm!728112) (not b!7855067) (not bm!728118) (not d!2353744) (not b!7854698) (not bm!728064) (not bm!728107) (not b!7854955) (not b!7854903) (not b!7854802) (not b!7854927) (not b!7854922) tp_is_empty!52589 (not b!7854984) (not bm!728113) (not b!7855079) (not b!7855054) (not b!7855037) (not b!7854708) (not d!2353716) (not bm!728063) (not bm!728048) (not bm!728115) (not b!7855061) (not b!7854968) (not b!7855078) (not b!7854926) (not b!7855036) (not b!7854882) (not d!2353714) (not bm!728046) (not d!2353742) (not b!7855076) (not b!7855049) (not b!7854919) (not b!7855071) (not b!7855070) (not b!7854792) (not d!2353710) (not b!7854988) (not b!7855038) (not b!7855050) (not bm!728109) (not b!7854932) (not b!7855040) (not b!7855080) (not b!7855052) (not b!7855042) (not b!7855046) (not b!7855048) (not d!2353750) (not b!7854993) (not b!7854797) (not b!7855062) (not b!7855053) (not b!7855066) (not b!7855072) (not d!2353756) (not bm!728119) (not b!7854989) (not bm!728111) (not b!7855069) (not b!7854994) (not b!7855045) (not bm!728116) (not b!7854801) (not bm!728067) (not b!7854904) (not b!7854866) (not d!2353738) (not b!7855063) (not bm!728082))
(check-sat)
