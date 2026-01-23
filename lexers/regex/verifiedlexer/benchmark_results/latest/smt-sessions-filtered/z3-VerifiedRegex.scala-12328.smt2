; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!691528 () Bool)

(assert start!691528)

(declare-fun b!7103484 () Bool)

(declare-fun e!4269475 () Bool)

(declare-fun tp!1953334 () Bool)

(declare-fun tp!1953335 () Bool)

(assert (=> b!7103484 (= e!4269475 (and tp!1953334 tp!1953335))))

(declare-fun b!7103485 () Bool)

(declare-fun tp!1953339 () Bool)

(declare-fun tp!1953338 () Bool)

(assert (=> b!7103485 (= e!4269475 (and tp!1953339 tp!1953338))))

(declare-fun b!7103486 () Bool)

(declare-fun res!2900070 () Bool)

(declare-fun e!4269477 () Bool)

(assert (=> b!7103486 (=> (not res!2900070) (not e!4269477))))

(declare-datatypes ((C!36068 0))(
  ( (C!36069 (val!27740 Int)) )
))
(declare-datatypes ((Regex!17899 0))(
  ( (ElementMatch!17899 (c!1325410 C!36068)) (Concat!26744 (regOne!36310 Regex!17899) (regTwo!36310 Regex!17899)) (EmptyExpr!17899) (Star!17899 (reg!18228 Regex!17899)) (EmptyLang!17899) (Union!17899 (regOne!36311 Regex!17899) (regTwo!36311 Regex!17899)) )
))
(declare-fun r!11554 () Regex!17899)

(declare-fun a!1901 () C!36068)

(get-info :version)

(assert (=> b!7103486 (= res!2900070 (and (or (not ((_ is ElementMatch!17899) r!11554)) (not (= (c!1325410 r!11554) a!1901))) ((_ is Union!17899) r!11554)))))

(declare-fun b!7103487 () Bool)

(declare-fun e!4269478 () Bool)

(declare-fun validRegex!9172 (Regex!17899) Bool)

(assert (=> b!7103487 (= e!4269478 (not (validRegex!9172 (regOne!36311 r!11554))))))

(declare-fun b!7103488 () Bool)

(declare-fun tp!1953340 () Bool)

(assert (=> b!7103488 (= e!4269475 tp!1953340)))

(declare-fun res!2900072 () Bool)

(assert (=> start!691528 (=> (not res!2900072) (not e!4269477))))

(assert (=> start!691528 (= res!2900072 (validRegex!9172 r!11554))))

(assert (=> start!691528 e!4269477))

(assert (=> start!691528 e!4269475))

(declare-fun tp_is_empty!45031 () Bool)

(assert (=> start!691528 tp_is_empty!45031))

(declare-datatypes ((List!68860 0))(
  ( (Nil!68736) (Cons!68736 (h!75184 Regex!17899) (t!382677 List!68860)) )
))
(declare-datatypes ((Context!13786 0))(
  ( (Context!13787 (exprs!7393 List!68860)) )
))
(declare-fun c!9994 () Context!13786)

(declare-fun e!4269476 () Bool)

(declare-fun inv!87610 (Context!13786) Bool)

(assert (=> start!691528 (and (inv!87610 c!9994) e!4269476)))

(declare-fun auxCtx!45 () Context!13786)

(declare-fun e!4269474 () Bool)

(assert (=> start!691528 (and (inv!87610 auxCtx!45) e!4269474)))

(declare-fun b!7103489 () Bool)

(declare-fun tp!1953336 () Bool)

(assert (=> b!7103489 (= e!4269476 tp!1953336)))

(declare-fun b!7103490 () Bool)

(assert (=> b!7103490 (= e!4269477 e!4269478)))

(declare-fun res!2900071 () Bool)

(assert (=> b!7103490 (=> (not res!2900071) (not e!4269478))))

(declare-fun lt!2558497 () Context!13786)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun derivationStepZipperDown!2422 (Regex!17899 Context!13786 C!36068) (InoxSet Context!13786))

(assert (=> b!7103490 (= res!2900071 (= (derivationStepZipperDown!2422 r!11554 lt!2558497 a!1901) ((_ map or) (derivationStepZipperDown!2422 (regOne!36311 r!11554) lt!2558497 a!1901) (derivationStepZipperDown!2422 (regTwo!36311 r!11554) lt!2558497 a!1901))))))

(declare-fun ++!16051 (List!68860 List!68860) List!68860)

(assert (=> b!7103490 (= lt!2558497 (Context!13787 (++!16051 (exprs!7393 c!9994) (exprs!7393 auxCtx!45))))))

(declare-datatypes ((Unit!162469 0))(
  ( (Unit!162470) )
))
(declare-fun lt!2558499 () Unit!162469)

(declare-fun lambda!431293 () Int)

(declare-fun lemmaConcatPreservesForall!1184 (List!68860 List!68860 Int) Unit!162469)

(assert (=> b!7103490 (= lt!2558499 (lemmaConcatPreservesForall!1184 (exprs!7393 c!9994) (exprs!7393 auxCtx!45) lambda!431293))))

(declare-fun lt!2558500 () Unit!162469)

(assert (=> b!7103490 (= lt!2558500 (lemmaConcatPreservesForall!1184 (exprs!7393 c!9994) (exprs!7393 auxCtx!45) lambda!431293))))

(declare-fun lt!2558498 () Unit!162469)

(assert (=> b!7103490 (= lt!2558498 (lemmaConcatPreservesForall!1184 (exprs!7393 c!9994) (exprs!7393 auxCtx!45) lambda!431293))))

(declare-fun b!7103491 () Bool)

(declare-fun tp!1953337 () Bool)

(assert (=> b!7103491 (= e!4269474 tp!1953337)))

(declare-fun b!7103492 () Bool)

(assert (=> b!7103492 (= e!4269475 tp_is_empty!45031)))

(assert (= (and start!691528 res!2900072) b!7103486))

(assert (= (and b!7103486 res!2900070) b!7103490))

(assert (= (and b!7103490 res!2900071) b!7103487))

(assert (= (and start!691528 ((_ is ElementMatch!17899) r!11554)) b!7103492))

(assert (= (and start!691528 ((_ is Concat!26744) r!11554)) b!7103484))

(assert (= (and start!691528 ((_ is Star!17899) r!11554)) b!7103488))

(assert (= (and start!691528 ((_ is Union!17899) r!11554)) b!7103485))

(assert (= start!691528 b!7103489))

(assert (= start!691528 b!7103491))

(declare-fun m!7827682 () Bool)

(assert (=> b!7103487 m!7827682))

(declare-fun m!7827684 () Bool)

(assert (=> start!691528 m!7827684))

(declare-fun m!7827686 () Bool)

(assert (=> start!691528 m!7827686))

(declare-fun m!7827688 () Bool)

(assert (=> start!691528 m!7827688))

(declare-fun m!7827690 () Bool)

(assert (=> b!7103490 m!7827690))

(declare-fun m!7827692 () Bool)

(assert (=> b!7103490 m!7827692))

(declare-fun m!7827694 () Bool)

(assert (=> b!7103490 m!7827694))

(declare-fun m!7827696 () Bool)

(assert (=> b!7103490 m!7827696))

(declare-fun m!7827698 () Bool)

(assert (=> b!7103490 m!7827698))

(assert (=> b!7103490 m!7827694))

(assert (=> b!7103490 m!7827694))

(check-sat (not b!7103485) (not b!7103488) tp_is_empty!45031 (not b!7103484) (not b!7103487) (not b!7103491) (not start!691528) (not b!7103490) (not b!7103489))
(check-sat)
(get-model)

(declare-fun b!7103511 () Bool)

(declare-fun res!2900083 () Bool)

(declare-fun e!4269494 () Bool)

(assert (=> b!7103511 (=> res!2900083 e!4269494)))

(assert (=> b!7103511 (= res!2900083 (not ((_ is Concat!26744) r!11554)))))

(declare-fun e!4269493 () Bool)

(assert (=> b!7103511 (= e!4269493 e!4269494)))

(declare-fun call!647046 () Bool)

(declare-fun c!1325416 () Bool)

(declare-fun bm!647041 () Bool)

(declare-fun c!1325415 () Bool)

(assert (=> bm!647041 (= call!647046 (validRegex!9172 (ite c!1325415 (reg!18228 r!11554) (ite c!1325416 (regTwo!36311 r!11554) (regOne!36310 r!11554)))))))

(declare-fun b!7103512 () Bool)

(declare-fun e!4269498 () Bool)

(declare-fun e!4269499 () Bool)

(assert (=> b!7103512 (= e!4269498 e!4269499)))

(assert (=> b!7103512 (= c!1325415 ((_ is Star!17899) r!11554))))

(declare-fun b!7103513 () Bool)

(declare-fun e!4269495 () Bool)

(declare-fun call!647047 () Bool)

(assert (=> b!7103513 (= e!4269495 call!647047)))

(declare-fun b!7103514 () Bool)

(assert (=> b!7103514 (= e!4269494 e!4269495)))

(declare-fun res!2900087 () Bool)

(assert (=> b!7103514 (=> (not res!2900087) (not e!4269495))))

(declare-fun call!647048 () Bool)

(assert (=> b!7103514 (= res!2900087 call!647048)))

(declare-fun d!2218939 () Bool)

(declare-fun res!2900086 () Bool)

(assert (=> d!2218939 (=> res!2900086 e!4269498)))

(assert (=> d!2218939 (= res!2900086 ((_ is ElementMatch!17899) r!11554))))

(assert (=> d!2218939 (= (validRegex!9172 r!11554) e!4269498)))

(declare-fun b!7103515 () Bool)

(declare-fun res!2900085 () Bool)

(declare-fun e!4269497 () Bool)

(assert (=> b!7103515 (=> (not res!2900085) (not e!4269497))))

(assert (=> b!7103515 (= res!2900085 call!647047)))

(assert (=> b!7103515 (= e!4269493 e!4269497)))

(declare-fun b!7103516 () Bool)

(declare-fun e!4269496 () Bool)

(assert (=> b!7103516 (= e!4269496 call!647046)))

(declare-fun b!7103517 () Bool)

(assert (=> b!7103517 (= e!4269499 e!4269496)))

(declare-fun res!2900084 () Bool)

(declare-fun nullable!7535 (Regex!17899) Bool)

(assert (=> b!7103517 (= res!2900084 (not (nullable!7535 (reg!18228 r!11554))))))

(assert (=> b!7103517 (=> (not res!2900084) (not e!4269496))))

(declare-fun b!7103518 () Bool)

(assert (=> b!7103518 (= e!4269499 e!4269493)))

(assert (=> b!7103518 (= c!1325416 ((_ is Union!17899) r!11554))))

(declare-fun bm!647042 () Bool)

(assert (=> bm!647042 (= call!647048 call!647046)))

(declare-fun b!7103519 () Bool)

(assert (=> b!7103519 (= e!4269497 call!647048)))

(declare-fun bm!647043 () Bool)

(assert (=> bm!647043 (= call!647047 (validRegex!9172 (ite c!1325416 (regOne!36311 r!11554) (regTwo!36310 r!11554))))))

(assert (= (and d!2218939 (not res!2900086)) b!7103512))

(assert (= (and b!7103512 c!1325415) b!7103517))

(assert (= (and b!7103512 (not c!1325415)) b!7103518))

(assert (= (and b!7103517 res!2900084) b!7103516))

(assert (= (and b!7103518 c!1325416) b!7103515))

(assert (= (and b!7103518 (not c!1325416)) b!7103511))

(assert (= (and b!7103515 res!2900085) b!7103519))

(assert (= (and b!7103511 (not res!2900083)) b!7103514))

(assert (= (and b!7103514 res!2900087) b!7103513))

(assert (= (or b!7103515 b!7103513) bm!647043))

(assert (= (or b!7103519 b!7103514) bm!647042))

(assert (= (or b!7103516 bm!647042) bm!647041))

(declare-fun m!7827700 () Bool)

(assert (=> bm!647041 m!7827700))

(declare-fun m!7827702 () Bool)

(assert (=> b!7103517 m!7827702))

(declare-fun m!7827704 () Bool)

(assert (=> bm!647043 m!7827704))

(assert (=> start!691528 d!2218939))

(declare-fun bs!1884511 () Bool)

(declare-fun d!2218943 () Bool)

(assert (= bs!1884511 (and d!2218943 b!7103490)))

(declare-fun lambda!431296 () Int)

(assert (=> bs!1884511 (= lambda!431296 lambda!431293)))

(declare-fun forall!16801 (List!68860 Int) Bool)

(assert (=> d!2218943 (= (inv!87610 c!9994) (forall!16801 (exprs!7393 c!9994) lambda!431296))))

(declare-fun bs!1884512 () Bool)

(assert (= bs!1884512 d!2218943))

(declare-fun m!7827706 () Bool)

(assert (=> bs!1884512 m!7827706))

(assert (=> start!691528 d!2218943))

(declare-fun bs!1884513 () Bool)

(declare-fun d!2218945 () Bool)

(assert (= bs!1884513 (and d!2218945 b!7103490)))

(declare-fun lambda!431297 () Int)

(assert (=> bs!1884513 (= lambda!431297 lambda!431293)))

(declare-fun bs!1884514 () Bool)

(assert (= bs!1884514 (and d!2218945 d!2218943)))

(assert (=> bs!1884514 (= lambda!431297 lambda!431296)))

(assert (=> d!2218945 (= (inv!87610 auxCtx!45) (forall!16801 (exprs!7393 auxCtx!45) lambda!431297))))

(declare-fun bs!1884515 () Bool)

(assert (= bs!1884515 d!2218945))

(declare-fun m!7827708 () Bool)

(assert (=> bs!1884515 m!7827708))

(assert (=> start!691528 d!2218945))

(declare-fun b!7103538 () Bool)

(declare-fun res!2900098 () Bool)

(declare-fun e!4269515 () Bool)

(assert (=> b!7103538 (=> res!2900098 e!4269515)))

(assert (=> b!7103538 (= res!2900098 (not ((_ is Concat!26744) (regOne!36311 r!11554))))))

(declare-fun e!4269514 () Bool)

(assert (=> b!7103538 (= e!4269514 e!4269515)))

(declare-fun c!1325422 () Bool)

(declare-fun c!1325421 () Bool)

(declare-fun call!647053 () Bool)

(declare-fun bm!647048 () Bool)

(assert (=> bm!647048 (= call!647053 (validRegex!9172 (ite c!1325421 (reg!18228 (regOne!36311 r!11554)) (ite c!1325422 (regTwo!36311 (regOne!36311 r!11554)) (regOne!36310 (regOne!36311 r!11554))))))))

(declare-fun b!7103539 () Bool)

(declare-fun e!4269519 () Bool)

(declare-fun e!4269520 () Bool)

(assert (=> b!7103539 (= e!4269519 e!4269520)))

(assert (=> b!7103539 (= c!1325421 ((_ is Star!17899) (regOne!36311 r!11554)))))

(declare-fun b!7103540 () Bool)

(declare-fun e!4269516 () Bool)

(declare-fun call!647054 () Bool)

(assert (=> b!7103540 (= e!4269516 call!647054)))

(declare-fun b!7103541 () Bool)

(assert (=> b!7103541 (= e!4269515 e!4269516)))

(declare-fun res!2900102 () Bool)

(assert (=> b!7103541 (=> (not res!2900102) (not e!4269516))))

(declare-fun call!647057 () Bool)

(assert (=> b!7103541 (= res!2900102 call!647057)))

(declare-fun d!2218947 () Bool)

(declare-fun res!2900101 () Bool)

(assert (=> d!2218947 (=> res!2900101 e!4269519)))

(assert (=> d!2218947 (= res!2900101 ((_ is ElementMatch!17899) (regOne!36311 r!11554)))))

(assert (=> d!2218947 (= (validRegex!9172 (regOne!36311 r!11554)) e!4269519)))

(declare-fun b!7103542 () Bool)

(declare-fun res!2900100 () Bool)

(declare-fun e!4269518 () Bool)

(assert (=> b!7103542 (=> (not res!2900100) (not e!4269518))))

(assert (=> b!7103542 (= res!2900100 call!647054)))

(assert (=> b!7103542 (= e!4269514 e!4269518)))

(declare-fun b!7103543 () Bool)

(declare-fun e!4269517 () Bool)

(assert (=> b!7103543 (= e!4269517 call!647053)))

(declare-fun b!7103544 () Bool)

(assert (=> b!7103544 (= e!4269520 e!4269517)))

(declare-fun res!2900099 () Bool)

(assert (=> b!7103544 (= res!2900099 (not (nullable!7535 (reg!18228 (regOne!36311 r!11554)))))))

(assert (=> b!7103544 (=> (not res!2900099) (not e!4269517))))

(declare-fun b!7103545 () Bool)

(assert (=> b!7103545 (= e!4269520 e!4269514)))

(assert (=> b!7103545 (= c!1325422 ((_ is Union!17899) (regOne!36311 r!11554)))))

(declare-fun bm!647049 () Bool)

(assert (=> bm!647049 (= call!647057 call!647053)))

(declare-fun b!7103546 () Bool)

(assert (=> b!7103546 (= e!4269518 call!647057)))

(declare-fun bm!647050 () Bool)

(assert (=> bm!647050 (= call!647054 (validRegex!9172 (ite c!1325422 (regOne!36311 (regOne!36311 r!11554)) (regTwo!36310 (regOne!36311 r!11554)))))))

(assert (= (and d!2218947 (not res!2900101)) b!7103539))

(assert (= (and b!7103539 c!1325421) b!7103544))

(assert (= (and b!7103539 (not c!1325421)) b!7103545))

(assert (= (and b!7103544 res!2900099) b!7103543))

(assert (= (and b!7103545 c!1325422) b!7103542))

(assert (= (and b!7103545 (not c!1325422)) b!7103538))

(assert (= (and b!7103542 res!2900100) b!7103546))

(assert (= (and b!7103538 (not res!2900098)) b!7103541))

(assert (= (and b!7103541 res!2900102) b!7103540))

(assert (= (or b!7103542 b!7103540) bm!647050))

(assert (= (or b!7103546 b!7103541) bm!647049))

(assert (= (or b!7103543 bm!647049) bm!647048))

(declare-fun m!7827710 () Bool)

(assert (=> bm!647048 m!7827710))

(declare-fun m!7827712 () Bool)

(assert (=> b!7103544 m!7827712))

(declare-fun m!7827714 () Bool)

(assert (=> bm!647050 m!7827714))

(assert (=> b!7103487 d!2218947))

(declare-fun b!7103609 () Bool)

(declare-fun e!4269564 () (InoxSet Context!13786))

(declare-fun call!647087 () (InoxSet Context!13786))

(declare-fun call!647089 () (InoxSet Context!13786))

(assert (=> b!7103609 (= e!4269564 ((_ map or) call!647087 call!647089))))

(declare-fun c!1325449 () Bool)

(declare-fun call!647088 () List!68860)

(declare-fun c!1325447 () Bool)

(declare-fun c!1325448 () Bool)

(declare-fun bm!647077 () Bool)

(assert (=> bm!647077 (= call!647089 (derivationStepZipperDown!2422 (ite c!1325449 (regTwo!36311 (regOne!36311 r!11554)) (ite c!1325448 (regTwo!36310 (regOne!36311 r!11554)) (ite c!1325447 (regOne!36310 (regOne!36311 r!11554)) (reg!18228 (regOne!36311 r!11554))))) (ite (or c!1325449 c!1325448) lt!2558497 (Context!13787 call!647088)) a!1901))))

(declare-fun b!7103610 () Bool)

(declare-fun e!4269563 () (InoxSet Context!13786))

(declare-fun e!4269561 () (InoxSet Context!13786))

(assert (=> b!7103610 (= e!4269563 e!4269561)))

(assert (=> b!7103610 (= c!1325447 ((_ is Concat!26744) (regOne!36311 r!11554)))))

(declare-fun b!7103611 () Bool)

(declare-fun e!4269560 () (InoxSet Context!13786))

(declare-fun call!647086 () (InoxSet Context!13786))

(assert (=> b!7103611 (= e!4269560 call!647086)))

(declare-fun bm!647078 () Bool)

(declare-fun call!647084 () (InoxSet Context!13786))

(assert (=> bm!647078 (= call!647086 call!647084)))

(declare-fun b!7103612 () Bool)

(declare-fun e!4269559 () Bool)

(assert (=> b!7103612 (= c!1325448 e!4269559)))

(declare-fun res!2900117 () Bool)

(assert (=> b!7103612 (=> (not res!2900117) (not e!4269559))))

(assert (=> b!7103612 (= res!2900117 ((_ is Concat!26744) (regOne!36311 r!11554)))))

(assert (=> b!7103612 (= e!4269564 e!4269563)))

(declare-fun bm!647079 () Bool)

(declare-fun call!647085 () List!68860)

(assert (=> bm!647079 (= call!647088 call!647085)))

(declare-fun b!7103613 () Bool)

(declare-fun e!4269562 () (InoxSet Context!13786))

(assert (=> b!7103613 (= e!4269562 e!4269564)))

(assert (=> b!7103613 (= c!1325449 ((_ is Union!17899) (regOne!36311 r!11554)))))

(declare-fun b!7103614 () Bool)

(assert (=> b!7103614 (= e!4269560 ((as const (Array Context!13786 Bool)) false))))

(declare-fun b!7103615 () Bool)

(assert (=> b!7103615 (= e!4269562 (store ((as const (Array Context!13786 Bool)) false) lt!2558497 true))))

(declare-fun b!7103616 () Bool)

(declare-fun c!1325451 () Bool)

(assert (=> b!7103616 (= c!1325451 ((_ is Star!17899) (regOne!36311 r!11554)))))

(assert (=> b!7103616 (= e!4269561 e!4269560)))

(declare-fun b!7103617 () Bool)

(assert (=> b!7103617 (= e!4269561 call!647086)))

(declare-fun bm!647080 () Bool)

(declare-fun $colon$colon!2762 (List!68860 Regex!17899) List!68860)

(assert (=> bm!647080 (= call!647085 ($colon$colon!2762 (exprs!7393 lt!2558497) (ite (or c!1325448 c!1325447) (regTwo!36310 (regOne!36311 r!11554)) (regOne!36311 r!11554))))))

(declare-fun d!2218949 () Bool)

(declare-fun c!1325450 () Bool)

(assert (=> d!2218949 (= c!1325450 (and ((_ is ElementMatch!17899) (regOne!36311 r!11554)) (= (c!1325410 (regOne!36311 r!11554)) a!1901)))))

(assert (=> d!2218949 (= (derivationStepZipperDown!2422 (regOne!36311 r!11554) lt!2558497 a!1901) e!4269562)))

(declare-fun bm!647081 () Bool)

(assert (=> bm!647081 (= call!647084 call!647089)))

(declare-fun b!7103618 () Bool)

(assert (=> b!7103618 (= e!4269559 (nullable!7535 (regOne!36310 (regOne!36311 r!11554))))))

(declare-fun bm!647082 () Bool)

(assert (=> bm!647082 (= call!647087 (derivationStepZipperDown!2422 (ite c!1325449 (regOne!36311 (regOne!36311 r!11554)) (regOne!36310 (regOne!36311 r!11554))) (ite c!1325449 lt!2558497 (Context!13787 call!647085)) a!1901))))

(declare-fun b!7103619 () Bool)

(assert (=> b!7103619 (= e!4269563 ((_ map or) call!647087 call!647084))))

(assert (= (and d!2218949 c!1325450) b!7103615))

(assert (= (and d!2218949 (not c!1325450)) b!7103613))

(assert (= (and b!7103613 c!1325449) b!7103609))

(assert (= (and b!7103613 (not c!1325449)) b!7103612))

(assert (= (and b!7103612 res!2900117) b!7103618))

(assert (= (and b!7103612 c!1325448) b!7103619))

(assert (= (and b!7103612 (not c!1325448)) b!7103610))

(assert (= (and b!7103610 c!1325447) b!7103617))

(assert (= (and b!7103610 (not c!1325447)) b!7103616))

(assert (= (and b!7103616 c!1325451) b!7103611))

(assert (= (and b!7103616 (not c!1325451)) b!7103614))

(assert (= (or b!7103617 b!7103611) bm!647079))

(assert (= (or b!7103617 b!7103611) bm!647078))

(assert (= (or b!7103619 bm!647078) bm!647081))

(assert (= (or b!7103619 bm!647079) bm!647080))

(assert (= (or b!7103609 bm!647081) bm!647077))

(assert (= (or b!7103609 b!7103619) bm!647082))

(declare-fun m!7827732 () Bool)

(assert (=> bm!647080 m!7827732))

(declare-fun m!7827734 () Bool)

(assert (=> b!7103615 m!7827734))

(declare-fun m!7827736 () Bool)

(assert (=> b!7103618 m!7827736))

(declare-fun m!7827738 () Bool)

(assert (=> bm!647077 m!7827738))

(declare-fun m!7827740 () Bool)

(assert (=> bm!647082 m!7827740))

(assert (=> b!7103490 d!2218949))

(declare-fun d!2218959 () Bool)

(declare-fun e!4269576 () Bool)

(assert (=> d!2218959 e!4269576))

(declare-fun res!2900124 () Bool)

(assert (=> d!2218959 (=> (not res!2900124) (not e!4269576))))

(declare-fun lt!2558503 () List!68860)

(declare-fun content!13988 (List!68860) (InoxSet Regex!17899))

(assert (=> d!2218959 (= res!2900124 (= (content!13988 lt!2558503) ((_ map or) (content!13988 (exprs!7393 c!9994)) (content!13988 (exprs!7393 auxCtx!45)))))))

(declare-fun e!4269575 () List!68860)

(assert (=> d!2218959 (= lt!2558503 e!4269575)))

(declare-fun c!1325459 () Bool)

(assert (=> d!2218959 (= c!1325459 ((_ is Nil!68736) (exprs!7393 c!9994)))))

(assert (=> d!2218959 (= (++!16051 (exprs!7393 c!9994) (exprs!7393 auxCtx!45)) lt!2558503)))

(declare-fun b!7103641 () Bool)

(declare-fun res!2900123 () Bool)

(assert (=> b!7103641 (=> (not res!2900123) (not e!4269576))))

(declare-fun size!41363 (List!68860) Int)

(assert (=> b!7103641 (= res!2900123 (= (size!41363 lt!2558503) (+ (size!41363 (exprs!7393 c!9994)) (size!41363 (exprs!7393 auxCtx!45)))))))

(declare-fun b!7103642 () Bool)

(assert (=> b!7103642 (= e!4269576 (or (not (= (exprs!7393 auxCtx!45) Nil!68736)) (= lt!2558503 (exprs!7393 c!9994))))))

(declare-fun b!7103639 () Bool)

(assert (=> b!7103639 (= e!4269575 (exprs!7393 auxCtx!45))))

(declare-fun b!7103640 () Bool)

(assert (=> b!7103640 (= e!4269575 (Cons!68736 (h!75184 (exprs!7393 c!9994)) (++!16051 (t!382677 (exprs!7393 c!9994)) (exprs!7393 auxCtx!45))))))

(assert (= (and d!2218959 c!1325459) b!7103639))

(assert (= (and d!2218959 (not c!1325459)) b!7103640))

(assert (= (and d!2218959 res!2900124) b!7103641))

(assert (= (and b!7103641 res!2900123) b!7103642))

(declare-fun m!7827742 () Bool)

(assert (=> d!2218959 m!7827742))

(declare-fun m!7827744 () Bool)

(assert (=> d!2218959 m!7827744))

(declare-fun m!7827746 () Bool)

(assert (=> d!2218959 m!7827746))

(declare-fun m!7827748 () Bool)

(assert (=> b!7103641 m!7827748))

(declare-fun m!7827750 () Bool)

(assert (=> b!7103641 m!7827750))

(declare-fun m!7827752 () Bool)

(assert (=> b!7103641 m!7827752))

(declare-fun m!7827754 () Bool)

(assert (=> b!7103640 m!7827754))

(assert (=> b!7103490 d!2218959))

(declare-fun b!7103643 () Bool)

(declare-fun e!4269582 () (InoxSet Context!13786))

(declare-fun call!647103 () (InoxSet Context!13786))

(declare-fun call!647105 () (InoxSet Context!13786))

(assert (=> b!7103643 (= e!4269582 ((_ map or) call!647103 call!647105))))

(declare-fun c!1325462 () Bool)

(declare-fun c!1325460 () Bool)

(declare-fun call!647104 () List!68860)

(declare-fun bm!647095 () Bool)

(declare-fun c!1325461 () Bool)

(assert (=> bm!647095 (= call!647105 (derivationStepZipperDown!2422 (ite c!1325462 (regTwo!36311 (regTwo!36311 r!11554)) (ite c!1325461 (regTwo!36310 (regTwo!36311 r!11554)) (ite c!1325460 (regOne!36310 (regTwo!36311 r!11554)) (reg!18228 (regTwo!36311 r!11554))))) (ite (or c!1325462 c!1325461) lt!2558497 (Context!13787 call!647104)) a!1901))))

(declare-fun b!7103644 () Bool)

(declare-fun e!4269581 () (InoxSet Context!13786))

(declare-fun e!4269579 () (InoxSet Context!13786))

(assert (=> b!7103644 (= e!4269581 e!4269579)))

(assert (=> b!7103644 (= c!1325460 ((_ is Concat!26744) (regTwo!36311 r!11554)))))

(declare-fun b!7103645 () Bool)

(declare-fun e!4269578 () (InoxSet Context!13786))

(declare-fun call!647102 () (InoxSet Context!13786))

(assert (=> b!7103645 (= e!4269578 call!647102)))

(declare-fun bm!647096 () Bool)

(declare-fun call!647100 () (InoxSet Context!13786))

(assert (=> bm!647096 (= call!647102 call!647100)))

(declare-fun b!7103646 () Bool)

(declare-fun e!4269577 () Bool)

(assert (=> b!7103646 (= c!1325461 e!4269577)))

(declare-fun res!2900125 () Bool)

(assert (=> b!7103646 (=> (not res!2900125) (not e!4269577))))

(assert (=> b!7103646 (= res!2900125 ((_ is Concat!26744) (regTwo!36311 r!11554)))))

(assert (=> b!7103646 (= e!4269582 e!4269581)))

(declare-fun bm!647097 () Bool)

(declare-fun call!647101 () List!68860)

(assert (=> bm!647097 (= call!647104 call!647101)))

(declare-fun b!7103647 () Bool)

(declare-fun e!4269580 () (InoxSet Context!13786))

(assert (=> b!7103647 (= e!4269580 e!4269582)))

(assert (=> b!7103647 (= c!1325462 ((_ is Union!17899) (regTwo!36311 r!11554)))))

(declare-fun b!7103648 () Bool)

(assert (=> b!7103648 (= e!4269578 ((as const (Array Context!13786 Bool)) false))))

(declare-fun b!7103649 () Bool)

(assert (=> b!7103649 (= e!4269580 (store ((as const (Array Context!13786 Bool)) false) lt!2558497 true))))

(declare-fun b!7103650 () Bool)

(declare-fun c!1325464 () Bool)

(assert (=> b!7103650 (= c!1325464 ((_ is Star!17899) (regTwo!36311 r!11554)))))

(assert (=> b!7103650 (= e!4269579 e!4269578)))

(declare-fun b!7103651 () Bool)

(assert (=> b!7103651 (= e!4269579 call!647102)))

(declare-fun bm!647098 () Bool)

(assert (=> bm!647098 (= call!647101 ($colon$colon!2762 (exprs!7393 lt!2558497) (ite (or c!1325461 c!1325460) (regTwo!36310 (regTwo!36311 r!11554)) (regTwo!36311 r!11554))))))

(declare-fun d!2218961 () Bool)

(declare-fun c!1325463 () Bool)

(assert (=> d!2218961 (= c!1325463 (and ((_ is ElementMatch!17899) (regTwo!36311 r!11554)) (= (c!1325410 (regTwo!36311 r!11554)) a!1901)))))

(assert (=> d!2218961 (= (derivationStepZipperDown!2422 (regTwo!36311 r!11554) lt!2558497 a!1901) e!4269580)))

(declare-fun bm!647099 () Bool)

(assert (=> bm!647099 (= call!647100 call!647105)))

(declare-fun b!7103652 () Bool)

(assert (=> b!7103652 (= e!4269577 (nullable!7535 (regOne!36310 (regTwo!36311 r!11554))))))

(declare-fun bm!647100 () Bool)

(assert (=> bm!647100 (= call!647103 (derivationStepZipperDown!2422 (ite c!1325462 (regOne!36311 (regTwo!36311 r!11554)) (regOne!36310 (regTwo!36311 r!11554))) (ite c!1325462 lt!2558497 (Context!13787 call!647101)) a!1901))))

(declare-fun b!7103653 () Bool)

(assert (=> b!7103653 (= e!4269581 ((_ map or) call!647103 call!647100))))

(assert (= (and d!2218961 c!1325463) b!7103649))

(assert (= (and d!2218961 (not c!1325463)) b!7103647))

(assert (= (and b!7103647 c!1325462) b!7103643))

(assert (= (and b!7103647 (not c!1325462)) b!7103646))

(assert (= (and b!7103646 res!2900125) b!7103652))

(assert (= (and b!7103646 c!1325461) b!7103653))

(assert (= (and b!7103646 (not c!1325461)) b!7103644))

(assert (= (and b!7103644 c!1325460) b!7103651))

(assert (= (and b!7103644 (not c!1325460)) b!7103650))

(assert (= (and b!7103650 c!1325464) b!7103645))

(assert (= (and b!7103650 (not c!1325464)) b!7103648))

(assert (= (or b!7103651 b!7103645) bm!647097))

(assert (= (or b!7103651 b!7103645) bm!647096))

(assert (= (or b!7103653 bm!647096) bm!647099))

(assert (= (or b!7103653 bm!647097) bm!647098))

(assert (= (or b!7103643 bm!647099) bm!647095))

(assert (= (or b!7103643 b!7103653) bm!647100))

(declare-fun m!7827766 () Bool)

(assert (=> bm!647098 m!7827766))

(assert (=> b!7103649 m!7827734))

(declare-fun m!7827768 () Bool)

(assert (=> b!7103652 m!7827768))

(declare-fun m!7827770 () Bool)

(assert (=> bm!647095 m!7827770))

(declare-fun m!7827772 () Bool)

(assert (=> bm!647100 m!7827772))

(assert (=> b!7103490 d!2218961))

(declare-fun d!2218965 () Bool)

(assert (=> d!2218965 (forall!16801 (++!16051 (exprs!7393 c!9994) (exprs!7393 auxCtx!45)) lambda!431293)))

(declare-fun lt!2558506 () Unit!162469)

(declare-fun choose!54788 (List!68860 List!68860 Int) Unit!162469)

(assert (=> d!2218965 (= lt!2558506 (choose!54788 (exprs!7393 c!9994) (exprs!7393 auxCtx!45) lambda!431293))))

(assert (=> d!2218965 (forall!16801 (exprs!7393 c!9994) lambda!431293)))

(assert (=> d!2218965 (= (lemmaConcatPreservesForall!1184 (exprs!7393 c!9994) (exprs!7393 auxCtx!45) lambda!431293) lt!2558506)))

(declare-fun bs!1884521 () Bool)

(assert (= bs!1884521 d!2218965))

(assert (=> bs!1884521 m!7827696))

(assert (=> bs!1884521 m!7827696))

(declare-fun m!7827782 () Bool)

(assert (=> bs!1884521 m!7827782))

(declare-fun m!7827784 () Bool)

(assert (=> bs!1884521 m!7827784))

(declare-fun m!7827786 () Bool)

(assert (=> bs!1884521 m!7827786))

(assert (=> b!7103490 d!2218965))

(declare-fun b!7103665 () Bool)

(declare-fun e!4269594 () (InoxSet Context!13786))

(declare-fun call!647115 () (InoxSet Context!13786))

(declare-fun call!647117 () (InoxSet Context!13786))

(assert (=> b!7103665 (= e!4269594 ((_ map or) call!647115 call!647117))))

(declare-fun c!1325472 () Bool)

(declare-fun c!1325471 () Bool)

(declare-fun call!647116 () List!68860)

(declare-fun c!1325470 () Bool)

(declare-fun bm!647107 () Bool)

(assert (=> bm!647107 (= call!647117 (derivationStepZipperDown!2422 (ite c!1325472 (regTwo!36311 r!11554) (ite c!1325471 (regTwo!36310 r!11554) (ite c!1325470 (regOne!36310 r!11554) (reg!18228 r!11554)))) (ite (or c!1325472 c!1325471) lt!2558497 (Context!13787 call!647116)) a!1901))))

(declare-fun b!7103666 () Bool)

(declare-fun e!4269593 () (InoxSet Context!13786))

(declare-fun e!4269591 () (InoxSet Context!13786))

(assert (=> b!7103666 (= e!4269593 e!4269591)))

(assert (=> b!7103666 (= c!1325470 ((_ is Concat!26744) r!11554))))

(declare-fun b!7103667 () Bool)

(declare-fun e!4269590 () (InoxSet Context!13786))

(declare-fun call!647114 () (InoxSet Context!13786))

(assert (=> b!7103667 (= e!4269590 call!647114)))

(declare-fun bm!647108 () Bool)

(declare-fun call!647112 () (InoxSet Context!13786))

(assert (=> bm!647108 (= call!647114 call!647112)))

(declare-fun b!7103668 () Bool)

(declare-fun e!4269589 () Bool)

(assert (=> b!7103668 (= c!1325471 e!4269589)))

(declare-fun res!2900127 () Bool)

(assert (=> b!7103668 (=> (not res!2900127) (not e!4269589))))

(assert (=> b!7103668 (= res!2900127 ((_ is Concat!26744) r!11554))))

(assert (=> b!7103668 (= e!4269594 e!4269593)))

(declare-fun bm!647109 () Bool)

(declare-fun call!647113 () List!68860)

(assert (=> bm!647109 (= call!647116 call!647113)))

(declare-fun b!7103669 () Bool)

(declare-fun e!4269592 () (InoxSet Context!13786))

(assert (=> b!7103669 (= e!4269592 e!4269594)))

(assert (=> b!7103669 (= c!1325472 ((_ is Union!17899) r!11554))))

(declare-fun b!7103670 () Bool)

(assert (=> b!7103670 (= e!4269590 ((as const (Array Context!13786 Bool)) false))))

(declare-fun b!7103671 () Bool)

(assert (=> b!7103671 (= e!4269592 (store ((as const (Array Context!13786 Bool)) false) lt!2558497 true))))

(declare-fun b!7103672 () Bool)

(declare-fun c!1325474 () Bool)

(assert (=> b!7103672 (= c!1325474 ((_ is Star!17899) r!11554))))

(assert (=> b!7103672 (= e!4269591 e!4269590)))

(declare-fun b!7103673 () Bool)

(assert (=> b!7103673 (= e!4269591 call!647114)))

(declare-fun bm!647110 () Bool)

(assert (=> bm!647110 (= call!647113 ($colon$colon!2762 (exprs!7393 lt!2558497) (ite (or c!1325471 c!1325470) (regTwo!36310 r!11554) r!11554)))))

(declare-fun d!2218969 () Bool)

(declare-fun c!1325473 () Bool)

(assert (=> d!2218969 (= c!1325473 (and ((_ is ElementMatch!17899) r!11554) (= (c!1325410 r!11554) a!1901)))))

(assert (=> d!2218969 (= (derivationStepZipperDown!2422 r!11554 lt!2558497 a!1901) e!4269592)))

(declare-fun bm!647111 () Bool)

(assert (=> bm!647111 (= call!647112 call!647117)))

(declare-fun b!7103674 () Bool)

(assert (=> b!7103674 (= e!4269589 (nullable!7535 (regOne!36310 r!11554)))))

(declare-fun bm!647112 () Bool)

(assert (=> bm!647112 (= call!647115 (derivationStepZipperDown!2422 (ite c!1325472 (regOne!36311 r!11554) (regOne!36310 r!11554)) (ite c!1325472 lt!2558497 (Context!13787 call!647113)) a!1901))))

(declare-fun b!7103675 () Bool)

(assert (=> b!7103675 (= e!4269593 ((_ map or) call!647115 call!647112))))

(assert (= (and d!2218969 c!1325473) b!7103671))

(assert (= (and d!2218969 (not c!1325473)) b!7103669))

(assert (= (and b!7103669 c!1325472) b!7103665))

(assert (= (and b!7103669 (not c!1325472)) b!7103668))

(assert (= (and b!7103668 res!2900127) b!7103674))

(assert (= (and b!7103668 c!1325471) b!7103675))

(assert (= (and b!7103668 (not c!1325471)) b!7103666))

(assert (= (and b!7103666 c!1325470) b!7103673))

(assert (= (and b!7103666 (not c!1325470)) b!7103672))

(assert (= (and b!7103672 c!1325474) b!7103667))

(assert (= (and b!7103672 (not c!1325474)) b!7103670))

(assert (= (or b!7103673 b!7103667) bm!647109))

(assert (= (or b!7103673 b!7103667) bm!647108))

(assert (= (or b!7103675 bm!647108) bm!647111))

(assert (= (or b!7103675 bm!647109) bm!647110))

(assert (= (or b!7103665 bm!647111) bm!647107))

(assert (= (or b!7103665 b!7103675) bm!647112))

(declare-fun m!7827788 () Bool)

(assert (=> bm!647110 m!7827788))

(assert (=> b!7103671 m!7827734))

(declare-fun m!7827790 () Bool)

(assert (=> b!7103674 m!7827790))

(declare-fun m!7827792 () Bool)

(assert (=> bm!647107 m!7827792))

(declare-fun m!7827794 () Bool)

(assert (=> bm!647112 m!7827794))

(assert (=> b!7103490 d!2218969))

(declare-fun b!7103697 () Bool)

(declare-fun e!4269601 () Bool)

(declare-fun tp!1953353 () Bool)

(declare-fun tp!1953351 () Bool)

(assert (=> b!7103697 (= e!4269601 (and tp!1953353 tp!1953351))))

(declare-fun b!7103694 () Bool)

(assert (=> b!7103694 (= e!4269601 tp_is_empty!45031)))

(declare-fun b!7103695 () Bool)

(declare-fun tp!1953355 () Bool)

(declare-fun tp!1953352 () Bool)

(assert (=> b!7103695 (= e!4269601 (and tp!1953355 tp!1953352))))

(assert (=> b!7103488 (= tp!1953340 e!4269601)))

(declare-fun b!7103696 () Bool)

(declare-fun tp!1953354 () Bool)

(assert (=> b!7103696 (= e!4269601 tp!1953354)))

(assert (= (and b!7103488 ((_ is ElementMatch!17899) (reg!18228 r!11554))) b!7103694))

(assert (= (and b!7103488 ((_ is Concat!26744) (reg!18228 r!11554))) b!7103695))

(assert (= (and b!7103488 ((_ is Star!17899) (reg!18228 r!11554))) b!7103696))

(assert (= (and b!7103488 ((_ is Union!17899) (reg!18228 r!11554))) b!7103697))

(declare-fun b!7103706 () Bool)

(declare-fun e!4269606 () Bool)

(declare-fun tp!1953360 () Bool)

(declare-fun tp!1953361 () Bool)

(assert (=> b!7103706 (= e!4269606 (and tp!1953360 tp!1953361))))

(assert (=> b!7103489 (= tp!1953336 e!4269606)))

(assert (= (and b!7103489 ((_ is Cons!68736) (exprs!7393 c!9994))) b!7103706))

(declare-fun b!7103710 () Bool)

(declare-fun e!4269607 () Bool)

(declare-fun tp!1953364 () Bool)

(declare-fun tp!1953362 () Bool)

(assert (=> b!7103710 (= e!4269607 (and tp!1953364 tp!1953362))))

(declare-fun b!7103707 () Bool)

(assert (=> b!7103707 (= e!4269607 tp_is_empty!45031)))

(declare-fun b!7103708 () Bool)

(declare-fun tp!1953366 () Bool)

(declare-fun tp!1953363 () Bool)

(assert (=> b!7103708 (= e!4269607 (and tp!1953366 tp!1953363))))

(assert (=> b!7103484 (= tp!1953334 e!4269607)))

(declare-fun b!7103709 () Bool)

(declare-fun tp!1953365 () Bool)

(assert (=> b!7103709 (= e!4269607 tp!1953365)))

(assert (= (and b!7103484 ((_ is ElementMatch!17899) (regOne!36310 r!11554))) b!7103707))

(assert (= (and b!7103484 ((_ is Concat!26744) (regOne!36310 r!11554))) b!7103708))

(assert (= (and b!7103484 ((_ is Star!17899) (regOne!36310 r!11554))) b!7103709))

(assert (= (and b!7103484 ((_ is Union!17899) (regOne!36310 r!11554))) b!7103710))

(declare-fun b!7103714 () Bool)

(declare-fun e!4269608 () Bool)

(declare-fun tp!1953369 () Bool)

(declare-fun tp!1953367 () Bool)

(assert (=> b!7103714 (= e!4269608 (and tp!1953369 tp!1953367))))

(declare-fun b!7103711 () Bool)

(assert (=> b!7103711 (= e!4269608 tp_is_empty!45031)))

(declare-fun b!7103712 () Bool)

(declare-fun tp!1953371 () Bool)

(declare-fun tp!1953368 () Bool)

(assert (=> b!7103712 (= e!4269608 (and tp!1953371 tp!1953368))))

(assert (=> b!7103484 (= tp!1953335 e!4269608)))

(declare-fun b!7103713 () Bool)

(declare-fun tp!1953370 () Bool)

(assert (=> b!7103713 (= e!4269608 tp!1953370)))

(assert (= (and b!7103484 ((_ is ElementMatch!17899) (regTwo!36310 r!11554))) b!7103711))

(assert (= (and b!7103484 ((_ is Concat!26744) (regTwo!36310 r!11554))) b!7103712))

(assert (= (and b!7103484 ((_ is Star!17899) (regTwo!36310 r!11554))) b!7103713))

(assert (= (and b!7103484 ((_ is Union!17899) (regTwo!36310 r!11554))) b!7103714))

(declare-fun b!7103718 () Bool)

(declare-fun e!4269609 () Bool)

(declare-fun tp!1953374 () Bool)

(declare-fun tp!1953372 () Bool)

(assert (=> b!7103718 (= e!4269609 (and tp!1953374 tp!1953372))))

(declare-fun b!7103715 () Bool)

(assert (=> b!7103715 (= e!4269609 tp_is_empty!45031)))

(declare-fun b!7103716 () Bool)

(declare-fun tp!1953376 () Bool)

(declare-fun tp!1953373 () Bool)

(assert (=> b!7103716 (= e!4269609 (and tp!1953376 tp!1953373))))

(assert (=> b!7103485 (= tp!1953339 e!4269609)))

(declare-fun b!7103717 () Bool)

(declare-fun tp!1953375 () Bool)

(assert (=> b!7103717 (= e!4269609 tp!1953375)))

(assert (= (and b!7103485 ((_ is ElementMatch!17899) (regOne!36311 r!11554))) b!7103715))

(assert (= (and b!7103485 ((_ is Concat!26744) (regOne!36311 r!11554))) b!7103716))

(assert (= (and b!7103485 ((_ is Star!17899) (regOne!36311 r!11554))) b!7103717))

(assert (= (and b!7103485 ((_ is Union!17899) (regOne!36311 r!11554))) b!7103718))

(declare-fun b!7103722 () Bool)

(declare-fun e!4269610 () Bool)

(declare-fun tp!1953379 () Bool)

(declare-fun tp!1953377 () Bool)

(assert (=> b!7103722 (= e!4269610 (and tp!1953379 tp!1953377))))

(declare-fun b!7103719 () Bool)

(assert (=> b!7103719 (= e!4269610 tp_is_empty!45031)))

(declare-fun b!7103720 () Bool)

(declare-fun tp!1953381 () Bool)

(declare-fun tp!1953378 () Bool)

(assert (=> b!7103720 (= e!4269610 (and tp!1953381 tp!1953378))))

(assert (=> b!7103485 (= tp!1953338 e!4269610)))

(declare-fun b!7103721 () Bool)

(declare-fun tp!1953380 () Bool)

(assert (=> b!7103721 (= e!4269610 tp!1953380)))

(assert (= (and b!7103485 ((_ is ElementMatch!17899) (regTwo!36311 r!11554))) b!7103719))

(assert (= (and b!7103485 ((_ is Concat!26744) (regTwo!36311 r!11554))) b!7103720))

(assert (= (and b!7103485 ((_ is Star!17899) (regTwo!36311 r!11554))) b!7103721))

(assert (= (and b!7103485 ((_ is Union!17899) (regTwo!36311 r!11554))) b!7103722))

(declare-fun b!7103723 () Bool)

(declare-fun e!4269611 () Bool)

(declare-fun tp!1953382 () Bool)

(declare-fun tp!1953383 () Bool)

(assert (=> b!7103723 (= e!4269611 (and tp!1953382 tp!1953383))))

(assert (=> b!7103491 (= tp!1953337 e!4269611)))

(assert (= (and b!7103491 ((_ is Cons!68736) (exprs!7393 auxCtx!45))) b!7103723))

(check-sat (not b!7103723) (not bm!647080) (not bm!647098) (not b!7103706) (not b!7103696) (not d!2218945) (not b!7103544) (not bm!647043) (not bm!647041) (not b!7103640) (not b!7103674) (not b!7103517) (not b!7103714) (not b!7103721) (not bm!647048) (not b!7103722) (not b!7103718) tp_is_empty!45031 (not b!7103618) (not bm!647095) (not bm!647100) (not b!7103716) (not bm!647112) (not d!2218943) (not b!7103710) (not bm!647082) (not b!7103709) (not bm!647107) (not d!2218959) (not b!7103708) (not bm!647050) (not b!7103641) (not d!2218965) (not b!7103717) (not b!7103713) (not b!7103695) (not bm!647077) (not b!7103712) (not b!7103652) (not b!7103697) (not bm!647110) (not b!7103720))
(check-sat)
