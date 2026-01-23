; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!281922 () Bool)

(assert start!281922)

(declare-fun b!2891408 () Bool)

(declare-fun res!1196436 () Bool)

(declare-fun e!1827368 () Bool)

(assert (=> b!2891408 (=> (not res!1196436) (not e!1827368))))

(declare-datatypes ((C!17836 0))(
  ( (C!17837 (val!10952 Int)) )
))
(declare-datatypes ((Regex!8827 0))(
  ( (ElementMatch!8827 (c!470106 C!17836)) (Concat!14148 (regOne!18166 Regex!8827) (regTwo!18166 Regex!8827)) (EmptyExpr!8827) (Star!8827 (reg!9156 Regex!8827)) (EmptyLang!8827) (Union!8827 (regOne!18167 Regex!8827) (regTwo!18167 Regex!8827)) )
))
(declare-fun r!23079 () Regex!8827)

(get-info :version)

(assert (=> b!2891408 (= res!1196436 (and (not ((_ is EmptyExpr!8827) r!23079)) (not ((_ is EmptyLang!8827) r!23079)) (not ((_ is ElementMatch!8827) r!23079)) (not ((_ is Star!8827) r!23079)) ((_ is Union!8827) r!23079)))))

(declare-fun res!1196434 () Bool)

(assert (=> start!281922 (=> (not res!1196434) (not e!1827368))))

(declare-fun validRegex!3600 (Regex!8827) Bool)

(assert (=> start!281922 (= res!1196434 (validRegex!3600 r!23079))))

(assert (=> start!281922 e!1827368))

(declare-fun e!1827367 () Bool)

(assert (=> start!281922 e!1827367))

(declare-fun b!2891409 () Bool)

(declare-fun e!1827369 () Bool)

(declare-fun e!1827366 () Bool)

(assert (=> b!2891409 (= e!1827369 (not e!1827366))))

(declare-fun res!1196437 () Bool)

(assert (=> b!2891409 (=> (not res!1196437) (not e!1827366))))

(assert (=> b!2891409 (= res!1196437 (validRegex!3600 (regOne!18167 r!23079)))))

(declare-datatypes ((List!34628 0))(
  ( (Nil!34504) (Cons!34504 (h!39924 C!17836) (t!233671 List!34628)) )
))
(declare-datatypes ((Option!6500 0))(
  ( (None!6499) (Some!6499 (v!34625 List!34628)) )
))
(declare-fun lt!1021020 () Option!6500)

(declare-fun matchR!3797 (Regex!8827 List!34628) Bool)

(declare-fun get!10443 (Option!6500) List!34628)

(assert (=> b!2891409 (matchR!3797 (regOne!18167 r!23079) (get!10443 lt!1021020))))

(declare-datatypes ((Unit!48083 0))(
  ( (Unit!48084) )
))
(declare-fun lt!1021019 () Unit!48083)

(declare-fun lemmaGetWitnessMatches!96 (Regex!8827) Unit!48083)

(assert (=> b!2891409 (= lt!1021019 (lemmaGetWitnessMatches!96 (regOne!18167 r!23079)))))

(declare-fun b!2891410 () Bool)

(declare-fun tp!928449 () Bool)

(assert (=> b!2891410 (= e!1827367 tp!928449)))

(declare-fun b!2891411 () Bool)

(declare-fun tp!928446 () Bool)

(declare-fun tp!928448 () Bool)

(assert (=> b!2891411 (= e!1827367 (and tp!928446 tp!928448))))

(declare-fun b!2891412 () Bool)

(declare-fun tp_is_empty!15241 () Bool)

(assert (=> b!2891412 (= e!1827367 tp_is_empty!15241)))

(declare-fun b!2891413 () Bool)

(declare-fun res!1196433 () Bool)

(assert (=> b!2891413 (=> (not res!1196433) (not e!1827368))))

(declare-fun isDefined!5064 (Option!6500) Bool)

(declare-fun getLanguageWitness!534 (Regex!8827) Option!6500)

(assert (=> b!2891413 (= res!1196433 (isDefined!5064 (getLanguageWitness!534 r!23079)))))

(declare-fun b!2891414 () Bool)

(assert (=> b!2891414 (= e!1827366 (validRegex!3600 (regTwo!18167 r!23079)))))

(declare-fun b!2891415 () Bool)

(declare-fun tp!928447 () Bool)

(declare-fun tp!928445 () Bool)

(assert (=> b!2891415 (= e!1827367 (and tp!928447 tp!928445))))

(declare-fun b!2891416 () Bool)

(assert (=> b!2891416 (= e!1827368 e!1827369)))

(declare-fun res!1196435 () Bool)

(assert (=> b!2891416 (=> (not res!1196435) (not e!1827369))))

(assert (=> b!2891416 (= res!1196435 ((_ is Some!6499) lt!1021020))))

(assert (=> b!2891416 (= lt!1021020 (getLanguageWitness!534 (regOne!18167 r!23079)))))

(assert (= (and start!281922 res!1196434) b!2891413))

(assert (= (and b!2891413 res!1196433) b!2891408))

(assert (= (and b!2891408 res!1196436) b!2891416))

(assert (= (and b!2891416 res!1196435) b!2891409))

(assert (= (and b!2891409 res!1196437) b!2891414))

(assert (= (and start!281922 ((_ is ElementMatch!8827) r!23079)) b!2891412))

(assert (= (and start!281922 ((_ is Concat!14148) r!23079)) b!2891415))

(assert (= (and start!281922 ((_ is Star!8827) r!23079)) b!2891410))

(assert (= (and start!281922 ((_ is Union!8827) r!23079)) b!2891411))

(declare-fun m!3302569 () Bool)

(assert (=> start!281922 m!3302569))

(declare-fun m!3302571 () Bool)

(assert (=> b!2891416 m!3302571))

(declare-fun m!3302573 () Bool)

(assert (=> b!2891413 m!3302573))

(assert (=> b!2891413 m!3302573))

(declare-fun m!3302575 () Bool)

(assert (=> b!2891413 m!3302575))

(declare-fun m!3302577 () Bool)

(assert (=> b!2891414 m!3302577))

(declare-fun m!3302579 () Bool)

(assert (=> b!2891409 m!3302579))

(declare-fun m!3302581 () Bool)

(assert (=> b!2891409 m!3302581))

(assert (=> b!2891409 m!3302581))

(declare-fun m!3302583 () Bool)

(assert (=> b!2891409 m!3302583))

(declare-fun m!3302585 () Bool)

(assert (=> b!2891409 m!3302585))

(check-sat tp_is_empty!15241 (not b!2891410) (not b!2891413) (not b!2891409) (not b!2891415) (not b!2891416) (not start!281922) (not b!2891414) (not b!2891411))
(check-sat)
(get-model)

(declare-fun b!2891471 () Bool)

(declare-fun e!1827418 () Bool)

(declare-fun call!187803 () Bool)

(assert (=> b!2891471 (= e!1827418 call!187803)))

(declare-fun bm!187798 () Bool)

(declare-fun call!187804 () Bool)

(declare-fun c!470120 () Bool)

(assert (=> bm!187798 (= call!187804 (validRegex!3600 (ite c!470120 (regOne!18167 (regOne!18167 r!23079)) (regOne!18166 (regOne!18167 r!23079)))))))

(declare-fun d!834459 () Bool)

(declare-fun res!1196470 () Bool)

(declare-fun e!1827415 () Bool)

(assert (=> d!834459 (=> res!1196470 e!1827415)))

(assert (=> d!834459 (= res!1196470 ((_ is ElementMatch!8827) (regOne!18167 r!23079)))))

(assert (=> d!834459 (= (validRegex!3600 (regOne!18167 r!23079)) e!1827415)))

(declare-fun b!2891472 () Bool)

(declare-fun e!1827414 () Bool)

(assert (=> b!2891472 (= e!1827415 e!1827414)))

(declare-fun c!470119 () Bool)

(assert (=> b!2891472 (= c!470119 ((_ is Star!8827) (regOne!18167 r!23079)))))

(declare-fun b!2891473 () Bool)

(declare-fun e!1827416 () Bool)

(declare-fun call!187805 () Bool)

(assert (=> b!2891473 (= e!1827416 call!187805)))

(declare-fun b!2891474 () Bool)

(declare-fun res!1196468 () Bool)

(declare-fun e!1827412 () Bool)

(assert (=> b!2891474 (=> res!1196468 e!1827412)))

(assert (=> b!2891474 (= res!1196468 (not ((_ is Concat!14148) (regOne!18167 r!23079))))))

(declare-fun e!1827413 () Bool)

(assert (=> b!2891474 (= e!1827413 e!1827412)))

(declare-fun b!2891475 () Bool)

(declare-fun e!1827417 () Bool)

(assert (=> b!2891475 (= e!1827417 call!187803)))

(declare-fun b!2891476 () Bool)

(declare-fun res!1196471 () Bool)

(assert (=> b!2891476 (=> (not res!1196471) (not e!1827417))))

(assert (=> b!2891476 (= res!1196471 call!187804)))

(assert (=> b!2891476 (= e!1827413 e!1827417)))

(declare-fun b!2891477 () Bool)

(assert (=> b!2891477 (= e!1827412 e!1827418)))

(declare-fun res!1196469 () Bool)

(assert (=> b!2891477 (=> (not res!1196469) (not e!1827418))))

(assert (=> b!2891477 (= res!1196469 call!187804)))

(declare-fun bm!187799 () Bool)

(assert (=> bm!187799 (= call!187805 (validRegex!3600 (ite c!470119 (reg!9156 (regOne!18167 r!23079)) (ite c!470120 (regTwo!18167 (regOne!18167 r!23079)) (regTwo!18166 (regOne!18167 r!23079))))))))

(declare-fun b!2891478 () Bool)

(assert (=> b!2891478 (= e!1827414 e!1827413)))

(assert (=> b!2891478 (= c!470120 ((_ is Union!8827) (regOne!18167 r!23079)))))

(declare-fun b!2891479 () Bool)

(assert (=> b!2891479 (= e!1827414 e!1827416)))

(declare-fun res!1196472 () Bool)

(declare-fun nullable!2729 (Regex!8827) Bool)

(assert (=> b!2891479 (= res!1196472 (not (nullable!2729 (reg!9156 (regOne!18167 r!23079)))))))

(assert (=> b!2891479 (=> (not res!1196472) (not e!1827416))))

(declare-fun bm!187800 () Bool)

(assert (=> bm!187800 (= call!187803 call!187805)))

(assert (= (and d!834459 (not res!1196470)) b!2891472))

(assert (= (and b!2891472 c!470119) b!2891479))

(assert (= (and b!2891472 (not c!470119)) b!2891478))

(assert (= (and b!2891479 res!1196472) b!2891473))

(assert (= (and b!2891478 c!470120) b!2891476))

(assert (= (and b!2891478 (not c!470120)) b!2891474))

(assert (= (and b!2891476 res!1196471) b!2891475))

(assert (= (and b!2891474 (not res!1196468)) b!2891477))

(assert (= (and b!2891477 res!1196469) b!2891471))

(assert (= (or b!2891475 b!2891471) bm!187800))

(assert (= (or b!2891476 b!2891477) bm!187798))

(assert (= (or b!2891473 bm!187800) bm!187799))

(declare-fun m!3302599 () Bool)

(assert (=> bm!187798 m!3302599))

(declare-fun m!3302601 () Bool)

(assert (=> bm!187799 m!3302601))

(declare-fun m!3302603 () Bool)

(assert (=> b!2891479 m!3302603))

(assert (=> b!2891409 d!834459))

(declare-fun b!2891550 () Bool)

(declare-fun res!1196516 () Bool)

(declare-fun e!1827455 () Bool)

(assert (=> b!2891550 (=> res!1196516 e!1827455)))

(declare-fun e!1827458 () Bool)

(assert (=> b!2891550 (= res!1196516 e!1827458)))

(declare-fun res!1196519 () Bool)

(assert (=> b!2891550 (=> (not res!1196519) (not e!1827458))))

(declare-fun lt!1021026 () Bool)

(assert (=> b!2891550 (= res!1196519 lt!1021026)))

(declare-fun b!2891551 () Bool)

(declare-fun res!1196518 () Bool)

(assert (=> b!2891551 (=> (not res!1196518) (not e!1827458))))

(declare-fun isEmpty!18802 (List!34628) Bool)

(declare-fun tail!4607 (List!34628) List!34628)

(assert (=> b!2891551 (= res!1196518 (isEmpty!18802 (tail!4607 (get!10443 lt!1021020))))))

(declare-fun b!2891552 () Bool)

(declare-fun res!1196514 () Bool)

(declare-fun e!1827459 () Bool)

(assert (=> b!2891552 (=> res!1196514 e!1827459)))

(assert (=> b!2891552 (= res!1196514 (not (isEmpty!18802 (tail!4607 (get!10443 lt!1021020)))))))

(declare-fun b!2891553 () Bool)

(declare-fun head!6382 (List!34628) C!17836)

(assert (=> b!2891553 (= e!1827458 (= (head!6382 (get!10443 lt!1021020)) (c!470106 (regOne!18167 r!23079))))))

(declare-fun b!2891554 () Bool)

(declare-fun e!1827456 () Bool)

(declare-fun derivativeStep!2353 (Regex!8827 C!17836) Regex!8827)

(assert (=> b!2891554 (= e!1827456 (matchR!3797 (derivativeStep!2353 (regOne!18167 r!23079) (head!6382 (get!10443 lt!1021020))) (tail!4607 (get!10443 lt!1021020))))))

(declare-fun d!834465 () Bool)

(declare-fun e!1827454 () Bool)

(assert (=> d!834465 e!1827454))

(declare-fun c!470137 () Bool)

(assert (=> d!834465 (= c!470137 ((_ is EmptyExpr!8827) (regOne!18167 r!23079)))))

(assert (=> d!834465 (= lt!1021026 e!1827456)))

(declare-fun c!470138 () Bool)

(assert (=> d!834465 (= c!470138 (isEmpty!18802 (get!10443 lt!1021020)))))

(assert (=> d!834465 (validRegex!3600 (regOne!18167 r!23079))))

(assert (=> d!834465 (= (matchR!3797 (regOne!18167 r!23079) (get!10443 lt!1021020)) lt!1021026)))

(declare-fun b!2891555 () Bool)

(declare-fun e!1827457 () Bool)

(assert (=> b!2891555 (= e!1827455 e!1827457)))

(declare-fun res!1196520 () Bool)

(assert (=> b!2891555 (=> (not res!1196520) (not e!1827457))))

(assert (=> b!2891555 (= res!1196520 (not lt!1021026))))

(declare-fun b!2891556 () Bool)

(declare-fun e!1827460 () Bool)

(assert (=> b!2891556 (= e!1827454 e!1827460)))

(declare-fun c!470136 () Bool)

(assert (=> b!2891556 (= c!470136 ((_ is EmptyLang!8827) (regOne!18167 r!23079)))))

(declare-fun b!2891557 () Bool)

(declare-fun call!187811 () Bool)

(assert (=> b!2891557 (= e!1827454 (= lt!1021026 call!187811))))

(declare-fun b!2891558 () Bool)

(declare-fun res!1196515 () Bool)

(assert (=> b!2891558 (=> (not res!1196515) (not e!1827458))))

(assert (=> b!2891558 (= res!1196515 (not call!187811))))

(declare-fun b!2891559 () Bool)

(assert (=> b!2891559 (= e!1827456 (nullable!2729 (regOne!18167 r!23079)))))

(declare-fun bm!187806 () Bool)

(assert (=> bm!187806 (= call!187811 (isEmpty!18802 (get!10443 lt!1021020)))))

(declare-fun b!2891560 () Bool)

(declare-fun res!1196517 () Bool)

(assert (=> b!2891560 (=> res!1196517 e!1827455)))

(assert (=> b!2891560 (= res!1196517 (not ((_ is ElementMatch!8827) (regOne!18167 r!23079))))))

(assert (=> b!2891560 (= e!1827460 e!1827455)))

(declare-fun b!2891561 () Bool)

(assert (=> b!2891561 (= e!1827459 (not (= (head!6382 (get!10443 lt!1021020)) (c!470106 (regOne!18167 r!23079)))))))

(declare-fun b!2891562 () Bool)

(assert (=> b!2891562 (= e!1827460 (not lt!1021026))))

(declare-fun b!2891563 () Bool)

(assert (=> b!2891563 (= e!1827457 e!1827459)))

(declare-fun res!1196513 () Bool)

(assert (=> b!2891563 (=> res!1196513 e!1827459)))

(assert (=> b!2891563 (= res!1196513 call!187811)))

(assert (= (and d!834465 c!470138) b!2891559))

(assert (= (and d!834465 (not c!470138)) b!2891554))

(assert (= (and d!834465 c!470137) b!2891557))

(assert (= (and d!834465 (not c!470137)) b!2891556))

(assert (= (and b!2891556 c!470136) b!2891562))

(assert (= (and b!2891556 (not c!470136)) b!2891560))

(assert (= (and b!2891560 (not res!1196517)) b!2891550))

(assert (= (and b!2891550 res!1196519) b!2891558))

(assert (= (and b!2891558 res!1196515) b!2891551))

(assert (= (and b!2891551 res!1196518) b!2891553))

(assert (= (and b!2891550 (not res!1196516)) b!2891555))

(assert (= (and b!2891555 res!1196520) b!2891563))

(assert (= (and b!2891563 (not res!1196513)) b!2891552))

(assert (= (and b!2891552 (not res!1196514)) b!2891561))

(assert (= (or b!2891557 b!2891558 b!2891563) bm!187806))

(assert (=> b!2891554 m!3302581))

(declare-fun m!3302619 () Bool)

(assert (=> b!2891554 m!3302619))

(assert (=> b!2891554 m!3302619))

(declare-fun m!3302621 () Bool)

(assert (=> b!2891554 m!3302621))

(assert (=> b!2891554 m!3302581))

(declare-fun m!3302623 () Bool)

(assert (=> b!2891554 m!3302623))

(assert (=> b!2891554 m!3302621))

(assert (=> b!2891554 m!3302623))

(declare-fun m!3302625 () Bool)

(assert (=> b!2891554 m!3302625))

(assert (=> b!2891551 m!3302581))

(assert (=> b!2891551 m!3302623))

(assert (=> b!2891551 m!3302623))

(declare-fun m!3302627 () Bool)

(assert (=> b!2891551 m!3302627))

(assert (=> b!2891552 m!3302581))

(assert (=> b!2891552 m!3302623))

(assert (=> b!2891552 m!3302623))

(assert (=> b!2891552 m!3302627))

(assert (=> b!2891561 m!3302581))

(assert (=> b!2891561 m!3302619))

(declare-fun m!3302629 () Bool)

(assert (=> b!2891559 m!3302629))

(assert (=> bm!187806 m!3302581))

(declare-fun m!3302631 () Bool)

(assert (=> bm!187806 m!3302631))

(assert (=> d!834465 m!3302581))

(assert (=> d!834465 m!3302631))

(assert (=> d!834465 m!3302579))

(assert (=> b!2891553 m!3302581))

(assert (=> b!2891553 m!3302619))

(assert (=> b!2891409 d!834465))

(declare-fun d!834471 () Bool)

(assert (=> d!834471 (= (get!10443 lt!1021020) (v!34625 lt!1021020))))

(assert (=> b!2891409 d!834471))

(declare-fun d!834473 () Bool)

(assert (=> d!834473 (matchR!3797 (regOne!18167 r!23079) (get!10443 (getLanguageWitness!534 (regOne!18167 r!23079))))))

(declare-fun lt!1021032 () Unit!48083)

(declare-fun choose!17058 (Regex!8827) Unit!48083)

(assert (=> d!834473 (= lt!1021032 (choose!17058 (regOne!18167 r!23079)))))

(assert (=> d!834473 (validRegex!3600 (regOne!18167 r!23079))))

(assert (=> d!834473 (= (lemmaGetWitnessMatches!96 (regOne!18167 r!23079)) lt!1021032)))

(declare-fun bs!523880 () Bool)

(assert (= bs!523880 d!834473))

(assert (=> bs!523880 m!3302571))

(declare-fun m!3302645 () Bool)

(assert (=> bs!523880 m!3302645))

(declare-fun m!3302647 () Bool)

(assert (=> bs!523880 m!3302647))

(assert (=> bs!523880 m!3302579))

(assert (=> bs!523880 m!3302571))

(assert (=> bs!523880 m!3302645))

(declare-fun m!3302649 () Bool)

(assert (=> bs!523880 m!3302649))

(assert (=> b!2891409 d!834473))

(declare-fun b!2891573 () Bool)

(declare-fun e!1827474 () Bool)

(declare-fun call!187815 () Bool)

(assert (=> b!2891573 (= e!1827474 call!187815)))

(declare-fun bm!187810 () Bool)

(declare-fun call!187816 () Bool)

(declare-fun c!470142 () Bool)

(assert (=> bm!187810 (= call!187816 (validRegex!3600 (ite c!470142 (regOne!18167 (regTwo!18167 r!23079)) (regOne!18166 (regTwo!18167 r!23079)))))))

(declare-fun d!834479 () Bool)

(declare-fun res!1196528 () Bool)

(declare-fun e!1827471 () Bool)

(assert (=> d!834479 (=> res!1196528 e!1827471)))

(assert (=> d!834479 (= res!1196528 ((_ is ElementMatch!8827) (regTwo!18167 r!23079)))))

(assert (=> d!834479 (= (validRegex!3600 (regTwo!18167 r!23079)) e!1827471)))

(declare-fun b!2891574 () Bool)

(declare-fun e!1827470 () Bool)

(assert (=> b!2891574 (= e!1827471 e!1827470)))

(declare-fun c!470141 () Bool)

(assert (=> b!2891574 (= c!470141 ((_ is Star!8827) (regTwo!18167 r!23079)))))

(declare-fun b!2891575 () Bool)

(declare-fun e!1827472 () Bool)

(declare-fun call!187817 () Bool)

(assert (=> b!2891575 (= e!1827472 call!187817)))

(declare-fun b!2891576 () Bool)

(declare-fun res!1196526 () Bool)

(declare-fun e!1827468 () Bool)

(assert (=> b!2891576 (=> res!1196526 e!1827468)))

(assert (=> b!2891576 (= res!1196526 (not ((_ is Concat!14148) (regTwo!18167 r!23079))))))

(declare-fun e!1827469 () Bool)

(assert (=> b!2891576 (= e!1827469 e!1827468)))

(declare-fun b!2891577 () Bool)

(declare-fun e!1827473 () Bool)

(assert (=> b!2891577 (= e!1827473 call!187815)))

(declare-fun b!2891578 () Bool)

(declare-fun res!1196529 () Bool)

(assert (=> b!2891578 (=> (not res!1196529) (not e!1827473))))

(assert (=> b!2891578 (= res!1196529 call!187816)))

(assert (=> b!2891578 (= e!1827469 e!1827473)))

(declare-fun b!2891579 () Bool)

(assert (=> b!2891579 (= e!1827468 e!1827474)))

(declare-fun res!1196527 () Bool)

(assert (=> b!2891579 (=> (not res!1196527) (not e!1827474))))

(assert (=> b!2891579 (= res!1196527 call!187816)))

(declare-fun bm!187811 () Bool)

(assert (=> bm!187811 (= call!187817 (validRegex!3600 (ite c!470141 (reg!9156 (regTwo!18167 r!23079)) (ite c!470142 (regTwo!18167 (regTwo!18167 r!23079)) (regTwo!18166 (regTwo!18167 r!23079))))))))

(declare-fun b!2891580 () Bool)

(assert (=> b!2891580 (= e!1827470 e!1827469)))

(assert (=> b!2891580 (= c!470142 ((_ is Union!8827) (regTwo!18167 r!23079)))))

(declare-fun b!2891581 () Bool)

(assert (=> b!2891581 (= e!1827470 e!1827472)))

(declare-fun res!1196530 () Bool)

(assert (=> b!2891581 (= res!1196530 (not (nullable!2729 (reg!9156 (regTwo!18167 r!23079)))))))

(assert (=> b!2891581 (=> (not res!1196530) (not e!1827472))))

(declare-fun bm!187812 () Bool)

(assert (=> bm!187812 (= call!187815 call!187817)))

(assert (= (and d!834479 (not res!1196528)) b!2891574))

(assert (= (and b!2891574 c!470141) b!2891581))

(assert (= (and b!2891574 (not c!470141)) b!2891580))

(assert (= (and b!2891581 res!1196530) b!2891575))

(assert (= (and b!2891580 c!470142) b!2891578))

(assert (= (and b!2891580 (not c!470142)) b!2891576))

(assert (= (and b!2891578 res!1196529) b!2891577))

(assert (= (and b!2891576 (not res!1196526)) b!2891579))

(assert (= (and b!2891579 res!1196527) b!2891573))

(assert (= (or b!2891577 b!2891573) bm!187812))

(assert (= (or b!2891578 b!2891579) bm!187810))

(assert (= (or b!2891575 bm!187812) bm!187811))

(declare-fun m!3302651 () Bool)

(assert (=> bm!187810 m!3302651))

(declare-fun m!3302653 () Bool)

(assert (=> bm!187811 m!3302653))

(declare-fun m!3302655 () Bool)

(assert (=> b!2891581 m!3302655))

(assert (=> b!2891414 d!834479))

(declare-fun bm!187825 () Bool)

(declare-fun call!187831 () Option!6500)

(declare-fun c!470193 () Bool)

(assert (=> bm!187825 (= call!187831 (getLanguageWitness!534 (ite c!470193 (regTwo!18167 (regOne!18167 r!23079)) (regOne!18166 (regOne!18167 r!23079)))))))

(declare-fun b!2891688 () Bool)

(declare-fun e!1827531 () Option!6500)

(declare-fun e!1827526 () Option!6500)

(assert (=> b!2891688 (= e!1827531 e!1827526)))

(declare-fun lt!1021052 () Option!6500)

(assert (=> b!2891688 (= lt!1021052 call!187831)))

(declare-fun c!470195 () Bool)

(assert (=> b!2891688 (= c!470195 ((_ is Some!6499) lt!1021052))))

(declare-fun b!2891689 () Bool)

(declare-fun e!1827532 () Option!6500)

(assert (=> b!2891689 (= e!1827531 e!1827532)))

(declare-fun lt!1021053 () Option!6500)

(declare-fun call!187830 () Option!6500)

(assert (=> b!2891689 (= lt!1021053 call!187830)))

(declare-fun c!470198 () Bool)

(assert (=> b!2891689 (= c!470198 ((_ is Some!6499) lt!1021053))))

(declare-fun b!2891690 () Bool)

(assert (=> b!2891690 (= e!1827526 None!6499)))

(declare-fun d!834481 () Bool)

(declare-fun c!470196 () Bool)

(assert (=> d!834481 (= c!470196 ((_ is EmptyExpr!8827) (regOne!18167 r!23079)))))

(declare-fun e!1827529 () Option!6500)

(assert (=> d!834481 (= (getLanguageWitness!534 (regOne!18167 r!23079)) e!1827529)))

(declare-fun b!2891691 () Bool)

(assert (=> b!2891691 (= c!470193 ((_ is Union!8827) (regOne!18167 r!23079)))))

(declare-fun e!1827528 () Option!6500)

(assert (=> b!2891691 (= e!1827528 e!1827531)))

(declare-fun b!2891692 () Bool)

(assert (=> b!2891692 (= e!1827532 lt!1021053)))

(declare-fun b!2891693 () Bool)

(assert (=> b!2891693 (= e!1827532 call!187831)))

(declare-fun b!2891694 () Bool)

(declare-fun e!1827530 () Option!6500)

(assert (=> b!2891694 (= e!1827530 e!1827528)))

(declare-fun c!470192 () Bool)

(assert (=> b!2891694 (= c!470192 ((_ is Star!8827) (regOne!18167 r!23079)))))

(declare-fun b!2891695 () Bool)

(declare-fun c!470197 () Bool)

(assert (=> b!2891695 (= c!470197 ((_ is ElementMatch!8827) (regOne!18167 r!23079)))))

(declare-fun e!1827525 () Option!6500)

(assert (=> b!2891695 (= e!1827525 e!1827530)))

(declare-fun b!2891696 () Bool)

(assert (=> b!2891696 (= e!1827525 None!6499)))

(declare-fun b!2891697 () Bool)

(assert (=> b!2891697 (= e!1827529 (Some!6499 Nil!34504))))

(declare-fun bm!187826 () Bool)

(assert (=> bm!187826 (= call!187830 (getLanguageWitness!534 (ite c!470193 (regOne!18167 (regOne!18167 r!23079)) (regTwo!18166 (regOne!18167 r!23079)))))))

(declare-fun b!2891698 () Bool)

(assert (=> b!2891698 (= e!1827529 e!1827525)))

(declare-fun c!470191 () Bool)

(assert (=> b!2891698 (= c!470191 ((_ is EmptyLang!8827) (regOne!18167 r!23079)))))

(declare-fun b!2891699 () Bool)

(assert (=> b!2891699 (= e!1827528 (Some!6499 Nil!34504))))

(declare-fun b!2891700 () Bool)

(declare-fun e!1827527 () Option!6500)

(assert (=> b!2891700 (= e!1827527 None!6499)))

(declare-fun b!2891701 () Bool)

(declare-fun lt!1021051 () Option!6500)

(declare-fun ++!8226 (List!34628 List!34628) List!34628)

(assert (=> b!2891701 (= e!1827527 (Some!6499 (++!8226 (v!34625 lt!1021052) (v!34625 lt!1021051))))))

(declare-fun b!2891702 () Bool)

(assert (=> b!2891702 (= e!1827530 (Some!6499 (Cons!34504 (c!470106 (regOne!18167 r!23079)) Nil!34504)))))

(declare-fun b!2891703 () Bool)

(declare-fun c!470194 () Bool)

(assert (=> b!2891703 (= c!470194 ((_ is Some!6499) lt!1021051))))

(assert (=> b!2891703 (= lt!1021051 call!187830)))

(assert (=> b!2891703 (= e!1827526 e!1827527)))

(assert (= (and d!834481 c!470196) b!2891697))

(assert (= (and d!834481 (not c!470196)) b!2891698))

(assert (= (and b!2891698 c!470191) b!2891696))

(assert (= (and b!2891698 (not c!470191)) b!2891695))

(assert (= (and b!2891695 c!470197) b!2891702))

(assert (= (and b!2891695 (not c!470197)) b!2891694))

(assert (= (and b!2891694 c!470192) b!2891699))

(assert (= (and b!2891694 (not c!470192)) b!2891691))

(assert (= (and b!2891691 c!470193) b!2891689))

(assert (= (and b!2891691 (not c!470193)) b!2891688))

(assert (= (and b!2891689 c!470198) b!2891692))

(assert (= (and b!2891689 (not c!470198)) b!2891693))

(assert (= (and b!2891688 c!470195) b!2891703))

(assert (= (and b!2891688 (not c!470195)) b!2891690))

(assert (= (and b!2891703 c!470194) b!2891701))

(assert (= (and b!2891703 (not c!470194)) b!2891700))

(assert (= (or b!2891693 b!2891688) bm!187825))

(assert (= (or b!2891689 b!2891703) bm!187826))

(declare-fun m!3302671 () Bool)

(assert (=> bm!187825 m!3302671))

(declare-fun m!3302673 () Bool)

(assert (=> bm!187826 m!3302673))

(declare-fun m!3302675 () Bool)

(assert (=> b!2891701 m!3302675))

(assert (=> b!2891416 d!834481))

(declare-fun b!2891716 () Bool)

(declare-fun e!1827542 () Bool)

(declare-fun call!187832 () Bool)

(assert (=> b!2891716 (= e!1827542 call!187832)))

(declare-fun bm!187827 () Bool)

(declare-fun call!187833 () Bool)

(declare-fun c!470200 () Bool)

(assert (=> bm!187827 (= call!187833 (validRegex!3600 (ite c!470200 (regOne!18167 r!23079) (regOne!18166 r!23079))))))

(declare-fun d!834487 () Bool)

(declare-fun res!1196533 () Bool)

(declare-fun e!1827539 () Bool)

(assert (=> d!834487 (=> res!1196533 e!1827539)))

(assert (=> d!834487 (= res!1196533 ((_ is ElementMatch!8827) r!23079))))

(assert (=> d!834487 (= (validRegex!3600 r!23079) e!1827539)))

(declare-fun b!2891717 () Bool)

(declare-fun e!1827538 () Bool)

(assert (=> b!2891717 (= e!1827539 e!1827538)))

(declare-fun c!470199 () Bool)

(assert (=> b!2891717 (= c!470199 ((_ is Star!8827) r!23079))))

(declare-fun b!2891718 () Bool)

(declare-fun e!1827540 () Bool)

(declare-fun call!187834 () Bool)

(assert (=> b!2891718 (= e!1827540 call!187834)))

(declare-fun b!2891719 () Bool)

(declare-fun res!1196531 () Bool)

(declare-fun e!1827536 () Bool)

(assert (=> b!2891719 (=> res!1196531 e!1827536)))

(assert (=> b!2891719 (= res!1196531 (not ((_ is Concat!14148) r!23079)))))

(declare-fun e!1827537 () Bool)

(assert (=> b!2891719 (= e!1827537 e!1827536)))

(declare-fun b!2891720 () Bool)

(declare-fun e!1827541 () Bool)

(assert (=> b!2891720 (= e!1827541 call!187832)))

(declare-fun b!2891721 () Bool)

(declare-fun res!1196534 () Bool)

(assert (=> b!2891721 (=> (not res!1196534) (not e!1827541))))

(assert (=> b!2891721 (= res!1196534 call!187833)))

(assert (=> b!2891721 (= e!1827537 e!1827541)))

(declare-fun b!2891722 () Bool)

(assert (=> b!2891722 (= e!1827536 e!1827542)))

(declare-fun res!1196532 () Bool)

(assert (=> b!2891722 (=> (not res!1196532) (not e!1827542))))

(assert (=> b!2891722 (= res!1196532 call!187833)))

(declare-fun bm!187828 () Bool)

(assert (=> bm!187828 (= call!187834 (validRegex!3600 (ite c!470199 (reg!9156 r!23079) (ite c!470200 (regTwo!18167 r!23079) (regTwo!18166 r!23079)))))))

(declare-fun b!2891723 () Bool)

(assert (=> b!2891723 (= e!1827538 e!1827537)))

(assert (=> b!2891723 (= c!470200 ((_ is Union!8827) r!23079))))

(declare-fun b!2891724 () Bool)

(assert (=> b!2891724 (= e!1827538 e!1827540)))

(declare-fun res!1196535 () Bool)

(assert (=> b!2891724 (= res!1196535 (not (nullable!2729 (reg!9156 r!23079))))))

(assert (=> b!2891724 (=> (not res!1196535) (not e!1827540))))

(declare-fun bm!187829 () Bool)

(assert (=> bm!187829 (= call!187832 call!187834)))

(assert (= (and d!834487 (not res!1196533)) b!2891717))

(assert (= (and b!2891717 c!470199) b!2891724))

(assert (= (and b!2891717 (not c!470199)) b!2891723))

(assert (= (and b!2891724 res!1196535) b!2891718))

(assert (= (and b!2891723 c!470200) b!2891721))

(assert (= (and b!2891723 (not c!470200)) b!2891719))

(assert (= (and b!2891721 res!1196534) b!2891720))

(assert (= (and b!2891719 (not res!1196531)) b!2891722))

(assert (= (and b!2891722 res!1196532) b!2891716))

(assert (= (or b!2891720 b!2891716) bm!187829))

(assert (= (or b!2891721 b!2891722) bm!187827))

(assert (= (or b!2891718 bm!187829) bm!187828))

(declare-fun m!3302677 () Bool)

(assert (=> bm!187827 m!3302677))

(declare-fun m!3302679 () Bool)

(assert (=> bm!187828 m!3302679))

(declare-fun m!3302681 () Bool)

(assert (=> b!2891724 m!3302681))

(assert (=> start!281922 d!834487))

(declare-fun d!834489 () Bool)

(declare-fun isEmpty!18805 (Option!6500) Bool)

(assert (=> d!834489 (= (isDefined!5064 (getLanguageWitness!534 r!23079)) (not (isEmpty!18805 (getLanguageWitness!534 r!23079))))))

(declare-fun bs!523882 () Bool)

(assert (= bs!523882 d!834489))

(assert (=> bs!523882 m!3302573))

(declare-fun m!3302683 () Bool)

(assert (=> bs!523882 m!3302683))

(assert (=> b!2891413 d!834489))

(declare-fun bm!187830 () Bool)

(declare-fun call!187836 () Option!6500)

(declare-fun c!470203 () Bool)

(assert (=> bm!187830 (= call!187836 (getLanguageWitness!534 (ite c!470203 (regTwo!18167 r!23079) (regOne!18166 r!23079))))))

(declare-fun b!2891733 () Bool)

(declare-fun e!1827551 () Option!6500)

(declare-fun e!1827546 () Option!6500)

(assert (=> b!2891733 (= e!1827551 e!1827546)))

(declare-fun lt!1021055 () Option!6500)

(assert (=> b!2891733 (= lt!1021055 call!187836)))

(declare-fun c!470205 () Bool)

(assert (=> b!2891733 (= c!470205 ((_ is Some!6499) lt!1021055))))

(declare-fun b!2891734 () Bool)

(declare-fun e!1827552 () Option!6500)

(assert (=> b!2891734 (= e!1827551 e!1827552)))

(declare-fun lt!1021056 () Option!6500)

(declare-fun call!187835 () Option!6500)

(assert (=> b!2891734 (= lt!1021056 call!187835)))

(declare-fun c!470208 () Bool)

(assert (=> b!2891734 (= c!470208 ((_ is Some!6499) lt!1021056))))

(declare-fun b!2891735 () Bool)

(assert (=> b!2891735 (= e!1827546 None!6499)))

(declare-fun d!834491 () Bool)

(declare-fun c!470206 () Bool)

(assert (=> d!834491 (= c!470206 ((_ is EmptyExpr!8827) r!23079))))

(declare-fun e!1827549 () Option!6500)

(assert (=> d!834491 (= (getLanguageWitness!534 r!23079) e!1827549)))

(declare-fun b!2891736 () Bool)

(assert (=> b!2891736 (= c!470203 ((_ is Union!8827) r!23079))))

(declare-fun e!1827548 () Option!6500)

(assert (=> b!2891736 (= e!1827548 e!1827551)))

(declare-fun b!2891737 () Bool)

(assert (=> b!2891737 (= e!1827552 lt!1021056)))

(declare-fun b!2891738 () Bool)

(assert (=> b!2891738 (= e!1827552 call!187836)))

(declare-fun b!2891739 () Bool)

(declare-fun e!1827550 () Option!6500)

(assert (=> b!2891739 (= e!1827550 e!1827548)))

(declare-fun c!470202 () Bool)

(assert (=> b!2891739 (= c!470202 ((_ is Star!8827) r!23079))))

(declare-fun b!2891740 () Bool)

(declare-fun c!470207 () Bool)

(assert (=> b!2891740 (= c!470207 ((_ is ElementMatch!8827) r!23079))))

(declare-fun e!1827545 () Option!6500)

(assert (=> b!2891740 (= e!1827545 e!1827550)))

(declare-fun b!2891741 () Bool)

(assert (=> b!2891741 (= e!1827545 None!6499)))

(declare-fun b!2891742 () Bool)

(assert (=> b!2891742 (= e!1827549 (Some!6499 Nil!34504))))

(declare-fun bm!187831 () Bool)

(assert (=> bm!187831 (= call!187835 (getLanguageWitness!534 (ite c!470203 (regOne!18167 r!23079) (regTwo!18166 r!23079))))))

(declare-fun b!2891743 () Bool)

(assert (=> b!2891743 (= e!1827549 e!1827545)))

(declare-fun c!470201 () Bool)

(assert (=> b!2891743 (= c!470201 ((_ is EmptyLang!8827) r!23079))))

(declare-fun b!2891744 () Bool)

(assert (=> b!2891744 (= e!1827548 (Some!6499 Nil!34504))))

(declare-fun b!2891745 () Bool)

(declare-fun e!1827547 () Option!6500)

(assert (=> b!2891745 (= e!1827547 None!6499)))

(declare-fun b!2891746 () Bool)

(declare-fun lt!1021054 () Option!6500)

(assert (=> b!2891746 (= e!1827547 (Some!6499 (++!8226 (v!34625 lt!1021055) (v!34625 lt!1021054))))))

(declare-fun b!2891747 () Bool)

(assert (=> b!2891747 (= e!1827550 (Some!6499 (Cons!34504 (c!470106 r!23079) Nil!34504)))))

(declare-fun b!2891748 () Bool)

(declare-fun c!470204 () Bool)

(assert (=> b!2891748 (= c!470204 ((_ is Some!6499) lt!1021054))))

(assert (=> b!2891748 (= lt!1021054 call!187835)))

(assert (=> b!2891748 (= e!1827546 e!1827547)))

(assert (= (and d!834491 c!470206) b!2891742))

(assert (= (and d!834491 (not c!470206)) b!2891743))

(assert (= (and b!2891743 c!470201) b!2891741))

(assert (= (and b!2891743 (not c!470201)) b!2891740))

(assert (= (and b!2891740 c!470207) b!2891747))

(assert (= (and b!2891740 (not c!470207)) b!2891739))

(assert (= (and b!2891739 c!470202) b!2891744))

(assert (= (and b!2891739 (not c!470202)) b!2891736))

(assert (= (and b!2891736 c!470203) b!2891734))

(assert (= (and b!2891736 (not c!470203)) b!2891733))

(assert (= (and b!2891734 c!470208) b!2891737))

(assert (= (and b!2891734 (not c!470208)) b!2891738))

(assert (= (and b!2891733 c!470205) b!2891748))

(assert (= (and b!2891733 (not c!470205)) b!2891735))

(assert (= (and b!2891748 c!470204) b!2891746))

(assert (= (and b!2891748 (not c!470204)) b!2891745))

(assert (= (or b!2891738 b!2891733) bm!187830))

(assert (= (or b!2891734 b!2891748) bm!187831))

(declare-fun m!3302685 () Bool)

(assert (=> bm!187830 m!3302685))

(declare-fun m!3302687 () Bool)

(assert (=> bm!187831 m!3302687))

(declare-fun m!3302689 () Bool)

(assert (=> b!2891746 m!3302689))

(assert (=> b!2891413 d!834491))

(declare-fun b!2891762 () Bool)

(declare-fun e!1827555 () Bool)

(declare-fun tp!928497 () Bool)

(declare-fun tp!928495 () Bool)

(assert (=> b!2891762 (= e!1827555 (and tp!928497 tp!928495))))

(declare-fun b!2891759 () Bool)

(assert (=> b!2891759 (= e!1827555 tp_is_empty!15241)))

(declare-fun b!2891761 () Bool)

(declare-fun tp!928499 () Bool)

(assert (=> b!2891761 (= e!1827555 tp!928499)))

(assert (=> b!2891415 (= tp!928447 e!1827555)))

(declare-fun b!2891760 () Bool)

(declare-fun tp!928496 () Bool)

(declare-fun tp!928498 () Bool)

(assert (=> b!2891760 (= e!1827555 (and tp!928496 tp!928498))))

(assert (= (and b!2891415 ((_ is ElementMatch!8827) (regOne!18166 r!23079))) b!2891759))

(assert (= (and b!2891415 ((_ is Concat!14148) (regOne!18166 r!23079))) b!2891760))

(assert (= (and b!2891415 ((_ is Star!8827) (regOne!18166 r!23079))) b!2891761))

(assert (= (and b!2891415 ((_ is Union!8827) (regOne!18166 r!23079))) b!2891762))

(declare-fun b!2891766 () Bool)

(declare-fun e!1827556 () Bool)

(declare-fun tp!928502 () Bool)

(declare-fun tp!928500 () Bool)

(assert (=> b!2891766 (= e!1827556 (and tp!928502 tp!928500))))

(declare-fun b!2891763 () Bool)

(assert (=> b!2891763 (= e!1827556 tp_is_empty!15241)))

(declare-fun b!2891765 () Bool)

(declare-fun tp!928504 () Bool)

(assert (=> b!2891765 (= e!1827556 tp!928504)))

(assert (=> b!2891415 (= tp!928445 e!1827556)))

(declare-fun b!2891764 () Bool)

(declare-fun tp!928501 () Bool)

(declare-fun tp!928503 () Bool)

(assert (=> b!2891764 (= e!1827556 (and tp!928501 tp!928503))))

(assert (= (and b!2891415 ((_ is ElementMatch!8827) (regTwo!18166 r!23079))) b!2891763))

(assert (= (and b!2891415 ((_ is Concat!14148) (regTwo!18166 r!23079))) b!2891764))

(assert (= (and b!2891415 ((_ is Star!8827) (regTwo!18166 r!23079))) b!2891765))

(assert (= (and b!2891415 ((_ is Union!8827) (regTwo!18166 r!23079))) b!2891766))

(declare-fun b!2891770 () Bool)

(declare-fun e!1827557 () Bool)

(declare-fun tp!928507 () Bool)

(declare-fun tp!928505 () Bool)

(assert (=> b!2891770 (= e!1827557 (and tp!928507 tp!928505))))

(declare-fun b!2891767 () Bool)

(assert (=> b!2891767 (= e!1827557 tp_is_empty!15241)))

(declare-fun b!2891769 () Bool)

(declare-fun tp!928509 () Bool)

(assert (=> b!2891769 (= e!1827557 tp!928509)))

(assert (=> b!2891411 (= tp!928446 e!1827557)))

(declare-fun b!2891768 () Bool)

(declare-fun tp!928506 () Bool)

(declare-fun tp!928508 () Bool)

(assert (=> b!2891768 (= e!1827557 (and tp!928506 tp!928508))))

(assert (= (and b!2891411 ((_ is ElementMatch!8827) (regOne!18167 r!23079))) b!2891767))

(assert (= (and b!2891411 ((_ is Concat!14148) (regOne!18167 r!23079))) b!2891768))

(assert (= (and b!2891411 ((_ is Star!8827) (regOne!18167 r!23079))) b!2891769))

(assert (= (and b!2891411 ((_ is Union!8827) (regOne!18167 r!23079))) b!2891770))

(declare-fun b!2891774 () Bool)

(declare-fun e!1827558 () Bool)

(declare-fun tp!928512 () Bool)

(declare-fun tp!928510 () Bool)

(assert (=> b!2891774 (= e!1827558 (and tp!928512 tp!928510))))

(declare-fun b!2891771 () Bool)

(assert (=> b!2891771 (= e!1827558 tp_is_empty!15241)))

(declare-fun b!2891773 () Bool)

(declare-fun tp!928514 () Bool)

(assert (=> b!2891773 (= e!1827558 tp!928514)))

(assert (=> b!2891411 (= tp!928448 e!1827558)))

(declare-fun b!2891772 () Bool)

(declare-fun tp!928511 () Bool)

(declare-fun tp!928513 () Bool)

(assert (=> b!2891772 (= e!1827558 (and tp!928511 tp!928513))))

(assert (= (and b!2891411 ((_ is ElementMatch!8827) (regTwo!18167 r!23079))) b!2891771))

(assert (= (and b!2891411 ((_ is Concat!14148) (regTwo!18167 r!23079))) b!2891772))

(assert (= (and b!2891411 ((_ is Star!8827) (regTwo!18167 r!23079))) b!2891773))

(assert (= (and b!2891411 ((_ is Union!8827) (regTwo!18167 r!23079))) b!2891774))

(declare-fun b!2891778 () Bool)

(declare-fun e!1827559 () Bool)

(declare-fun tp!928517 () Bool)

(declare-fun tp!928515 () Bool)

(assert (=> b!2891778 (= e!1827559 (and tp!928517 tp!928515))))

(declare-fun b!2891775 () Bool)

(assert (=> b!2891775 (= e!1827559 tp_is_empty!15241)))

(declare-fun b!2891777 () Bool)

(declare-fun tp!928519 () Bool)

(assert (=> b!2891777 (= e!1827559 tp!928519)))

(assert (=> b!2891410 (= tp!928449 e!1827559)))

(declare-fun b!2891776 () Bool)

(declare-fun tp!928516 () Bool)

(declare-fun tp!928518 () Bool)

(assert (=> b!2891776 (= e!1827559 (and tp!928516 tp!928518))))

(assert (= (and b!2891410 ((_ is ElementMatch!8827) (reg!9156 r!23079))) b!2891775))

(assert (= (and b!2891410 ((_ is Concat!14148) (reg!9156 r!23079))) b!2891776))

(assert (= (and b!2891410 ((_ is Star!8827) (reg!9156 r!23079))) b!2891777))

(assert (= (and b!2891410 ((_ is Union!8827) (reg!9156 r!23079))) b!2891778))

(check-sat (not bm!187806) (not bm!187811) (not b!2891765) (not b!2891764) (not bm!187810) (not bm!187799) (not b!2891479) (not bm!187828) (not b!2891776) (not b!2891760) (not d!834465) (not b!2891561) (not b!2891746) (not b!2891553) (not bm!187825) (not b!2891777) (not bm!187827) (not b!2891773) (not b!2891551) (not b!2891701) (not b!2891552) tp_is_empty!15241 (not bm!187826) (not b!2891778) (not bm!187830) (not b!2891581) (not b!2891554) (not b!2891724) (not b!2891762) (not b!2891766) (not b!2891761) (not d!834473) (not b!2891768) (not d!834489) (not bm!187798) (not b!2891770) (not b!2891774) (not bm!187831) (not b!2891769) (not b!2891559) (not b!2891772))
(check-sat)
