; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!693022 () Bool)

(assert start!693022)

(declare-fun b!7120482 () Bool)

(assert (=> b!7120482 true))

(declare-fun b!7120471 () Bool)

(declare-fun res!2904649 () Bool)

(declare-fun e!4278372 () Bool)

(assert (=> b!7120471 (=> (not res!2904649) (not e!4278372))))

(declare-fun e!4278377 () Bool)

(assert (=> b!7120471 (= res!2904649 e!4278377)))

(declare-fun res!2904652 () Bool)

(assert (=> b!7120471 (=> res!2904652 e!4278377)))

(declare-datatypes ((C!36246 0))(
  ( (C!36247 (val!27829 Int)) )
))
(declare-datatypes ((Regex!17988 0))(
  ( (ElementMatch!17988 (c!1328841 C!36246)) (Concat!26833 (regOne!36488 Regex!17988) (regTwo!36488 Regex!17988)) (EmptyExpr!17988) (Star!17988 (reg!18317 Regex!17988)) (EmptyLang!17988) (Union!17988 (regOne!36489 Regex!17988) (regTwo!36489 Regex!17988)) )
))
(declare-fun r!11554 () Regex!17988)

(assert (=> b!7120471 (= res!2904652 (not (is-Concat!26833 r!11554)))))

(declare-fun b!7120472 () Bool)

(declare-fun e!4278375 () Bool)

(declare-fun tp!1960313 () Bool)

(assert (=> b!7120472 (= e!4278375 tp!1960313)))

(declare-fun b!7120473 () Bool)

(declare-fun e!4278373 () Bool)

(declare-datatypes ((List!68949 0))(
  ( (Nil!68825) (Cons!68825 (h!75273 Regex!17988) (t!382812 List!68949)) )
))
(declare-datatypes ((Context!13964 0))(
  ( (Context!13965 (exprs!7482 List!68949)) )
))
(declare-fun lt!2561290 () Context!13964)

(declare-fun inv!87834 (Context!13964) Bool)

(assert (=> b!7120473 (= e!4278373 (inv!87834 lt!2561290))))

(declare-fun c!9994 () Context!13964)

(declare-datatypes ((Unit!162647 0))(
  ( (Unit!162648) )
))
(declare-fun lt!2561289 () Unit!162647)

(declare-fun lambda!432717 () Int)

(declare-fun auxCtx!45 () Context!13964)

(declare-fun lemmaConcatPreservesForall!1273 (List!68949 List!68949 Int) Unit!162647)

(assert (=> b!7120473 (= lt!2561289 (lemmaConcatPreservesForall!1273 (exprs!7482 c!9994) (exprs!7482 auxCtx!45) lambda!432717))))

(declare-fun b!7120474 () Bool)

(declare-fun e!4278376 () Bool)

(declare-fun tp!1960312 () Bool)

(declare-fun tp!1960316 () Bool)

(assert (=> b!7120474 (= e!4278376 (and tp!1960312 tp!1960316))))

(declare-fun b!7120475 () Bool)

(declare-fun tp_is_empty!45209 () Bool)

(assert (=> b!7120475 (= e!4278376 tp_is_empty!45209)))

(declare-fun b!7120476 () Bool)

(declare-fun e!4278374 () Bool)

(declare-fun tp!1960317 () Bool)

(assert (=> b!7120476 (= e!4278374 tp!1960317)))

(declare-fun res!2904651 () Bool)

(declare-fun e!4278371 () Bool)

(assert (=> start!693022 (=> (not res!2904651) (not e!4278371))))

(declare-fun validRegex!9261 (Regex!17988) Bool)

(assert (=> start!693022 (= res!2904651 (validRegex!9261 r!11554))))

(assert (=> start!693022 e!4278371))

(assert (=> start!693022 e!4278376))

(assert (=> start!693022 (and (inv!87834 c!9994) e!4278375)))

(assert (=> start!693022 tp_is_empty!45209))

(assert (=> start!693022 (and (inv!87834 auxCtx!45) e!4278374)))

(declare-fun b!7120477 () Bool)

(declare-fun nullable!7625 (Regex!17988) Bool)

(assert (=> b!7120477 (= e!4278377 (not (nullable!7625 (regOne!36488 r!11554))))))

(declare-fun b!7120478 () Bool)

(declare-fun tp!1960315 () Bool)

(assert (=> b!7120478 (= e!4278376 tp!1960315)))

(declare-fun b!7120479 () Bool)

(declare-fun tp!1960314 () Bool)

(declare-fun tp!1960311 () Bool)

(assert (=> b!7120479 (= e!4278376 (and tp!1960314 tp!1960311))))

(declare-fun b!7120480 () Bool)

(assert (=> b!7120480 (= e!4278372 (not e!4278373))))

(declare-fun res!2904647 () Bool)

(assert (=> b!7120480 (=> res!2904647 e!4278373)))

(declare-fun a!1901 () C!36246)

(declare-fun derivationStepZipperDown!2483 (Regex!17988 Context!13964 C!36246) (Set Context!13964))

(declare-fun appendTo!951 ((Set Context!13964) Context!13964) (Set Context!13964))

(assert (=> b!7120480 (= res!2904647 (not (= (derivationStepZipperDown!2483 r!11554 lt!2561290 a!1901) (appendTo!951 (derivationStepZipperDown!2483 r!11554 c!9994 a!1901) auxCtx!45))))))

(declare-fun ++!16140 (List!68949 List!68949) List!68949)

(assert (=> b!7120480 (= lt!2561290 (Context!13965 (++!16140 (exprs!7482 c!9994) (exprs!7482 auxCtx!45))))))

(declare-fun lt!2561288 () Unit!162647)

(assert (=> b!7120480 (= lt!2561288 (lemmaConcatPreservesForall!1273 (exprs!7482 c!9994) (exprs!7482 auxCtx!45) lambda!432717))))

(declare-fun lambda!432716 () Int)

(declare-fun map!16322 ((Set Context!13964) Int) (Set Context!13964))

(assert (=> b!7120480 (= (map!16322 (as set.empty (Set Context!13964)) lambda!432716) (as set.empty (Set Context!13964)))))

(declare-fun lt!2561287 () Unit!162647)

(declare-fun lemmaMapOnEmptySetIsEmpty!19 ((Set Context!13964) Int) Unit!162647)

(assert (=> b!7120480 (= lt!2561287 (lemmaMapOnEmptySetIsEmpty!19 (as set.empty (Set Context!13964)) lambda!432716))))

(declare-fun b!7120481 () Bool)

(declare-fun res!2904648 () Bool)

(assert (=> b!7120481 (=> (not res!2904648) (not e!4278372))))

(assert (=> b!7120481 (= res!2904648 (and (not (is-Concat!26833 r!11554)) (not (is-Star!17988 r!11554))))))

(assert (=> b!7120482 (= e!4278371 e!4278372)))

(declare-fun res!2904650 () Bool)

(assert (=> b!7120482 (=> (not res!2904650) (not e!4278372))))

(assert (=> b!7120482 (= res!2904650 (and (or (not (is-ElementMatch!17988 r!11554)) (not (= (c!1328841 r!11554) a!1901))) (not (is-Union!17988 r!11554))))))

(assert (= (and start!693022 res!2904651) b!7120482))

(assert (= (and b!7120482 res!2904650) b!7120471))

(assert (= (and b!7120471 (not res!2904652)) b!7120477))

(assert (= (and b!7120471 res!2904649) b!7120481))

(assert (= (and b!7120481 res!2904648) b!7120480))

(assert (= (and b!7120480 (not res!2904647)) b!7120473))

(assert (= (and start!693022 (is-ElementMatch!17988 r!11554)) b!7120475))

(assert (= (and start!693022 (is-Concat!26833 r!11554)) b!7120479))

(assert (= (and start!693022 (is-Star!17988 r!11554)) b!7120478))

(assert (= (and start!693022 (is-Union!17988 r!11554)) b!7120474))

(assert (= start!693022 b!7120472))

(assert (= start!693022 b!7120476))

(declare-fun m!7837432 () Bool)

(assert (=> b!7120473 m!7837432))

(declare-fun m!7837434 () Bool)

(assert (=> b!7120473 m!7837434))

(declare-fun m!7837436 () Bool)

(assert (=> start!693022 m!7837436))

(declare-fun m!7837438 () Bool)

(assert (=> start!693022 m!7837438))

(declare-fun m!7837440 () Bool)

(assert (=> start!693022 m!7837440))

(declare-fun m!7837442 () Bool)

(assert (=> b!7120477 m!7837442))

(declare-fun m!7837444 () Bool)

(assert (=> b!7120480 m!7837444))

(declare-fun m!7837446 () Bool)

(assert (=> b!7120480 m!7837446))

(declare-fun m!7837448 () Bool)

(assert (=> b!7120480 m!7837448))

(declare-fun m!7837450 () Bool)

(assert (=> b!7120480 m!7837450))

(assert (=> b!7120480 m!7837446))

(declare-fun m!7837452 () Bool)

(assert (=> b!7120480 m!7837452))

(declare-fun m!7837454 () Bool)

(assert (=> b!7120480 m!7837454))

(assert (=> b!7120480 m!7837434))

(push 1)

(assert (not b!7120477))

(assert (not b!7120480))

(assert (not b!7120476))

(assert (not b!7120478))

(assert (not b!7120474))

(assert (not start!693022))

(assert tp_is_empty!45209)

(assert (not b!7120472))

(assert (not b!7120473))

(assert (not b!7120479))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1885863 () Bool)

(declare-fun d!2221868 () Bool)

(assert (= bs!1885863 (and d!2221868 b!7120480)))

(declare-fun lambda!432730 () Int)

(assert (=> bs!1885863 (= lambda!432730 lambda!432717)))

(declare-fun forall!16876 (List!68949 Int) Bool)

(assert (=> d!2221868 (= (inv!87834 lt!2561290) (forall!16876 (exprs!7482 lt!2561290) lambda!432730))))

(declare-fun bs!1885864 () Bool)

(assert (= bs!1885864 d!2221868))

(declare-fun m!7837480 () Bool)

(assert (=> bs!1885864 m!7837480))

(assert (=> b!7120473 d!2221868))

(declare-fun d!2221870 () Bool)

(assert (=> d!2221870 (forall!16876 (++!16140 (exprs!7482 c!9994) (exprs!7482 auxCtx!45)) lambda!432717)))

(declare-fun lt!2561307 () Unit!162647)

(declare-fun choose!54920 (List!68949 List!68949 Int) Unit!162647)

(assert (=> d!2221870 (= lt!2561307 (choose!54920 (exprs!7482 c!9994) (exprs!7482 auxCtx!45) lambda!432717))))

(assert (=> d!2221870 (forall!16876 (exprs!7482 c!9994) lambda!432717)))

(assert (=> d!2221870 (= (lemmaConcatPreservesForall!1273 (exprs!7482 c!9994) (exprs!7482 auxCtx!45) lambda!432717) lt!2561307)))

(declare-fun bs!1885865 () Bool)

(assert (= bs!1885865 d!2221870))

(assert (=> bs!1885865 m!7837452))

(assert (=> bs!1885865 m!7837452))

(declare-fun m!7837482 () Bool)

(assert (=> bs!1885865 m!7837482))

(declare-fun m!7837484 () Bool)

(assert (=> bs!1885865 m!7837484))

(declare-fun m!7837486 () Bool)

(assert (=> bs!1885865 m!7837486))

(assert (=> b!7120473 d!2221870))

(declare-fun d!2221872 () Bool)

(declare-fun nullableFct!2964 (Regex!17988) Bool)

(assert (=> d!2221872 (= (nullable!7625 (regOne!36488 r!11554)) (nullableFct!2964 (regOne!36488 r!11554)))))

(declare-fun bs!1885866 () Bool)

(assert (= bs!1885866 d!2221872))

(declare-fun m!7837488 () Bool)

(assert (=> bs!1885866 m!7837488))

(assert (=> b!7120477 d!2221872))

(declare-fun c!1328847 () Bool)

(declare-fun call!650670 () Bool)

(declare-fun c!1328848 () Bool)

(declare-fun bm!650665 () Bool)

(assert (=> bm!650665 (= call!650670 (validRegex!9261 (ite c!1328848 (reg!18317 r!11554) (ite c!1328847 (regOne!36489 r!11554) (regTwo!36488 r!11554)))))))

(declare-fun b!7120541 () Bool)

(declare-fun res!2904684 () Bool)

(declare-fun e!4278415 () Bool)

(assert (=> b!7120541 (=> res!2904684 e!4278415)))

(assert (=> b!7120541 (= res!2904684 (not (is-Concat!26833 r!11554)))))

(declare-fun e!4278417 () Bool)

(assert (=> b!7120541 (= e!4278417 e!4278415)))

(declare-fun d!2221874 () Bool)

(declare-fun res!2904687 () Bool)

(declare-fun e!4278416 () Bool)

(assert (=> d!2221874 (=> res!2904687 e!4278416)))

(assert (=> d!2221874 (= res!2904687 (is-ElementMatch!17988 r!11554))))

(assert (=> d!2221874 (= (validRegex!9261 r!11554) e!4278416)))

(declare-fun b!7120542 () Bool)

(declare-fun e!4278418 () Bool)

(declare-fun call!650671 () Bool)

(assert (=> b!7120542 (= e!4278418 call!650671)))

(declare-fun bm!650666 () Bool)

(assert (=> bm!650666 (= call!650671 (validRegex!9261 (ite c!1328847 (regTwo!36489 r!11554) (regOne!36488 r!11554))))))

(declare-fun b!7120543 () Bool)

(declare-fun res!2904686 () Bool)

(assert (=> b!7120543 (=> (not res!2904686) (not e!4278418))))

(declare-fun call!650672 () Bool)

(assert (=> b!7120543 (= res!2904686 call!650672)))

(assert (=> b!7120543 (= e!4278417 e!4278418)))

(declare-fun b!7120544 () Bool)

(declare-fun e!4278413 () Bool)

(assert (=> b!7120544 (= e!4278413 call!650672)))

(declare-fun b!7120545 () Bool)

(assert (=> b!7120545 (= e!4278415 e!4278413)))

(declare-fun res!2904683 () Bool)

(assert (=> b!7120545 (=> (not res!2904683) (not e!4278413))))

(assert (=> b!7120545 (= res!2904683 call!650671)))

(declare-fun b!7120546 () Bool)

(declare-fun e!4278414 () Bool)

(assert (=> b!7120546 (= e!4278416 e!4278414)))

(assert (=> b!7120546 (= c!1328848 (is-Star!17988 r!11554))))

(declare-fun b!7120547 () Bool)

(declare-fun e!4278419 () Bool)

(assert (=> b!7120547 (= e!4278419 call!650670)))

(declare-fun bm!650667 () Bool)

(assert (=> bm!650667 (= call!650672 call!650670)))

(declare-fun b!7120548 () Bool)

(assert (=> b!7120548 (= e!4278414 e!4278417)))

(assert (=> b!7120548 (= c!1328847 (is-Union!17988 r!11554))))

(declare-fun b!7120549 () Bool)

(assert (=> b!7120549 (= e!4278414 e!4278419)))

(declare-fun res!2904685 () Bool)

(assert (=> b!7120549 (= res!2904685 (not (nullable!7625 (reg!18317 r!11554))))))

(assert (=> b!7120549 (=> (not res!2904685) (not e!4278419))))

(assert (= (and d!2221874 (not res!2904687)) b!7120546))

(assert (= (and b!7120546 c!1328848) b!7120549))

(assert (= (and b!7120546 (not c!1328848)) b!7120548))

(assert (= (and b!7120549 res!2904685) b!7120547))

(assert (= (and b!7120548 c!1328847) b!7120543))

(assert (= (and b!7120548 (not c!1328847)) b!7120541))

(assert (= (and b!7120543 res!2904686) b!7120542))

(assert (= (and b!7120541 (not res!2904684)) b!7120545))

(assert (= (and b!7120545 res!2904683) b!7120544))

(assert (= (or b!7120543 b!7120544) bm!650667))

(assert (= (or b!7120542 b!7120545) bm!650666))

(assert (= (or b!7120547 bm!650667) bm!650665))

(declare-fun m!7837494 () Bool)

(assert (=> bm!650665 m!7837494))

(declare-fun m!7837496 () Bool)

(assert (=> bm!650666 m!7837496))

(declare-fun m!7837498 () Bool)

(assert (=> b!7120549 m!7837498))

(assert (=> start!693022 d!2221874))

(declare-fun bs!1885870 () Bool)

(declare-fun d!2221882 () Bool)

(assert (= bs!1885870 (and d!2221882 b!7120480)))

(declare-fun lambda!432734 () Int)

(assert (=> bs!1885870 (= lambda!432734 lambda!432717)))

(declare-fun bs!1885871 () Bool)

(assert (= bs!1885871 (and d!2221882 d!2221868)))

(assert (=> bs!1885871 (= lambda!432734 lambda!432730)))

(assert (=> d!2221882 (= (inv!87834 c!9994) (forall!16876 (exprs!7482 c!9994) lambda!432734))))

(declare-fun bs!1885872 () Bool)

(assert (= bs!1885872 d!2221882))

(declare-fun m!7837500 () Bool)

(assert (=> bs!1885872 m!7837500))

(assert (=> start!693022 d!2221882))

(declare-fun bs!1885873 () Bool)

(declare-fun d!2221884 () Bool)

(assert (= bs!1885873 (and d!2221884 b!7120480)))

(declare-fun lambda!432735 () Int)

(assert (=> bs!1885873 (= lambda!432735 lambda!432717)))

(declare-fun bs!1885874 () Bool)

(assert (= bs!1885874 (and d!2221884 d!2221868)))

(assert (=> bs!1885874 (= lambda!432735 lambda!432730)))

(declare-fun bs!1885875 () Bool)

(assert (= bs!1885875 (and d!2221884 d!2221882)))

(assert (=> bs!1885875 (= lambda!432735 lambda!432734)))

(assert (=> d!2221884 (= (inv!87834 auxCtx!45) (forall!16876 (exprs!7482 auxCtx!45) lambda!432735))))

(declare-fun bs!1885876 () Bool)

(assert (= bs!1885876 d!2221884))

(declare-fun m!7837502 () Bool)

(assert (=> bs!1885876 m!7837502))

(assert (=> start!693022 d!2221884))

(declare-fun d!2221886 () Bool)

(assert (=> d!2221886 (= (map!16322 (as set.empty (Set Context!13964)) lambda!432716) (as set.empty (Set Context!13964)))))

(declare-fun lt!2561310 () Unit!162647)

(declare-fun choose!54921 ((Set Context!13964) Int) Unit!162647)

(assert (=> d!2221886 (= lt!2561310 (choose!54921 (as set.empty (Set Context!13964)) lambda!432716))))

(assert (=> d!2221886 (= (as set.empty (Set Context!13964)) (as set.empty (Set Context!13964)))))

(assert (=> d!2221886 (= (lemmaMapOnEmptySetIsEmpty!19 (as set.empty (Set Context!13964)) lambda!432716) lt!2561310)))

(declare-fun bs!1885877 () Bool)

(assert (= bs!1885877 d!2221886))

(assert (=> bs!1885877 m!7837454))

(declare-fun m!7837504 () Bool)

(assert (=> bs!1885877 m!7837504))

(assert (=> b!7120480 d!2221886))

(declare-fun d!2221888 () Bool)

(declare-fun c!1328861 () Bool)

(assert (=> d!2221888 (= c!1328861 (and (is-ElementMatch!17988 r!11554) (= (c!1328841 r!11554) a!1901)))))

(declare-fun e!4278436 () (Set Context!13964))

(assert (=> d!2221888 (= (derivationStepZipperDown!2483 r!11554 c!9994 a!1901) e!4278436)))

(declare-fun b!7120572 () Bool)

(assert (=> b!7120572 (= e!4278436 (set.insert c!9994 (as set.empty (Set Context!13964))))))

(declare-fun call!650690 () List!68949)

(declare-fun call!650687 () (Set Context!13964))

(declare-fun c!1328864 () Bool)

(declare-fun bm!650680 () Bool)

(declare-fun c!1328862 () Bool)

(declare-fun c!1328863 () Bool)

(assert (=> bm!650680 (= call!650687 (derivationStepZipperDown!2483 (ite c!1328864 (regOne!36489 r!11554) (ite c!1328863 (regTwo!36488 r!11554) (ite c!1328862 (regOne!36488 r!11554) (reg!18317 r!11554)))) (ite (or c!1328864 c!1328863) c!9994 (Context!13965 call!650690)) a!1901))))

(declare-fun call!650685 () List!68949)

(declare-fun bm!650681 () Bool)

(declare-fun call!650686 () (Set Context!13964))

(assert (=> bm!650681 (= call!650686 (derivationStepZipperDown!2483 (ite c!1328864 (regTwo!36489 r!11554) (regOne!36488 r!11554)) (ite c!1328864 c!9994 (Context!13965 call!650685)) a!1901))))

(declare-fun bm!650682 () Bool)

(assert (=> bm!650682 (= call!650690 call!650685)))

(declare-fun b!7120573 () Bool)

(declare-fun e!4278433 () Bool)

(assert (=> b!7120573 (= e!4278433 (nullable!7625 (regOne!36488 r!11554)))))

(declare-fun b!7120574 () Bool)

(declare-fun e!4278435 () (Set Context!13964))

(declare-fun call!650688 () (Set Context!13964))

(assert (=> b!7120574 (= e!4278435 (set.union call!650686 call!650688))))

(declare-fun bm!650683 () Bool)

(declare-fun $colon$colon!2829 (List!68949 Regex!17988) List!68949)

(assert (=> bm!650683 (= call!650685 ($colon$colon!2829 (exprs!7482 c!9994) (ite (or c!1328863 c!1328862) (regTwo!36488 r!11554) r!11554)))))

(declare-fun b!7120575 () Bool)

(declare-fun e!4278437 () (Set Context!13964))

(assert (=> b!7120575 (= e!4278437 (set.union call!650687 call!650686))))

(declare-fun bm!650684 () Bool)

(assert (=> bm!650684 (= call!650688 call!650687)))

(declare-fun b!7120576 () Bool)

(assert (=> b!7120576 (= e!4278436 e!4278437)))

(assert (=> b!7120576 (= c!1328864 (is-Union!17988 r!11554))))

(declare-fun b!7120577 () Bool)

(assert (=> b!7120577 (= c!1328863 e!4278433)))

(declare-fun res!2904690 () Bool)

(assert (=> b!7120577 (=> (not res!2904690) (not e!4278433))))

(assert (=> b!7120577 (= res!2904690 (is-Concat!26833 r!11554))))

(assert (=> b!7120577 (= e!4278437 e!4278435)))

(declare-fun b!7120578 () Bool)

(declare-fun e!4278432 () (Set Context!13964))

(assert (=> b!7120578 (= e!4278435 e!4278432)))

(assert (=> b!7120578 (= c!1328862 (is-Concat!26833 r!11554))))

(declare-fun bm!650685 () Bool)

(declare-fun call!650689 () (Set Context!13964))

(assert (=> bm!650685 (= call!650689 call!650688)))

(declare-fun b!7120579 () Bool)

(declare-fun e!4278434 () (Set Context!13964))

(assert (=> b!7120579 (= e!4278434 call!650689)))

(declare-fun b!7120580 () Bool)

(assert (=> b!7120580 (= e!4278434 (as set.empty (Set Context!13964)))))

(declare-fun b!7120581 () Bool)

(declare-fun c!1328860 () Bool)

(assert (=> b!7120581 (= c!1328860 (is-Star!17988 r!11554))))

(assert (=> b!7120581 (= e!4278432 e!4278434)))

(declare-fun b!7120582 () Bool)

(assert (=> b!7120582 (= e!4278432 call!650689)))

(assert (= (and d!2221888 c!1328861) b!7120572))

(assert (= (and d!2221888 (not c!1328861)) b!7120576))

(assert (= (and b!7120576 c!1328864) b!7120575))

(assert (= (and b!7120576 (not c!1328864)) b!7120577))

(assert (= (and b!7120577 res!2904690) b!7120573))

(assert (= (and b!7120577 c!1328863) b!7120574))

(assert (= (and b!7120577 (not c!1328863)) b!7120578))

(assert (= (and b!7120578 c!1328862) b!7120582))

(assert (= (and b!7120578 (not c!1328862)) b!7120581))

(assert (= (and b!7120581 c!1328860) b!7120579))

(assert (= (and b!7120581 (not c!1328860)) b!7120580))

(assert (= (or b!7120582 b!7120579) bm!650682))

(assert (= (or b!7120582 b!7120579) bm!650685))

(assert (= (or b!7120574 bm!650685) bm!650684))

(assert (= (or b!7120574 bm!650682) bm!650683))

(assert (= (or b!7120575 b!7120574) bm!650681))

(assert (= (or b!7120575 bm!650684) bm!650680))

(declare-fun m!7837512 () Bool)

(assert (=> b!7120572 m!7837512))

(declare-fun m!7837514 () Bool)

(assert (=> bm!650680 m!7837514))

(declare-fun m!7837516 () Bool)

(assert (=> bm!650683 m!7837516))

(assert (=> b!7120573 m!7837442))

(declare-fun m!7837518 () Bool)

(assert (=> bm!650681 m!7837518))

(assert (=> b!7120480 d!2221888))

(assert (=> b!7120480 d!2221870))

(declare-fun b!7120592 () Bool)

(declare-fun e!4278442 () List!68949)

(assert (=> b!7120592 (= e!4278442 (Cons!68825 (h!75273 (exprs!7482 c!9994)) (++!16140 (t!382812 (exprs!7482 c!9994)) (exprs!7482 auxCtx!45))))))

(declare-fun d!2221892 () Bool)

(declare-fun e!4278443 () Bool)

(assert (=> d!2221892 e!4278443))

(declare-fun res!2904695 () Bool)

(assert (=> d!2221892 (=> (not res!2904695) (not e!4278443))))

(declare-fun lt!2561318 () List!68949)

(declare-fun content!14058 (List!68949) (Set Regex!17988))

(assert (=> d!2221892 (= res!2904695 (= (content!14058 lt!2561318) (set.union (content!14058 (exprs!7482 c!9994)) (content!14058 (exprs!7482 auxCtx!45)))))))

(assert (=> d!2221892 (= lt!2561318 e!4278442)))

(declare-fun c!1328867 () Bool)

(assert (=> d!2221892 (= c!1328867 (is-Nil!68825 (exprs!7482 c!9994)))))

(assert (=> d!2221892 (= (++!16140 (exprs!7482 c!9994) (exprs!7482 auxCtx!45)) lt!2561318)))

(declare-fun b!7120591 () Bool)

(assert (=> b!7120591 (= e!4278442 (exprs!7482 auxCtx!45))))

(declare-fun b!7120594 () Bool)

(assert (=> b!7120594 (= e!4278443 (or (not (= (exprs!7482 auxCtx!45) Nil!68825)) (= lt!2561318 (exprs!7482 c!9994))))))

(declare-fun b!7120593 () Bool)

(declare-fun res!2904696 () Bool)

(assert (=> b!7120593 (=> (not res!2904696) (not e!4278443))))

(declare-fun size!41433 (List!68949) Int)

(assert (=> b!7120593 (= res!2904696 (= (size!41433 lt!2561318) (+ (size!41433 (exprs!7482 c!9994)) (size!41433 (exprs!7482 auxCtx!45)))))))

(assert (= (and d!2221892 c!1328867) b!7120591))

(assert (= (and d!2221892 (not c!1328867)) b!7120592))

(assert (= (and d!2221892 res!2904695) b!7120593))

(assert (= (and b!7120593 res!2904696) b!7120594))

(declare-fun m!7837522 () Bool)

(assert (=> b!7120592 m!7837522))

(declare-fun m!7837524 () Bool)

(assert (=> d!2221892 m!7837524))

(declare-fun m!7837526 () Bool)

(assert (=> d!2221892 m!7837526))

(declare-fun m!7837528 () Bool)

(assert (=> d!2221892 m!7837528))

(declare-fun m!7837530 () Bool)

(assert (=> b!7120593 m!7837530))

(declare-fun m!7837532 () Bool)

(assert (=> b!7120593 m!7837532))

(declare-fun m!7837534 () Bool)

(assert (=> b!7120593 m!7837534))

(assert (=> b!7120480 d!2221892))

(declare-fun d!2221896 () Bool)

(declare-fun choose!54922 ((Set Context!13964) Int) (Set Context!13964))

(assert (=> d!2221896 (= (map!16322 (as set.empty (Set Context!13964)) lambda!432716) (choose!54922 (as set.empty (Set Context!13964)) lambda!432716))))

(declare-fun bs!1885881 () Bool)

(assert (= bs!1885881 d!2221896))

(declare-fun m!7837536 () Bool)

(assert (=> bs!1885881 m!7837536))

(assert (=> b!7120480 d!2221896))

(declare-fun bs!1885882 () Bool)

(declare-fun d!2221898 () Bool)

(assert (= bs!1885882 (and d!2221898 b!7120482)))

(declare-fun lambda!432745 () Int)

(assert (=> bs!1885882 (= lambda!432745 lambda!432716)))

(assert (=> d!2221898 true))

(assert (=> d!2221898 (= (appendTo!951 (derivationStepZipperDown!2483 r!11554 c!9994 a!1901) auxCtx!45) (map!16322 (derivationStepZipperDown!2483 r!11554 c!9994 a!1901) lambda!432745))))

(declare-fun bs!1885883 () Bool)

(assert (= bs!1885883 d!2221898))

(assert (=> bs!1885883 m!7837446))

(declare-fun m!7837538 () Bool)

(assert (=> bs!1885883 m!7837538))

(assert (=> b!7120480 d!2221898))

(declare-fun d!2221900 () Bool)

(declare-fun c!1328872 () Bool)

(assert (=> d!2221900 (= c!1328872 (and (is-ElementMatch!17988 r!11554) (= (c!1328841 r!11554) a!1901)))))

(declare-fun e!4278452 () (Set Context!13964))

(assert (=> d!2221900 (= (derivationStepZipperDown!2483 r!11554 lt!2561290 a!1901) e!4278452)))

(declare-fun b!7120603 () Bool)

(assert (=> b!7120603 (= e!4278452 (set.insert lt!2561290 (as set.empty (Set Context!13964))))))

(declare-fun c!1328873 () Bool)

(declare-fun call!650696 () List!68949)

(declare-fun c!1328874 () Bool)

(declare-fun bm!650686 () Bool)

(declare-fun call!650693 () (Set Context!13964))

(declare-fun c!1328875 () Bool)

(assert (=> bm!650686 (= call!650693 (derivationStepZipperDown!2483 (ite c!1328875 (regOne!36489 r!11554) (ite c!1328874 (regTwo!36488 r!11554) (ite c!1328873 (regOne!36488 r!11554) (reg!18317 r!11554)))) (ite (or c!1328875 c!1328874) lt!2561290 (Context!13965 call!650696)) a!1901))))

(declare-fun call!650691 () List!68949)

(declare-fun call!650692 () (Set Context!13964))

(declare-fun bm!650687 () Bool)

(assert (=> bm!650687 (= call!650692 (derivationStepZipperDown!2483 (ite c!1328875 (regTwo!36489 r!11554) (regOne!36488 r!11554)) (ite c!1328875 lt!2561290 (Context!13965 call!650691)) a!1901))))

(declare-fun bm!650688 () Bool)

(assert (=> bm!650688 (= call!650696 call!650691)))

(declare-fun b!7120604 () Bool)

(declare-fun e!4278449 () Bool)

(assert (=> b!7120604 (= e!4278449 (nullable!7625 (regOne!36488 r!11554)))))

(declare-fun b!7120605 () Bool)

(declare-fun e!4278451 () (Set Context!13964))

(declare-fun call!650694 () (Set Context!13964))

(assert (=> b!7120605 (= e!4278451 (set.union call!650692 call!650694))))

(declare-fun bm!650689 () Bool)

(assert (=> bm!650689 (= call!650691 ($colon$colon!2829 (exprs!7482 lt!2561290) (ite (or c!1328874 c!1328873) (regTwo!36488 r!11554) r!11554)))))

(declare-fun b!7120606 () Bool)

(declare-fun e!4278453 () (Set Context!13964))

(assert (=> b!7120606 (= e!4278453 (set.union call!650693 call!650692))))

(declare-fun bm!650690 () Bool)

(assert (=> bm!650690 (= call!650694 call!650693)))

(declare-fun b!7120607 () Bool)

(assert (=> b!7120607 (= e!4278452 e!4278453)))

(assert (=> b!7120607 (= c!1328875 (is-Union!17988 r!11554))))

(declare-fun b!7120608 () Bool)

(assert (=> b!7120608 (= c!1328874 e!4278449)))

(declare-fun res!2904701 () Bool)

(assert (=> b!7120608 (=> (not res!2904701) (not e!4278449))))

(assert (=> b!7120608 (= res!2904701 (is-Concat!26833 r!11554))))

(assert (=> b!7120608 (= e!4278453 e!4278451)))

(declare-fun b!7120609 () Bool)

(declare-fun e!4278448 () (Set Context!13964))

(assert (=> b!7120609 (= e!4278451 e!4278448)))

(assert (=> b!7120609 (= c!1328873 (is-Concat!26833 r!11554))))

(declare-fun bm!650691 () Bool)

(declare-fun call!650695 () (Set Context!13964))

(assert (=> bm!650691 (= call!650695 call!650694)))

(declare-fun b!7120610 () Bool)

(declare-fun e!4278450 () (Set Context!13964))

(assert (=> b!7120610 (= e!4278450 call!650695)))

(declare-fun b!7120611 () Bool)

(assert (=> b!7120611 (= e!4278450 (as set.empty (Set Context!13964)))))

(declare-fun b!7120612 () Bool)

(declare-fun c!1328871 () Bool)

(assert (=> b!7120612 (= c!1328871 (is-Star!17988 r!11554))))

(assert (=> b!7120612 (= e!4278448 e!4278450)))

(declare-fun b!7120613 () Bool)

(assert (=> b!7120613 (= e!4278448 call!650695)))

(assert (= (and d!2221900 c!1328872) b!7120603))

(assert (= (and d!2221900 (not c!1328872)) b!7120607))

(assert (= (and b!7120607 c!1328875) b!7120606))

(assert (= (and b!7120607 (not c!1328875)) b!7120608))

(assert (= (and b!7120608 res!2904701) b!7120604))

(assert (= (and b!7120608 c!1328874) b!7120605))

(assert (= (and b!7120608 (not c!1328874)) b!7120609))

(assert (= (and b!7120609 c!1328873) b!7120613))

(assert (= (and b!7120609 (not c!1328873)) b!7120612))

(assert (= (and b!7120612 c!1328871) b!7120610))

(assert (= (and b!7120612 (not c!1328871)) b!7120611))

(assert (= (or b!7120613 b!7120610) bm!650688))

(assert (= (or b!7120613 b!7120610) bm!650691))

(assert (= (or b!7120605 bm!650691) bm!650690))

(assert (= (or b!7120605 bm!650688) bm!650689))

(assert (= (or b!7120606 b!7120605) bm!650687))

(assert (= (or b!7120606 bm!650690) bm!650686))

(declare-fun m!7837540 () Bool)

(assert (=> b!7120603 m!7837540))

(declare-fun m!7837542 () Bool)

(assert (=> bm!650686 m!7837542))

(declare-fun m!7837544 () Bool)

(assert (=> bm!650689 m!7837544))

(assert (=> b!7120604 m!7837442))

(declare-fun m!7837546 () Bool)

(assert (=> bm!650687 m!7837546))

(assert (=> b!7120480 d!2221900))

(declare-fun b!7120631 () Bool)

(declare-fun e!4278458 () Bool)

(declare-fun tp!1960350 () Bool)

(declare-fun tp!1960353 () Bool)

(assert (=> b!7120631 (= e!4278458 (and tp!1960350 tp!1960353))))

(declare-fun b!7120628 () Bool)

(assert (=> b!7120628 (= e!4278458 tp_is_empty!45209)))

(assert (=> b!7120474 (= tp!1960312 e!4278458)))

(declare-fun b!7120630 () Bool)

(declare-fun tp!1960349 () Bool)

(assert (=> b!7120630 (= e!4278458 tp!1960349)))

(declare-fun b!7120629 () Bool)

(declare-fun tp!1960352 () Bool)

(declare-fun tp!1960351 () Bool)

(assert (=> b!7120629 (= e!4278458 (and tp!1960352 tp!1960351))))

(assert (= (and b!7120474 (is-ElementMatch!17988 (regOne!36489 r!11554))) b!7120628))

(assert (= (and b!7120474 (is-Concat!26833 (regOne!36489 r!11554))) b!7120629))

(assert (= (and b!7120474 (is-Star!17988 (regOne!36489 r!11554))) b!7120630))

(assert (= (and b!7120474 (is-Union!17988 (regOne!36489 r!11554))) b!7120631))

(declare-fun b!7120635 () Bool)

(declare-fun e!4278459 () Bool)

(declare-fun tp!1960355 () Bool)

(declare-fun tp!1960358 () Bool)

(assert (=> b!7120635 (= e!4278459 (and tp!1960355 tp!1960358))))

(declare-fun b!7120632 () Bool)

(assert (=> b!7120632 (= e!4278459 tp_is_empty!45209)))

(assert (=> b!7120474 (= tp!1960316 e!4278459)))

(declare-fun b!7120634 () Bool)

(declare-fun tp!1960354 () Bool)

(assert (=> b!7120634 (= e!4278459 tp!1960354)))

(declare-fun b!7120633 () Bool)

(declare-fun tp!1960357 () Bool)

(declare-fun tp!1960356 () Bool)

(assert (=> b!7120633 (= e!4278459 (and tp!1960357 tp!1960356))))

(assert (= (and b!7120474 (is-ElementMatch!17988 (regTwo!36489 r!11554))) b!7120632))

(assert (= (and b!7120474 (is-Concat!26833 (regTwo!36489 r!11554))) b!7120633))

(assert (= (and b!7120474 (is-Star!17988 (regTwo!36489 r!11554))) b!7120634))

(assert (= (and b!7120474 (is-Union!17988 (regTwo!36489 r!11554))) b!7120635))

(declare-fun b!7120639 () Bool)

(declare-fun e!4278460 () Bool)

(declare-fun tp!1960360 () Bool)

(declare-fun tp!1960363 () Bool)

(assert (=> b!7120639 (= e!4278460 (and tp!1960360 tp!1960363))))

(declare-fun b!7120636 () Bool)

(assert (=> b!7120636 (= e!4278460 tp_is_empty!45209)))

(assert (=> b!7120479 (= tp!1960314 e!4278460)))

(declare-fun b!7120638 () Bool)

(declare-fun tp!1960359 () Bool)

(assert (=> b!7120638 (= e!4278460 tp!1960359)))

(declare-fun b!7120637 () Bool)

(declare-fun tp!1960362 () Bool)

(declare-fun tp!1960361 () Bool)

(assert (=> b!7120637 (= e!4278460 (and tp!1960362 tp!1960361))))

(assert (= (and b!7120479 (is-ElementMatch!17988 (regOne!36488 r!11554))) b!7120636))

(assert (= (and b!7120479 (is-Concat!26833 (regOne!36488 r!11554))) b!7120637))

(assert (= (and b!7120479 (is-Star!17988 (regOne!36488 r!11554))) b!7120638))

(assert (= (and b!7120479 (is-Union!17988 (regOne!36488 r!11554))) b!7120639))

(declare-fun b!7120643 () Bool)

(declare-fun e!4278461 () Bool)

(declare-fun tp!1960365 () Bool)

(declare-fun tp!1960368 () Bool)

(assert (=> b!7120643 (= e!4278461 (and tp!1960365 tp!1960368))))

(declare-fun b!7120640 () Bool)

(assert (=> b!7120640 (= e!4278461 tp_is_empty!45209)))

(assert (=> b!7120479 (= tp!1960311 e!4278461)))

(declare-fun b!7120642 () Bool)

(declare-fun tp!1960364 () Bool)

(assert (=> b!7120642 (= e!4278461 tp!1960364)))

(declare-fun b!7120641 () Bool)

(declare-fun tp!1960367 () Bool)

(declare-fun tp!1960366 () Bool)

(assert (=> b!7120641 (= e!4278461 (and tp!1960367 tp!1960366))))

(assert (= (and b!7120479 (is-ElementMatch!17988 (regTwo!36488 r!11554))) b!7120640))

(assert (= (and b!7120479 (is-Concat!26833 (regTwo!36488 r!11554))) b!7120641))

(assert (= (and b!7120479 (is-Star!17988 (regTwo!36488 r!11554))) b!7120642))

(assert (= (and b!7120479 (is-Union!17988 (regTwo!36488 r!11554))) b!7120643))

(declare-fun b!7120647 () Bool)

(declare-fun e!4278462 () Bool)

(declare-fun tp!1960370 () Bool)

(declare-fun tp!1960373 () Bool)

(assert (=> b!7120647 (= e!4278462 (and tp!1960370 tp!1960373))))

(declare-fun b!7120644 () Bool)

(assert (=> b!7120644 (= e!4278462 tp_is_empty!45209)))

(assert (=> b!7120478 (= tp!1960315 e!4278462)))

(declare-fun b!7120646 () Bool)

(declare-fun tp!1960369 () Bool)

(assert (=> b!7120646 (= e!4278462 tp!1960369)))

(declare-fun b!7120645 () Bool)

(declare-fun tp!1960372 () Bool)

(declare-fun tp!1960371 () Bool)

(assert (=> b!7120645 (= e!4278462 (and tp!1960372 tp!1960371))))

(assert (= (and b!7120478 (is-ElementMatch!17988 (reg!18317 r!11554))) b!7120644))

(assert (= (and b!7120478 (is-Concat!26833 (reg!18317 r!11554))) b!7120645))

(assert (= (and b!7120478 (is-Star!17988 (reg!18317 r!11554))) b!7120646))

(assert (= (and b!7120478 (is-Union!17988 (reg!18317 r!11554))) b!7120647))

(declare-fun b!7120652 () Bool)

(declare-fun e!4278465 () Bool)

(declare-fun tp!1960378 () Bool)

(declare-fun tp!1960379 () Bool)

(assert (=> b!7120652 (= e!4278465 (and tp!1960378 tp!1960379))))

(assert (=> b!7120472 (= tp!1960313 e!4278465)))

(assert (= (and b!7120472 (is-Cons!68825 (exprs!7482 c!9994))) b!7120652))

(declare-fun b!7120653 () Bool)

(declare-fun e!4278466 () Bool)

(declare-fun tp!1960380 () Bool)

(declare-fun tp!1960381 () Bool)

(assert (=> b!7120653 (= e!4278466 (and tp!1960380 tp!1960381))))

(assert (=> b!7120476 (= tp!1960317 e!4278466)))

(assert (= (and b!7120476 (is-Cons!68825 (exprs!7482 auxCtx!45))) b!7120653))

(push 1)

(assert (not b!7120573))

(assert (not bm!650683))

(assert (not b!7120638))

(assert (not b!7120637))

(assert (not b!7120643))

(assert (not b!7120593))

(assert (not d!2221896))

(assert (not d!2221872))

(assert (not b!7120653))

(assert (not b!7120642))

(assert (not d!2221882))

(assert (not bm!650665))

(assert (not d!2221898))

(assert (not b!7120646))

(assert (not b!7120549))

(assert (not b!7120592))

(assert (not b!7120652))

(assert (not b!7120634))

(assert (not b!7120604))

(assert (not b!7120629))

(assert (not bm!650687))

(assert (not b!7120633))

(assert (not b!7120647))

(assert (not bm!650666))

(assert (not d!2221886))

(assert (not b!7120641))

(assert (not b!7120645))

(assert (not d!2221868))

(assert tp_is_empty!45209)

(assert (not b!7120635))

(assert (not d!2221884))

(assert (not bm!650680))

(assert (not b!7120639))

(assert (not b!7120630))

(assert (not d!2221870))

(assert (not b!7120631))

(assert (not bm!650686))

(assert (not bm!650689))

(assert (not bm!650681))

(assert (not d!2221892))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

