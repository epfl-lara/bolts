; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!692010 () Bool)

(assert start!692010)

(declare-fun b!7109365 () Bool)

(declare-fun e!4272596 () Bool)

(declare-fun tp!1955709 () Bool)

(declare-fun tp!1955703 () Bool)

(assert (=> b!7109365 (= e!4272596 (and tp!1955709 tp!1955703))))

(declare-fun b!7109366 () Bool)

(declare-fun tp!1955708 () Bool)

(declare-fun tp!1955705 () Bool)

(assert (=> b!7109366 (= e!4272596 (and tp!1955708 tp!1955705))))

(declare-fun res!2901539 () Bool)

(declare-fun e!4272599 () Bool)

(assert (=> start!692010 (=> (not res!2901539) (not e!4272599))))

(declare-datatypes ((C!36126 0))(
  ( (C!36127 (val!27769 Int)) )
))
(declare-datatypes ((Regex!17928 0))(
  ( (ElementMatch!17928 (c!1326675 C!36126)) (Concat!26773 (regOne!36368 Regex!17928) (regTwo!36368 Regex!17928)) (EmptyExpr!17928) (Star!17928 (reg!18257 Regex!17928)) (EmptyLang!17928) (Union!17928 (regOne!36369 Regex!17928) (regTwo!36369 Regex!17928)) )
))
(declare-fun r!11554 () Regex!17928)

(declare-fun validRegex!9201 (Regex!17928) Bool)

(assert (=> start!692010 (= res!2901539 (validRegex!9201 r!11554))))

(assert (=> start!692010 e!4272599))

(assert (=> start!692010 e!4272596))

(declare-fun tp_is_empty!45089 () Bool)

(assert (=> start!692010 tp_is_empty!45089))

(declare-datatypes ((List!68889 0))(
  ( (Nil!68765) (Cons!68765 (h!75213 Regex!17928) (t!382714 List!68889)) )
))
(declare-datatypes ((Context!13844 0))(
  ( (Context!13845 (exprs!7422 List!68889)) )
))
(declare-fun c!9994 () Context!13844)

(declare-fun e!4272597 () Bool)

(declare-fun inv!87684 (Context!13844) Bool)

(assert (=> start!692010 (and (inv!87684 c!9994) e!4272597)))

(declare-fun auxCtx!45 () Context!13844)

(declare-fun e!4272595 () Bool)

(assert (=> start!692010 (and (inv!87684 auxCtx!45) e!4272595)))

(declare-fun b!7109367 () Bool)

(declare-fun e!4272598 () Bool)

(declare-fun regexDepth!393 (Regex!17928) Int)

(assert (=> b!7109367 (= e!4272598 (not (< (regexDepth!393 (regTwo!36368 r!11554)) (regexDepth!393 r!11554))))))

(declare-fun a!1901 () C!36126)

(declare-fun lt!2559463 () Context!13844)

(declare-fun lt!2559462 () List!68889)

(declare-fun derivationStepZipperDown!2443 (Regex!17928 Context!13844 C!36126) (Set Context!13844))

(declare-fun ++!16080 (List!68889 List!68889) List!68889)

(declare-fun appendTo!927 ((Set Context!13844) Context!13844) (Set Context!13844))

(assert (=> b!7109367 (= (derivationStepZipperDown!2443 (regOne!36368 r!11554) (Context!13845 (++!16080 lt!2559462 (exprs!7422 auxCtx!45))) a!1901) (appendTo!927 (derivationStepZipperDown!2443 (regOne!36368 r!11554) lt!2559463 a!1901) auxCtx!45))))

(declare-datatypes ((Unit!162527 0))(
  ( (Unit!162528) )
))
(declare-fun lt!2559460 () Unit!162527)

(declare-fun lambda!431792 () Int)

(declare-fun lemmaConcatPreservesForall!1213 (List!68889 List!68889 Int) Unit!162527)

(assert (=> b!7109367 (= lt!2559460 (lemmaConcatPreservesForall!1213 lt!2559462 (exprs!7422 auxCtx!45) lambda!431792))))

(declare-fun lt!2559465 () Unit!162527)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!225 (Context!13844 Regex!17928 C!36126 Context!13844) Unit!162527)

(assert (=> b!7109367 (= lt!2559465 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!225 lt!2559463 (regOne!36368 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7109367 (= lt!2559463 (Context!13845 lt!2559462))))

(declare-fun $colon$colon!2786 (List!68889 Regex!17928) List!68889)

(assert (=> b!7109367 (= lt!2559462 ($colon$colon!2786 (exprs!7422 c!9994) (regTwo!36368 r!11554)))))

(declare-fun b!7109368 () Bool)

(declare-fun tp!1955706 () Bool)

(assert (=> b!7109368 (= e!4272597 tp!1955706)))

(declare-fun b!7109369 () Bool)

(declare-fun res!2901538 () Bool)

(assert (=> b!7109369 (=> (not res!2901538) (not e!4272598))))

(declare-fun lt!2559458 () List!68889)

(declare-fun lt!2559461 () Context!13844)

(assert (=> b!7109369 (= res!2901538 (= (derivationStepZipperDown!2443 r!11554 lt!2559461 a!1901) (set.union (derivationStepZipperDown!2443 (regOne!36368 r!11554) (Context!13845 ($colon$colon!2786 lt!2559458 (regTwo!36368 r!11554))) a!1901) (derivationStepZipperDown!2443 (regTwo!36368 r!11554) lt!2559461 a!1901))))))

(declare-fun b!7109370 () Bool)

(declare-fun res!2901535 () Bool)

(assert (=> b!7109370 (=> (not res!2901535) (not e!4272599))))

(assert (=> b!7109370 (= res!2901535 (and (or (not (is-ElementMatch!17928 r!11554)) (not (= (c!1326675 r!11554) a!1901))) (not (is-Union!17928 r!11554)) (is-Concat!26773 r!11554)))))

(declare-fun b!7109371 () Bool)

(assert (=> b!7109371 (= e!4272596 tp_is_empty!45089)))

(declare-fun b!7109372 () Bool)

(declare-fun tp!1955707 () Bool)

(assert (=> b!7109372 (= e!4272596 tp!1955707)))

(declare-fun b!7109373 () Bool)

(assert (=> b!7109373 (= e!4272599 e!4272598)))

(declare-fun res!2901536 () Bool)

(assert (=> b!7109373 (=> (not res!2901536) (not e!4272598))))

(assert (=> b!7109373 (= res!2901536 (validRegex!9201 (regTwo!36368 r!11554)))))

(declare-fun lt!2559464 () Unit!162527)

(assert (=> b!7109373 (= lt!2559464 (lemmaConcatPreservesForall!1213 (exprs!7422 c!9994) (exprs!7422 auxCtx!45) lambda!431792))))

(assert (=> b!7109373 (= lt!2559461 (Context!13845 lt!2559458))))

(assert (=> b!7109373 (= lt!2559458 (++!16080 (exprs!7422 c!9994) (exprs!7422 auxCtx!45)))))

(declare-fun lt!2559457 () Unit!162527)

(assert (=> b!7109373 (= lt!2559457 (lemmaConcatPreservesForall!1213 (exprs!7422 c!9994) (exprs!7422 auxCtx!45) lambda!431792))))

(declare-fun lt!2559459 () Unit!162527)

(assert (=> b!7109373 (= lt!2559459 (lemmaConcatPreservesForall!1213 (exprs!7422 c!9994) (exprs!7422 auxCtx!45) lambda!431792))))

(declare-fun b!7109374 () Bool)

(declare-fun res!2901537 () Bool)

(assert (=> b!7109374 (=> (not res!2901537) (not e!4272599))))

(declare-fun nullable!7565 (Regex!17928) Bool)

(assert (=> b!7109374 (= res!2901537 (nullable!7565 (regOne!36368 r!11554)))))

(declare-fun b!7109375 () Bool)

(declare-fun tp!1955704 () Bool)

(assert (=> b!7109375 (= e!4272595 tp!1955704)))

(assert (= (and start!692010 res!2901539) b!7109370))

(assert (= (and b!7109370 res!2901535) b!7109374))

(assert (= (and b!7109374 res!2901537) b!7109373))

(assert (= (and b!7109373 res!2901536) b!7109369))

(assert (= (and b!7109369 res!2901538) b!7109367))

(assert (= (and start!692010 (is-ElementMatch!17928 r!11554)) b!7109371))

(assert (= (and start!692010 (is-Concat!26773 r!11554)) b!7109365))

(assert (= (and start!692010 (is-Star!17928 r!11554)) b!7109372))

(assert (= (and start!692010 (is-Union!17928 r!11554)) b!7109366))

(assert (= start!692010 b!7109368))

(assert (= start!692010 b!7109375))

(declare-fun m!7830932 () Bool)

(assert (=> b!7109373 m!7830932))

(assert (=> b!7109373 m!7830932))

(declare-fun m!7830934 () Bool)

(assert (=> b!7109373 m!7830934))

(declare-fun m!7830936 () Bool)

(assert (=> b!7109373 m!7830936))

(assert (=> b!7109373 m!7830932))

(declare-fun m!7830938 () Bool)

(assert (=> b!7109374 m!7830938))

(declare-fun m!7830940 () Bool)

(assert (=> b!7109369 m!7830940))

(declare-fun m!7830942 () Bool)

(assert (=> b!7109369 m!7830942))

(declare-fun m!7830944 () Bool)

(assert (=> b!7109369 m!7830944))

(declare-fun m!7830946 () Bool)

(assert (=> b!7109369 m!7830946))

(declare-fun m!7830948 () Bool)

(assert (=> b!7109367 m!7830948))

(declare-fun m!7830950 () Bool)

(assert (=> b!7109367 m!7830950))

(declare-fun m!7830952 () Bool)

(assert (=> b!7109367 m!7830952))

(declare-fun m!7830954 () Bool)

(assert (=> b!7109367 m!7830954))

(declare-fun m!7830956 () Bool)

(assert (=> b!7109367 m!7830956))

(declare-fun m!7830958 () Bool)

(assert (=> b!7109367 m!7830958))

(declare-fun m!7830960 () Bool)

(assert (=> b!7109367 m!7830960))

(assert (=> b!7109367 m!7830954))

(declare-fun m!7830962 () Bool)

(assert (=> b!7109367 m!7830962))

(declare-fun m!7830964 () Bool)

(assert (=> b!7109367 m!7830964))

(declare-fun m!7830966 () Bool)

(assert (=> start!692010 m!7830966))

(declare-fun m!7830968 () Bool)

(assert (=> start!692010 m!7830968))

(declare-fun m!7830970 () Bool)

(assert (=> start!692010 m!7830970))

(push 1)

(assert (not start!692010))

(assert tp_is_empty!45089)

(assert (not b!7109374))

(assert (not b!7109372))

(assert (not b!7109367))

(assert (not b!7109369))

(assert (not b!7109366))

(assert (not b!7109375))

(assert (not b!7109373))

(assert (not b!7109368))

(assert (not b!7109365))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!648409 () Bool)

(declare-fun call!648416 () Int)

(declare-fun call!648414 () Int)

(assert (=> bm!648409 (= call!648416 call!648414)))

(declare-fun b!7109465 () Bool)

(declare-fun e!4272647 () Bool)

(declare-fun lt!2559495 () Int)

(declare-fun call!648420 () Int)

(assert (=> b!7109465 (= e!4272647 (> lt!2559495 call!648420))))

(declare-fun b!7109466 () Bool)

(declare-fun e!4272655 () Bool)

(declare-fun e!4272654 () Bool)

(assert (=> b!7109466 (= e!4272655 e!4272654)))

(declare-fun c!1326701 () Bool)

(assert (=> b!7109466 (= c!1326701 (is-Union!17928 r!11554))))

(declare-fun b!7109467 () Bool)

(declare-fun e!4272651 () Bool)

(assert (=> b!7109467 (= e!4272654 e!4272651)))

(declare-fun c!1326704 () Bool)

(assert (=> b!7109467 (= c!1326704 (is-Concat!26773 r!11554))))

(declare-fun call!648418 () Int)

(declare-fun c!1326702 () Bool)

(declare-fun c!1326707 () Bool)

(declare-fun bm!648410 () Bool)

(assert (=> bm!648410 (= call!648418 (regexDepth!393 (ite c!1326702 (reg!18257 r!11554) (ite c!1326707 (regOne!36369 r!11554) (regTwo!36368 r!11554)))))))

(declare-fun b!7109468 () Bool)

(declare-fun e!4272653 () Int)

(declare-fun call!648415 () Int)

(assert (=> b!7109468 (= e!4272653 (+ 1 call!648415))))

(declare-fun bm!648411 () Bool)

(assert (=> bm!648411 (= call!648414 (regexDepth!393 (ite c!1326701 (regTwo!36369 r!11554) (ite c!1326704 (regOne!36368 r!11554) (reg!18257 r!11554)))))))

(declare-fun b!7109469 () Bool)

(declare-fun e!4272650 () Bool)

(assert (=> b!7109469 (= e!4272650 (> lt!2559495 call!648416))))

(declare-fun b!7109470 () Bool)

(declare-fun e!4272656 () Int)

(declare-fun e!4272652 () Int)

(assert (=> b!7109470 (= e!4272656 e!4272652)))

(assert (=> b!7109470 (= c!1326702 (is-Star!17928 r!11554))))

(declare-fun b!7109471 () Bool)

(assert (=> b!7109471 (= e!4272656 1)))

(declare-fun b!7109472 () Bool)

(declare-fun e!4272649 () Int)

(assert (=> b!7109472 (= e!4272649 (+ 1 call!648415))))

(declare-fun b!7109473 () Bool)

(declare-fun e!4272648 () Bool)

(assert (=> b!7109473 (= e!4272648 (> lt!2559495 call!648414))))

(declare-fun b!7109474 () Bool)

(assert (=> b!7109474 (= e!4272650 (= lt!2559495 1))))

(declare-fun b!7109475 () Bool)

(assert (=> b!7109475 (= e!4272653 1)))

(declare-fun bm!648412 () Bool)

(declare-fun call!648417 () Int)

(assert (=> bm!648412 (= call!648417 (regexDepth!393 (ite c!1326707 (regTwo!36369 r!11554) (regOne!36368 r!11554))))))

(declare-fun d!2219906 () Bool)

(assert (=> d!2219906 e!4272655))

(declare-fun res!2901564 () Bool)

(assert (=> d!2219906 (=> (not res!2901564) (not e!4272655))))

(assert (=> d!2219906 (= res!2901564 (> lt!2559495 0))))

(assert (=> d!2219906 (= lt!2559495 e!4272656)))

(declare-fun c!1326703 () Bool)

(assert (=> d!2219906 (= c!1326703 (is-ElementMatch!17928 r!11554))))

(assert (=> d!2219906 (= (regexDepth!393 r!11554) lt!2559495)))

(declare-fun b!7109476 () Bool)

(assert (=> b!7109476 (= e!4272649 e!4272653)))

(declare-fun c!1326705 () Bool)

(assert (=> b!7109476 (= c!1326705 (is-Concat!26773 r!11554))))

(declare-fun b!7109477 () Bool)

(assert (=> b!7109477 (= e!4272652 (+ 1 call!648418))))

(declare-fun bm!648413 () Bool)

(declare-fun call!648419 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!648413 (= call!648415 (maxBigInt!0 (ite c!1326707 call!648419 call!648417) (ite c!1326707 call!648417 call!648419)))))

(declare-fun b!7109478 () Bool)

(assert (=> b!7109478 (= c!1326707 (is-Union!17928 r!11554))))

(assert (=> b!7109478 (= e!4272652 e!4272649)))

(declare-fun bm!648414 () Bool)

(assert (=> bm!648414 (= call!648420 (regexDepth!393 (ite c!1326701 (regOne!36369 r!11554) (regTwo!36368 r!11554))))))

(declare-fun b!7109479 () Bool)

(declare-fun res!2901565 () Bool)

(assert (=> b!7109479 (=> (not res!2901565) (not e!4272647))))

(assert (=> b!7109479 (= res!2901565 (> lt!2559495 call!648416))))

(assert (=> b!7109479 (= e!4272651 e!4272647)))

(declare-fun b!7109480 () Bool)

(assert (=> b!7109480 (= e!4272654 e!4272648)))

(declare-fun res!2901563 () Bool)

(assert (=> b!7109480 (= res!2901563 (> lt!2559495 call!648420))))

(assert (=> b!7109480 (=> (not res!2901563) (not e!4272648))))

(declare-fun b!7109481 () Bool)

(declare-fun c!1326706 () Bool)

(assert (=> b!7109481 (= c!1326706 (is-Star!17928 r!11554))))

(assert (=> b!7109481 (= e!4272651 e!4272650)))

(declare-fun bm!648415 () Bool)

(assert (=> bm!648415 (= call!648419 call!648418)))

(assert (= (and d!2219906 c!1326703) b!7109471))

(assert (= (and d!2219906 (not c!1326703)) b!7109470))

(assert (= (and b!7109470 c!1326702) b!7109477))

(assert (= (and b!7109470 (not c!1326702)) b!7109478))

(assert (= (and b!7109478 c!1326707) b!7109472))

(assert (= (and b!7109478 (not c!1326707)) b!7109476))

(assert (= (and b!7109476 c!1326705) b!7109468))

(assert (= (and b!7109476 (not c!1326705)) b!7109475))

(assert (= (or b!7109472 b!7109468) bm!648412))

(assert (= (or b!7109472 b!7109468) bm!648415))

(assert (= (or b!7109472 b!7109468) bm!648413))

(assert (= (or b!7109477 bm!648415) bm!648410))

(assert (= (and d!2219906 res!2901564) b!7109466))

(assert (= (and b!7109466 c!1326701) b!7109480))

(assert (= (and b!7109466 (not c!1326701)) b!7109467))

(assert (= (and b!7109480 res!2901563) b!7109473))

(assert (= (and b!7109467 c!1326704) b!7109479))

(assert (= (and b!7109467 (not c!1326704)) b!7109481))

(assert (= (and b!7109479 res!2901565) b!7109465))

(assert (= (and b!7109481 c!1326706) b!7109469))

(assert (= (and b!7109481 (not c!1326706)) b!7109474))

(assert (= (or b!7109479 b!7109469) bm!648409))

(assert (= (or b!7109473 bm!648409) bm!648411))

(assert (= (or b!7109480 b!7109465) bm!648414))

(declare-fun m!7831014 () Bool)

(assert (=> bm!648414 m!7831014))

(declare-fun m!7831016 () Bool)

(assert (=> bm!648412 m!7831016))

(declare-fun m!7831018 () Bool)

(assert (=> bm!648413 m!7831018))

(declare-fun m!7831020 () Bool)

(assert (=> bm!648410 m!7831020))

(declare-fun m!7831022 () Bool)

(assert (=> bm!648411 m!7831022))

(assert (=> b!7109367 d!2219906))

(declare-fun b!7109504 () Bool)

(declare-fun e!4272673 () (Set Context!13844))

(declare-fun call!648446 () (Set Context!13844))

(declare-fun call!648445 () (Set Context!13844))

(assert (=> b!7109504 (= e!4272673 (set.union call!648446 call!648445))))

(declare-fun b!7109505 () Bool)

(declare-fun e!4272671 () (Set Context!13844))

(declare-fun call!648442 () (Set Context!13844))

(assert (=> b!7109505 (= e!4272671 call!648442)))

(declare-fun b!7109506 () Bool)

(declare-fun c!1326718 () Bool)

(declare-fun e!4272669 () Bool)

(assert (=> b!7109506 (= c!1326718 e!4272669)))

(declare-fun res!2901568 () Bool)

(assert (=> b!7109506 (=> (not res!2901568) (not e!4272669))))

(assert (=> b!7109506 (= res!2901568 (is-Concat!26773 (regOne!36368 r!11554)))))

(declare-fun e!4272670 () (Set Context!13844))

(assert (=> b!7109506 (= e!4272673 e!4272670)))

(declare-fun b!7109507 () Bool)

(assert (=> b!7109507 (= e!4272670 e!4272671)))

(declare-fun c!1326719 () Bool)

(assert (=> b!7109507 (= c!1326719 (is-Concat!26773 (regOne!36368 r!11554)))))

(declare-fun bm!648436 () Bool)

(declare-fun call!648443 () (Set Context!13844))

(assert (=> bm!648436 (= call!648443 call!648445)))

(declare-fun b!7109508 () Bool)

(assert (=> b!7109508 (= e!4272670 (set.union call!648446 call!648443))))

(declare-fun b!7109509 () Bool)

(declare-fun e!4272672 () (Set Context!13844))

(assert (=> b!7109509 (= e!4272672 (set.insert lt!2559463 (as set.empty (Set Context!13844))))))

(declare-fun b!7109510 () Bool)

(declare-fun e!4272674 () (Set Context!13844))

(assert (=> b!7109510 (= e!4272674 call!648442)))

(declare-fun bm!648437 () Bool)

(declare-fun call!648444 () List!68889)

(declare-fun call!648441 () List!68889)

(assert (=> bm!648437 (= call!648444 call!648441)))

(declare-fun bm!648438 () Bool)

(assert (=> bm!648438 (= call!648441 ($colon$colon!2786 (exprs!7422 lt!2559463) (ite (or c!1326718 c!1326719) (regTwo!36368 (regOne!36368 r!11554)) (regOne!36368 r!11554))))))

(declare-fun bm!648439 () Bool)

(assert (=> bm!648439 (= call!648442 call!648443)))

(declare-fun d!2219908 () Bool)

(declare-fun c!1326720 () Bool)

(assert (=> d!2219908 (= c!1326720 (and (is-ElementMatch!17928 (regOne!36368 r!11554)) (= (c!1326675 (regOne!36368 r!11554)) a!1901)))))

(assert (=> d!2219908 (= (derivationStepZipperDown!2443 (regOne!36368 r!11554) lt!2559463 a!1901) e!4272672)))

(declare-fun b!7109511 () Bool)

(declare-fun c!1326722 () Bool)

(assert (=> b!7109511 (= c!1326722 (is-Star!17928 (regOne!36368 r!11554)))))

(assert (=> b!7109511 (= e!4272671 e!4272674)))

(declare-fun c!1326721 () Bool)

(declare-fun bm!648440 () Bool)

(assert (=> bm!648440 (= call!648445 (derivationStepZipperDown!2443 (ite c!1326721 (regTwo!36369 (regOne!36368 r!11554)) (ite c!1326718 (regTwo!36368 (regOne!36368 r!11554)) (ite c!1326719 (regOne!36368 (regOne!36368 r!11554)) (reg!18257 (regOne!36368 r!11554))))) (ite (or c!1326721 c!1326718) lt!2559463 (Context!13845 call!648444)) a!1901))))

(declare-fun b!7109512 () Bool)

(assert (=> b!7109512 (= e!4272669 (nullable!7565 (regOne!36368 (regOne!36368 r!11554))))))

(declare-fun bm!648441 () Bool)

(assert (=> bm!648441 (= call!648446 (derivationStepZipperDown!2443 (ite c!1326721 (regOne!36369 (regOne!36368 r!11554)) (regOne!36368 (regOne!36368 r!11554))) (ite c!1326721 lt!2559463 (Context!13845 call!648441)) a!1901))))

(declare-fun b!7109513 () Bool)

(assert (=> b!7109513 (= e!4272674 (as set.empty (Set Context!13844)))))

(declare-fun b!7109514 () Bool)

(assert (=> b!7109514 (= e!4272672 e!4272673)))

(assert (=> b!7109514 (= c!1326721 (is-Union!17928 (regOne!36368 r!11554)))))

(assert (= (and d!2219908 c!1326720) b!7109509))

(assert (= (and d!2219908 (not c!1326720)) b!7109514))

(assert (= (and b!7109514 c!1326721) b!7109504))

(assert (= (and b!7109514 (not c!1326721)) b!7109506))

(assert (= (and b!7109506 res!2901568) b!7109512))

(assert (= (and b!7109506 c!1326718) b!7109508))

(assert (= (and b!7109506 (not c!1326718)) b!7109507))

(assert (= (and b!7109507 c!1326719) b!7109505))

(assert (= (and b!7109507 (not c!1326719)) b!7109511))

(assert (= (and b!7109511 c!1326722) b!7109510))

(assert (= (and b!7109511 (not c!1326722)) b!7109513))

(assert (= (or b!7109505 b!7109510) bm!648437))

(assert (= (or b!7109505 b!7109510) bm!648439))

(assert (= (or b!7109508 bm!648439) bm!648436))

(assert (= (or b!7109508 bm!648437) bm!648438))

(assert (= (or b!7109504 bm!648436) bm!648440))

(assert (= (or b!7109504 b!7109508) bm!648441))

(declare-fun m!7831024 () Bool)

(assert (=> b!7109509 m!7831024))

(declare-fun m!7831026 () Bool)

(assert (=> bm!648441 m!7831026))

(declare-fun m!7831028 () Bool)

(assert (=> bm!648438 m!7831028))

(declare-fun m!7831030 () Bool)

(assert (=> b!7109512 m!7831030))

(declare-fun m!7831032 () Bool)

(assert (=> bm!648440 m!7831032))

(assert (=> b!7109367 d!2219908))

(declare-fun bm!648442 () Bool)

(declare-fun call!648449 () Int)

(declare-fun call!648447 () Int)

(assert (=> bm!648442 (= call!648449 call!648447)))

(declare-fun b!7109515 () Bool)

(declare-fun e!4272675 () Bool)

(declare-fun lt!2559496 () Int)

(declare-fun call!648453 () Int)

(assert (=> b!7109515 (= e!4272675 (> lt!2559496 call!648453))))

(declare-fun b!7109516 () Bool)

(declare-fun e!4272683 () Bool)

(declare-fun e!4272682 () Bool)

(assert (=> b!7109516 (= e!4272683 e!4272682)))

(declare-fun c!1326723 () Bool)

(assert (=> b!7109516 (= c!1326723 (is-Union!17928 (regTwo!36368 r!11554)))))

(declare-fun b!7109517 () Bool)

(declare-fun e!4272679 () Bool)

(assert (=> b!7109517 (= e!4272682 e!4272679)))

(declare-fun c!1326726 () Bool)

(assert (=> b!7109517 (= c!1326726 (is-Concat!26773 (regTwo!36368 r!11554)))))

(declare-fun c!1326729 () Bool)

(declare-fun c!1326724 () Bool)

(declare-fun call!648451 () Int)

(declare-fun bm!648443 () Bool)

(assert (=> bm!648443 (= call!648451 (regexDepth!393 (ite c!1326724 (reg!18257 (regTwo!36368 r!11554)) (ite c!1326729 (regOne!36369 (regTwo!36368 r!11554)) (regTwo!36368 (regTwo!36368 r!11554))))))))

(declare-fun b!7109518 () Bool)

(declare-fun e!4272681 () Int)

(declare-fun call!648448 () Int)

(assert (=> b!7109518 (= e!4272681 (+ 1 call!648448))))

(declare-fun bm!648444 () Bool)

(assert (=> bm!648444 (= call!648447 (regexDepth!393 (ite c!1326723 (regTwo!36369 (regTwo!36368 r!11554)) (ite c!1326726 (regOne!36368 (regTwo!36368 r!11554)) (reg!18257 (regTwo!36368 r!11554))))))))

(declare-fun b!7109519 () Bool)

(declare-fun e!4272678 () Bool)

(assert (=> b!7109519 (= e!4272678 (> lt!2559496 call!648449))))

(declare-fun b!7109520 () Bool)

(declare-fun e!4272684 () Int)

(declare-fun e!4272680 () Int)

(assert (=> b!7109520 (= e!4272684 e!4272680)))

(assert (=> b!7109520 (= c!1326724 (is-Star!17928 (regTwo!36368 r!11554)))))

(declare-fun b!7109521 () Bool)

(assert (=> b!7109521 (= e!4272684 1)))

(declare-fun b!7109522 () Bool)

(declare-fun e!4272677 () Int)

(assert (=> b!7109522 (= e!4272677 (+ 1 call!648448))))

(declare-fun b!7109523 () Bool)

(declare-fun e!4272676 () Bool)

(assert (=> b!7109523 (= e!4272676 (> lt!2559496 call!648447))))

(declare-fun b!7109524 () Bool)

(assert (=> b!7109524 (= e!4272678 (= lt!2559496 1))))

(declare-fun b!7109525 () Bool)

(assert (=> b!7109525 (= e!4272681 1)))

(declare-fun bm!648445 () Bool)

(declare-fun call!648450 () Int)

(assert (=> bm!648445 (= call!648450 (regexDepth!393 (ite c!1326729 (regTwo!36369 (regTwo!36368 r!11554)) (regOne!36368 (regTwo!36368 r!11554)))))))

(declare-fun d!2219910 () Bool)

(assert (=> d!2219910 e!4272683))

(declare-fun res!2901570 () Bool)

(assert (=> d!2219910 (=> (not res!2901570) (not e!4272683))))

(assert (=> d!2219910 (= res!2901570 (> lt!2559496 0))))

(assert (=> d!2219910 (= lt!2559496 e!4272684)))

(declare-fun c!1326725 () Bool)

(assert (=> d!2219910 (= c!1326725 (is-ElementMatch!17928 (regTwo!36368 r!11554)))))

(assert (=> d!2219910 (= (regexDepth!393 (regTwo!36368 r!11554)) lt!2559496)))

(declare-fun b!7109526 () Bool)

(assert (=> b!7109526 (= e!4272677 e!4272681)))

(declare-fun c!1326727 () Bool)

(assert (=> b!7109526 (= c!1326727 (is-Concat!26773 (regTwo!36368 r!11554)))))

(declare-fun b!7109527 () Bool)

(assert (=> b!7109527 (= e!4272680 (+ 1 call!648451))))

(declare-fun call!648452 () Int)

(declare-fun bm!648446 () Bool)

(assert (=> bm!648446 (= call!648448 (maxBigInt!0 (ite c!1326729 call!648452 call!648450) (ite c!1326729 call!648450 call!648452)))))

(declare-fun b!7109528 () Bool)

(assert (=> b!7109528 (= c!1326729 (is-Union!17928 (regTwo!36368 r!11554)))))

(assert (=> b!7109528 (= e!4272680 e!4272677)))

(declare-fun bm!648447 () Bool)

(assert (=> bm!648447 (= call!648453 (regexDepth!393 (ite c!1326723 (regOne!36369 (regTwo!36368 r!11554)) (regTwo!36368 (regTwo!36368 r!11554)))))))

(declare-fun b!7109529 () Bool)

(declare-fun res!2901571 () Bool)

(assert (=> b!7109529 (=> (not res!2901571) (not e!4272675))))

(assert (=> b!7109529 (= res!2901571 (> lt!2559496 call!648449))))

(assert (=> b!7109529 (= e!4272679 e!4272675)))

(declare-fun b!7109530 () Bool)

(assert (=> b!7109530 (= e!4272682 e!4272676)))

(declare-fun res!2901569 () Bool)

(assert (=> b!7109530 (= res!2901569 (> lt!2559496 call!648453))))

(assert (=> b!7109530 (=> (not res!2901569) (not e!4272676))))

(declare-fun b!7109531 () Bool)

(declare-fun c!1326728 () Bool)

(assert (=> b!7109531 (= c!1326728 (is-Star!17928 (regTwo!36368 r!11554)))))

(assert (=> b!7109531 (= e!4272679 e!4272678)))

(declare-fun bm!648448 () Bool)

(assert (=> bm!648448 (= call!648452 call!648451)))

(assert (= (and d!2219910 c!1326725) b!7109521))

(assert (= (and d!2219910 (not c!1326725)) b!7109520))

(assert (= (and b!7109520 c!1326724) b!7109527))

(assert (= (and b!7109520 (not c!1326724)) b!7109528))

(assert (= (and b!7109528 c!1326729) b!7109522))

(assert (= (and b!7109528 (not c!1326729)) b!7109526))

(assert (= (and b!7109526 c!1326727) b!7109518))

(assert (= (and b!7109526 (not c!1326727)) b!7109525))

(assert (= (or b!7109522 b!7109518) bm!648445))

(assert (= (or b!7109522 b!7109518) bm!648448))

(assert (= (or b!7109522 b!7109518) bm!648446))

(assert (= (or b!7109527 bm!648448) bm!648443))

(assert (= (and d!2219910 res!2901570) b!7109516))

(assert (= (and b!7109516 c!1326723) b!7109530))

(assert (= (and b!7109516 (not c!1326723)) b!7109517))

(assert (= (and b!7109530 res!2901569) b!7109523))

(assert (= (and b!7109517 c!1326726) b!7109529))

(assert (= (and b!7109517 (not c!1326726)) b!7109531))

(assert (= (and b!7109529 res!2901571) b!7109515))

(assert (= (and b!7109531 c!1326728) b!7109519))

(assert (= (and b!7109531 (not c!1326728)) b!7109524))

(assert (= (or b!7109529 b!7109519) bm!648442))

(assert (= (or b!7109523 bm!648442) bm!648444))

(assert (= (or b!7109530 b!7109515) bm!648447))

(declare-fun m!7831034 () Bool)

(assert (=> bm!648447 m!7831034))

(declare-fun m!7831036 () Bool)

(assert (=> bm!648445 m!7831036))

(declare-fun m!7831038 () Bool)

(assert (=> bm!648446 m!7831038))

(declare-fun m!7831040 () Bool)

(assert (=> bm!648443 m!7831040))

(declare-fun m!7831042 () Bool)

(assert (=> bm!648444 m!7831042))

(assert (=> b!7109367 d!2219910))

(declare-fun d!2219912 () Bool)

(declare-fun forall!16828 (List!68889 Int) Bool)

(assert (=> d!2219912 (forall!16828 (++!16080 lt!2559462 (exprs!7422 auxCtx!45)) lambda!431792)))

(declare-fun lt!2559499 () Unit!162527)

(declare-fun choose!54836 (List!68889 List!68889 Int) Unit!162527)

(assert (=> d!2219912 (= lt!2559499 (choose!54836 lt!2559462 (exprs!7422 auxCtx!45) lambda!431792))))

(assert (=> d!2219912 (forall!16828 lt!2559462 lambda!431792)))

(assert (=> d!2219912 (= (lemmaConcatPreservesForall!1213 lt!2559462 (exprs!7422 auxCtx!45) lambda!431792) lt!2559499)))

(declare-fun bs!1884960 () Bool)

(assert (= bs!1884960 d!2219912))

(assert (=> bs!1884960 m!7830958))

(assert (=> bs!1884960 m!7830958))

(declare-fun m!7831054 () Bool)

(assert (=> bs!1884960 m!7831054))

(declare-fun m!7831056 () Bool)

(assert (=> bs!1884960 m!7831056))

(declare-fun m!7831058 () Bool)

(assert (=> bs!1884960 m!7831058))

(assert (=> b!7109367 d!2219912))

(declare-fun b!7109551 () Bool)

(declare-fun e!4272695 () List!68889)

(assert (=> b!7109551 (= e!4272695 (exprs!7422 auxCtx!45))))

(declare-fun e!4272696 () Bool)

(declare-fun b!7109554 () Bool)

(declare-fun lt!2559502 () List!68889)

(assert (=> b!7109554 (= e!4272696 (or (not (= (exprs!7422 auxCtx!45) Nil!68765)) (= lt!2559502 lt!2559462)))))

(declare-fun b!7109553 () Bool)

(declare-fun res!2901577 () Bool)

(assert (=> b!7109553 (=> (not res!2901577) (not e!4272696))))

(declare-fun size!41388 (List!68889) Int)

(assert (=> b!7109553 (= res!2901577 (= (size!41388 lt!2559502) (+ (size!41388 lt!2559462) (size!41388 (exprs!7422 auxCtx!45)))))))

(declare-fun d!2219916 () Bool)

(assert (=> d!2219916 e!4272696))

(declare-fun res!2901578 () Bool)

(assert (=> d!2219916 (=> (not res!2901578) (not e!4272696))))

(declare-fun content!14013 (List!68889) (Set Regex!17928))

(assert (=> d!2219916 (= res!2901578 (= (content!14013 lt!2559502) (set.union (content!14013 lt!2559462) (content!14013 (exprs!7422 auxCtx!45)))))))

(assert (=> d!2219916 (= lt!2559502 e!4272695)))

(declare-fun c!1326737 () Bool)

(assert (=> d!2219916 (= c!1326737 (is-Nil!68765 lt!2559462))))

(assert (=> d!2219916 (= (++!16080 lt!2559462 (exprs!7422 auxCtx!45)) lt!2559502)))

(declare-fun b!7109552 () Bool)

(assert (=> b!7109552 (= e!4272695 (Cons!68765 (h!75213 lt!2559462) (++!16080 (t!382714 lt!2559462) (exprs!7422 auxCtx!45))))))

(assert (= (and d!2219916 c!1326737) b!7109551))

(assert (= (and d!2219916 (not c!1326737)) b!7109552))

(assert (= (and d!2219916 res!2901578) b!7109553))

(assert (= (and b!7109553 res!2901577) b!7109554))

(declare-fun m!7831060 () Bool)

(assert (=> b!7109553 m!7831060))

(declare-fun m!7831062 () Bool)

(assert (=> b!7109553 m!7831062))

(declare-fun m!7831064 () Bool)

(assert (=> b!7109553 m!7831064))

(declare-fun m!7831066 () Bool)

(assert (=> d!2219916 m!7831066))

(declare-fun m!7831068 () Bool)

(assert (=> d!2219916 m!7831068))

(declare-fun m!7831070 () Bool)

(assert (=> d!2219916 m!7831070))

(declare-fun m!7831072 () Bool)

(assert (=> b!7109552 m!7831072))

(assert (=> b!7109367 d!2219916))

(declare-fun b!7109555 () Bool)

(declare-fun e!4272701 () (Set Context!13844))

(declare-fun call!648465 () (Set Context!13844))

(declare-fun call!648464 () (Set Context!13844))

(assert (=> b!7109555 (= e!4272701 (set.union call!648465 call!648464))))

(declare-fun b!7109556 () Bool)

(declare-fun e!4272699 () (Set Context!13844))

(declare-fun call!648461 () (Set Context!13844))

(assert (=> b!7109556 (= e!4272699 call!648461)))

(declare-fun b!7109557 () Bool)

(declare-fun c!1326738 () Bool)

(declare-fun e!4272697 () Bool)

(assert (=> b!7109557 (= c!1326738 e!4272697)))

(declare-fun res!2901579 () Bool)

(assert (=> b!7109557 (=> (not res!2901579) (not e!4272697))))

(assert (=> b!7109557 (= res!2901579 (is-Concat!26773 (regOne!36368 r!11554)))))

(declare-fun e!4272698 () (Set Context!13844))

(assert (=> b!7109557 (= e!4272701 e!4272698)))

(declare-fun b!7109558 () Bool)

(assert (=> b!7109558 (= e!4272698 e!4272699)))

(declare-fun c!1326739 () Bool)

(assert (=> b!7109558 (= c!1326739 (is-Concat!26773 (regOne!36368 r!11554)))))

(declare-fun bm!648455 () Bool)

(declare-fun call!648462 () (Set Context!13844))

(assert (=> bm!648455 (= call!648462 call!648464)))

(declare-fun b!7109559 () Bool)

(assert (=> b!7109559 (= e!4272698 (set.union call!648465 call!648462))))

(declare-fun b!7109560 () Bool)

(declare-fun e!4272700 () (Set Context!13844))

(assert (=> b!7109560 (= e!4272700 (set.insert (Context!13845 (++!16080 lt!2559462 (exprs!7422 auxCtx!45))) (as set.empty (Set Context!13844))))))

(declare-fun b!7109561 () Bool)

(declare-fun e!4272702 () (Set Context!13844))

(assert (=> b!7109561 (= e!4272702 call!648461)))

(declare-fun bm!648456 () Bool)

(declare-fun call!648463 () List!68889)

(declare-fun call!648460 () List!68889)

(assert (=> bm!648456 (= call!648463 call!648460)))

(declare-fun bm!648457 () Bool)

(assert (=> bm!648457 (= call!648460 ($colon$colon!2786 (exprs!7422 (Context!13845 (++!16080 lt!2559462 (exprs!7422 auxCtx!45)))) (ite (or c!1326738 c!1326739) (regTwo!36368 (regOne!36368 r!11554)) (regOne!36368 r!11554))))))

(declare-fun bm!648458 () Bool)

(assert (=> bm!648458 (= call!648461 call!648462)))

(declare-fun d!2219918 () Bool)

(declare-fun c!1326740 () Bool)

(assert (=> d!2219918 (= c!1326740 (and (is-ElementMatch!17928 (regOne!36368 r!11554)) (= (c!1326675 (regOne!36368 r!11554)) a!1901)))))

(assert (=> d!2219918 (= (derivationStepZipperDown!2443 (regOne!36368 r!11554) (Context!13845 (++!16080 lt!2559462 (exprs!7422 auxCtx!45))) a!1901) e!4272700)))

(declare-fun b!7109562 () Bool)

(declare-fun c!1326742 () Bool)

(assert (=> b!7109562 (= c!1326742 (is-Star!17928 (regOne!36368 r!11554)))))

(assert (=> b!7109562 (= e!4272699 e!4272702)))

(declare-fun c!1326741 () Bool)

(declare-fun bm!648459 () Bool)

(assert (=> bm!648459 (= call!648464 (derivationStepZipperDown!2443 (ite c!1326741 (regTwo!36369 (regOne!36368 r!11554)) (ite c!1326738 (regTwo!36368 (regOne!36368 r!11554)) (ite c!1326739 (regOne!36368 (regOne!36368 r!11554)) (reg!18257 (regOne!36368 r!11554))))) (ite (or c!1326741 c!1326738) (Context!13845 (++!16080 lt!2559462 (exprs!7422 auxCtx!45))) (Context!13845 call!648463)) a!1901))))

(declare-fun b!7109563 () Bool)

(assert (=> b!7109563 (= e!4272697 (nullable!7565 (regOne!36368 (regOne!36368 r!11554))))))

(declare-fun bm!648460 () Bool)

(assert (=> bm!648460 (= call!648465 (derivationStepZipperDown!2443 (ite c!1326741 (regOne!36369 (regOne!36368 r!11554)) (regOne!36368 (regOne!36368 r!11554))) (ite c!1326741 (Context!13845 (++!16080 lt!2559462 (exprs!7422 auxCtx!45))) (Context!13845 call!648460)) a!1901))))

(declare-fun b!7109564 () Bool)

(assert (=> b!7109564 (= e!4272702 (as set.empty (Set Context!13844)))))

(declare-fun b!7109565 () Bool)

(assert (=> b!7109565 (= e!4272700 e!4272701)))

(assert (=> b!7109565 (= c!1326741 (is-Union!17928 (regOne!36368 r!11554)))))

(assert (= (and d!2219918 c!1326740) b!7109560))

(assert (= (and d!2219918 (not c!1326740)) b!7109565))

(assert (= (and b!7109565 c!1326741) b!7109555))

(assert (= (and b!7109565 (not c!1326741)) b!7109557))

(assert (= (and b!7109557 res!2901579) b!7109563))

(assert (= (and b!7109557 c!1326738) b!7109559))

(assert (= (and b!7109557 (not c!1326738)) b!7109558))

(assert (= (and b!7109558 c!1326739) b!7109556))

(assert (= (and b!7109558 (not c!1326739)) b!7109562))

(assert (= (and b!7109562 c!1326742) b!7109561))

(assert (= (and b!7109562 (not c!1326742)) b!7109564))

(assert (= (or b!7109556 b!7109561) bm!648456))

(assert (= (or b!7109556 b!7109561) bm!648458))

(assert (= (or b!7109559 bm!648458) bm!648455))

(assert (= (or b!7109559 bm!648456) bm!648457))

(assert (= (or b!7109555 bm!648455) bm!648459))

(assert (= (or b!7109555 b!7109559) bm!648460))

(declare-fun m!7831074 () Bool)

(assert (=> b!7109560 m!7831074))

(declare-fun m!7831076 () Bool)

(assert (=> bm!648460 m!7831076))

(declare-fun m!7831078 () Bool)

(assert (=> bm!648457 m!7831078))

(assert (=> b!7109563 m!7831030))

(declare-fun m!7831080 () Bool)

(assert (=> bm!648459 m!7831080))

(assert (=> b!7109367 d!2219918))

(declare-fun d!2219920 () Bool)

(assert (=> d!2219920 true))

(declare-fun lambda!431806 () Int)

(declare-fun map!16267 ((Set Context!13844) Int) (Set Context!13844))

(assert (=> d!2219920 (= (appendTo!927 (derivationStepZipperDown!2443 (regOne!36368 r!11554) lt!2559463 a!1901) auxCtx!45) (map!16267 (derivationStepZipperDown!2443 (regOne!36368 r!11554) lt!2559463 a!1901) lambda!431806))))

(declare-fun bs!1884961 () Bool)

(assert (= bs!1884961 d!2219920))

(assert (=> bs!1884961 m!7830954))

(declare-fun m!7831082 () Bool)

(assert (=> bs!1884961 m!7831082))

(assert (=> b!7109367 d!2219920))

(declare-fun bs!1884962 () Bool)

(declare-fun d!2219922 () Bool)

(assert (= bs!1884962 (and d!2219922 b!7109373)))

(declare-fun lambda!431809 () Int)

(assert (=> bs!1884962 (= lambda!431809 lambda!431792)))

(assert (=> d!2219922 (= (derivationStepZipperDown!2443 (regOne!36368 r!11554) (Context!13845 (++!16080 (exprs!7422 lt!2559463) (exprs!7422 auxCtx!45))) a!1901) (appendTo!927 (derivationStepZipperDown!2443 (regOne!36368 r!11554) lt!2559463 a!1901) auxCtx!45))))

(declare-fun lt!2559512 () Unit!162527)

(assert (=> d!2219922 (= lt!2559512 (lemmaConcatPreservesForall!1213 (exprs!7422 lt!2559463) (exprs!7422 auxCtx!45) lambda!431809))))

(declare-fun lt!2559511 () Unit!162527)

(declare-fun choose!54837 (Context!13844 Regex!17928 C!36126 Context!13844) Unit!162527)

(assert (=> d!2219922 (= lt!2559511 (choose!54837 lt!2559463 (regOne!36368 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2219922 (validRegex!9201 (regOne!36368 r!11554))))

(assert (=> d!2219922 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!225 lt!2559463 (regOne!36368 r!11554) a!1901 auxCtx!45) lt!2559511)))

(declare-fun bs!1884963 () Bool)

(assert (= bs!1884963 d!2219922))

(declare-fun m!7831084 () Bool)

(assert (=> bs!1884963 m!7831084))

(assert (=> bs!1884963 m!7830954))

(assert (=> bs!1884963 m!7830962))

(declare-fun m!7831086 () Bool)

(assert (=> bs!1884963 m!7831086))

(declare-fun m!7831088 () Bool)

(assert (=> bs!1884963 m!7831088))

(declare-fun m!7831090 () Bool)

(assert (=> bs!1884963 m!7831090))

(declare-fun m!7831092 () Bool)

(assert (=> bs!1884963 m!7831092))

(assert (=> bs!1884963 m!7830954))

(assert (=> b!7109367 d!2219922))

(declare-fun d!2219924 () Bool)

(assert (=> d!2219924 (= ($colon$colon!2786 (exprs!7422 c!9994) (regTwo!36368 r!11554)) (Cons!68765 (regTwo!36368 r!11554) (exprs!7422 c!9994)))))

(assert (=> b!7109367 d!2219924))

(declare-fun b!7109620 () Bool)

(declare-fun e!4272743 () Bool)

(declare-fun call!648487 () Bool)

(assert (=> b!7109620 (= e!4272743 call!648487)))

(declare-fun b!7109621 () Bool)

(declare-fun e!4272739 () Bool)

(declare-fun e!4272742 () Bool)

(assert (=> b!7109621 (= e!4272739 e!4272742)))

(declare-fun c!1326763 () Bool)

(assert (=> b!7109621 (= c!1326763 (is-Union!17928 r!11554))))

(declare-fun b!7109622 () Bool)

(declare-fun res!2901598 () Bool)

(assert (=> b!7109622 (=> (not res!2901598) (not e!4272743))))

(declare-fun call!648486 () Bool)

(assert (=> b!7109622 (= res!2901598 call!648486)))

(assert (=> b!7109622 (= e!4272742 e!4272743)))

(declare-fun bm!648481 () Bool)

(declare-fun call!648488 () Bool)

(assert (=> bm!648481 (= call!648486 call!648488)))

(declare-fun b!7109623 () Bool)

(declare-fun e!4272741 () Bool)

(declare-fun e!4272738 () Bool)

(assert (=> b!7109623 (= e!4272741 e!4272738)))

(declare-fun res!2901597 () Bool)

(assert (=> b!7109623 (=> (not res!2901597) (not e!4272738))))

(assert (=> b!7109623 (= res!2901597 call!648487)))

(declare-fun b!7109624 () Bool)

(declare-fun e!4272740 () Bool)

(assert (=> b!7109624 (= e!4272739 e!4272740)))

(declare-fun res!2901599 () Bool)

(assert (=> b!7109624 (= res!2901599 (not (nullable!7565 (reg!18257 r!11554))))))

(assert (=> b!7109624 (=> (not res!2901599) (not e!4272740))))

(declare-fun b!7109625 () Bool)

(declare-fun e!4272737 () Bool)

(assert (=> b!7109625 (= e!4272737 e!4272739)))

(declare-fun c!1326764 () Bool)

(assert (=> b!7109625 (= c!1326764 (is-Star!17928 r!11554))))

(declare-fun d!2219926 () Bool)

(declare-fun res!2901596 () Bool)

(assert (=> d!2219926 (=> res!2901596 e!4272737)))

(assert (=> d!2219926 (= res!2901596 (is-ElementMatch!17928 r!11554))))

(assert (=> d!2219926 (= (validRegex!9201 r!11554) e!4272737)))

(declare-fun b!7109626 () Bool)

(declare-fun res!2901600 () Bool)

(assert (=> b!7109626 (=> res!2901600 e!4272741)))

(assert (=> b!7109626 (= res!2901600 (not (is-Concat!26773 r!11554)))))

(assert (=> b!7109626 (= e!4272742 e!4272741)))

(declare-fun b!7109627 () Bool)

(assert (=> b!7109627 (= e!4272738 call!648486)))

(declare-fun b!7109628 () Bool)

(assert (=> b!7109628 (= e!4272740 call!648488)))

(declare-fun bm!648482 () Bool)

(assert (=> bm!648482 (= call!648488 (validRegex!9201 (ite c!1326764 (reg!18257 r!11554) (ite c!1326763 (regOne!36369 r!11554) (regTwo!36368 r!11554)))))))

(declare-fun bm!648483 () Bool)

(assert (=> bm!648483 (= call!648487 (validRegex!9201 (ite c!1326763 (regTwo!36369 r!11554) (regOne!36368 r!11554))))))

(assert (= (and d!2219926 (not res!2901596)) b!7109625))

(assert (= (and b!7109625 c!1326764) b!7109624))

(assert (= (and b!7109625 (not c!1326764)) b!7109621))

(assert (= (and b!7109624 res!2901599) b!7109628))

(assert (= (and b!7109621 c!1326763) b!7109622))

(assert (= (and b!7109621 (not c!1326763)) b!7109626))

(assert (= (and b!7109622 res!2901598) b!7109620))

(assert (= (and b!7109626 (not res!2901600)) b!7109623))

(assert (= (and b!7109623 res!2901597) b!7109627))

(assert (= (or b!7109622 b!7109627) bm!648481))

(assert (= (or b!7109620 b!7109623) bm!648483))

(assert (= (or b!7109628 bm!648481) bm!648482))

(declare-fun m!7831094 () Bool)

(assert (=> b!7109624 m!7831094))

(declare-fun m!7831096 () Bool)

(assert (=> bm!648482 m!7831096))

(declare-fun m!7831098 () Bool)

(assert (=> bm!648483 m!7831098))

(assert (=> start!692010 d!2219926))

(declare-fun bs!1884964 () Bool)

(declare-fun d!2219928 () Bool)

(assert (= bs!1884964 (and d!2219928 b!7109373)))

(declare-fun lambda!431812 () Int)

(assert (=> bs!1884964 (= lambda!431812 lambda!431792)))

(declare-fun bs!1884965 () Bool)

(assert (= bs!1884965 (and d!2219928 d!2219922)))

(assert (=> bs!1884965 (= lambda!431812 lambda!431809)))

(assert (=> d!2219928 (= (inv!87684 c!9994) (forall!16828 (exprs!7422 c!9994) lambda!431812))))

(declare-fun bs!1884966 () Bool)

(assert (= bs!1884966 d!2219928))

(declare-fun m!7831100 () Bool)

(assert (=> bs!1884966 m!7831100))

(assert (=> start!692010 d!2219928))

(declare-fun bs!1884967 () Bool)

(declare-fun d!2219930 () Bool)

(assert (= bs!1884967 (and d!2219930 b!7109373)))

(declare-fun lambda!431813 () Int)

(assert (=> bs!1884967 (= lambda!431813 lambda!431792)))

(declare-fun bs!1884968 () Bool)

(assert (= bs!1884968 (and d!2219930 d!2219922)))

(assert (=> bs!1884968 (= lambda!431813 lambda!431809)))

(declare-fun bs!1884969 () Bool)

(assert (= bs!1884969 (and d!2219930 d!2219928)))

(assert (=> bs!1884969 (= lambda!431813 lambda!431812)))

(assert (=> d!2219930 (= (inv!87684 auxCtx!45) (forall!16828 (exprs!7422 auxCtx!45) lambda!431813))))

(declare-fun bs!1884970 () Bool)

(assert (= bs!1884970 d!2219930))

(declare-fun m!7831102 () Bool)

(assert (=> bs!1884970 m!7831102))

(assert (=> start!692010 d!2219930))

(declare-fun b!7109629 () Bool)

(declare-fun e!4272748 () (Set Context!13844))

(declare-fun call!648494 () (Set Context!13844))

(declare-fun call!648493 () (Set Context!13844))

(assert (=> b!7109629 (= e!4272748 (set.union call!648494 call!648493))))

(declare-fun b!7109630 () Bool)

(declare-fun e!4272746 () (Set Context!13844))

(declare-fun call!648490 () (Set Context!13844))

(assert (=> b!7109630 (= e!4272746 call!648490)))

(declare-fun b!7109631 () Bool)

(declare-fun c!1326765 () Bool)

(declare-fun e!4272744 () Bool)

(assert (=> b!7109631 (= c!1326765 e!4272744)))

(declare-fun res!2901601 () Bool)

(assert (=> b!7109631 (=> (not res!2901601) (not e!4272744))))

(assert (=> b!7109631 (= res!2901601 (is-Concat!26773 r!11554))))

(declare-fun e!4272745 () (Set Context!13844))

(assert (=> b!7109631 (= e!4272748 e!4272745)))

(declare-fun b!7109632 () Bool)

(assert (=> b!7109632 (= e!4272745 e!4272746)))

(declare-fun c!1326766 () Bool)

(assert (=> b!7109632 (= c!1326766 (is-Concat!26773 r!11554))))

(declare-fun bm!648484 () Bool)

(declare-fun call!648491 () (Set Context!13844))

(assert (=> bm!648484 (= call!648491 call!648493)))

(declare-fun b!7109633 () Bool)

(assert (=> b!7109633 (= e!4272745 (set.union call!648494 call!648491))))

(declare-fun b!7109634 () Bool)

(declare-fun e!4272747 () (Set Context!13844))

(assert (=> b!7109634 (= e!4272747 (set.insert lt!2559461 (as set.empty (Set Context!13844))))))

(declare-fun b!7109635 () Bool)

(declare-fun e!4272749 () (Set Context!13844))

(assert (=> b!7109635 (= e!4272749 call!648490)))

(declare-fun bm!648485 () Bool)

(declare-fun call!648492 () List!68889)

(declare-fun call!648489 () List!68889)

(assert (=> bm!648485 (= call!648492 call!648489)))

(declare-fun bm!648486 () Bool)

(assert (=> bm!648486 (= call!648489 ($colon$colon!2786 (exprs!7422 lt!2559461) (ite (or c!1326765 c!1326766) (regTwo!36368 r!11554) r!11554)))))

(declare-fun bm!648487 () Bool)

(assert (=> bm!648487 (= call!648490 call!648491)))

(declare-fun d!2219932 () Bool)

(declare-fun c!1326767 () Bool)

(assert (=> d!2219932 (= c!1326767 (and (is-ElementMatch!17928 r!11554) (= (c!1326675 r!11554) a!1901)))))

(assert (=> d!2219932 (= (derivationStepZipperDown!2443 r!11554 lt!2559461 a!1901) e!4272747)))

(declare-fun b!7109636 () Bool)

(declare-fun c!1326769 () Bool)

(assert (=> b!7109636 (= c!1326769 (is-Star!17928 r!11554))))

(assert (=> b!7109636 (= e!4272746 e!4272749)))

(declare-fun c!1326768 () Bool)

(declare-fun bm!648488 () Bool)

(assert (=> bm!648488 (= call!648493 (derivationStepZipperDown!2443 (ite c!1326768 (regTwo!36369 r!11554) (ite c!1326765 (regTwo!36368 r!11554) (ite c!1326766 (regOne!36368 r!11554) (reg!18257 r!11554)))) (ite (or c!1326768 c!1326765) lt!2559461 (Context!13845 call!648492)) a!1901))))

(declare-fun b!7109637 () Bool)

(assert (=> b!7109637 (= e!4272744 (nullable!7565 (regOne!36368 r!11554)))))

(declare-fun bm!648489 () Bool)

(assert (=> bm!648489 (= call!648494 (derivationStepZipperDown!2443 (ite c!1326768 (regOne!36369 r!11554) (regOne!36368 r!11554)) (ite c!1326768 lt!2559461 (Context!13845 call!648489)) a!1901))))

(declare-fun b!7109638 () Bool)

(assert (=> b!7109638 (= e!4272749 (as set.empty (Set Context!13844)))))

(declare-fun b!7109639 () Bool)

(assert (=> b!7109639 (= e!4272747 e!4272748)))

(assert (=> b!7109639 (= c!1326768 (is-Union!17928 r!11554))))

(assert (= (and d!2219932 c!1326767) b!7109634))

(assert (= (and d!2219932 (not c!1326767)) b!7109639))

(assert (= (and b!7109639 c!1326768) b!7109629))

(assert (= (and b!7109639 (not c!1326768)) b!7109631))

(assert (= (and b!7109631 res!2901601) b!7109637))

(assert (= (and b!7109631 c!1326765) b!7109633))

(assert (= (and b!7109631 (not c!1326765)) b!7109632))

(assert (= (and b!7109632 c!1326766) b!7109630))

(assert (= (and b!7109632 (not c!1326766)) b!7109636))

(assert (= (and b!7109636 c!1326769) b!7109635))

(assert (= (and b!7109636 (not c!1326769)) b!7109638))

(assert (= (or b!7109630 b!7109635) bm!648485))

(assert (= (or b!7109630 b!7109635) bm!648487))

(assert (= (or b!7109633 bm!648487) bm!648484))

(assert (= (or b!7109633 bm!648485) bm!648486))

(assert (= (or b!7109629 bm!648484) bm!648488))

(assert (= (or b!7109629 b!7109633) bm!648489))

(declare-fun m!7831104 () Bool)

(assert (=> b!7109634 m!7831104))

(declare-fun m!7831106 () Bool)

(assert (=> bm!648489 m!7831106))

(declare-fun m!7831108 () Bool)

(assert (=> bm!648486 m!7831108))

(assert (=> b!7109637 m!7830938))

(declare-fun m!7831110 () Bool)

(assert (=> bm!648488 m!7831110))

(assert (=> b!7109369 d!2219932))

(declare-fun b!7109657 () Bool)

(declare-fun e!4272764 () (Set Context!13844))

(declare-fun call!648507 () (Set Context!13844))

(declare-fun call!648506 () (Set Context!13844))

(assert (=> b!7109657 (= e!4272764 (set.union call!648507 call!648506))))

(declare-fun b!7109658 () Bool)

(declare-fun e!4272762 () (Set Context!13844))

(declare-fun call!648503 () (Set Context!13844))

(assert (=> b!7109658 (= e!4272762 call!648503)))

(declare-fun b!7109659 () Bool)

(declare-fun c!1326777 () Bool)

(declare-fun e!4272760 () Bool)

(assert (=> b!7109659 (= c!1326777 e!4272760)))

(declare-fun res!2901605 () Bool)

(assert (=> b!7109659 (=> (not res!2901605) (not e!4272760))))

(assert (=> b!7109659 (= res!2901605 (is-Concat!26773 (regOne!36368 r!11554)))))

(declare-fun e!4272761 () (Set Context!13844))

(assert (=> b!7109659 (= e!4272764 e!4272761)))

(declare-fun b!7109660 () Bool)

(assert (=> b!7109660 (= e!4272761 e!4272762)))

(declare-fun c!1326778 () Bool)

(assert (=> b!7109660 (= c!1326778 (is-Concat!26773 (regOne!36368 r!11554)))))

(declare-fun bm!648497 () Bool)

(declare-fun call!648504 () (Set Context!13844))

(assert (=> bm!648497 (= call!648504 call!648506)))

(declare-fun b!7109661 () Bool)

(assert (=> b!7109661 (= e!4272761 (set.union call!648507 call!648504))))

(declare-fun b!7109662 () Bool)

(declare-fun e!4272763 () (Set Context!13844))

(assert (=> b!7109662 (= e!4272763 (set.insert (Context!13845 ($colon$colon!2786 lt!2559458 (regTwo!36368 r!11554))) (as set.empty (Set Context!13844))))))

(declare-fun b!7109663 () Bool)

(declare-fun e!4272765 () (Set Context!13844))

(assert (=> b!7109663 (= e!4272765 call!648503)))

(declare-fun bm!648498 () Bool)

(declare-fun call!648505 () List!68889)

(declare-fun call!648502 () List!68889)

(assert (=> bm!648498 (= call!648505 call!648502)))

(declare-fun bm!648499 () Bool)

(assert (=> bm!648499 (= call!648502 ($colon$colon!2786 (exprs!7422 (Context!13845 ($colon$colon!2786 lt!2559458 (regTwo!36368 r!11554)))) (ite (or c!1326777 c!1326778) (regTwo!36368 (regOne!36368 r!11554)) (regOne!36368 r!11554))))))

(declare-fun bm!648500 () Bool)

(assert (=> bm!648500 (= call!648503 call!648504)))

(declare-fun d!2219934 () Bool)

(declare-fun c!1326779 () Bool)

(assert (=> d!2219934 (= c!1326779 (and (is-ElementMatch!17928 (regOne!36368 r!11554)) (= (c!1326675 (regOne!36368 r!11554)) a!1901)))))

(assert (=> d!2219934 (= (derivationStepZipperDown!2443 (regOne!36368 r!11554) (Context!13845 ($colon$colon!2786 lt!2559458 (regTwo!36368 r!11554))) a!1901) e!4272763)))

(declare-fun b!7109664 () Bool)

(declare-fun c!1326781 () Bool)

(assert (=> b!7109664 (= c!1326781 (is-Star!17928 (regOne!36368 r!11554)))))

(assert (=> b!7109664 (= e!4272762 e!4272765)))

(declare-fun bm!648501 () Bool)

(declare-fun c!1326780 () Bool)

(assert (=> bm!648501 (= call!648506 (derivationStepZipperDown!2443 (ite c!1326780 (regTwo!36369 (regOne!36368 r!11554)) (ite c!1326777 (regTwo!36368 (regOne!36368 r!11554)) (ite c!1326778 (regOne!36368 (regOne!36368 r!11554)) (reg!18257 (regOne!36368 r!11554))))) (ite (or c!1326780 c!1326777) (Context!13845 ($colon$colon!2786 lt!2559458 (regTwo!36368 r!11554))) (Context!13845 call!648505)) a!1901))))

(declare-fun b!7109665 () Bool)

(assert (=> b!7109665 (= e!4272760 (nullable!7565 (regOne!36368 (regOne!36368 r!11554))))))

(declare-fun bm!648502 () Bool)

(assert (=> bm!648502 (= call!648507 (derivationStepZipperDown!2443 (ite c!1326780 (regOne!36369 (regOne!36368 r!11554)) (regOne!36368 (regOne!36368 r!11554))) (ite c!1326780 (Context!13845 ($colon$colon!2786 lt!2559458 (regTwo!36368 r!11554))) (Context!13845 call!648502)) a!1901))))

(declare-fun b!7109666 () Bool)

(assert (=> b!7109666 (= e!4272765 (as set.empty (Set Context!13844)))))

(declare-fun b!7109667 () Bool)

(assert (=> b!7109667 (= e!4272763 e!4272764)))

(assert (=> b!7109667 (= c!1326780 (is-Union!17928 (regOne!36368 r!11554)))))

(assert (= (and d!2219934 c!1326779) b!7109662))

(assert (= (and d!2219934 (not c!1326779)) b!7109667))

(assert (= (and b!7109667 c!1326780) b!7109657))

(assert (= (and b!7109667 (not c!1326780)) b!7109659))

(assert (= (and b!7109659 res!2901605) b!7109665))

(assert (= (and b!7109659 c!1326777) b!7109661))

(assert (= (and b!7109659 (not c!1326777)) b!7109660))

(assert (= (and b!7109660 c!1326778) b!7109658))

(assert (= (and b!7109660 (not c!1326778)) b!7109664))

(assert (= (and b!7109664 c!1326781) b!7109663))

(assert (= (and b!7109664 (not c!1326781)) b!7109666))

(assert (= (or b!7109658 b!7109663) bm!648498))

(assert (= (or b!7109658 b!7109663) bm!648500))

(assert (= (or b!7109661 bm!648500) bm!648497))

(assert (= (or b!7109661 bm!648498) bm!648499))

(assert (= (or b!7109657 bm!648497) bm!648501))

(assert (= (or b!7109657 b!7109661) bm!648502))

(declare-fun m!7831112 () Bool)

(assert (=> b!7109662 m!7831112))

(declare-fun m!7831114 () Bool)

(assert (=> bm!648502 m!7831114))

(declare-fun m!7831116 () Bool)

(assert (=> bm!648499 m!7831116))

(assert (=> b!7109665 m!7831030))

(declare-fun m!7831118 () Bool)

(assert (=> bm!648501 m!7831118))

(assert (=> b!7109369 d!2219934))

(declare-fun d!2219936 () Bool)

(assert (=> d!2219936 (= ($colon$colon!2786 lt!2559458 (regTwo!36368 r!11554)) (Cons!68765 (regTwo!36368 r!11554) lt!2559458))))

(assert (=> b!7109369 d!2219936))

(declare-fun b!7109668 () Bool)

(declare-fun e!4272770 () (Set Context!13844))

(declare-fun call!648513 () (Set Context!13844))

(declare-fun call!648512 () (Set Context!13844))

(assert (=> b!7109668 (= e!4272770 (set.union call!648513 call!648512))))

(declare-fun b!7109669 () Bool)

(declare-fun e!4272768 () (Set Context!13844))

(declare-fun call!648509 () (Set Context!13844))

(assert (=> b!7109669 (= e!4272768 call!648509)))

(declare-fun b!7109670 () Bool)

(declare-fun c!1326782 () Bool)

(declare-fun e!4272766 () Bool)

(assert (=> b!7109670 (= c!1326782 e!4272766)))

(declare-fun res!2901606 () Bool)

(assert (=> b!7109670 (=> (not res!2901606) (not e!4272766))))

(assert (=> b!7109670 (= res!2901606 (is-Concat!26773 (regTwo!36368 r!11554)))))

(declare-fun e!4272767 () (Set Context!13844))

(assert (=> b!7109670 (= e!4272770 e!4272767)))

(declare-fun b!7109671 () Bool)

(assert (=> b!7109671 (= e!4272767 e!4272768)))

(declare-fun c!1326783 () Bool)

(assert (=> b!7109671 (= c!1326783 (is-Concat!26773 (regTwo!36368 r!11554)))))

(declare-fun bm!648503 () Bool)

(declare-fun call!648510 () (Set Context!13844))

(assert (=> bm!648503 (= call!648510 call!648512)))

(declare-fun b!7109672 () Bool)

(assert (=> b!7109672 (= e!4272767 (set.union call!648513 call!648510))))

(declare-fun b!7109673 () Bool)

(declare-fun e!4272769 () (Set Context!13844))

(assert (=> b!7109673 (= e!4272769 (set.insert lt!2559461 (as set.empty (Set Context!13844))))))

(declare-fun b!7109674 () Bool)

(declare-fun e!4272771 () (Set Context!13844))

(assert (=> b!7109674 (= e!4272771 call!648509)))

(declare-fun bm!648504 () Bool)

(declare-fun call!648511 () List!68889)

(declare-fun call!648508 () List!68889)

(assert (=> bm!648504 (= call!648511 call!648508)))

(declare-fun bm!648505 () Bool)

(assert (=> bm!648505 (= call!648508 ($colon$colon!2786 (exprs!7422 lt!2559461) (ite (or c!1326782 c!1326783) (regTwo!36368 (regTwo!36368 r!11554)) (regTwo!36368 r!11554))))))

(declare-fun bm!648506 () Bool)

(assert (=> bm!648506 (= call!648509 call!648510)))

(declare-fun d!2219938 () Bool)

(declare-fun c!1326784 () Bool)

(assert (=> d!2219938 (= c!1326784 (and (is-ElementMatch!17928 (regTwo!36368 r!11554)) (= (c!1326675 (regTwo!36368 r!11554)) a!1901)))))

(assert (=> d!2219938 (= (derivationStepZipperDown!2443 (regTwo!36368 r!11554) lt!2559461 a!1901) e!4272769)))

(declare-fun b!7109675 () Bool)

(declare-fun c!1326786 () Bool)

(assert (=> b!7109675 (= c!1326786 (is-Star!17928 (regTwo!36368 r!11554)))))

(assert (=> b!7109675 (= e!4272768 e!4272771)))

(declare-fun bm!648507 () Bool)

(declare-fun c!1326785 () Bool)

(assert (=> bm!648507 (= call!648512 (derivationStepZipperDown!2443 (ite c!1326785 (regTwo!36369 (regTwo!36368 r!11554)) (ite c!1326782 (regTwo!36368 (regTwo!36368 r!11554)) (ite c!1326783 (regOne!36368 (regTwo!36368 r!11554)) (reg!18257 (regTwo!36368 r!11554))))) (ite (or c!1326785 c!1326782) lt!2559461 (Context!13845 call!648511)) a!1901))))

(declare-fun b!7109676 () Bool)

(assert (=> b!7109676 (= e!4272766 (nullable!7565 (regOne!36368 (regTwo!36368 r!11554))))))

(declare-fun bm!648508 () Bool)

(assert (=> bm!648508 (= call!648513 (derivationStepZipperDown!2443 (ite c!1326785 (regOne!36369 (regTwo!36368 r!11554)) (regOne!36368 (regTwo!36368 r!11554))) (ite c!1326785 lt!2559461 (Context!13845 call!648508)) a!1901))))

(declare-fun b!7109677 () Bool)

(assert (=> b!7109677 (= e!4272771 (as set.empty (Set Context!13844)))))

(declare-fun b!7109678 () Bool)

(assert (=> b!7109678 (= e!4272769 e!4272770)))

(assert (=> b!7109678 (= c!1326785 (is-Union!17928 (regTwo!36368 r!11554)))))

(assert (= (and d!2219938 c!1326784) b!7109673))

(assert (= (and d!2219938 (not c!1326784)) b!7109678))

(assert (= (and b!7109678 c!1326785) b!7109668))

(assert (= (and b!7109678 (not c!1326785)) b!7109670))

(assert (= (and b!7109670 res!2901606) b!7109676))

(assert (= (and b!7109670 c!1326782) b!7109672))

(assert (= (and b!7109670 (not c!1326782)) b!7109671))

(assert (= (and b!7109671 c!1326783) b!7109669))

(assert (= (and b!7109671 (not c!1326783)) b!7109675))

(assert (= (and b!7109675 c!1326786) b!7109674))

(assert (= (and b!7109675 (not c!1326786)) b!7109677))

(assert (= (or b!7109669 b!7109674) bm!648504))

(assert (= (or b!7109669 b!7109674) bm!648506))

(assert (= (or b!7109672 bm!648506) bm!648503))

(assert (= (or b!7109672 bm!648504) bm!648505))

(assert (= (or b!7109668 bm!648503) bm!648507))

(assert (= (or b!7109668 b!7109672) bm!648508))

(assert (=> b!7109673 m!7831104))

(declare-fun m!7831120 () Bool)

(assert (=> bm!648508 m!7831120))

(declare-fun m!7831122 () Bool)

(assert (=> bm!648505 m!7831122))

(declare-fun m!7831124 () Bool)

(assert (=> b!7109676 m!7831124))

(declare-fun m!7831126 () Bool)

(assert (=> bm!648507 m!7831126))

(assert (=> b!7109369 d!2219938))

(declare-fun d!2219940 () Bool)

(declare-fun nullableFct!2920 (Regex!17928) Bool)

(assert (=> d!2219940 (= (nullable!7565 (regOne!36368 r!11554)) (nullableFct!2920 (regOne!36368 r!11554)))))

(declare-fun bs!1884971 () Bool)

(assert (= bs!1884971 d!2219940))

(declare-fun m!7831138 () Bool)

(assert (=> bs!1884971 m!7831138))

(assert (=> b!7109374 d!2219940))

(declare-fun d!2219944 () Bool)

(assert (=> d!2219944 (forall!16828 (++!16080 (exprs!7422 c!9994) (exprs!7422 auxCtx!45)) lambda!431792)))

(declare-fun lt!2559515 () Unit!162527)

(assert (=> d!2219944 (= lt!2559515 (choose!54836 (exprs!7422 c!9994) (exprs!7422 auxCtx!45) lambda!431792))))

(assert (=> d!2219944 (forall!16828 (exprs!7422 c!9994) lambda!431792)))

(assert (=> d!2219944 (= (lemmaConcatPreservesForall!1213 (exprs!7422 c!9994) (exprs!7422 auxCtx!45) lambda!431792) lt!2559515)))

(declare-fun bs!1884972 () Bool)

(assert (= bs!1884972 d!2219944))

(assert (=> bs!1884972 m!7830934))

(assert (=> bs!1884972 m!7830934))

(declare-fun m!7831140 () Bool)

(assert (=> bs!1884972 m!7831140))

(declare-fun m!7831142 () Bool)

(assert (=> bs!1884972 m!7831142))

(declare-fun m!7831144 () Bool)

(assert (=> bs!1884972 m!7831144))

(assert (=> b!7109373 d!2219944))

(declare-fun b!7109696 () Bool)

(declare-fun e!4272788 () Bool)

(declare-fun call!648522 () Bool)

(assert (=> b!7109696 (= e!4272788 call!648522)))

(declare-fun b!7109697 () Bool)

(declare-fun e!4272784 () Bool)

(declare-fun e!4272787 () Bool)

(assert (=> b!7109697 (= e!4272784 e!4272787)))

(declare-fun c!1326794 () Bool)

(assert (=> b!7109697 (= c!1326794 (is-Union!17928 (regTwo!36368 r!11554)))))

(declare-fun b!7109698 () Bool)

(declare-fun res!2901612 () Bool)

(assert (=> b!7109698 (=> (not res!2901612) (not e!4272788))))

(declare-fun call!648521 () Bool)

(assert (=> b!7109698 (= res!2901612 call!648521)))

(assert (=> b!7109698 (= e!4272787 e!4272788)))

(declare-fun bm!648516 () Bool)

(declare-fun call!648523 () Bool)

(assert (=> bm!648516 (= call!648521 call!648523)))

(declare-fun b!7109699 () Bool)

(declare-fun e!4272786 () Bool)

(declare-fun e!4272783 () Bool)

(assert (=> b!7109699 (= e!4272786 e!4272783)))

(declare-fun res!2901611 () Bool)

(assert (=> b!7109699 (=> (not res!2901611) (not e!4272783))))

(assert (=> b!7109699 (= res!2901611 call!648522)))

(declare-fun b!7109700 () Bool)

(declare-fun e!4272785 () Bool)

(assert (=> b!7109700 (= e!4272784 e!4272785)))

(declare-fun res!2901613 () Bool)

(assert (=> b!7109700 (= res!2901613 (not (nullable!7565 (reg!18257 (regTwo!36368 r!11554)))))))

(assert (=> b!7109700 (=> (not res!2901613) (not e!4272785))))

(declare-fun b!7109701 () Bool)

(declare-fun e!4272782 () Bool)

(assert (=> b!7109701 (= e!4272782 e!4272784)))

(declare-fun c!1326795 () Bool)

(assert (=> b!7109701 (= c!1326795 (is-Star!17928 (regTwo!36368 r!11554)))))

(declare-fun d!2219946 () Bool)

(declare-fun res!2901610 () Bool)

(assert (=> d!2219946 (=> res!2901610 e!4272782)))

(assert (=> d!2219946 (= res!2901610 (is-ElementMatch!17928 (regTwo!36368 r!11554)))))

(assert (=> d!2219946 (= (validRegex!9201 (regTwo!36368 r!11554)) e!4272782)))

(declare-fun b!7109702 () Bool)

(declare-fun res!2901614 () Bool)

(assert (=> b!7109702 (=> res!2901614 e!4272786)))

(assert (=> b!7109702 (= res!2901614 (not (is-Concat!26773 (regTwo!36368 r!11554))))))

(assert (=> b!7109702 (= e!4272787 e!4272786)))

(declare-fun b!7109703 () Bool)

(assert (=> b!7109703 (= e!4272783 call!648521)))

(declare-fun b!7109704 () Bool)

(assert (=> b!7109704 (= e!4272785 call!648523)))

(declare-fun bm!648517 () Bool)

(assert (=> bm!648517 (= call!648523 (validRegex!9201 (ite c!1326795 (reg!18257 (regTwo!36368 r!11554)) (ite c!1326794 (regOne!36369 (regTwo!36368 r!11554)) (regTwo!36368 (regTwo!36368 r!11554))))))))

(declare-fun bm!648518 () Bool)

(assert (=> bm!648518 (= call!648522 (validRegex!9201 (ite c!1326794 (regTwo!36369 (regTwo!36368 r!11554)) (regOne!36368 (regTwo!36368 r!11554)))))))

(assert (= (and d!2219946 (not res!2901610)) b!7109701))

(assert (= (and b!7109701 c!1326795) b!7109700))

(assert (= (and b!7109701 (not c!1326795)) b!7109697))

(assert (= (and b!7109700 res!2901613) b!7109704))

(assert (= (and b!7109697 c!1326794) b!7109698))

(assert (= (and b!7109697 (not c!1326794)) b!7109702))

(assert (= (and b!7109698 res!2901612) b!7109696))

(assert (= (and b!7109702 (not res!2901614)) b!7109699))

(assert (= (and b!7109699 res!2901611) b!7109703))

(assert (= (or b!7109698 b!7109703) bm!648516))

(assert (= (or b!7109696 b!7109699) bm!648518))

(assert (= (or b!7109704 bm!648516) bm!648517))

(declare-fun m!7831146 () Bool)

(assert (=> b!7109700 m!7831146))

(declare-fun m!7831148 () Bool)

(assert (=> bm!648517 m!7831148))

(declare-fun m!7831150 () Bool)

(assert (=> bm!648518 m!7831150))

(assert (=> b!7109373 d!2219946))

(declare-fun b!7109705 () Bool)

(declare-fun e!4272789 () List!68889)

(assert (=> b!7109705 (= e!4272789 (exprs!7422 auxCtx!45))))

(declare-fun e!4272790 () Bool)

(declare-fun b!7109708 () Bool)

(declare-fun lt!2559516 () List!68889)

(assert (=> b!7109708 (= e!4272790 (or (not (= (exprs!7422 auxCtx!45) Nil!68765)) (= lt!2559516 (exprs!7422 c!9994))))))

(declare-fun b!7109707 () Bool)

(declare-fun res!2901615 () Bool)

(assert (=> b!7109707 (=> (not res!2901615) (not e!4272790))))

(assert (=> b!7109707 (= res!2901615 (= (size!41388 lt!2559516) (+ (size!41388 (exprs!7422 c!9994)) (size!41388 (exprs!7422 auxCtx!45)))))))

(declare-fun d!2219948 () Bool)

(assert (=> d!2219948 e!4272790))

(declare-fun res!2901616 () Bool)

(assert (=> d!2219948 (=> (not res!2901616) (not e!4272790))))

(assert (=> d!2219948 (= res!2901616 (= (content!14013 lt!2559516) (set.union (content!14013 (exprs!7422 c!9994)) (content!14013 (exprs!7422 auxCtx!45)))))))

(assert (=> d!2219948 (= lt!2559516 e!4272789)))

(declare-fun c!1326796 () Bool)

(assert (=> d!2219948 (= c!1326796 (is-Nil!68765 (exprs!7422 c!9994)))))

(assert (=> d!2219948 (= (++!16080 (exprs!7422 c!9994) (exprs!7422 auxCtx!45)) lt!2559516)))

(declare-fun b!7109706 () Bool)

(assert (=> b!7109706 (= e!4272789 (Cons!68765 (h!75213 (exprs!7422 c!9994)) (++!16080 (t!382714 (exprs!7422 c!9994)) (exprs!7422 auxCtx!45))))))

(assert (= (and d!2219948 c!1326796) b!7109705))

(assert (= (and d!2219948 (not c!1326796)) b!7109706))

(assert (= (and d!2219948 res!2901616) b!7109707))

(assert (= (and b!7109707 res!2901615) b!7109708))

(declare-fun m!7831152 () Bool)

(assert (=> b!7109707 m!7831152))

(declare-fun m!7831154 () Bool)

(assert (=> b!7109707 m!7831154))

(assert (=> b!7109707 m!7831064))

(declare-fun m!7831156 () Bool)

(assert (=> d!2219948 m!7831156))

(declare-fun m!7831158 () Bool)

(assert (=> d!2219948 m!7831158))

(assert (=> d!2219948 m!7831070))

(declare-fun m!7831160 () Bool)

(assert (=> b!7109706 m!7831160))

(assert (=> b!7109373 d!2219948))

(declare-fun e!4272793 () Bool)

(assert (=> b!7109372 (= tp!1955707 e!4272793)))

(declare-fun b!7109720 () Bool)

(declare-fun tp!1955742 () Bool)

(declare-fun tp!1955741 () Bool)

(assert (=> b!7109720 (= e!4272793 (and tp!1955742 tp!1955741))))

(declare-fun b!7109721 () Bool)

(declare-fun tp!1955744 () Bool)

(assert (=> b!7109721 (= e!4272793 tp!1955744)))

(declare-fun b!7109722 () Bool)

(declare-fun tp!1955745 () Bool)

(declare-fun tp!1955743 () Bool)

(assert (=> b!7109722 (= e!4272793 (and tp!1955745 tp!1955743))))

(declare-fun b!7109719 () Bool)

(assert (=> b!7109719 (= e!4272793 tp_is_empty!45089)))

(assert (= (and b!7109372 (is-ElementMatch!17928 (reg!18257 r!11554))) b!7109719))

(assert (= (and b!7109372 (is-Concat!26773 (reg!18257 r!11554))) b!7109720))

(assert (= (and b!7109372 (is-Star!17928 (reg!18257 r!11554))) b!7109721))

(assert (= (and b!7109372 (is-Union!17928 (reg!18257 r!11554))) b!7109722))

(declare-fun e!4272794 () Bool)

(assert (=> b!7109366 (= tp!1955708 e!4272794)))

(declare-fun b!7109724 () Bool)

(declare-fun tp!1955747 () Bool)

(declare-fun tp!1955746 () Bool)

(assert (=> b!7109724 (= e!4272794 (and tp!1955747 tp!1955746))))

(declare-fun b!7109725 () Bool)

(declare-fun tp!1955749 () Bool)

(assert (=> b!7109725 (= e!4272794 tp!1955749)))

(declare-fun b!7109726 () Bool)

(declare-fun tp!1955750 () Bool)

(declare-fun tp!1955748 () Bool)

(assert (=> b!7109726 (= e!4272794 (and tp!1955750 tp!1955748))))

(declare-fun b!7109723 () Bool)

(assert (=> b!7109723 (= e!4272794 tp_is_empty!45089)))

(assert (= (and b!7109366 (is-ElementMatch!17928 (regOne!36369 r!11554))) b!7109723))

(assert (= (and b!7109366 (is-Concat!26773 (regOne!36369 r!11554))) b!7109724))

(assert (= (and b!7109366 (is-Star!17928 (regOne!36369 r!11554))) b!7109725))

(assert (= (and b!7109366 (is-Union!17928 (regOne!36369 r!11554))) b!7109726))

(declare-fun e!4272795 () Bool)

(assert (=> b!7109366 (= tp!1955705 e!4272795)))

(declare-fun b!7109728 () Bool)

(declare-fun tp!1955752 () Bool)

(declare-fun tp!1955751 () Bool)

(assert (=> b!7109728 (= e!4272795 (and tp!1955752 tp!1955751))))

(declare-fun b!7109729 () Bool)

(declare-fun tp!1955754 () Bool)

(assert (=> b!7109729 (= e!4272795 tp!1955754)))

(declare-fun b!7109730 () Bool)

(declare-fun tp!1955755 () Bool)

(declare-fun tp!1955753 () Bool)

(assert (=> b!7109730 (= e!4272795 (and tp!1955755 tp!1955753))))

(declare-fun b!7109727 () Bool)

(assert (=> b!7109727 (= e!4272795 tp_is_empty!45089)))

(assert (= (and b!7109366 (is-ElementMatch!17928 (regTwo!36369 r!11554))) b!7109727))

(assert (= (and b!7109366 (is-Concat!26773 (regTwo!36369 r!11554))) b!7109728))

(assert (= (and b!7109366 (is-Star!17928 (regTwo!36369 r!11554))) b!7109729))

(assert (= (and b!7109366 (is-Union!17928 (regTwo!36369 r!11554))) b!7109730))

(declare-fun e!4272796 () Bool)

(assert (=> b!7109365 (= tp!1955709 e!4272796)))

(declare-fun b!7109732 () Bool)

(declare-fun tp!1955757 () Bool)

(declare-fun tp!1955756 () Bool)

(assert (=> b!7109732 (= e!4272796 (and tp!1955757 tp!1955756))))

(declare-fun b!7109733 () Bool)

(declare-fun tp!1955759 () Bool)

(assert (=> b!7109733 (= e!4272796 tp!1955759)))

(declare-fun b!7109734 () Bool)

(declare-fun tp!1955760 () Bool)

(declare-fun tp!1955758 () Bool)

(assert (=> b!7109734 (= e!4272796 (and tp!1955760 tp!1955758))))

(declare-fun b!7109731 () Bool)

(assert (=> b!7109731 (= e!4272796 tp_is_empty!45089)))

(assert (= (and b!7109365 (is-ElementMatch!17928 (regOne!36368 r!11554))) b!7109731))

(assert (= (and b!7109365 (is-Concat!26773 (regOne!36368 r!11554))) b!7109732))

(assert (= (and b!7109365 (is-Star!17928 (regOne!36368 r!11554))) b!7109733))

(assert (= (and b!7109365 (is-Union!17928 (regOne!36368 r!11554))) b!7109734))

(declare-fun e!4272797 () Bool)

(assert (=> b!7109365 (= tp!1955703 e!4272797)))

(declare-fun b!7109736 () Bool)

(declare-fun tp!1955762 () Bool)

(declare-fun tp!1955761 () Bool)

(assert (=> b!7109736 (= e!4272797 (and tp!1955762 tp!1955761))))

(declare-fun b!7109737 () Bool)

(declare-fun tp!1955764 () Bool)

(assert (=> b!7109737 (= e!4272797 tp!1955764)))

(declare-fun b!7109738 () Bool)

(declare-fun tp!1955765 () Bool)

(declare-fun tp!1955763 () Bool)

(assert (=> b!7109738 (= e!4272797 (and tp!1955765 tp!1955763))))

(declare-fun b!7109735 () Bool)

(assert (=> b!7109735 (= e!4272797 tp_is_empty!45089)))

(assert (= (and b!7109365 (is-ElementMatch!17928 (regTwo!36368 r!11554))) b!7109735))

(assert (= (and b!7109365 (is-Concat!26773 (regTwo!36368 r!11554))) b!7109736))

(assert (= (and b!7109365 (is-Star!17928 (regTwo!36368 r!11554))) b!7109737))

(assert (= (and b!7109365 (is-Union!17928 (regTwo!36368 r!11554))) b!7109738))

(declare-fun b!7109743 () Bool)

(declare-fun e!4272800 () Bool)

(declare-fun tp!1955770 () Bool)

(declare-fun tp!1955771 () Bool)

(assert (=> b!7109743 (= e!4272800 (and tp!1955770 tp!1955771))))

(assert (=> b!7109375 (= tp!1955704 e!4272800)))

(assert (= (and b!7109375 (is-Cons!68765 (exprs!7422 auxCtx!45))) b!7109743))

(declare-fun b!7109744 () Bool)

(declare-fun e!4272801 () Bool)

(declare-fun tp!1955772 () Bool)

(declare-fun tp!1955773 () Bool)

(assert (=> b!7109744 (= e!4272801 (and tp!1955772 tp!1955773))))

(assert (=> b!7109368 (= tp!1955706 e!4272801)))

(assert (= (and b!7109368 (is-Cons!68765 (exprs!7422 c!9994))) b!7109744))

(push 1)

(assert (not b!7109726))

(assert (not b!7109707))

(assert (not bm!648489))

(assert (not b!7109553))

(assert (not b!7109732))

(assert (not bm!648414))

(assert tp_is_empty!45089)

(assert (not bm!648413))

(assert (not b!7109730))

(assert (not bm!648505))

(assert (not d!2219922))

(assert (not d!2219912))

(assert (not b!7109700))

(assert (not d!2219920))

(assert (not d!2219930))

(assert (not d!2219948))

(assert (not b!7109733))

(assert (not bm!648460))

(assert (not bm!648445))

(assert (not b!7109665))

(assert (not bm!648440))

(assert (not b!7109744))

(assert (not b!7109737))

(assert (not b!7109637))

(assert (not b!7109738))

(assert (not b!7109729))

(assert (not b!7109552))

(assert (not bm!648499))

(assert (not bm!648457))

(assert (not b!7109563))

(assert (not b!7109725))

(assert (not b!7109736))

(assert (not d!2219928))

(assert (not b!7109722))

(assert (not b!7109734))

(assert (not bm!648483))

(assert (not bm!648447))

(assert (not bm!648507))

(assert (not b!7109743))

(assert (not b!7109624))

(assert (not bm!648486))

(assert (not bm!648518))

(assert (not b!7109721))

(assert (not b!7109512))

(assert (not bm!648411))

(assert (not b!7109706))

(assert (not b!7109724))

(assert (not b!7109720))

(assert (not bm!648410))

(assert (not bm!648501))

(assert (not d!2219944))

(assert (not d!2219916))

(assert (not bm!648502))

(assert (not bm!648412))

(assert (not bm!648517))

(assert (not bm!648459))

(assert (not bm!648438))

(assert (not bm!648446))

(assert (not bm!648441))

(assert (not bm!648508))

(assert (not bm!648482))

(assert (not d!2219940))

(assert (not bm!648444))

(assert (not b!7109676))

(assert (not bm!648443))

(assert (not b!7109728))

(assert (not bm!648488))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

