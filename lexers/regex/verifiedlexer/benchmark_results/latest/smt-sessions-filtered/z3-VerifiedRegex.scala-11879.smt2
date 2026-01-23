; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!667006 () Bool)

(assert start!667006)

(declare-fun b!6948652 () Bool)

(assert (=> b!6948652 true))

(assert (=> b!6948652 true))

(declare-fun bs!1857539 () Bool)

(declare-fun b!6948647 () Bool)

(assert (= bs!1857539 (and b!6948647 b!6948652)))

(declare-fun lambda!396242 () Int)

(declare-fun lambda!396241 () Int)

(assert (=> bs!1857539 (not (= lambda!396242 lambda!396241))))

(assert (=> b!6948647 true))

(assert (=> b!6948647 true))

(assert (=> b!6948647 true))

(declare-fun b!6948646 () Bool)

(declare-fun e!4179352 () Bool)

(declare-fun tp_is_empty!43235 () Bool)

(assert (=> b!6948646 (= e!4179352 tp_is_empty!43235)))

(declare-fun e!4179351 () Bool)

(declare-fun e!4179356 () Bool)

(assert (=> b!6948647 (= e!4179351 e!4179356)))

(declare-fun res!2834802 () Bool)

(assert (=> b!6948647 (=> res!2834802 e!4179356)))

(declare-datatypes ((C!34280 0))(
  ( (C!34281 (val!26842 Int)) )
))
(declare-datatypes ((List!66758 0))(
  ( (Nil!66634) (Cons!66634 (h!73082 C!34280) (t!380501 List!66758)) )
))
(declare-datatypes ((tuple2!67720 0))(
  ( (tuple2!67721 (_1!37163 List!66758) (_2!37163 List!66758)) )
))
(declare-fun cut!41 () tuple2!67720)

(declare-fun s!10388 () List!66758)

(declare-fun ++!15042 (List!66758 List!66758) List!66758)

(assert (=> b!6948647 (= res!2834802 (not (= (++!15042 (_1!37163 cut!41) (_2!37163 cut!41)) s!10388)))))

(declare-datatypes ((Unit!160730 0))(
  ( (Unit!160731) )
))
(declare-fun lt!2477746 () Unit!160730)

(declare-fun lt!2477748 () tuple2!67720)

(declare-fun ExistsThe!20 (tuple2!67720 Int) Unit!160730)

(assert (=> b!6948647 (= lt!2477746 (ExistsThe!20 lt!2477748 lambda!396242))))

(declare-fun b!6948648 () Bool)

(declare-fun e!4179349 () Bool)

(assert (=> b!6948648 (= e!4179349 (not e!4179351))))

(declare-fun res!2834804 () Bool)

(assert (=> b!6948648 (=> res!2834804 e!4179351)))

(declare-fun lt!2477751 () Bool)

(declare-fun lt!2477749 () Bool)

(assert (=> b!6948648 (= res!2834804 (or (not lt!2477751) (not lt!2477749)))))

(declare-datatypes ((Regex!17005 0))(
  ( (ElementMatch!17005 (c!1289023 C!34280)) (Concat!25850 (regOne!34522 Regex!17005) (regTwo!34522 Regex!17005)) (EmptyExpr!17005) (Star!17005 (reg!17334 Regex!17005)) (EmptyLang!17005) (Union!17005 (regOne!34523 Regex!17005) (regTwo!34523 Regex!17005)) )
))
(declare-fun lt!2477745 () Regex!17005)

(declare-fun matchRSpec!4050 (Regex!17005 List!66758) Bool)

(assert (=> b!6948648 (= lt!2477749 (matchRSpec!4050 lt!2477745 (_2!37163 lt!2477748)))))

(declare-fun matchR!9136 (Regex!17005 List!66758) Bool)

(assert (=> b!6948648 (= lt!2477749 (matchR!9136 lt!2477745 (_2!37163 lt!2477748)))))

(declare-fun lt!2477747 () Unit!160730)

(declare-fun mainMatchTheorem!4050 (Regex!17005 List!66758) Unit!160730)

(assert (=> b!6948648 (= lt!2477747 (mainMatchTheorem!4050 lt!2477745 (_2!37163 lt!2477748)))))

(declare-fun rInner!765 () Regex!17005)

(assert (=> b!6948648 (= lt!2477745 (Star!17005 rInner!765))))

(assert (=> b!6948648 (= lt!2477751 (matchRSpec!4050 rInner!765 (_1!37163 lt!2477748)))))

(assert (=> b!6948648 (= lt!2477751 (matchR!9136 rInner!765 (_1!37163 lt!2477748)))))

(declare-fun lt!2477750 () Unit!160730)

(assert (=> b!6948648 (= lt!2477750 (mainMatchTheorem!4050 rInner!765 (_1!37163 lt!2477748)))))

(declare-fun b!6948649 () Bool)

(declare-fun e!4179350 () Bool)

(declare-fun tp!1915453 () Bool)

(assert (=> b!6948649 (= e!4179350 (and tp_is_empty!43235 tp!1915453))))

(declare-fun res!2834805 () Bool)

(declare-fun e!4179354 () Bool)

(assert (=> start!667006 (=> (not res!2834805) (not e!4179354))))

(declare-fun validRegex!8711 (Regex!17005) Bool)

(assert (=> start!667006 (= res!2834805 (validRegex!8711 rInner!765))))

(assert (=> start!667006 e!4179354))

(assert (=> start!667006 e!4179352))

(assert (=> start!667006 e!4179350))

(declare-fun e!4179353 () Bool)

(declare-fun e!4179355 () Bool)

(assert (=> start!667006 (and e!4179353 e!4179355)))

(declare-fun b!6948650 () Bool)

(declare-fun tp!1915446 () Bool)

(assert (=> b!6948650 (= e!4179355 (and tp_is_empty!43235 tp!1915446))))

(declare-fun b!6948651 () Bool)

(declare-fun tp!1915449 () Bool)

(declare-fun tp!1915447 () Bool)

(assert (=> b!6948651 (= e!4179352 (and tp!1915449 tp!1915447))))

(declare-fun res!2834807 () Bool)

(assert (=> b!6948652 (=> (not res!2834807) (not e!4179354))))

(declare-fun Exists!4001 (Int) Bool)

(assert (=> b!6948652 (= res!2834807 (Exists!4001 lambda!396241))))

(declare-fun b!6948653 () Bool)

(declare-fun tp!1915450 () Bool)

(declare-fun tp!1915451 () Bool)

(assert (=> b!6948653 (= e!4179352 (and tp!1915450 tp!1915451))))

(declare-fun b!6948654 () Bool)

(declare-fun res!2834808 () Bool)

(assert (=> b!6948654 (=> res!2834808 e!4179356)))

(assert (=> b!6948654 (= res!2834808 (not (matchR!9136 rInner!765 (_1!37163 cut!41))))))

(declare-fun b!6948655 () Bool)

(assert (=> b!6948655 (= e!4179354 e!4179349)))

(declare-fun res!2834803 () Bool)

(assert (=> b!6948655 (=> (not res!2834803) (not e!4179349))))

(assert (=> b!6948655 (= res!2834803 (= (++!15042 (_1!37163 lt!2477748) (_2!37163 lt!2477748)) s!10388))))

(declare-fun pickWitness!350 (Int) tuple2!67720)

(assert (=> b!6948655 (= lt!2477748 (pickWitness!350 lambda!396241))))

(declare-fun b!6948656 () Bool)

(declare-fun tp!1915452 () Bool)

(assert (=> b!6948656 (= e!4179352 tp!1915452)))

(declare-fun b!6948657 () Bool)

(declare-fun res!2834806 () Bool)

(assert (=> b!6948657 (=> (not res!2834806) (not e!4179354))))

(declare-fun nullable!6818 (Regex!17005) Bool)

(assert (=> b!6948657 (= res!2834806 (not (nullable!6818 rInner!765)))))

(declare-fun b!6948658 () Bool)

(assert (=> b!6948658 (= e!4179356 (validRegex!8711 lt!2477745))))

(declare-fun b!6948659 () Bool)

(declare-fun tp!1915448 () Bool)

(assert (=> b!6948659 (= e!4179353 (and tp_is_empty!43235 tp!1915448))))

(assert (= (and start!667006 res!2834805) b!6948657))

(assert (= (and b!6948657 res!2834806) b!6948652))

(assert (= (and b!6948652 res!2834807) b!6948655))

(assert (= (and b!6948655 res!2834803) b!6948648))

(assert (= (and b!6948648 (not res!2834804)) b!6948647))

(assert (= (and b!6948647 (not res!2834802)) b!6948654))

(assert (= (and b!6948654 (not res!2834808)) b!6948658))

(get-info :version)

(assert (= (and start!667006 ((_ is ElementMatch!17005) rInner!765)) b!6948646))

(assert (= (and start!667006 ((_ is Concat!25850) rInner!765)) b!6948653))

(assert (= (and start!667006 ((_ is Star!17005) rInner!765)) b!6948656))

(assert (= (and start!667006 ((_ is Union!17005) rInner!765)) b!6948651))

(assert (= (and start!667006 ((_ is Cons!66634) s!10388)) b!6948649))

(assert (= (and start!667006 ((_ is Cons!66634) (_1!37163 cut!41))) b!6948659))

(assert (= (and start!667006 ((_ is Cons!66634) (_2!37163 cut!41))) b!6948650))

(declare-fun m!7651438 () Bool)

(assert (=> b!6948647 m!7651438))

(declare-fun m!7651440 () Bool)

(assert (=> b!6948647 m!7651440))

(declare-fun m!7651442 () Bool)

(assert (=> b!6948648 m!7651442))

(declare-fun m!7651444 () Bool)

(assert (=> b!6948648 m!7651444))

(declare-fun m!7651446 () Bool)

(assert (=> b!6948648 m!7651446))

(declare-fun m!7651448 () Bool)

(assert (=> b!6948648 m!7651448))

(declare-fun m!7651450 () Bool)

(assert (=> b!6948648 m!7651450))

(declare-fun m!7651452 () Bool)

(assert (=> b!6948648 m!7651452))

(declare-fun m!7651454 () Bool)

(assert (=> b!6948652 m!7651454))

(declare-fun m!7651456 () Bool)

(assert (=> start!667006 m!7651456))

(declare-fun m!7651458 () Bool)

(assert (=> b!6948654 m!7651458))

(declare-fun m!7651460 () Bool)

(assert (=> b!6948657 m!7651460))

(declare-fun m!7651462 () Bool)

(assert (=> b!6948655 m!7651462))

(declare-fun m!7651464 () Bool)

(assert (=> b!6948655 m!7651464))

(declare-fun m!7651466 () Bool)

(assert (=> b!6948658 m!7651466))

(check-sat (not b!6948659) (not b!6948658) tp_is_empty!43235 (not b!6948657) (not b!6948648) (not b!6948647) (not b!6948653) (not start!667006) (not b!6948649) (not b!6948652) (not b!6948654) (not b!6948655) (not b!6948651) (not b!6948656) (not b!6948650))
(check-sat)
(get-model)

(declare-fun d!2168890 () Bool)

(declare-fun nullableFct!2550 (Regex!17005) Bool)

(assert (=> d!2168890 (= (nullable!6818 rInner!765) (nullableFct!2550 rInner!765))))

(declare-fun bs!1857540 () Bool)

(assert (= bs!1857540 d!2168890))

(declare-fun m!7651468 () Bool)

(assert (=> bs!1857540 m!7651468))

(assert (=> b!6948657 d!2168890))

(declare-fun d!2168892 () Bool)

(declare-fun choose!51780 (Int) Bool)

(assert (=> d!2168892 (= (Exists!4001 lambda!396241) (choose!51780 lambda!396241))))

(declare-fun bs!1857541 () Bool)

(assert (= bs!1857541 d!2168892))

(declare-fun m!7651470 () Bool)

(assert (=> bs!1857541 m!7651470))

(assert (=> b!6948652 d!2168892))

(declare-fun b!6948673 () Bool)

(declare-fun e!4179361 () List!66758)

(assert (=> b!6948673 (= e!4179361 (Cons!66634 (h!73082 (_1!37163 cut!41)) (++!15042 (t!380501 (_1!37163 cut!41)) (_2!37163 cut!41))))))

(declare-fun b!6948674 () Bool)

(declare-fun res!2834814 () Bool)

(declare-fun e!4179362 () Bool)

(assert (=> b!6948674 (=> (not res!2834814) (not e!4179362))))

(declare-fun lt!2477754 () List!66758)

(declare-fun size!40819 (List!66758) Int)

(assert (=> b!6948674 (= res!2834814 (= (size!40819 lt!2477754) (+ (size!40819 (_1!37163 cut!41)) (size!40819 (_2!37163 cut!41)))))))

(declare-fun d!2168894 () Bool)

(assert (=> d!2168894 e!4179362))

(declare-fun res!2834813 () Bool)

(assert (=> d!2168894 (=> (not res!2834813) (not e!4179362))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13122 (List!66758) (InoxSet C!34280))

(assert (=> d!2168894 (= res!2834813 (= (content!13122 lt!2477754) ((_ map or) (content!13122 (_1!37163 cut!41)) (content!13122 (_2!37163 cut!41)))))))

(assert (=> d!2168894 (= lt!2477754 e!4179361)))

(declare-fun c!1289026 () Bool)

(assert (=> d!2168894 (= c!1289026 ((_ is Nil!66634) (_1!37163 cut!41)))))

(assert (=> d!2168894 (= (++!15042 (_1!37163 cut!41) (_2!37163 cut!41)) lt!2477754)))

(declare-fun b!6948677 () Bool)

(assert (=> b!6948677 (= e!4179362 (or (not (= (_2!37163 cut!41) Nil!66634)) (= lt!2477754 (_1!37163 cut!41))))))

(declare-fun b!6948672 () Bool)

(assert (=> b!6948672 (= e!4179361 (_2!37163 cut!41))))

(assert (= (and d!2168894 c!1289026) b!6948672))

(assert (= (and d!2168894 (not c!1289026)) b!6948673))

(assert (= (and d!2168894 res!2834813) b!6948674))

(assert (= (and b!6948674 res!2834814) b!6948677))

(declare-fun m!7651472 () Bool)

(assert (=> b!6948673 m!7651472))

(declare-fun m!7651474 () Bool)

(assert (=> b!6948674 m!7651474))

(declare-fun m!7651476 () Bool)

(assert (=> b!6948674 m!7651476))

(declare-fun m!7651478 () Bool)

(assert (=> b!6948674 m!7651478))

(declare-fun m!7651480 () Bool)

(assert (=> d!2168894 m!7651480))

(declare-fun m!7651482 () Bool)

(assert (=> d!2168894 m!7651482))

(declare-fun m!7651484 () Bool)

(assert (=> d!2168894 m!7651484))

(assert (=> b!6948647 d!2168894))

(declare-fun d!2168898 () Bool)

(assert (=> d!2168898 (Exists!4001 lambda!396242)))

(declare-fun lt!2477764 () Unit!160730)

(declare-fun choose!51781 (tuple2!67720 Int) Unit!160730)

(assert (=> d!2168898 (= lt!2477764 (choose!51781 lt!2477748 lambda!396242))))

(declare-fun dynLambda!26577 (Int tuple2!67720) Bool)

(assert (=> d!2168898 (dynLambda!26577 lambda!396242 lt!2477748)))

(assert (=> d!2168898 (= (ExistsThe!20 lt!2477748 lambda!396242) lt!2477764)))

(declare-fun b_lambda!260371 () Bool)

(assert (=> (not b_lambda!260371) (not d!2168898)))

(declare-fun bs!1857543 () Bool)

(assert (= bs!1857543 d!2168898))

(declare-fun m!7651508 () Bool)

(assert (=> bs!1857543 m!7651508))

(declare-fun m!7651522 () Bool)

(assert (=> bs!1857543 m!7651522))

(declare-fun m!7651524 () Bool)

(assert (=> bs!1857543 m!7651524))

(assert (=> b!6948647 d!2168898))

(declare-fun d!2168906 () Bool)

(declare-fun res!2834851 () Bool)

(declare-fun e!4179411 () Bool)

(assert (=> d!2168906 (=> res!2834851 e!4179411)))

(assert (=> d!2168906 (= res!2834851 ((_ is ElementMatch!17005) lt!2477745))))

(assert (=> d!2168906 (= (validRegex!8711 lt!2477745) e!4179411)))

(declare-fun b!6948737 () Bool)

(declare-fun e!4179412 () Bool)

(declare-fun call!631143 () Bool)

(assert (=> b!6948737 (= e!4179412 call!631143)))

(declare-fun b!6948738 () Bool)

(declare-fun e!4179410 () Bool)

(assert (=> b!6948738 (= e!4179410 e!4179412)))

(declare-fun res!2834852 () Bool)

(assert (=> b!6948738 (= res!2834852 (not (nullable!6818 (reg!17334 lt!2477745))))))

(assert (=> b!6948738 (=> (not res!2834852) (not e!4179412))))

(declare-fun b!6948739 () Bool)

(declare-fun res!2834849 () Bool)

(declare-fun e!4179409 () Bool)

(assert (=> b!6948739 (=> (not res!2834849) (not e!4179409))))

(declare-fun call!631145 () Bool)

(assert (=> b!6948739 (= res!2834849 call!631145)))

(declare-fun e!4179406 () Bool)

(assert (=> b!6948739 (= e!4179406 e!4179409)))

(declare-fun b!6948740 () Bool)

(assert (=> b!6948740 (= e!4179411 e!4179410)))

(declare-fun c!1289042 () Bool)

(assert (=> b!6948740 (= c!1289042 ((_ is Star!17005) lt!2477745))))

(declare-fun bm!631138 () Bool)

(declare-fun c!1289041 () Bool)

(assert (=> bm!631138 (= call!631143 (validRegex!8711 (ite c!1289042 (reg!17334 lt!2477745) (ite c!1289041 (regOne!34523 lt!2477745) (regTwo!34522 lt!2477745)))))))

(declare-fun b!6948741 () Bool)

(declare-fun e!4179408 () Bool)

(declare-fun e!4179407 () Bool)

(assert (=> b!6948741 (= e!4179408 e!4179407)))

(declare-fun res!2834850 () Bool)

(assert (=> b!6948741 (=> (not res!2834850) (not e!4179407))))

(declare-fun call!631144 () Bool)

(assert (=> b!6948741 (= res!2834850 call!631144)))

(declare-fun b!6948742 () Bool)

(declare-fun res!2834848 () Bool)

(assert (=> b!6948742 (=> res!2834848 e!4179408)))

(assert (=> b!6948742 (= res!2834848 (not ((_ is Concat!25850) lt!2477745)))))

(assert (=> b!6948742 (= e!4179406 e!4179408)))

(declare-fun bm!631139 () Bool)

(assert (=> bm!631139 (= call!631144 (validRegex!8711 (ite c!1289041 (regTwo!34523 lt!2477745) (regOne!34522 lt!2477745))))))

(declare-fun b!6948743 () Bool)

(assert (=> b!6948743 (= e!4179409 call!631144)))

(declare-fun b!6948744 () Bool)

(assert (=> b!6948744 (= e!4179410 e!4179406)))

(assert (=> b!6948744 (= c!1289041 ((_ is Union!17005) lt!2477745))))

(declare-fun b!6948745 () Bool)

(assert (=> b!6948745 (= e!4179407 call!631145)))

(declare-fun bm!631140 () Bool)

(assert (=> bm!631140 (= call!631145 call!631143)))

(assert (= (and d!2168906 (not res!2834851)) b!6948740))

(assert (= (and b!6948740 c!1289042) b!6948738))

(assert (= (and b!6948740 (not c!1289042)) b!6948744))

(assert (= (and b!6948738 res!2834852) b!6948737))

(assert (= (and b!6948744 c!1289041) b!6948739))

(assert (= (and b!6948744 (not c!1289041)) b!6948742))

(assert (= (and b!6948739 res!2834849) b!6948743))

(assert (= (and b!6948742 (not res!2834848)) b!6948741))

(assert (= (and b!6948741 res!2834850) b!6948745))

(assert (= (or b!6948739 b!6948745) bm!631140))

(assert (= (or b!6948743 b!6948741) bm!631139))

(assert (= (or b!6948737 bm!631140) bm!631138))

(declare-fun m!7651536 () Bool)

(assert (=> b!6948738 m!7651536))

(declare-fun m!7651538 () Bool)

(assert (=> bm!631138 m!7651538))

(declare-fun m!7651540 () Bool)

(assert (=> bm!631139 m!7651540))

(assert (=> b!6948658 d!2168906))

(declare-fun d!2168912 () Bool)

(declare-fun res!2834856 () Bool)

(declare-fun e!4179420 () Bool)

(assert (=> d!2168912 (=> res!2834856 e!4179420)))

(assert (=> d!2168912 (= res!2834856 ((_ is ElementMatch!17005) rInner!765))))

(assert (=> d!2168912 (= (validRegex!8711 rInner!765) e!4179420)))

(declare-fun b!6948750 () Bool)

(declare-fun e!4179421 () Bool)

(declare-fun call!631146 () Bool)

(assert (=> b!6948750 (= e!4179421 call!631146)))

(declare-fun b!6948751 () Bool)

(declare-fun e!4179419 () Bool)

(assert (=> b!6948751 (= e!4179419 e!4179421)))

(declare-fun res!2834857 () Bool)

(assert (=> b!6948751 (= res!2834857 (not (nullable!6818 (reg!17334 rInner!765))))))

(assert (=> b!6948751 (=> (not res!2834857) (not e!4179421))))

(declare-fun b!6948752 () Bool)

(declare-fun res!2834854 () Bool)

(declare-fun e!4179417 () Bool)

(assert (=> b!6948752 (=> (not res!2834854) (not e!4179417))))

(declare-fun call!631148 () Bool)

(assert (=> b!6948752 (= res!2834854 call!631148)))

(declare-fun e!4179413 () Bool)

(assert (=> b!6948752 (= e!4179413 e!4179417)))

(declare-fun b!6948753 () Bool)

(assert (=> b!6948753 (= e!4179420 e!4179419)))

(declare-fun c!1289046 () Bool)

(assert (=> b!6948753 (= c!1289046 ((_ is Star!17005) rInner!765))))

(declare-fun c!1289043 () Bool)

(declare-fun bm!631141 () Bool)

(assert (=> bm!631141 (= call!631146 (validRegex!8711 (ite c!1289046 (reg!17334 rInner!765) (ite c!1289043 (regOne!34523 rInner!765) (regTwo!34522 rInner!765)))))))

(declare-fun b!6948754 () Bool)

(declare-fun e!4179415 () Bool)

(declare-fun e!4179414 () Bool)

(assert (=> b!6948754 (= e!4179415 e!4179414)))

(declare-fun res!2834855 () Bool)

(assert (=> b!6948754 (=> (not res!2834855) (not e!4179414))))

(declare-fun call!631147 () Bool)

(assert (=> b!6948754 (= res!2834855 call!631147)))

(declare-fun b!6948755 () Bool)

(declare-fun res!2834853 () Bool)

(assert (=> b!6948755 (=> res!2834853 e!4179415)))

(assert (=> b!6948755 (= res!2834853 (not ((_ is Concat!25850) rInner!765)))))

(assert (=> b!6948755 (= e!4179413 e!4179415)))

(declare-fun bm!631142 () Bool)

(assert (=> bm!631142 (= call!631147 (validRegex!8711 (ite c!1289043 (regTwo!34523 rInner!765) (regOne!34522 rInner!765))))))

(declare-fun b!6948756 () Bool)

(assert (=> b!6948756 (= e!4179417 call!631147)))

(declare-fun b!6948757 () Bool)

(assert (=> b!6948757 (= e!4179419 e!4179413)))

(assert (=> b!6948757 (= c!1289043 ((_ is Union!17005) rInner!765))))

(declare-fun b!6948758 () Bool)

(assert (=> b!6948758 (= e!4179414 call!631148)))

(declare-fun bm!631143 () Bool)

(assert (=> bm!631143 (= call!631148 call!631146)))

(assert (= (and d!2168912 (not res!2834856)) b!6948753))

(assert (= (and b!6948753 c!1289046) b!6948751))

(assert (= (and b!6948753 (not c!1289046)) b!6948757))

(assert (= (and b!6948751 res!2834857) b!6948750))

(assert (= (and b!6948757 c!1289043) b!6948752))

(assert (= (and b!6948757 (not c!1289043)) b!6948755))

(assert (= (and b!6948752 res!2834854) b!6948756))

(assert (= (and b!6948755 (not res!2834853)) b!6948754))

(assert (= (and b!6948754 res!2834855) b!6948758))

(assert (= (or b!6948752 b!6948758) bm!631143))

(assert (= (or b!6948756 b!6948754) bm!631142))

(assert (= (or b!6948750 bm!631143) bm!631141))

(declare-fun m!7651542 () Bool)

(assert (=> b!6948751 m!7651542))

(declare-fun m!7651544 () Bool)

(assert (=> bm!631141 m!7651544))

(declare-fun m!7651546 () Bool)

(assert (=> bm!631142 m!7651546))

(assert (=> start!667006 d!2168912))

(declare-fun bs!1857560 () Bool)

(declare-fun b!6948928 () Bool)

(assert (= bs!1857560 (and b!6948928 b!6948652)))

(declare-fun lambda!396255 () Int)

(assert (=> bs!1857560 (not (= lambda!396255 lambda!396241))))

(declare-fun bs!1857561 () Bool)

(assert (= bs!1857561 (and b!6948928 b!6948647)))

(assert (=> bs!1857561 (= (and (= (_1!37163 lt!2477748) s!10388) (= (reg!17334 rInner!765) rInner!765) (= rInner!765 lt!2477745)) (= lambda!396255 lambda!396242))))

(assert (=> b!6948928 true))

(assert (=> b!6948928 true))

(declare-fun bs!1857564 () Bool)

(declare-fun b!6948922 () Bool)

(assert (= bs!1857564 (and b!6948922 b!6948652)))

(declare-fun lambda!396256 () Int)

(assert (=> bs!1857564 (not (= lambda!396256 lambda!396241))))

(declare-fun bs!1857566 () Bool)

(assert (= bs!1857566 (and b!6948922 b!6948647)))

(assert (=> bs!1857566 (not (= lambda!396256 lambda!396242))))

(declare-fun bs!1857567 () Bool)

(assert (= bs!1857567 (and b!6948922 b!6948928)))

(assert (=> bs!1857567 (not (= lambda!396256 lambda!396255))))

(assert (=> b!6948922 true))

(assert (=> b!6948922 true))

(declare-fun b!6948920 () Bool)

(declare-fun e!4179516 () Bool)

(assert (=> b!6948920 (= e!4179516 (= (_1!37163 lt!2477748) (Cons!66634 (c!1289023 rInner!765) Nil!66634)))))

(declare-fun c!1289088 () Bool)

(declare-fun bm!631164 () Bool)

(declare-fun call!631170 () Bool)

(assert (=> bm!631164 (= call!631170 (Exists!4001 (ite c!1289088 lambda!396255 lambda!396256)))))

(declare-fun b!6948921 () Bool)

(declare-fun e!4179518 () Bool)

(declare-fun e!4179517 () Bool)

(assert (=> b!6948921 (= e!4179518 e!4179517)))

(assert (=> b!6948921 (= c!1289088 ((_ is Star!17005) rInner!765))))

(assert (=> b!6948922 (= e!4179517 call!631170)))

(declare-fun b!6948923 () Bool)

(declare-fun e!4179513 () Bool)

(declare-fun e!4179515 () Bool)

(assert (=> b!6948923 (= e!4179513 e!4179515)))

(declare-fun res!2834941 () Bool)

(assert (=> b!6948923 (= res!2834941 (not ((_ is EmptyLang!17005) rInner!765)))))

(assert (=> b!6948923 (=> (not res!2834941) (not e!4179515))))

(declare-fun bm!631165 () Bool)

(declare-fun call!631169 () Bool)

(declare-fun isEmpty!38894 (List!66758) Bool)

(assert (=> bm!631165 (= call!631169 (isEmpty!38894 (_1!37163 lt!2477748)))))

(declare-fun b!6948924 () Bool)

(declare-fun c!1289087 () Bool)

(assert (=> b!6948924 (= c!1289087 ((_ is Union!17005) rInner!765))))

(assert (=> b!6948924 (= e!4179516 e!4179518)))

(declare-fun b!6948925 () Bool)

(assert (=> b!6948925 (= e!4179513 call!631169)))

(declare-fun b!6948927 () Bool)

(declare-fun c!1289089 () Bool)

(assert (=> b!6948927 (= c!1289089 ((_ is ElementMatch!17005) rInner!765))))

(assert (=> b!6948927 (= e!4179515 e!4179516)))

(declare-fun e!4179512 () Bool)

(assert (=> b!6948928 (= e!4179512 call!631170)))

(declare-fun b!6948929 () Bool)

(declare-fun e!4179514 () Bool)

(assert (=> b!6948929 (= e!4179518 e!4179514)))

(declare-fun res!2834943 () Bool)

(assert (=> b!6948929 (= res!2834943 (matchRSpec!4050 (regOne!34523 rInner!765) (_1!37163 lt!2477748)))))

(assert (=> b!6948929 (=> res!2834943 e!4179514)))

(declare-fun b!6948930 () Bool)

(declare-fun res!2834942 () Bool)

(assert (=> b!6948930 (=> res!2834942 e!4179512)))

(assert (=> b!6948930 (= res!2834942 call!631169)))

(assert (=> b!6948930 (= e!4179517 e!4179512)))

(declare-fun b!6948926 () Bool)

(assert (=> b!6948926 (= e!4179514 (matchRSpec!4050 (regTwo!34523 rInner!765) (_1!37163 lt!2477748)))))

(declare-fun d!2168914 () Bool)

(declare-fun c!1289086 () Bool)

(assert (=> d!2168914 (= c!1289086 ((_ is EmptyExpr!17005) rInner!765))))

(assert (=> d!2168914 (= (matchRSpec!4050 rInner!765 (_1!37163 lt!2477748)) e!4179513)))

(assert (= (and d!2168914 c!1289086) b!6948925))

(assert (= (and d!2168914 (not c!1289086)) b!6948923))

(assert (= (and b!6948923 res!2834941) b!6948927))

(assert (= (and b!6948927 c!1289089) b!6948920))

(assert (= (and b!6948927 (not c!1289089)) b!6948924))

(assert (= (and b!6948924 c!1289087) b!6948929))

(assert (= (and b!6948924 (not c!1289087)) b!6948921))

(assert (= (and b!6948929 (not res!2834943)) b!6948926))

(assert (= (and b!6948921 c!1289088) b!6948930))

(assert (= (and b!6948921 (not c!1289088)) b!6948922))

(assert (= (and b!6948930 (not res!2834942)) b!6948928))

(assert (= (or b!6948928 b!6948922) bm!631164))

(assert (= (or b!6948925 b!6948930) bm!631165))

(declare-fun m!7651612 () Bool)

(assert (=> bm!631164 m!7651612))

(declare-fun m!7651614 () Bool)

(assert (=> bm!631165 m!7651614))

(declare-fun m!7651616 () Bool)

(assert (=> b!6948929 m!7651616))

(declare-fun m!7651618 () Bool)

(assert (=> b!6948926 m!7651618))

(assert (=> b!6948648 d!2168914))

(declare-fun bs!1857570 () Bool)

(declare-fun b!6948971 () Bool)

(assert (= bs!1857570 (and b!6948971 b!6948652)))

(declare-fun lambda!396257 () Int)

(assert (=> bs!1857570 (not (= lambda!396257 lambda!396241))))

(declare-fun bs!1857571 () Bool)

(assert (= bs!1857571 (and b!6948971 b!6948647)))

(assert (=> bs!1857571 (= (and (= (_2!37163 lt!2477748) s!10388) (= (reg!17334 lt!2477745) rInner!765)) (= lambda!396257 lambda!396242))))

(declare-fun bs!1857572 () Bool)

(assert (= bs!1857572 (and b!6948971 b!6948928)))

(assert (=> bs!1857572 (= (and (= (_2!37163 lt!2477748) (_1!37163 lt!2477748)) (= (reg!17334 lt!2477745) (reg!17334 rInner!765)) (= lt!2477745 rInner!765)) (= lambda!396257 lambda!396255))))

(declare-fun bs!1857573 () Bool)

(assert (= bs!1857573 (and b!6948971 b!6948922)))

(assert (=> bs!1857573 (not (= lambda!396257 lambda!396256))))

(assert (=> b!6948971 true))

(assert (=> b!6948971 true))

(declare-fun bs!1857574 () Bool)

(declare-fun b!6948964 () Bool)

(assert (= bs!1857574 (and b!6948964 b!6948928)))

(declare-fun lambda!396258 () Int)

(assert (=> bs!1857574 (not (= lambda!396258 lambda!396255))))

(declare-fun bs!1857575 () Bool)

(assert (= bs!1857575 (and b!6948964 b!6948971)))

(assert (=> bs!1857575 (not (= lambda!396258 lambda!396257))))

(declare-fun bs!1857576 () Bool)

(assert (= bs!1857576 (and b!6948964 b!6948922)))

(assert (=> bs!1857576 (= (and (= (_2!37163 lt!2477748) (_1!37163 lt!2477748)) (= (regOne!34522 lt!2477745) (regOne!34522 rInner!765)) (= (regTwo!34522 lt!2477745) (regTwo!34522 rInner!765))) (= lambda!396258 lambda!396256))))

(declare-fun bs!1857577 () Bool)

(assert (= bs!1857577 (and b!6948964 b!6948652)))

(assert (=> bs!1857577 (not (= lambda!396258 lambda!396241))))

(declare-fun bs!1857578 () Bool)

(assert (= bs!1857578 (and b!6948964 b!6948647)))

(assert (=> bs!1857578 (not (= lambda!396258 lambda!396242))))

(assert (=> b!6948964 true))

(assert (=> b!6948964 true))

(declare-fun b!6948962 () Bool)

(declare-fun e!4179532 () Bool)

(assert (=> b!6948962 (= e!4179532 (= (_2!37163 lt!2477748) (Cons!66634 (c!1289023 lt!2477745) Nil!66634)))))

(declare-fun bm!631166 () Bool)

(declare-fun c!1289092 () Bool)

(declare-fun call!631172 () Bool)

(assert (=> bm!631166 (= call!631172 (Exists!4001 (ite c!1289092 lambda!396257 lambda!396258)))))

(declare-fun b!6948963 () Bool)

(declare-fun e!4179534 () Bool)

(declare-fun e!4179533 () Bool)

(assert (=> b!6948963 (= e!4179534 e!4179533)))

(assert (=> b!6948963 (= c!1289092 ((_ is Star!17005) lt!2477745))))

(assert (=> b!6948964 (= e!4179533 call!631172)))

(declare-fun b!6948965 () Bool)

(declare-fun e!4179529 () Bool)

(declare-fun e!4179531 () Bool)

(assert (=> b!6948965 (= e!4179529 e!4179531)))

(declare-fun res!2834944 () Bool)

(assert (=> b!6948965 (= res!2834944 (not ((_ is EmptyLang!17005) lt!2477745)))))

(assert (=> b!6948965 (=> (not res!2834944) (not e!4179531))))

(declare-fun bm!631167 () Bool)

(declare-fun call!631171 () Bool)

(assert (=> bm!631167 (= call!631171 (isEmpty!38894 (_2!37163 lt!2477748)))))

(declare-fun b!6948966 () Bool)

(declare-fun c!1289091 () Bool)

(assert (=> b!6948966 (= c!1289091 ((_ is Union!17005) lt!2477745))))

(assert (=> b!6948966 (= e!4179532 e!4179534)))

(declare-fun b!6948967 () Bool)

(assert (=> b!6948967 (= e!4179529 call!631171)))

(declare-fun b!6948970 () Bool)

(declare-fun c!1289093 () Bool)

(assert (=> b!6948970 (= c!1289093 ((_ is ElementMatch!17005) lt!2477745))))

(assert (=> b!6948970 (= e!4179531 e!4179532)))

(declare-fun e!4179528 () Bool)

(assert (=> b!6948971 (= e!4179528 call!631172)))

(declare-fun b!6948972 () Bool)

(declare-fun e!4179530 () Bool)

(assert (=> b!6948972 (= e!4179534 e!4179530)))

(declare-fun res!2834946 () Bool)

(assert (=> b!6948972 (= res!2834946 (matchRSpec!4050 (regOne!34523 lt!2477745) (_2!37163 lt!2477748)))))

(assert (=> b!6948972 (=> res!2834946 e!4179530)))

(declare-fun b!6948973 () Bool)

(declare-fun res!2834945 () Bool)

(assert (=> b!6948973 (=> res!2834945 e!4179528)))

(assert (=> b!6948973 (= res!2834945 call!631171)))

(assert (=> b!6948973 (= e!4179533 e!4179528)))

(declare-fun b!6948968 () Bool)

(assert (=> b!6948968 (= e!4179530 (matchRSpec!4050 (regTwo!34523 lt!2477745) (_2!37163 lt!2477748)))))

(declare-fun d!2168934 () Bool)

(declare-fun c!1289090 () Bool)

(assert (=> d!2168934 (= c!1289090 ((_ is EmptyExpr!17005) lt!2477745))))

(assert (=> d!2168934 (= (matchRSpec!4050 lt!2477745 (_2!37163 lt!2477748)) e!4179529)))

(assert (= (and d!2168934 c!1289090) b!6948967))

(assert (= (and d!2168934 (not c!1289090)) b!6948965))

(assert (= (and b!6948965 res!2834944) b!6948970))

(assert (= (and b!6948970 c!1289093) b!6948962))

(assert (= (and b!6948970 (not c!1289093)) b!6948966))

(assert (= (and b!6948966 c!1289091) b!6948972))

(assert (= (and b!6948966 (not c!1289091)) b!6948963))

(assert (= (and b!6948972 (not res!2834946)) b!6948968))

(assert (= (and b!6948963 c!1289092) b!6948973))

(assert (= (and b!6948963 (not c!1289092)) b!6948964))

(assert (= (and b!6948973 (not res!2834945)) b!6948971))

(assert (= (or b!6948971 b!6948964) bm!631166))

(assert (= (or b!6948967 b!6948973) bm!631167))

(declare-fun m!7651626 () Bool)

(assert (=> bm!631166 m!7651626))

(declare-fun m!7651628 () Bool)

(assert (=> bm!631167 m!7651628))

(declare-fun m!7651630 () Bool)

(assert (=> b!6948972 m!7651630))

(declare-fun m!7651632 () Bool)

(assert (=> b!6948968 m!7651632))

(assert (=> b!6948648 d!2168934))

(declare-fun b!6949012 () Bool)

(declare-fun e!4179557 () Bool)

(declare-fun lt!2477779 () Bool)

(declare-fun call!631175 () Bool)

(assert (=> b!6949012 (= e!4179557 (= lt!2477779 call!631175))))

(declare-fun b!6949013 () Bool)

(declare-fun e!4179554 () Bool)

(declare-fun e!4179559 () Bool)

(assert (=> b!6949013 (= e!4179554 e!4179559)))

(declare-fun res!2834974 () Bool)

(assert (=> b!6949013 (=> (not res!2834974) (not e!4179559))))

(assert (=> b!6949013 (= res!2834974 (not lt!2477779))))

(declare-fun b!6949014 () Bool)

(declare-fun e!4179558 () Bool)

(assert (=> b!6949014 (= e!4179559 e!4179558)))

(declare-fun res!2834975 () Bool)

(assert (=> b!6949014 (=> res!2834975 e!4179558)))

(assert (=> b!6949014 (= res!2834975 call!631175)))

(declare-fun b!6949015 () Bool)

(declare-fun res!2834971 () Bool)

(assert (=> b!6949015 (=> res!2834971 e!4179554)))

(assert (=> b!6949015 (= res!2834971 (not ((_ is ElementMatch!17005) rInner!765)))))

(declare-fun e!4179555 () Bool)

(assert (=> b!6949015 (= e!4179555 e!4179554)))

(declare-fun b!6949016 () Bool)

(declare-fun res!2834970 () Bool)

(assert (=> b!6949016 (=> res!2834970 e!4179554)))

(declare-fun e!4179556 () Bool)

(assert (=> b!6949016 (= res!2834970 e!4179556)))

(declare-fun res!2834969 () Bool)

(assert (=> b!6949016 (=> (not res!2834969) (not e!4179556))))

(assert (=> b!6949016 (= res!2834969 lt!2477779)))

(declare-fun bm!631170 () Bool)

(assert (=> bm!631170 (= call!631175 (isEmpty!38894 (_1!37163 lt!2477748)))))

(declare-fun b!6949017 () Bool)

(declare-fun res!2834968 () Bool)

(assert (=> b!6949017 (=> (not res!2834968) (not e!4179556))))

(declare-fun tail!12981 (List!66758) List!66758)

(assert (=> b!6949017 (= res!2834968 (isEmpty!38894 (tail!12981 (_1!37163 lt!2477748))))))

(declare-fun b!6949018 () Bool)

(assert (=> b!6949018 (= e!4179557 e!4179555)))

(declare-fun c!1289101 () Bool)

(assert (=> b!6949018 (= c!1289101 ((_ is EmptyLang!17005) rInner!765))))

(declare-fun b!6949019 () Bool)

(declare-fun e!4179560 () Bool)

(assert (=> b!6949019 (= e!4179560 (nullable!6818 rInner!765))))

(declare-fun b!6949020 () Bool)

(declare-fun head!13929 (List!66758) C!34280)

(assert (=> b!6949020 (= e!4179558 (not (= (head!13929 (_1!37163 lt!2477748)) (c!1289023 rInner!765))))))

(declare-fun b!6949021 () Bool)

(declare-fun res!2834973 () Bool)

(assert (=> b!6949021 (=> res!2834973 e!4179558)))

(assert (=> b!6949021 (= res!2834973 (not (isEmpty!38894 (tail!12981 (_1!37163 lt!2477748)))))))

(declare-fun b!6949022 () Bool)

(declare-fun res!2834972 () Bool)

(assert (=> b!6949022 (=> (not res!2834972) (not e!4179556))))

(assert (=> b!6949022 (= res!2834972 (not call!631175))))

(declare-fun b!6949023 () Bool)

(assert (=> b!6949023 (= e!4179556 (= (head!13929 (_1!37163 lt!2477748)) (c!1289023 rInner!765)))))

(declare-fun d!2168940 () Bool)

(assert (=> d!2168940 e!4179557))

(declare-fun c!1289102 () Bool)

(assert (=> d!2168940 (= c!1289102 ((_ is EmptyExpr!17005) rInner!765))))

(assert (=> d!2168940 (= lt!2477779 e!4179560)))

(declare-fun c!1289100 () Bool)

(assert (=> d!2168940 (= c!1289100 (isEmpty!38894 (_1!37163 lt!2477748)))))

(assert (=> d!2168940 (validRegex!8711 rInner!765)))

(assert (=> d!2168940 (= (matchR!9136 rInner!765 (_1!37163 lt!2477748)) lt!2477779)))

(declare-fun b!6949024 () Bool)

(declare-fun derivativeStep!5476 (Regex!17005 C!34280) Regex!17005)

(assert (=> b!6949024 (= e!4179560 (matchR!9136 (derivativeStep!5476 rInner!765 (head!13929 (_1!37163 lt!2477748))) (tail!12981 (_1!37163 lt!2477748))))))

(declare-fun b!6949025 () Bool)

(assert (=> b!6949025 (= e!4179555 (not lt!2477779))))

(assert (= (and d!2168940 c!1289100) b!6949019))

(assert (= (and d!2168940 (not c!1289100)) b!6949024))

(assert (= (and d!2168940 c!1289102) b!6949012))

(assert (= (and d!2168940 (not c!1289102)) b!6949018))

(assert (= (and b!6949018 c!1289101) b!6949025))

(assert (= (and b!6949018 (not c!1289101)) b!6949015))

(assert (= (and b!6949015 (not res!2834971)) b!6949016))

(assert (= (and b!6949016 res!2834969) b!6949022))

(assert (= (and b!6949022 res!2834972) b!6949017))

(assert (= (and b!6949017 res!2834968) b!6949023))

(assert (= (and b!6949016 (not res!2834970)) b!6949013))

(assert (= (and b!6949013 res!2834974) b!6949014))

(assert (= (and b!6949014 (not res!2834975)) b!6949021))

(assert (= (and b!6949021 (not res!2834973)) b!6949020))

(assert (= (or b!6949012 b!6949014 b!6949022) bm!631170))

(assert (=> bm!631170 m!7651614))

(assert (=> b!6949019 m!7651460))

(declare-fun m!7651634 () Bool)

(assert (=> b!6949017 m!7651634))

(assert (=> b!6949017 m!7651634))

(declare-fun m!7651636 () Bool)

(assert (=> b!6949017 m!7651636))

(declare-fun m!7651638 () Bool)

(assert (=> b!6949023 m!7651638))

(assert (=> b!6949024 m!7651638))

(assert (=> b!6949024 m!7651638))

(declare-fun m!7651640 () Bool)

(assert (=> b!6949024 m!7651640))

(assert (=> b!6949024 m!7651634))

(assert (=> b!6949024 m!7651640))

(assert (=> b!6949024 m!7651634))

(declare-fun m!7651642 () Bool)

(assert (=> b!6949024 m!7651642))

(assert (=> b!6949021 m!7651634))

(assert (=> b!6949021 m!7651634))

(assert (=> b!6949021 m!7651636))

(assert (=> b!6949020 m!7651638))

(assert (=> d!2168940 m!7651614))

(assert (=> d!2168940 m!7651456))

(assert (=> b!6948648 d!2168940))

(declare-fun d!2168942 () Bool)

(assert (=> d!2168942 (= (matchR!9136 lt!2477745 (_2!37163 lt!2477748)) (matchRSpec!4050 lt!2477745 (_2!37163 lt!2477748)))))

(declare-fun lt!2477782 () Unit!160730)

(declare-fun choose!51784 (Regex!17005 List!66758) Unit!160730)

(assert (=> d!2168942 (= lt!2477782 (choose!51784 lt!2477745 (_2!37163 lt!2477748)))))

(assert (=> d!2168942 (validRegex!8711 lt!2477745)))

(assert (=> d!2168942 (= (mainMatchTheorem!4050 lt!2477745 (_2!37163 lt!2477748)) lt!2477782)))

(declare-fun bs!1857579 () Bool)

(assert (= bs!1857579 d!2168942))

(assert (=> bs!1857579 m!7651452))

(assert (=> bs!1857579 m!7651450))

(declare-fun m!7651644 () Bool)

(assert (=> bs!1857579 m!7651644))

(assert (=> bs!1857579 m!7651466))

(assert (=> b!6948648 d!2168942))

(declare-fun b!6949026 () Bool)

(declare-fun e!4179564 () Bool)

(declare-fun lt!2477783 () Bool)

(declare-fun call!631176 () Bool)

(assert (=> b!6949026 (= e!4179564 (= lt!2477783 call!631176))))

(declare-fun b!6949027 () Bool)

(declare-fun e!4179561 () Bool)

(declare-fun e!4179566 () Bool)

(assert (=> b!6949027 (= e!4179561 e!4179566)))

(declare-fun res!2834982 () Bool)

(assert (=> b!6949027 (=> (not res!2834982) (not e!4179566))))

(assert (=> b!6949027 (= res!2834982 (not lt!2477783))))

(declare-fun b!6949028 () Bool)

(declare-fun e!4179565 () Bool)

(assert (=> b!6949028 (= e!4179566 e!4179565)))

(declare-fun res!2834983 () Bool)

(assert (=> b!6949028 (=> res!2834983 e!4179565)))

(assert (=> b!6949028 (= res!2834983 call!631176)))

(declare-fun b!6949029 () Bool)

(declare-fun res!2834979 () Bool)

(assert (=> b!6949029 (=> res!2834979 e!4179561)))

(assert (=> b!6949029 (= res!2834979 (not ((_ is ElementMatch!17005) lt!2477745)))))

(declare-fun e!4179562 () Bool)

(assert (=> b!6949029 (= e!4179562 e!4179561)))

(declare-fun b!6949030 () Bool)

(declare-fun res!2834978 () Bool)

(assert (=> b!6949030 (=> res!2834978 e!4179561)))

(declare-fun e!4179563 () Bool)

(assert (=> b!6949030 (= res!2834978 e!4179563)))

(declare-fun res!2834977 () Bool)

(assert (=> b!6949030 (=> (not res!2834977) (not e!4179563))))

(assert (=> b!6949030 (= res!2834977 lt!2477783)))

(declare-fun bm!631171 () Bool)

(assert (=> bm!631171 (= call!631176 (isEmpty!38894 (_2!37163 lt!2477748)))))

(declare-fun b!6949031 () Bool)

(declare-fun res!2834976 () Bool)

(assert (=> b!6949031 (=> (not res!2834976) (not e!4179563))))

(assert (=> b!6949031 (= res!2834976 (isEmpty!38894 (tail!12981 (_2!37163 lt!2477748))))))

(declare-fun b!6949032 () Bool)

(assert (=> b!6949032 (= e!4179564 e!4179562)))

(declare-fun c!1289104 () Bool)

(assert (=> b!6949032 (= c!1289104 ((_ is EmptyLang!17005) lt!2477745))))

(declare-fun b!6949033 () Bool)

(declare-fun e!4179567 () Bool)

(assert (=> b!6949033 (= e!4179567 (nullable!6818 lt!2477745))))

(declare-fun b!6949034 () Bool)

(assert (=> b!6949034 (= e!4179565 (not (= (head!13929 (_2!37163 lt!2477748)) (c!1289023 lt!2477745))))))

(declare-fun b!6949035 () Bool)

(declare-fun res!2834981 () Bool)

(assert (=> b!6949035 (=> res!2834981 e!4179565)))

(assert (=> b!6949035 (= res!2834981 (not (isEmpty!38894 (tail!12981 (_2!37163 lt!2477748)))))))

(declare-fun b!6949036 () Bool)

(declare-fun res!2834980 () Bool)

(assert (=> b!6949036 (=> (not res!2834980) (not e!4179563))))

(assert (=> b!6949036 (= res!2834980 (not call!631176))))

(declare-fun b!6949037 () Bool)

(assert (=> b!6949037 (= e!4179563 (= (head!13929 (_2!37163 lt!2477748)) (c!1289023 lt!2477745)))))

(declare-fun d!2168944 () Bool)

(assert (=> d!2168944 e!4179564))

(declare-fun c!1289105 () Bool)

(assert (=> d!2168944 (= c!1289105 ((_ is EmptyExpr!17005) lt!2477745))))

(assert (=> d!2168944 (= lt!2477783 e!4179567)))

(declare-fun c!1289103 () Bool)

(assert (=> d!2168944 (= c!1289103 (isEmpty!38894 (_2!37163 lt!2477748)))))

(assert (=> d!2168944 (validRegex!8711 lt!2477745)))

(assert (=> d!2168944 (= (matchR!9136 lt!2477745 (_2!37163 lt!2477748)) lt!2477783)))

(declare-fun b!6949038 () Bool)

(assert (=> b!6949038 (= e!4179567 (matchR!9136 (derivativeStep!5476 lt!2477745 (head!13929 (_2!37163 lt!2477748))) (tail!12981 (_2!37163 lt!2477748))))))

(declare-fun b!6949039 () Bool)

(assert (=> b!6949039 (= e!4179562 (not lt!2477783))))

(assert (= (and d!2168944 c!1289103) b!6949033))

(assert (= (and d!2168944 (not c!1289103)) b!6949038))

(assert (= (and d!2168944 c!1289105) b!6949026))

(assert (= (and d!2168944 (not c!1289105)) b!6949032))

(assert (= (and b!6949032 c!1289104) b!6949039))

(assert (= (and b!6949032 (not c!1289104)) b!6949029))

(assert (= (and b!6949029 (not res!2834979)) b!6949030))

(assert (= (and b!6949030 res!2834977) b!6949036))

(assert (= (and b!6949036 res!2834980) b!6949031))

(assert (= (and b!6949031 res!2834976) b!6949037))

(assert (= (and b!6949030 (not res!2834978)) b!6949027))

(assert (= (and b!6949027 res!2834982) b!6949028))

(assert (= (and b!6949028 (not res!2834983)) b!6949035))

(assert (= (and b!6949035 (not res!2834981)) b!6949034))

(assert (= (or b!6949026 b!6949028 b!6949036) bm!631171))

(assert (=> bm!631171 m!7651628))

(declare-fun m!7651646 () Bool)

(assert (=> b!6949033 m!7651646))

(declare-fun m!7651648 () Bool)

(assert (=> b!6949031 m!7651648))

(assert (=> b!6949031 m!7651648))

(declare-fun m!7651650 () Bool)

(assert (=> b!6949031 m!7651650))

(declare-fun m!7651652 () Bool)

(assert (=> b!6949037 m!7651652))

(assert (=> b!6949038 m!7651652))

(assert (=> b!6949038 m!7651652))

(declare-fun m!7651654 () Bool)

(assert (=> b!6949038 m!7651654))

(assert (=> b!6949038 m!7651648))

(assert (=> b!6949038 m!7651654))

(assert (=> b!6949038 m!7651648))

(declare-fun m!7651656 () Bool)

(assert (=> b!6949038 m!7651656))

(assert (=> b!6949035 m!7651648))

(assert (=> b!6949035 m!7651648))

(assert (=> b!6949035 m!7651650))

(assert (=> b!6949034 m!7651652))

(assert (=> d!2168944 m!7651628))

(assert (=> d!2168944 m!7651466))

(assert (=> b!6948648 d!2168944))

(declare-fun d!2168946 () Bool)

(assert (=> d!2168946 (= (matchR!9136 rInner!765 (_1!37163 lt!2477748)) (matchRSpec!4050 rInner!765 (_1!37163 lt!2477748)))))

(declare-fun lt!2477784 () Unit!160730)

(assert (=> d!2168946 (= lt!2477784 (choose!51784 rInner!765 (_1!37163 lt!2477748)))))

(assert (=> d!2168946 (validRegex!8711 rInner!765)))

(assert (=> d!2168946 (= (mainMatchTheorem!4050 rInner!765 (_1!37163 lt!2477748)) lt!2477784)))

(declare-fun bs!1857580 () Bool)

(assert (= bs!1857580 d!2168946))

(assert (=> bs!1857580 m!7651442))

(assert (=> bs!1857580 m!7651448))

(declare-fun m!7651658 () Bool)

(assert (=> bs!1857580 m!7651658))

(assert (=> bs!1857580 m!7651456))

(assert (=> b!6948648 d!2168946))

(declare-fun b!6949040 () Bool)

(declare-fun e!4179571 () Bool)

(declare-fun lt!2477785 () Bool)

(declare-fun call!631177 () Bool)

(assert (=> b!6949040 (= e!4179571 (= lt!2477785 call!631177))))

(declare-fun b!6949041 () Bool)

(declare-fun e!4179568 () Bool)

(declare-fun e!4179573 () Bool)

(assert (=> b!6949041 (= e!4179568 e!4179573)))

(declare-fun res!2834990 () Bool)

(assert (=> b!6949041 (=> (not res!2834990) (not e!4179573))))

(assert (=> b!6949041 (= res!2834990 (not lt!2477785))))

(declare-fun b!6949042 () Bool)

(declare-fun e!4179572 () Bool)

(assert (=> b!6949042 (= e!4179573 e!4179572)))

(declare-fun res!2834991 () Bool)

(assert (=> b!6949042 (=> res!2834991 e!4179572)))

(assert (=> b!6949042 (= res!2834991 call!631177)))

(declare-fun b!6949043 () Bool)

(declare-fun res!2834987 () Bool)

(assert (=> b!6949043 (=> res!2834987 e!4179568)))

(assert (=> b!6949043 (= res!2834987 (not ((_ is ElementMatch!17005) rInner!765)))))

(declare-fun e!4179569 () Bool)

(assert (=> b!6949043 (= e!4179569 e!4179568)))

(declare-fun b!6949044 () Bool)

(declare-fun res!2834986 () Bool)

(assert (=> b!6949044 (=> res!2834986 e!4179568)))

(declare-fun e!4179570 () Bool)

(assert (=> b!6949044 (= res!2834986 e!4179570)))

(declare-fun res!2834985 () Bool)

(assert (=> b!6949044 (=> (not res!2834985) (not e!4179570))))

(assert (=> b!6949044 (= res!2834985 lt!2477785)))

(declare-fun bm!631172 () Bool)

(assert (=> bm!631172 (= call!631177 (isEmpty!38894 (_1!37163 cut!41)))))

(declare-fun b!6949045 () Bool)

(declare-fun res!2834984 () Bool)

(assert (=> b!6949045 (=> (not res!2834984) (not e!4179570))))

(assert (=> b!6949045 (= res!2834984 (isEmpty!38894 (tail!12981 (_1!37163 cut!41))))))

(declare-fun b!6949046 () Bool)

(assert (=> b!6949046 (= e!4179571 e!4179569)))

(declare-fun c!1289107 () Bool)

(assert (=> b!6949046 (= c!1289107 ((_ is EmptyLang!17005) rInner!765))))

(declare-fun b!6949047 () Bool)

(declare-fun e!4179574 () Bool)

(assert (=> b!6949047 (= e!4179574 (nullable!6818 rInner!765))))

(declare-fun b!6949048 () Bool)

(assert (=> b!6949048 (= e!4179572 (not (= (head!13929 (_1!37163 cut!41)) (c!1289023 rInner!765))))))

(declare-fun b!6949049 () Bool)

(declare-fun res!2834989 () Bool)

(assert (=> b!6949049 (=> res!2834989 e!4179572)))

(assert (=> b!6949049 (= res!2834989 (not (isEmpty!38894 (tail!12981 (_1!37163 cut!41)))))))

(declare-fun b!6949050 () Bool)

(declare-fun res!2834988 () Bool)

(assert (=> b!6949050 (=> (not res!2834988) (not e!4179570))))

(assert (=> b!6949050 (= res!2834988 (not call!631177))))

(declare-fun b!6949051 () Bool)

(assert (=> b!6949051 (= e!4179570 (= (head!13929 (_1!37163 cut!41)) (c!1289023 rInner!765)))))

(declare-fun d!2168948 () Bool)

(assert (=> d!2168948 e!4179571))

(declare-fun c!1289108 () Bool)

(assert (=> d!2168948 (= c!1289108 ((_ is EmptyExpr!17005) rInner!765))))

(assert (=> d!2168948 (= lt!2477785 e!4179574)))

(declare-fun c!1289106 () Bool)

(assert (=> d!2168948 (= c!1289106 (isEmpty!38894 (_1!37163 cut!41)))))

(assert (=> d!2168948 (validRegex!8711 rInner!765)))

(assert (=> d!2168948 (= (matchR!9136 rInner!765 (_1!37163 cut!41)) lt!2477785)))

(declare-fun b!6949052 () Bool)

(assert (=> b!6949052 (= e!4179574 (matchR!9136 (derivativeStep!5476 rInner!765 (head!13929 (_1!37163 cut!41))) (tail!12981 (_1!37163 cut!41))))))

(declare-fun b!6949053 () Bool)

(assert (=> b!6949053 (= e!4179569 (not lt!2477785))))

(assert (= (and d!2168948 c!1289106) b!6949047))

(assert (= (and d!2168948 (not c!1289106)) b!6949052))

(assert (= (and d!2168948 c!1289108) b!6949040))

(assert (= (and d!2168948 (not c!1289108)) b!6949046))

(assert (= (and b!6949046 c!1289107) b!6949053))

(assert (= (and b!6949046 (not c!1289107)) b!6949043))

(assert (= (and b!6949043 (not res!2834987)) b!6949044))

(assert (= (and b!6949044 res!2834985) b!6949050))

(assert (= (and b!6949050 res!2834988) b!6949045))

(assert (= (and b!6949045 res!2834984) b!6949051))

(assert (= (and b!6949044 (not res!2834986)) b!6949041))

(assert (= (and b!6949041 res!2834990) b!6949042))

(assert (= (and b!6949042 (not res!2834991)) b!6949049))

(assert (= (and b!6949049 (not res!2834989)) b!6949048))

(assert (= (or b!6949040 b!6949042 b!6949050) bm!631172))

(declare-fun m!7651660 () Bool)

(assert (=> bm!631172 m!7651660))

(assert (=> b!6949047 m!7651460))

(declare-fun m!7651662 () Bool)

(assert (=> b!6949045 m!7651662))

(assert (=> b!6949045 m!7651662))

(declare-fun m!7651664 () Bool)

(assert (=> b!6949045 m!7651664))

(declare-fun m!7651666 () Bool)

(assert (=> b!6949051 m!7651666))

(assert (=> b!6949052 m!7651666))

(assert (=> b!6949052 m!7651666))

(declare-fun m!7651668 () Bool)

(assert (=> b!6949052 m!7651668))

(assert (=> b!6949052 m!7651662))

(assert (=> b!6949052 m!7651668))

(assert (=> b!6949052 m!7651662))

(declare-fun m!7651670 () Bool)

(assert (=> b!6949052 m!7651670))

(assert (=> b!6949049 m!7651662))

(assert (=> b!6949049 m!7651662))

(assert (=> b!6949049 m!7651664))

(assert (=> b!6949048 m!7651666))

(assert (=> d!2168948 m!7651660))

(assert (=> d!2168948 m!7651456))

(assert (=> b!6948654 d!2168948))

(declare-fun b!6949055 () Bool)

(declare-fun e!4179575 () List!66758)

(assert (=> b!6949055 (= e!4179575 (Cons!66634 (h!73082 (_1!37163 lt!2477748)) (++!15042 (t!380501 (_1!37163 lt!2477748)) (_2!37163 lt!2477748))))))

(declare-fun b!6949056 () Bool)

(declare-fun res!2834993 () Bool)

(declare-fun e!4179576 () Bool)

(assert (=> b!6949056 (=> (not res!2834993) (not e!4179576))))

(declare-fun lt!2477786 () List!66758)

(assert (=> b!6949056 (= res!2834993 (= (size!40819 lt!2477786) (+ (size!40819 (_1!37163 lt!2477748)) (size!40819 (_2!37163 lt!2477748)))))))

(declare-fun d!2168950 () Bool)

(assert (=> d!2168950 e!4179576))

(declare-fun res!2834992 () Bool)

(assert (=> d!2168950 (=> (not res!2834992) (not e!4179576))))

(assert (=> d!2168950 (= res!2834992 (= (content!13122 lt!2477786) ((_ map or) (content!13122 (_1!37163 lt!2477748)) (content!13122 (_2!37163 lt!2477748)))))))

(assert (=> d!2168950 (= lt!2477786 e!4179575)))

(declare-fun c!1289109 () Bool)

(assert (=> d!2168950 (= c!1289109 ((_ is Nil!66634) (_1!37163 lt!2477748)))))

(assert (=> d!2168950 (= (++!15042 (_1!37163 lt!2477748) (_2!37163 lt!2477748)) lt!2477786)))

(declare-fun b!6949057 () Bool)

(assert (=> b!6949057 (= e!4179576 (or (not (= (_2!37163 lt!2477748) Nil!66634)) (= lt!2477786 (_1!37163 lt!2477748))))))

(declare-fun b!6949054 () Bool)

(assert (=> b!6949054 (= e!4179575 (_2!37163 lt!2477748))))

(assert (= (and d!2168950 c!1289109) b!6949054))

(assert (= (and d!2168950 (not c!1289109)) b!6949055))

(assert (= (and d!2168950 res!2834992) b!6949056))

(assert (= (and b!6949056 res!2834993) b!6949057))

(declare-fun m!7651672 () Bool)

(assert (=> b!6949055 m!7651672))

(declare-fun m!7651674 () Bool)

(assert (=> b!6949056 m!7651674))

(declare-fun m!7651676 () Bool)

(assert (=> b!6949056 m!7651676))

(declare-fun m!7651678 () Bool)

(assert (=> b!6949056 m!7651678))

(declare-fun m!7651680 () Bool)

(assert (=> d!2168950 m!7651680))

(declare-fun m!7651682 () Bool)

(assert (=> d!2168950 m!7651682))

(declare-fun m!7651684 () Bool)

(assert (=> d!2168950 m!7651684))

(assert (=> b!6948655 d!2168950))

(declare-fun d!2168952 () Bool)

(declare-fun lt!2477789 () tuple2!67720)

(assert (=> d!2168952 (dynLambda!26577 lambda!396241 lt!2477789)))

(declare-fun choose!51785 (Int) tuple2!67720)

(assert (=> d!2168952 (= lt!2477789 (choose!51785 lambda!396241))))

(assert (=> d!2168952 (Exists!4001 lambda!396241)))

(assert (=> d!2168952 (= (pickWitness!350 lambda!396241) lt!2477789)))

(declare-fun b_lambda!260379 () Bool)

(assert (=> (not b_lambda!260379) (not d!2168952)))

(declare-fun bs!1857581 () Bool)

(assert (= bs!1857581 d!2168952))

(declare-fun m!7651686 () Bool)

(assert (=> bs!1857581 m!7651686))

(declare-fun m!7651688 () Bool)

(assert (=> bs!1857581 m!7651688))

(assert (=> bs!1857581 m!7651454))

(assert (=> b!6948655 d!2168952))

(declare-fun b!6949068 () Bool)

(declare-fun e!4179579 () Bool)

(assert (=> b!6949068 (= e!4179579 tp_is_empty!43235)))

(assert (=> b!6948653 (= tp!1915450 e!4179579)))

(declare-fun b!6949070 () Bool)

(declare-fun tp!1915508 () Bool)

(assert (=> b!6949070 (= e!4179579 tp!1915508)))

(declare-fun b!6949071 () Bool)

(declare-fun tp!1915505 () Bool)

(declare-fun tp!1915506 () Bool)

(assert (=> b!6949071 (= e!4179579 (and tp!1915505 tp!1915506))))

(declare-fun b!6949069 () Bool)

(declare-fun tp!1915507 () Bool)

(declare-fun tp!1915504 () Bool)

(assert (=> b!6949069 (= e!4179579 (and tp!1915507 tp!1915504))))

(assert (= (and b!6948653 ((_ is ElementMatch!17005) (regOne!34522 rInner!765))) b!6949068))

(assert (= (and b!6948653 ((_ is Concat!25850) (regOne!34522 rInner!765))) b!6949069))

(assert (= (and b!6948653 ((_ is Star!17005) (regOne!34522 rInner!765))) b!6949070))

(assert (= (and b!6948653 ((_ is Union!17005) (regOne!34522 rInner!765))) b!6949071))

(declare-fun b!6949072 () Bool)

(declare-fun e!4179580 () Bool)

(assert (=> b!6949072 (= e!4179580 tp_is_empty!43235)))

(assert (=> b!6948653 (= tp!1915451 e!4179580)))

(declare-fun b!6949074 () Bool)

(declare-fun tp!1915513 () Bool)

(assert (=> b!6949074 (= e!4179580 tp!1915513)))

(declare-fun b!6949075 () Bool)

(declare-fun tp!1915510 () Bool)

(declare-fun tp!1915511 () Bool)

(assert (=> b!6949075 (= e!4179580 (and tp!1915510 tp!1915511))))

(declare-fun b!6949073 () Bool)

(declare-fun tp!1915512 () Bool)

(declare-fun tp!1915509 () Bool)

(assert (=> b!6949073 (= e!4179580 (and tp!1915512 tp!1915509))))

(assert (= (and b!6948653 ((_ is ElementMatch!17005) (regTwo!34522 rInner!765))) b!6949072))

(assert (= (and b!6948653 ((_ is Concat!25850) (regTwo!34522 rInner!765))) b!6949073))

(assert (= (and b!6948653 ((_ is Star!17005) (regTwo!34522 rInner!765))) b!6949074))

(assert (= (and b!6948653 ((_ is Union!17005) (regTwo!34522 rInner!765))) b!6949075))

(declare-fun b!6949080 () Bool)

(declare-fun e!4179583 () Bool)

(declare-fun tp!1915516 () Bool)

(assert (=> b!6949080 (= e!4179583 (and tp_is_empty!43235 tp!1915516))))

(assert (=> b!6948659 (= tp!1915448 e!4179583)))

(assert (= (and b!6948659 ((_ is Cons!66634) (t!380501 (_1!37163 cut!41)))) b!6949080))

(declare-fun b!6949081 () Bool)

(declare-fun e!4179584 () Bool)

(declare-fun tp!1915517 () Bool)

(assert (=> b!6949081 (= e!4179584 (and tp_is_empty!43235 tp!1915517))))

(assert (=> b!6948649 (= tp!1915453 e!4179584)))

(assert (= (and b!6948649 ((_ is Cons!66634) (t!380501 s!10388))) b!6949081))

(declare-fun b!6949082 () Bool)

(declare-fun e!4179585 () Bool)

(declare-fun tp!1915518 () Bool)

(assert (=> b!6949082 (= e!4179585 (and tp_is_empty!43235 tp!1915518))))

(assert (=> b!6948650 (= tp!1915446 e!4179585)))

(assert (= (and b!6948650 ((_ is Cons!66634) (t!380501 (_2!37163 cut!41)))) b!6949082))

(declare-fun b!6949083 () Bool)

(declare-fun e!4179586 () Bool)

(assert (=> b!6949083 (= e!4179586 tp_is_empty!43235)))

(assert (=> b!6948656 (= tp!1915452 e!4179586)))

(declare-fun b!6949085 () Bool)

(declare-fun tp!1915523 () Bool)

(assert (=> b!6949085 (= e!4179586 tp!1915523)))

(declare-fun b!6949086 () Bool)

(declare-fun tp!1915520 () Bool)

(declare-fun tp!1915521 () Bool)

(assert (=> b!6949086 (= e!4179586 (and tp!1915520 tp!1915521))))

(declare-fun b!6949084 () Bool)

(declare-fun tp!1915522 () Bool)

(declare-fun tp!1915519 () Bool)

(assert (=> b!6949084 (= e!4179586 (and tp!1915522 tp!1915519))))

(assert (= (and b!6948656 ((_ is ElementMatch!17005) (reg!17334 rInner!765))) b!6949083))

(assert (= (and b!6948656 ((_ is Concat!25850) (reg!17334 rInner!765))) b!6949084))

(assert (= (and b!6948656 ((_ is Star!17005) (reg!17334 rInner!765))) b!6949085))

(assert (= (and b!6948656 ((_ is Union!17005) (reg!17334 rInner!765))) b!6949086))

(declare-fun b!6949087 () Bool)

(declare-fun e!4179587 () Bool)

(assert (=> b!6949087 (= e!4179587 tp_is_empty!43235)))

(assert (=> b!6948651 (= tp!1915449 e!4179587)))

(declare-fun b!6949089 () Bool)

(declare-fun tp!1915528 () Bool)

(assert (=> b!6949089 (= e!4179587 tp!1915528)))

(declare-fun b!6949090 () Bool)

(declare-fun tp!1915525 () Bool)

(declare-fun tp!1915526 () Bool)

(assert (=> b!6949090 (= e!4179587 (and tp!1915525 tp!1915526))))

(declare-fun b!6949088 () Bool)

(declare-fun tp!1915527 () Bool)

(declare-fun tp!1915524 () Bool)

(assert (=> b!6949088 (= e!4179587 (and tp!1915527 tp!1915524))))

(assert (= (and b!6948651 ((_ is ElementMatch!17005) (regOne!34523 rInner!765))) b!6949087))

(assert (= (and b!6948651 ((_ is Concat!25850) (regOne!34523 rInner!765))) b!6949088))

(assert (= (and b!6948651 ((_ is Star!17005) (regOne!34523 rInner!765))) b!6949089))

(assert (= (and b!6948651 ((_ is Union!17005) (regOne!34523 rInner!765))) b!6949090))

(declare-fun b!6949091 () Bool)

(declare-fun e!4179588 () Bool)

(assert (=> b!6949091 (= e!4179588 tp_is_empty!43235)))

(assert (=> b!6948651 (= tp!1915447 e!4179588)))

(declare-fun b!6949093 () Bool)

(declare-fun tp!1915533 () Bool)

(assert (=> b!6949093 (= e!4179588 tp!1915533)))

(declare-fun b!6949094 () Bool)

(declare-fun tp!1915530 () Bool)

(declare-fun tp!1915531 () Bool)

(assert (=> b!6949094 (= e!4179588 (and tp!1915530 tp!1915531))))

(declare-fun b!6949092 () Bool)

(declare-fun tp!1915532 () Bool)

(declare-fun tp!1915529 () Bool)

(assert (=> b!6949092 (= e!4179588 (and tp!1915532 tp!1915529))))

(assert (= (and b!6948651 ((_ is ElementMatch!17005) (regTwo!34523 rInner!765))) b!6949091))

(assert (= (and b!6948651 ((_ is Concat!25850) (regTwo!34523 rInner!765))) b!6949092))

(assert (= (and b!6948651 ((_ is Star!17005) (regTwo!34523 rInner!765))) b!6949093))

(assert (= (and b!6948651 ((_ is Union!17005) (regTwo!34523 rInner!765))) b!6949094))

(declare-fun b_lambda!260381 () Bool)

(assert (= b_lambda!260371 (or b!6948647 b_lambda!260381)))

(declare-fun bs!1857582 () Bool)

(declare-fun d!2168954 () Bool)

(assert (= bs!1857582 (and d!2168954 b!6948647)))

(declare-fun res!2834994 () Bool)

(declare-fun e!4179589 () Bool)

(assert (=> bs!1857582 (=> (not res!2834994) (not e!4179589))))

(assert (=> bs!1857582 (= res!2834994 (= (++!15042 (_1!37163 lt!2477748) (_2!37163 lt!2477748)) s!10388))))

(assert (=> bs!1857582 (= (dynLambda!26577 lambda!396242 lt!2477748) e!4179589)))

(declare-fun b!6949095 () Bool)

(declare-fun res!2834995 () Bool)

(assert (=> b!6949095 (=> (not res!2834995) (not e!4179589))))

(assert (=> b!6949095 (= res!2834995 (not (isEmpty!38894 (_1!37163 lt!2477748))))))

(declare-fun b!6949096 () Bool)

(declare-fun res!2834996 () Bool)

(assert (=> b!6949096 (=> (not res!2834996) (not e!4179589))))

(assert (=> b!6949096 (= res!2834996 (matchRSpec!4050 rInner!765 (_1!37163 lt!2477748)))))

(declare-fun b!6949097 () Bool)

(assert (=> b!6949097 (= e!4179589 (matchRSpec!4050 lt!2477745 (_2!37163 lt!2477748)))))

(assert (= (and bs!1857582 res!2834994) b!6949095))

(assert (= (and b!6949095 res!2834995) b!6949096))

(assert (= (and b!6949096 res!2834996) b!6949097))

(assert (=> bs!1857582 m!7651462))

(assert (=> b!6949095 m!7651614))

(assert (=> b!6949096 m!7651448))

(assert (=> b!6949097 m!7651450))

(assert (=> d!2168898 d!2168954))

(declare-fun b_lambda!260383 () Bool)

(assert (= b_lambda!260379 (or b!6948652 b_lambda!260383)))

(declare-fun bs!1857583 () Bool)

(declare-fun d!2168956 () Bool)

(assert (= bs!1857583 (and d!2168956 b!6948652)))

(declare-fun res!2834997 () Bool)

(declare-fun e!4179590 () Bool)

(assert (=> bs!1857583 (=> (not res!2834997) (not e!4179590))))

(assert (=> bs!1857583 (= res!2834997 (= (++!15042 (_1!37163 lt!2477789) (_2!37163 lt!2477789)) s!10388))))

(assert (=> bs!1857583 (= (dynLambda!26577 lambda!396241 lt!2477789) e!4179590)))

(declare-fun b!6949098 () Bool)

(declare-fun res!2834998 () Bool)

(assert (=> b!6949098 (=> (not res!2834998) (not e!4179590))))

(assert (=> b!6949098 (= res!2834998 (matchR!9136 rInner!765 (_1!37163 lt!2477789)))))

(declare-fun b!6949099 () Bool)

(assert (=> b!6949099 (= e!4179590 (matchR!9136 (Star!17005 rInner!765) (_2!37163 lt!2477789)))))

(assert (= (and bs!1857583 res!2834997) b!6949098))

(assert (= (and b!6949098 res!2834998) b!6949099))

(declare-fun m!7651690 () Bool)

(assert (=> bs!1857583 m!7651690))

(declare-fun m!7651692 () Bool)

(assert (=> b!6949098 m!7651692))

(declare-fun m!7651694 () Bool)

(assert (=> b!6949099 m!7651694))

(assert (=> d!2168952 d!2168956))

(check-sat (not b!6949073) (not bs!1857583) (not b!6949094) (not b!6949069) (not b!6949024) (not b!6949034) (not b!6948674) (not b!6949099) (not b!6949070) (not d!2168890) (not b!6949092) (not b!6949037) (not b!6949035) (not b!6949017) (not d!2168946) (not b!6949056) (not bm!631167) (not b!6949086) (not b!6949098) (not d!2168940) (not b!6949019) (not b_lambda!260381) (not b!6949096) (not d!2168898) (not b!6949097) (not bm!631138) tp_is_empty!43235 (not b!6949081) (not b!6948968) (not b!6949071) (not d!2168894) (not b!6949048) (not d!2168892) (not b!6949021) (not b_lambda!260383) (not b!6949093) (not b!6949031) (not bs!1857582) (not b!6948673) (not b!6949055) (not bm!631170) (not b!6949095) (not bm!631171) (not b!6949049) (not d!2168948) (not b!6949090) (not d!2168950) (not b!6949023) (not b!6948751) (not bm!631142) (not b!6949052) (not b!6949084) (not d!2168942) (not b!6949074) (not b!6949033) (not b!6948738) (not b!6949080) (not b!6948972) (not bm!631139) (not b!6949047) (not bm!631141) (not b!6949020) (not d!2168944) (not b!6949088) (not b!6949051) (not b!6949085) (not bm!631165) (not b!6949082) (not d!2168952) (not b!6949045) (not b!6949038) (not b!6948929) (not bm!631172) (not bm!631166) (not b!6949075) (not bm!631164) (not b!6948926) (not b!6949089))
(check-sat)
