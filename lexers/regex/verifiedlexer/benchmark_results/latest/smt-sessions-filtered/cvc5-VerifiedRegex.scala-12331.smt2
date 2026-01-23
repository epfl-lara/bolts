; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!691610 () Bool)

(assert start!691610)

(declare-fun b!7104623 () Bool)

(declare-fun e!4270093 () Bool)

(declare-fun tp!1953703 () Bool)

(declare-fun tp!1953702 () Bool)

(assert (=> b!7104623 (= e!4270093 (and tp!1953703 tp!1953702))))

(declare-fun b!7104624 () Bool)

(declare-fun e!4270095 () Bool)

(declare-fun tp!1953700 () Bool)

(assert (=> b!7104624 (= e!4270095 tp!1953700)))

(declare-fun b!7104625 () Bool)

(declare-fun tp!1953699 () Bool)

(declare-fun tp!1953697 () Bool)

(assert (=> b!7104625 (= e!4270093 (and tp!1953699 tp!1953697))))

(declare-fun b!7104626 () Bool)

(declare-fun e!4270096 () Bool)

(declare-fun e!4270094 () Bool)

(assert (=> b!7104626 (= e!4270096 (not e!4270094))))

(declare-fun res!2900336 () Bool)

(assert (=> b!7104626 (=> res!2900336 e!4270094)))

(declare-datatypes ((C!36078 0))(
  ( (C!36079 (val!27745 Int)) )
))
(declare-datatypes ((Regex!17904 0))(
  ( (ElementMatch!17904 (c!1325701 C!36078)) (Concat!26749 (regOne!36320 Regex!17904) (regTwo!36320 Regex!17904)) (EmptyExpr!17904) (Star!17904 (reg!18233 Regex!17904)) (EmptyLang!17904) (Union!17904 (regOne!36321 Regex!17904) (regTwo!36321 Regex!17904)) )
))
(declare-fun r!11554 () Regex!17904)

(declare-fun validRegex!9177 (Regex!17904) Bool)

(assert (=> b!7104626 (= res!2900336 (not (validRegex!9177 (regTwo!36321 r!11554))))))

(declare-datatypes ((List!68865 0))(
  ( (Nil!68741) (Cons!68741 (h!75189 Regex!17904) (t!382682 List!68865)) )
))
(declare-datatypes ((Context!13796 0))(
  ( (Context!13797 (exprs!7398 List!68865)) )
))
(declare-fun c!9994 () Context!13796)

(declare-fun lt!2558645 () (Set Context!13796))

(declare-fun a!1901 () C!36078)

(declare-fun auxCtx!45 () Context!13796)

(declare-fun appendTo!919 ((Set Context!13796) Context!13796) (Set Context!13796))

(declare-fun derivationStepZipperDown!2427 (Regex!17904 Context!13796 C!36078) (Set Context!13796))

(assert (=> b!7104626 (= lt!2558645 (appendTo!919 (derivationStepZipperDown!2427 (regOne!36321 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-fun lambda!431374 () Int)

(declare-datatypes ((Unit!162479 0))(
  ( (Unit!162480) )
))
(declare-fun lt!2558642 () Unit!162479)

(declare-fun lemmaConcatPreservesForall!1189 (List!68865 List!68865 Int) Unit!162479)

(assert (=> b!7104626 (= lt!2558642 (lemmaConcatPreservesForall!1189 (exprs!7398 c!9994) (exprs!7398 auxCtx!45) lambda!431374))))

(declare-fun lt!2558647 () Unit!162479)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!217 (Context!13796 Regex!17904 C!36078 Context!13796) Unit!162479)

(assert (=> b!7104626 (= lt!2558647 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!217 c!9994 (regOne!36321 r!11554) a!1901 auxCtx!45))))

(declare-fun b!7104627 () Bool)

(declare-fun tp!1953701 () Bool)

(assert (=> b!7104627 (= e!4270093 tp!1953701)))

(declare-fun b!7104628 () Bool)

(declare-fun e!4270098 () Bool)

(declare-fun tp!1953698 () Bool)

(assert (=> b!7104628 (= e!4270098 tp!1953698)))

(declare-fun b!7104629 () Bool)

(declare-fun res!2900337 () Bool)

(declare-fun e!4270097 () Bool)

(assert (=> b!7104629 (=> (not res!2900337) (not e!4270097))))

(assert (=> b!7104629 (= res!2900337 (and (or (not (is-ElementMatch!17904 r!11554)) (not (= (c!1325701 r!11554) a!1901))) (is-Union!17904 r!11554)))))

(declare-fun res!2900338 () Bool)

(assert (=> start!691610 (=> (not res!2900338) (not e!4270097))))

(assert (=> start!691610 (= res!2900338 (validRegex!9177 r!11554))))

(assert (=> start!691610 e!4270097))

(assert (=> start!691610 e!4270093))

(declare-fun tp_is_empty!45041 () Bool)

(assert (=> start!691610 tp_is_empty!45041))

(declare-fun inv!87624 (Context!13796) Bool)

(assert (=> start!691610 (and (inv!87624 c!9994) e!4270098)))

(assert (=> start!691610 (and (inv!87624 auxCtx!45) e!4270095)))

(declare-fun b!7104630 () Bool)

(assert (=> b!7104630 (= e!4270097 e!4270096)))

(declare-fun res!2900335 () Bool)

(assert (=> b!7104630 (=> (not res!2900335) (not e!4270096))))

(declare-fun lt!2558641 () Context!13796)

(assert (=> b!7104630 (= res!2900335 (= (derivationStepZipperDown!2427 r!11554 lt!2558641 a!1901) (set.union lt!2558645 (derivationStepZipperDown!2427 (regTwo!36321 r!11554) lt!2558641 a!1901))))))

(assert (=> b!7104630 (= lt!2558645 (derivationStepZipperDown!2427 (regOne!36321 r!11554) lt!2558641 a!1901))))

(declare-fun ++!16056 (List!68865 List!68865) List!68865)

(assert (=> b!7104630 (= lt!2558641 (Context!13797 (++!16056 (exprs!7398 c!9994) (exprs!7398 auxCtx!45))))))

(declare-fun lt!2558646 () Unit!162479)

(assert (=> b!7104630 (= lt!2558646 (lemmaConcatPreservesForall!1189 (exprs!7398 c!9994) (exprs!7398 auxCtx!45) lambda!431374))))

(declare-fun lt!2558643 () Unit!162479)

(assert (=> b!7104630 (= lt!2558643 (lemmaConcatPreservesForall!1189 (exprs!7398 c!9994) (exprs!7398 auxCtx!45) lambda!431374))))

(declare-fun lt!2558644 () Unit!162479)

(assert (=> b!7104630 (= lt!2558644 (lemmaConcatPreservesForall!1189 (exprs!7398 c!9994) (exprs!7398 auxCtx!45) lambda!431374))))

(declare-fun b!7104631 () Bool)

(assert (=> b!7104631 (= e!4270093 tp_is_empty!45041)))

(declare-fun b!7104632 () Bool)

(declare-fun regexDepth!389 (Regex!17904) Int)

(assert (=> b!7104632 (= e!4270094 (< (regexDepth!389 (regTwo!36321 r!11554)) (regexDepth!389 r!11554)))))

(assert (= (and start!691610 res!2900338) b!7104629))

(assert (= (and b!7104629 res!2900337) b!7104630))

(assert (= (and b!7104630 res!2900335) b!7104626))

(assert (= (and b!7104626 (not res!2900336)) b!7104632))

(assert (= (and start!691610 (is-ElementMatch!17904 r!11554)) b!7104631))

(assert (= (and start!691610 (is-Concat!26749 r!11554)) b!7104623))

(assert (= (and start!691610 (is-Star!17904 r!11554)) b!7104627))

(assert (= (and start!691610 (is-Union!17904 r!11554)) b!7104625))

(assert (= start!691610 b!7104628))

(assert (= start!691610 b!7104624))

(declare-fun m!7828240 () Bool)

(assert (=> b!7104626 m!7828240))

(declare-fun m!7828242 () Bool)

(assert (=> b!7104626 m!7828242))

(declare-fun m!7828244 () Bool)

(assert (=> b!7104626 m!7828244))

(assert (=> b!7104626 m!7828240))

(declare-fun m!7828246 () Bool)

(assert (=> b!7104626 m!7828246))

(declare-fun m!7828248 () Bool)

(assert (=> b!7104626 m!7828248))

(declare-fun m!7828250 () Bool)

(assert (=> start!691610 m!7828250))

(declare-fun m!7828252 () Bool)

(assert (=> start!691610 m!7828252))

(declare-fun m!7828254 () Bool)

(assert (=> start!691610 m!7828254))

(assert (=> b!7104630 m!7828244))

(assert (=> b!7104630 m!7828244))

(declare-fun m!7828256 () Bool)

(assert (=> b!7104630 m!7828256))

(declare-fun m!7828258 () Bool)

(assert (=> b!7104630 m!7828258))

(declare-fun m!7828260 () Bool)

(assert (=> b!7104630 m!7828260))

(assert (=> b!7104630 m!7828244))

(declare-fun m!7828262 () Bool)

(assert (=> b!7104630 m!7828262))

(declare-fun m!7828264 () Bool)

(assert (=> b!7104632 m!7828264))

(declare-fun m!7828266 () Bool)

(assert (=> b!7104632 m!7828266))

(push 1)

(assert tp_is_empty!45041)

(assert (not b!7104628))

(assert (not b!7104630))

(assert (not b!7104624))

(assert (not b!7104632))

(assert (not b!7104626))

(assert (not b!7104623))

(assert (not b!7104625))

(assert (not b!7104627))

(assert (not start!691610))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1884563 () Bool)

(declare-fun d!2219070 () Bool)

(assert (= bs!1884563 (and d!2219070 b!7104630)))

(declare-fun lambda!431386 () Int)

(assert (=> bs!1884563 (= lambda!431386 lambda!431374)))

(assert (=> d!2219070 (= (derivationStepZipperDown!2427 (regOne!36321 r!11554) (Context!13797 (++!16056 (exprs!7398 c!9994) (exprs!7398 auxCtx!45))) a!1901) (appendTo!919 (derivationStepZipperDown!2427 (regOne!36321 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-fun lt!2558674 () Unit!162479)

(assert (=> d!2219070 (= lt!2558674 (lemmaConcatPreservesForall!1189 (exprs!7398 c!9994) (exprs!7398 auxCtx!45) lambda!431386))))

(declare-fun lt!2558673 () Unit!162479)

(declare-fun choose!54796 (Context!13796 Regex!17904 C!36078 Context!13796) Unit!162479)

(assert (=> d!2219070 (= lt!2558673 (choose!54796 c!9994 (regOne!36321 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2219070 (validRegex!9177 (regOne!36321 r!11554))))

(assert (=> d!2219070 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!217 c!9994 (regOne!36321 r!11554) a!1901 auxCtx!45) lt!2558673)))

(declare-fun bs!1884564 () Bool)

(assert (= bs!1884564 d!2219070))

(declare-fun m!7828296 () Bool)

(assert (=> bs!1884564 m!7828296))

(assert (=> bs!1884564 m!7828240))

(assert (=> bs!1884564 m!7828242))

(declare-fun m!7828298 () Bool)

(assert (=> bs!1884564 m!7828298))

(declare-fun m!7828300 () Bool)

(assert (=> bs!1884564 m!7828300))

(declare-fun m!7828302 () Bool)

(assert (=> bs!1884564 m!7828302))

(assert (=> bs!1884564 m!7828240))

(assert (=> bs!1884564 m!7828262))

(assert (=> b!7104626 d!2219070))

(declare-fun bm!647361 () Bool)

(declare-fun call!647367 () Bool)

(declare-fun c!1325708 () Bool)

(assert (=> bm!647361 (= call!647367 (validRegex!9177 (ite c!1325708 (regOne!36321 (regTwo!36321 r!11554)) (regTwo!36320 (regTwo!36321 r!11554)))))))

(declare-fun bm!647362 () Bool)

(declare-fun call!647366 () Bool)

(declare-fun call!647368 () Bool)

(assert (=> bm!647362 (= call!647366 call!647368)))

(declare-fun b!7104681 () Bool)

(declare-fun e!4270134 () Bool)

(declare-fun e!4270132 () Bool)

(assert (=> b!7104681 (= e!4270134 e!4270132)))

(declare-fun res!2900363 () Bool)

(declare-fun nullable!7541 (Regex!17904) Bool)

(assert (=> b!7104681 (= res!2900363 (not (nullable!7541 (reg!18233 (regTwo!36321 r!11554)))))))

(assert (=> b!7104681 (=> (not res!2900363) (not e!4270132))))

(declare-fun b!7104682 () Bool)

(declare-fun e!4270131 () Bool)

(declare-fun e!4270136 () Bool)

(assert (=> b!7104682 (= e!4270131 e!4270136)))

(declare-fun res!2900364 () Bool)

(assert (=> b!7104682 (=> (not res!2900364) (not e!4270136))))

(assert (=> b!7104682 (= res!2900364 call!647366)))

(declare-fun b!7104683 () Bool)

(assert (=> b!7104683 (= e!4270132 call!647368)))

(declare-fun b!7104684 () Bool)

(declare-fun res!2900362 () Bool)

(assert (=> b!7104684 (=> res!2900362 e!4270131)))

(assert (=> b!7104684 (= res!2900362 (not (is-Concat!26749 (regTwo!36321 r!11554))))))

(declare-fun e!4270133 () Bool)

(assert (=> b!7104684 (= e!4270133 e!4270131)))

(declare-fun b!7104686 () Bool)

(declare-fun e!4270137 () Bool)

(assert (=> b!7104686 (= e!4270137 call!647366)))

(declare-fun b!7104687 () Bool)

(assert (=> b!7104687 (= e!4270136 call!647367)))

(declare-fun b!7104688 () Bool)

(assert (=> b!7104688 (= e!4270134 e!4270133)))

(assert (=> b!7104688 (= c!1325708 (is-Union!17904 (regTwo!36321 r!11554)))))

(declare-fun b!7104685 () Bool)

(declare-fun e!4270135 () Bool)

(assert (=> b!7104685 (= e!4270135 e!4270134)))

(declare-fun c!1325709 () Bool)

(assert (=> b!7104685 (= c!1325709 (is-Star!17904 (regTwo!36321 r!11554)))))

(declare-fun d!2219072 () Bool)

(declare-fun res!2900361 () Bool)

(assert (=> d!2219072 (=> res!2900361 e!4270135)))

(assert (=> d!2219072 (= res!2900361 (is-ElementMatch!17904 (regTwo!36321 r!11554)))))

(assert (=> d!2219072 (= (validRegex!9177 (regTwo!36321 r!11554)) e!4270135)))

(declare-fun b!7104689 () Bool)

(declare-fun res!2900365 () Bool)

(assert (=> b!7104689 (=> (not res!2900365) (not e!4270137))))

(assert (=> b!7104689 (= res!2900365 call!647367)))

(assert (=> b!7104689 (= e!4270133 e!4270137)))

(declare-fun bm!647363 () Bool)

(assert (=> bm!647363 (= call!647368 (validRegex!9177 (ite c!1325709 (reg!18233 (regTwo!36321 r!11554)) (ite c!1325708 (regTwo!36321 (regTwo!36321 r!11554)) (regOne!36320 (regTwo!36321 r!11554))))))))

(assert (= (and d!2219072 (not res!2900361)) b!7104685))

(assert (= (and b!7104685 c!1325709) b!7104681))

(assert (= (and b!7104685 (not c!1325709)) b!7104688))

(assert (= (and b!7104681 res!2900363) b!7104683))

(assert (= (and b!7104688 c!1325708) b!7104689))

(assert (= (and b!7104688 (not c!1325708)) b!7104684))

(assert (= (and b!7104689 res!2900365) b!7104686))

(assert (= (and b!7104684 (not res!2900362)) b!7104682))

(assert (= (and b!7104682 res!2900364) b!7104687))

(assert (= (or b!7104689 b!7104687) bm!647361))

(assert (= (or b!7104686 b!7104682) bm!647362))

(assert (= (or b!7104683 bm!647362) bm!647363))

(declare-fun m!7828304 () Bool)

(assert (=> bm!647361 m!7828304))

(declare-fun m!7828306 () Bool)

(assert (=> b!7104681 m!7828306))

(declare-fun m!7828308 () Bool)

(assert (=> bm!647363 m!7828308))

(assert (=> b!7104626 d!2219072))

(declare-fun d!2219076 () Bool)

(assert (=> d!2219076 true))

(declare-fun lambda!431391 () Int)

(declare-fun map!16247 ((Set Context!13796) Int) (Set Context!13796))

(assert (=> d!2219076 (= (appendTo!919 (derivationStepZipperDown!2427 (regOne!36321 r!11554) c!9994 a!1901) auxCtx!45) (map!16247 (derivationStepZipperDown!2427 (regOne!36321 r!11554) c!9994 a!1901) lambda!431391))))

(declare-fun bs!1884565 () Bool)

(assert (= bs!1884565 d!2219076))

(assert (=> bs!1884565 m!7828240))

(declare-fun m!7828310 () Bool)

(assert (=> bs!1884565 m!7828310))

(assert (=> b!7104626 d!2219076))

(declare-fun d!2219078 () Bool)

(declare-fun forall!16807 (List!68865 Int) Bool)

(assert (=> d!2219078 (forall!16807 (++!16056 (exprs!7398 c!9994) (exprs!7398 auxCtx!45)) lambda!431374)))

(declare-fun lt!2558683 () Unit!162479)

(declare-fun choose!54797 (List!68865 List!68865 Int) Unit!162479)

(assert (=> d!2219078 (= lt!2558683 (choose!54797 (exprs!7398 c!9994) (exprs!7398 auxCtx!45) lambda!431374))))

(assert (=> d!2219078 (forall!16807 (exprs!7398 c!9994) lambda!431374)))

(assert (=> d!2219078 (= (lemmaConcatPreservesForall!1189 (exprs!7398 c!9994) (exprs!7398 auxCtx!45) lambda!431374) lt!2558683)))

(declare-fun bs!1884566 () Bool)

(assert (= bs!1884566 d!2219078))

(assert (=> bs!1884566 m!7828262))

(assert (=> bs!1884566 m!7828262))

(declare-fun m!7828312 () Bool)

(assert (=> bs!1884566 m!7828312))

(declare-fun m!7828314 () Bool)

(assert (=> bs!1884566 m!7828314))

(declare-fun m!7828316 () Bool)

(assert (=> bs!1884566 m!7828316))

(assert (=> b!7104626 d!2219078))

(declare-fun bm!647376 () Bool)

(declare-fun call!647385 () (Set Context!13796))

(declare-fun call!647384 () (Set Context!13796))

(assert (=> bm!647376 (= call!647385 call!647384)))

(declare-fun bm!647377 () Bool)

(declare-fun call!647386 () (Set Context!13796))

(assert (=> bm!647377 (= call!647386 call!647385)))

(declare-fun b!7104728 () Bool)

(declare-fun e!4270164 () (Set Context!13796))

(assert (=> b!7104728 (= e!4270164 call!647386)))

(declare-fun b!7104729 () Bool)

(declare-fun e!4270160 () (Set Context!13796))

(declare-fun call!647383 () (Set Context!13796))

(assert (=> b!7104729 (= e!4270160 (set.union call!647383 call!647385))))

(declare-fun b!7104730 () Bool)

(declare-fun c!1325726 () Bool)

(declare-fun e!4270162 () Bool)

(assert (=> b!7104730 (= c!1325726 e!4270162)))

(declare-fun res!2900374 () Bool)

(assert (=> b!7104730 (=> (not res!2900374) (not e!4270162))))

(assert (=> b!7104730 (= res!2900374 (is-Concat!26749 (regOne!36321 r!11554)))))

(declare-fun e!4270163 () (Set Context!13796))

(assert (=> b!7104730 (= e!4270163 e!4270160)))

(declare-fun d!2219080 () Bool)

(declare-fun c!1325729 () Bool)

(assert (=> d!2219080 (= c!1325729 (and (is-ElementMatch!17904 (regOne!36321 r!11554)) (= (c!1325701 (regOne!36321 r!11554)) a!1901)))))

(declare-fun e!4270161 () (Set Context!13796))

(assert (=> d!2219080 (= (derivationStepZipperDown!2427 (regOne!36321 r!11554) c!9994 a!1901) e!4270161)))

(declare-fun b!7104731 () Bool)

(assert (=> b!7104731 (= e!4270160 e!4270164)))

(declare-fun c!1325728 () Bool)

(assert (=> b!7104731 (= c!1325728 (is-Concat!26749 (regOne!36321 r!11554)))))

(declare-fun bm!647378 () Bool)

(declare-fun call!647382 () List!68865)

(declare-fun call!647381 () List!68865)

(assert (=> bm!647378 (= call!647382 call!647381)))

(declare-fun b!7104732 () Bool)

(declare-fun e!4270165 () (Set Context!13796))

(assert (=> b!7104732 (= e!4270165 (as set.empty (Set Context!13796)))))

(declare-fun b!7104733 () Bool)

(assert (=> b!7104733 (= e!4270165 call!647386)))

(declare-fun bm!647379 () Bool)

(declare-fun c!1325727 () Bool)

(assert (=> bm!647379 (= call!647383 (derivationStepZipperDown!2427 (ite c!1325727 (regOne!36321 (regOne!36321 r!11554)) (regOne!36320 (regOne!36321 r!11554))) (ite c!1325727 c!9994 (Context!13797 call!647381)) a!1901))))

(declare-fun b!7104734 () Bool)

(assert (=> b!7104734 (= e!4270162 (nullable!7541 (regOne!36320 (regOne!36321 r!11554))))))

(declare-fun b!7104735 () Bool)

(assert (=> b!7104735 (= e!4270161 (set.insert c!9994 (as set.empty (Set Context!13796))))))

(declare-fun b!7104736 () Bool)

(assert (=> b!7104736 (= e!4270161 e!4270163)))

(assert (=> b!7104736 (= c!1325727 (is-Union!17904 (regOne!36321 r!11554)))))

(declare-fun bm!647380 () Bool)

(assert (=> bm!647380 (= call!647384 (derivationStepZipperDown!2427 (ite c!1325727 (regTwo!36321 (regOne!36321 r!11554)) (ite c!1325726 (regTwo!36320 (regOne!36321 r!11554)) (ite c!1325728 (regOne!36320 (regOne!36321 r!11554)) (reg!18233 (regOne!36321 r!11554))))) (ite (or c!1325727 c!1325726) c!9994 (Context!13797 call!647382)) a!1901))))

(declare-fun b!7104737 () Bool)

(declare-fun c!1325730 () Bool)

(assert (=> b!7104737 (= c!1325730 (is-Star!17904 (regOne!36321 r!11554)))))

(assert (=> b!7104737 (= e!4270164 e!4270165)))

(declare-fun bm!647381 () Bool)

(declare-fun $colon$colon!2768 (List!68865 Regex!17904) List!68865)

(assert (=> bm!647381 (= call!647381 ($colon$colon!2768 (exprs!7398 c!9994) (ite (or c!1325726 c!1325728) (regTwo!36320 (regOne!36321 r!11554)) (regOne!36321 r!11554))))))

(declare-fun b!7104738 () Bool)

(assert (=> b!7104738 (= e!4270163 (set.union call!647383 call!647384))))

(assert (= (and d!2219080 c!1325729) b!7104735))

(assert (= (and d!2219080 (not c!1325729)) b!7104736))

(assert (= (and b!7104736 c!1325727) b!7104738))

(assert (= (and b!7104736 (not c!1325727)) b!7104730))

(assert (= (and b!7104730 res!2900374) b!7104734))

(assert (= (and b!7104730 c!1325726) b!7104729))

(assert (= (and b!7104730 (not c!1325726)) b!7104731))

(assert (= (and b!7104731 c!1325728) b!7104728))

(assert (= (and b!7104731 (not c!1325728)) b!7104737))

(assert (= (and b!7104737 c!1325730) b!7104733))

(assert (= (and b!7104737 (not c!1325730)) b!7104732))

(assert (= (or b!7104728 b!7104733) bm!647378))

(assert (= (or b!7104728 b!7104733) bm!647377))

(assert (= (or b!7104729 bm!647377) bm!647376))

(assert (= (or b!7104729 bm!647378) bm!647381))

(assert (= (or b!7104738 bm!647376) bm!647380))

(assert (= (or b!7104738 b!7104729) bm!647379))

(declare-fun m!7828332 () Bool)

(assert (=> bm!647380 m!7828332))

(declare-fun m!7828334 () Bool)

(assert (=> bm!647379 m!7828334))

(declare-fun m!7828336 () Bool)

(assert (=> b!7104734 m!7828336))

(declare-fun m!7828338 () Bool)

(assert (=> b!7104735 m!7828338))

(declare-fun m!7828340 () Bool)

(assert (=> bm!647381 m!7828340))

(assert (=> b!7104626 d!2219080))

(declare-fun bm!647405 () Bool)

(declare-fun call!647414 () Int)

(declare-fun call!647416 () Int)

(assert (=> bm!647405 (= call!647414 call!647416)))

(declare-fun b!7104786 () Bool)

(declare-fun e!4270197 () Bool)

(declare-fun e!4270198 () Bool)

(assert (=> b!7104786 (= e!4270197 e!4270198)))

(declare-fun c!1325754 () Bool)

(assert (=> b!7104786 (= c!1325754 (is-Concat!26749 (regTwo!36321 r!11554)))))

(declare-fun b!7104787 () Bool)

(declare-fun e!4270204 () Bool)

(declare-fun lt!2558691 () Int)

(assert (=> b!7104787 (= e!4270204 (> lt!2558691 call!647414))))

(declare-fun d!2219086 () Bool)

(declare-fun e!4270202 () Bool)

(assert (=> d!2219086 e!4270202))

(declare-fun res!2900392 () Bool)

(assert (=> d!2219086 (=> (not res!2900392) (not e!4270202))))

(assert (=> d!2219086 (= res!2900392 (> lt!2558691 0))))

(declare-fun e!4270206 () Int)

(assert (=> d!2219086 (= lt!2558691 e!4270206)))

(declare-fun c!1325750 () Bool)

(assert (=> d!2219086 (= c!1325750 (is-ElementMatch!17904 (regTwo!36321 r!11554)))))

(assert (=> d!2219086 (= (regexDepth!389 (regTwo!36321 r!11554)) lt!2558691)))

(declare-fun b!7104788 () Bool)

(declare-fun res!2900391 () Bool)

(declare-fun e!4270199 () Bool)

(assert (=> b!7104788 (=> (not res!2900391) (not e!4270199))))

(assert (=> b!7104788 (= res!2900391 (> lt!2558691 call!647414))))

(assert (=> b!7104788 (= e!4270198 e!4270199)))

(declare-fun b!7104789 () Bool)

(declare-fun c!1325752 () Bool)

(assert (=> b!7104789 (= c!1325752 (is-Star!17904 (regTwo!36321 r!11554)))))

(assert (=> b!7104789 (= e!4270198 e!4270204)))

(declare-fun b!7104790 () Bool)

(assert (=> b!7104790 (= e!4270206 1)))

(declare-fun b!7104791 () Bool)

(assert (=> b!7104791 (= e!4270204 (= lt!2558691 1))))

(declare-fun b!7104792 () Bool)

(declare-fun e!4270201 () Int)

(declare-fun call!647415 () Int)

(assert (=> b!7104792 (= e!4270201 (+ 1 call!647415))))

(declare-fun call!647411 () Int)

(declare-fun c!1325751 () Bool)

(declare-fun bm!647406 () Bool)

(declare-fun call!647412 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!647406 (= call!647415 (maxBigInt!0 (ite c!1325751 call!647412 call!647411) (ite c!1325751 call!647411 call!647412)))))

(declare-fun bm!647407 () Bool)

(declare-fun call!647413 () Int)

(declare-fun c!1325748 () Bool)

(assert (=> bm!647407 (= call!647413 (regexDepth!389 (ite c!1325748 (regTwo!36321 (regTwo!36321 r!11554)) (regTwo!36320 (regTwo!36321 r!11554)))))))

(declare-fun bm!647408 () Bool)

(declare-fun call!647410 () Int)

(assert (=> bm!647408 (= call!647412 call!647410)))

(declare-fun bm!647409 () Bool)

(assert (=> bm!647409 (= call!647416 (regexDepth!389 (ite c!1325748 (regOne!36321 (regTwo!36321 r!11554)) (ite c!1325754 (regOne!36320 (regTwo!36321 r!11554)) (reg!18233 (regTwo!36321 r!11554))))))))

(declare-fun bm!647410 () Bool)

(declare-fun c!1325753 () Bool)

(assert (=> bm!647410 (= call!647410 (regexDepth!389 (ite c!1325753 (reg!18233 (regTwo!36321 r!11554)) (ite c!1325751 (regOne!36321 (regTwo!36321 r!11554)) (regTwo!36320 (regTwo!36321 r!11554))))))))

(declare-fun b!7104793 () Bool)

(declare-fun e!4270200 () Int)

(assert (=> b!7104793 (= e!4270200 (+ 1 call!647410))))

(declare-fun bm!647411 () Bool)

(assert (=> bm!647411 (= call!647411 (regexDepth!389 (ite c!1325751 (regTwo!36321 (regTwo!36321 r!11554)) (regOne!36320 (regTwo!36321 r!11554)))))))

(declare-fun b!7104794 () Bool)

(declare-fun e!4270205 () Bool)

(assert (=> b!7104794 (= e!4270197 e!4270205)))

(declare-fun res!2900390 () Bool)

(assert (=> b!7104794 (= res!2900390 (> lt!2558691 call!647416))))

(assert (=> b!7104794 (=> (not res!2900390) (not e!4270205))))

(declare-fun b!7104795 () Bool)

(assert (=> b!7104795 (= e!4270199 (> lt!2558691 call!647413))))

(declare-fun b!7104796 () Bool)

(assert (=> b!7104796 (= e!4270205 (> lt!2558691 call!647413))))

(declare-fun b!7104797 () Bool)

(assert (=> b!7104797 (= c!1325751 (is-Union!17904 (regTwo!36321 r!11554)))))

(declare-fun e!4270203 () Int)

(assert (=> b!7104797 (= e!4270200 e!4270203)))

(declare-fun b!7104798 () Bool)

(assert (=> b!7104798 (= e!4270203 (+ 1 call!647415))))

(declare-fun b!7104799 () Bool)

(assert (=> b!7104799 (= e!4270206 e!4270200)))

(assert (=> b!7104799 (= c!1325753 (is-Star!17904 (regTwo!36321 r!11554)))))

(declare-fun b!7104800 () Bool)

(assert (=> b!7104800 (= e!4270203 e!4270201)))

(declare-fun c!1325749 () Bool)

(assert (=> b!7104800 (= c!1325749 (is-Concat!26749 (regTwo!36321 r!11554)))))

(declare-fun b!7104801 () Bool)

(assert (=> b!7104801 (= e!4270201 1)))

(declare-fun b!7104802 () Bool)

(assert (=> b!7104802 (= e!4270202 e!4270197)))

(assert (=> b!7104802 (= c!1325748 (is-Union!17904 (regTwo!36321 r!11554)))))

(assert (= (and d!2219086 c!1325750) b!7104790))

(assert (= (and d!2219086 (not c!1325750)) b!7104799))

(assert (= (and b!7104799 c!1325753) b!7104793))

(assert (= (and b!7104799 (not c!1325753)) b!7104797))

(assert (= (and b!7104797 c!1325751) b!7104798))

(assert (= (and b!7104797 (not c!1325751)) b!7104800))

(assert (= (and b!7104800 c!1325749) b!7104792))

(assert (= (and b!7104800 (not c!1325749)) b!7104801))

(assert (= (or b!7104798 b!7104792) bm!647411))

(assert (= (or b!7104798 b!7104792) bm!647408))

(assert (= (or b!7104798 b!7104792) bm!647406))

(assert (= (or b!7104793 bm!647408) bm!647410))

(assert (= (and d!2219086 res!2900392) b!7104802))

(assert (= (and b!7104802 c!1325748) b!7104794))

(assert (= (and b!7104802 (not c!1325748)) b!7104786))

(assert (= (and b!7104794 res!2900390) b!7104796))

(assert (= (and b!7104786 c!1325754) b!7104788))

(assert (= (and b!7104786 (not c!1325754)) b!7104789))

(assert (= (and b!7104788 res!2900391) b!7104795))

(assert (= (and b!7104789 c!1325752) b!7104787))

(assert (= (and b!7104789 (not c!1325752)) b!7104791))

(assert (= (or b!7104788 b!7104787) bm!647405))

(assert (= (or b!7104796 b!7104795) bm!647407))

(assert (= (or b!7104794 bm!647405) bm!647409))

(declare-fun m!7828348 () Bool)

(assert (=> bm!647410 m!7828348))

(declare-fun m!7828350 () Bool)

(assert (=> bm!647411 m!7828350))

(declare-fun m!7828352 () Bool)

(assert (=> bm!647407 m!7828352))

(declare-fun m!7828354 () Bool)

(assert (=> bm!647409 m!7828354))

(declare-fun m!7828356 () Bool)

(assert (=> bm!647406 m!7828356))

(assert (=> b!7104632 d!2219086))

(declare-fun bm!647412 () Bool)

(declare-fun call!647421 () Int)

(declare-fun call!647423 () Int)

(assert (=> bm!647412 (= call!647421 call!647423)))

(declare-fun b!7104803 () Bool)

(declare-fun e!4270207 () Bool)

(declare-fun e!4270208 () Bool)

(assert (=> b!7104803 (= e!4270207 e!4270208)))

(declare-fun c!1325761 () Bool)

(assert (=> b!7104803 (= c!1325761 (is-Concat!26749 r!11554))))

(declare-fun b!7104804 () Bool)

(declare-fun e!4270214 () Bool)

(declare-fun lt!2558694 () Int)

(assert (=> b!7104804 (= e!4270214 (> lt!2558694 call!647421))))

(declare-fun d!2219090 () Bool)

(declare-fun e!4270212 () Bool)

(assert (=> d!2219090 e!4270212))

(declare-fun res!2900395 () Bool)

(assert (=> d!2219090 (=> (not res!2900395) (not e!4270212))))

(assert (=> d!2219090 (= res!2900395 (> lt!2558694 0))))

(declare-fun e!4270216 () Int)

(assert (=> d!2219090 (= lt!2558694 e!4270216)))

(declare-fun c!1325757 () Bool)

(assert (=> d!2219090 (= c!1325757 (is-ElementMatch!17904 r!11554))))

(assert (=> d!2219090 (= (regexDepth!389 r!11554) lt!2558694)))

(declare-fun b!7104805 () Bool)

(declare-fun res!2900394 () Bool)

(declare-fun e!4270209 () Bool)

(assert (=> b!7104805 (=> (not res!2900394) (not e!4270209))))

(assert (=> b!7104805 (= res!2900394 (> lt!2558694 call!647421))))

(assert (=> b!7104805 (= e!4270208 e!4270209)))

(declare-fun b!7104806 () Bool)

(declare-fun c!1325759 () Bool)

(assert (=> b!7104806 (= c!1325759 (is-Star!17904 r!11554))))

(assert (=> b!7104806 (= e!4270208 e!4270214)))

(declare-fun b!7104807 () Bool)

(assert (=> b!7104807 (= e!4270216 1)))

(declare-fun b!7104808 () Bool)

(assert (=> b!7104808 (= e!4270214 (= lt!2558694 1))))

(declare-fun b!7104809 () Bool)

(declare-fun e!4270211 () Int)

(declare-fun call!647422 () Int)

(assert (=> b!7104809 (= e!4270211 (+ 1 call!647422))))

(declare-fun call!647418 () Int)

(declare-fun bm!647413 () Bool)

(declare-fun call!647419 () Int)

(declare-fun c!1325758 () Bool)

(assert (=> bm!647413 (= call!647422 (maxBigInt!0 (ite c!1325758 call!647419 call!647418) (ite c!1325758 call!647418 call!647419)))))

(declare-fun bm!647414 () Bool)

(declare-fun call!647420 () Int)

(declare-fun c!1325755 () Bool)

(assert (=> bm!647414 (= call!647420 (regexDepth!389 (ite c!1325755 (regTwo!36321 r!11554) (regTwo!36320 r!11554))))))

(declare-fun bm!647415 () Bool)

(declare-fun call!647417 () Int)

(assert (=> bm!647415 (= call!647419 call!647417)))

(declare-fun bm!647416 () Bool)

(assert (=> bm!647416 (= call!647423 (regexDepth!389 (ite c!1325755 (regOne!36321 r!11554) (ite c!1325761 (regOne!36320 r!11554) (reg!18233 r!11554)))))))

(declare-fun bm!647417 () Bool)

(declare-fun c!1325760 () Bool)

(assert (=> bm!647417 (= call!647417 (regexDepth!389 (ite c!1325760 (reg!18233 r!11554) (ite c!1325758 (regOne!36321 r!11554) (regTwo!36320 r!11554)))))))

(declare-fun b!7104810 () Bool)

(declare-fun e!4270210 () Int)

(assert (=> b!7104810 (= e!4270210 (+ 1 call!647417))))

(declare-fun bm!647418 () Bool)

(assert (=> bm!647418 (= call!647418 (regexDepth!389 (ite c!1325758 (regTwo!36321 r!11554) (regOne!36320 r!11554))))))

(declare-fun b!7104811 () Bool)

(declare-fun e!4270215 () Bool)

(assert (=> b!7104811 (= e!4270207 e!4270215)))

(declare-fun res!2900393 () Bool)

(assert (=> b!7104811 (= res!2900393 (> lt!2558694 call!647423))))

(assert (=> b!7104811 (=> (not res!2900393) (not e!4270215))))

(declare-fun b!7104812 () Bool)

(assert (=> b!7104812 (= e!4270209 (> lt!2558694 call!647420))))

(declare-fun b!7104813 () Bool)

(assert (=> b!7104813 (= e!4270215 (> lt!2558694 call!647420))))

(declare-fun b!7104814 () Bool)

(assert (=> b!7104814 (= c!1325758 (is-Union!17904 r!11554))))

(declare-fun e!4270213 () Int)

(assert (=> b!7104814 (= e!4270210 e!4270213)))

(declare-fun b!7104815 () Bool)

(assert (=> b!7104815 (= e!4270213 (+ 1 call!647422))))

(declare-fun b!7104816 () Bool)

(assert (=> b!7104816 (= e!4270216 e!4270210)))

(assert (=> b!7104816 (= c!1325760 (is-Star!17904 r!11554))))

(declare-fun b!7104817 () Bool)

(assert (=> b!7104817 (= e!4270213 e!4270211)))

(declare-fun c!1325756 () Bool)

(assert (=> b!7104817 (= c!1325756 (is-Concat!26749 r!11554))))

(declare-fun b!7104818 () Bool)

(assert (=> b!7104818 (= e!4270211 1)))

(declare-fun b!7104819 () Bool)

(assert (=> b!7104819 (= e!4270212 e!4270207)))

(assert (=> b!7104819 (= c!1325755 (is-Union!17904 r!11554))))

(assert (= (and d!2219090 c!1325757) b!7104807))

(assert (= (and d!2219090 (not c!1325757)) b!7104816))

(assert (= (and b!7104816 c!1325760) b!7104810))

(assert (= (and b!7104816 (not c!1325760)) b!7104814))

(assert (= (and b!7104814 c!1325758) b!7104815))

(assert (= (and b!7104814 (not c!1325758)) b!7104817))

(assert (= (and b!7104817 c!1325756) b!7104809))

(assert (= (and b!7104817 (not c!1325756)) b!7104818))

(assert (= (or b!7104815 b!7104809) bm!647418))

(assert (= (or b!7104815 b!7104809) bm!647415))

(assert (= (or b!7104815 b!7104809) bm!647413))

(assert (= (or b!7104810 bm!647415) bm!647417))

(assert (= (and d!2219090 res!2900395) b!7104819))

(assert (= (and b!7104819 c!1325755) b!7104811))

(assert (= (and b!7104819 (not c!1325755)) b!7104803))

(assert (= (and b!7104811 res!2900393) b!7104813))

(assert (= (and b!7104803 c!1325761) b!7104805))

(assert (= (and b!7104803 (not c!1325761)) b!7104806))

(assert (= (and b!7104805 res!2900394) b!7104812))

(assert (= (and b!7104806 c!1325759) b!7104804))

(assert (= (and b!7104806 (not c!1325759)) b!7104808))

(assert (= (or b!7104805 b!7104804) bm!647412))

(assert (= (or b!7104813 b!7104812) bm!647414))

(assert (= (or b!7104811 bm!647412) bm!647416))

(declare-fun m!7828358 () Bool)

(assert (=> bm!647417 m!7828358))

(declare-fun m!7828360 () Bool)

(assert (=> bm!647418 m!7828360))

(declare-fun m!7828362 () Bool)

(assert (=> bm!647414 m!7828362))

(declare-fun m!7828364 () Bool)

(assert (=> bm!647416 m!7828364))

(declare-fun m!7828366 () Bool)

(assert (=> bm!647413 m!7828366))

(assert (=> b!7104632 d!2219090))

(assert (=> b!7104630 d!2219078))

(declare-fun lt!2558697 () List!68865)

(declare-fun b!7104833 () Bool)

(declare-fun e!4270222 () Bool)

(assert (=> b!7104833 (= e!4270222 (or (not (= (exprs!7398 auxCtx!45) Nil!68741)) (= lt!2558697 (exprs!7398 c!9994))))))

(declare-fun b!7104831 () Bool)

(declare-fun e!4270221 () List!68865)

(assert (=> b!7104831 (= e!4270221 (Cons!68741 (h!75189 (exprs!7398 c!9994)) (++!16056 (t!382682 (exprs!7398 c!9994)) (exprs!7398 auxCtx!45))))))

(declare-fun b!7104832 () Bool)

(declare-fun res!2900401 () Bool)

(assert (=> b!7104832 (=> (not res!2900401) (not e!4270222))))

(declare-fun size!41369 (List!68865) Int)

(assert (=> b!7104832 (= res!2900401 (= (size!41369 lt!2558697) (+ (size!41369 (exprs!7398 c!9994)) (size!41369 (exprs!7398 auxCtx!45)))))))

(declare-fun b!7104830 () Bool)

(assert (=> b!7104830 (= e!4270221 (exprs!7398 auxCtx!45))))

(declare-fun d!2219092 () Bool)

(assert (=> d!2219092 e!4270222))

(declare-fun res!2900400 () Bool)

(assert (=> d!2219092 (=> (not res!2900400) (not e!4270222))))

(declare-fun content!13994 (List!68865) (Set Regex!17904))

(assert (=> d!2219092 (= res!2900400 (= (content!13994 lt!2558697) (set.union (content!13994 (exprs!7398 c!9994)) (content!13994 (exprs!7398 auxCtx!45)))))))

(assert (=> d!2219092 (= lt!2558697 e!4270221)))

(declare-fun c!1325764 () Bool)

(assert (=> d!2219092 (= c!1325764 (is-Nil!68741 (exprs!7398 c!9994)))))

(assert (=> d!2219092 (= (++!16056 (exprs!7398 c!9994) (exprs!7398 auxCtx!45)) lt!2558697)))

(assert (= (and d!2219092 c!1325764) b!7104830))

(assert (= (and d!2219092 (not c!1325764)) b!7104831))

(assert (= (and d!2219092 res!2900400) b!7104832))

(assert (= (and b!7104832 res!2900401) b!7104833))

(declare-fun m!7828370 () Bool)

(assert (=> b!7104831 m!7828370))

(declare-fun m!7828372 () Bool)

(assert (=> b!7104832 m!7828372))

(declare-fun m!7828374 () Bool)

(assert (=> b!7104832 m!7828374))

(declare-fun m!7828376 () Bool)

(assert (=> b!7104832 m!7828376))

(declare-fun m!7828378 () Bool)

(assert (=> d!2219092 m!7828378))

(declare-fun m!7828380 () Bool)

(assert (=> d!2219092 m!7828380))

(declare-fun m!7828382 () Bool)

(assert (=> d!2219092 m!7828382))

(assert (=> b!7104630 d!2219092))

(declare-fun bm!647419 () Bool)

(declare-fun call!647428 () (Set Context!13796))

(declare-fun call!647427 () (Set Context!13796))

(assert (=> bm!647419 (= call!647428 call!647427)))

(declare-fun bm!647420 () Bool)

(declare-fun call!647429 () (Set Context!13796))

(assert (=> bm!647420 (= call!647429 call!647428)))

(declare-fun b!7104834 () Bool)

(declare-fun e!4270227 () (Set Context!13796))

(assert (=> b!7104834 (= e!4270227 call!647429)))

(declare-fun b!7104835 () Bool)

(declare-fun e!4270223 () (Set Context!13796))

(declare-fun call!647426 () (Set Context!13796))

(assert (=> b!7104835 (= e!4270223 (set.union call!647426 call!647428))))

(declare-fun b!7104836 () Bool)

(declare-fun c!1325765 () Bool)

(declare-fun e!4270225 () Bool)

(assert (=> b!7104836 (= c!1325765 e!4270225)))

(declare-fun res!2900402 () Bool)

(assert (=> b!7104836 (=> (not res!2900402) (not e!4270225))))

(assert (=> b!7104836 (= res!2900402 (is-Concat!26749 r!11554))))

(declare-fun e!4270226 () (Set Context!13796))

(assert (=> b!7104836 (= e!4270226 e!4270223)))

(declare-fun d!2219096 () Bool)

(declare-fun c!1325768 () Bool)

(assert (=> d!2219096 (= c!1325768 (and (is-ElementMatch!17904 r!11554) (= (c!1325701 r!11554) a!1901)))))

(declare-fun e!4270224 () (Set Context!13796))

(assert (=> d!2219096 (= (derivationStepZipperDown!2427 r!11554 lt!2558641 a!1901) e!4270224)))

(declare-fun b!7104837 () Bool)

(assert (=> b!7104837 (= e!4270223 e!4270227)))

(declare-fun c!1325767 () Bool)

(assert (=> b!7104837 (= c!1325767 (is-Concat!26749 r!11554))))

(declare-fun bm!647421 () Bool)

(declare-fun call!647425 () List!68865)

(declare-fun call!647424 () List!68865)

(assert (=> bm!647421 (= call!647425 call!647424)))

(declare-fun b!7104838 () Bool)

(declare-fun e!4270228 () (Set Context!13796))

(assert (=> b!7104838 (= e!4270228 (as set.empty (Set Context!13796)))))

(declare-fun b!7104839 () Bool)

(assert (=> b!7104839 (= e!4270228 call!647429)))

(declare-fun bm!647422 () Bool)

(declare-fun c!1325766 () Bool)

(assert (=> bm!647422 (= call!647426 (derivationStepZipperDown!2427 (ite c!1325766 (regOne!36321 r!11554) (regOne!36320 r!11554)) (ite c!1325766 lt!2558641 (Context!13797 call!647424)) a!1901))))

(declare-fun b!7104840 () Bool)

(assert (=> b!7104840 (= e!4270225 (nullable!7541 (regOne!36320 r!11554)))))

(declare-fun b!7104841 () Bool)

(assert (=> b!7104841 (= e!4270224 (set.insert lt!2558641 (as set.empty (Set Context!13796))))))

(declare-fun b!7104842 () Bool)

(assert (=> b!7104842 (= e!4270224 e!4270226)))

(assert (=> b!7104842 (= c!1325766 (is-Union!17904 r!11554))))

(declare-fun bm!647423 () Bool)

(assert (=> bm!647423 (= call!647427 (derivationStepZipperDown!2427 (ite c!1325766 (regTwo!36321 r!11554) (ite c!1325765 (regTwo!36320 r!11554) (ite c!1325767 (regOne!36320 r!11554) (reg!18233 r!11554)))) (ite (or c!1325766 c!1325765) lt!2558641 (Context!13797 call!647425)) a!1901))))

(declare-fun b!7104843 () Bool)

(declare-fun c!1325769 () Bool)

(assert (=> b!7104843 (= c!1325769 (is-Star!17904 r!11554))))

(assert (=> b!7104843 (= e!4270227 e!4270228)))

(declare-fun bm!647424 () Bool)

(assert (=> bm!647424 (= call!647424 ($colon$colon!2768 (exprs!7398 lt!2558641) (ite (or c!1325765 c!1325767) (regTwo!36320 r!11554) r!11554)))))

(declare-fun b!7104844 () Bool)

(assert (=> b!7104844 (= e!4270226 (set.union call!647426 call!647427))))

(assert (= (and d!2219096 c!1325768) b!7104841))

(assert (= (and d!2219096 (not c!1325768)) b!7104842))

(assert (= (and b!7104842 c!1325766) b!7104844))

(assert (= (and b!7104842 (not c!1325766)) b!7104836))

(assert (= (and b!7104836 res!2900402) b!7104840))

(assert (= (and b!7104836 c!1325765) b!7104835))

(assert (= (and b!7104836 (not c!1325765)) b!7104837))

(assert (= (and b!7104837 c!1325767) b!7104834))

(assert (= (and b!7104837 (not c!1325767)) b!7104843))

(assert (= (and b!7104843 c!1325769) b!7104839))

(assert (= (and b!7104843 (not c!1325769)) b!7104838))

(assert (= (or b!7104834 b!7104839) bm!647421))

(assert (= (or b!7104834 b!7104839) bm!647420))

(assert (= (or b!7104835 bm!647420) bm!647419))

(assert (= (or b!7104835 bm!647421) bm!647424))

(assert (= (or b!7104844 bm!647419) bm!647423))

(assert (= (or b!7104844 b!7104835) bm!647422))

(declare-fun m!7828384 () Bool)

(assert (=> bm!647423 m!7828384))

(declare-fun m!7828386 () Bool)

(assert (=> bm!647422 m!7828386))

(declare-fun m!7828388 () Bool)

(assert (=> b!7104840 m!7828388))

(declare-fun m!7828390 () Bool)

(assert (=> b!7104841 m!7828390))

(declare-fun m!7828392 () Bool)

(assert (=> bm!647424 m!7828392))

(assert (=> b!7104630 d!2219096))

(declare-fun bm!647425 () Bool)

(declare-fun call!647434 () (Set Context!13796))

(declare-fun call!647433 () (Set Context!13796))

(assert (=> bm!647425 (= call!647434 call!647433)))

(declare-fun bm!647426 () Bool)

(declare-fun call!647435 () (Set Context!13796))

(assert (=> bm!647426 (= call!647435 call!647434)))

(declare-fun b!7104845 () Bool)

(declare-fun e!4270233 () (Set Context!13796))

(assert (=> b!7104845 (= e!4270233 call!647435)))

(declare-fun b!7104846 () Bool)

(declare-fun e!4270229 () (Set Context!13796))

(declare-fun call!647432 () (Set Context!13796))

(assert (=> b!7104846 (= e!4270229 (set.union call!647432 call!647434))))

(declare-fun b!7104847 () Bool)

(declare-fun c!1325770 () Bool)

(declare-fun e!4270231 () Bool)

(assert (=> b!7104847 (= c!1325770 e!4270231)))

(declare-fun res!2900403 () Bool)

(assert (=> b!7104847 (=> (not res!2900403) (not e!4270231))))

(assert (=> b!7104847 (= res!2900403 (is-Concat!26749 (regTwo!36321 r!11554)))))

(declare-fun e!4270232 () (Set Context!13796))

(assert (=> b!7104847 (= e!4270232 e!4270229)))

(declare-fun d!2219098 () Bool)

(declare-fun c!1325773 () Bool)

(assert (=> d!2219098 (= c!1325773 (and (is-ElementMatch!17904 (regTwo!36321 r!11554)) (= (c!1325701 (regTwo!36321 r!11554)) a!1901)))))

(declare-fun e!4270230 () (Set Context!13796))

(assert (=> d!2219098 (= (derivationStepZipperDown!2427 (regTwo!36321 r!11554) lt!2558641 a!1901) e!4270230)))

(declare-fun b!7104848 () Bool)

(assert (=> b!7104848 (= e!4270229 e!4270233)))

(declare-fun c!1325772 () Bool)

(assert (=> b!7104848 (= c!1325772 (is-Concat!26749 (regTwo!36321 r!11554)))))

(declare-fun bm!647427 () Bool)

(declare-fun call!647431 () List!68865)

(declare-fun call!647430 () List!68865)

(assert (=> bm!647427 (= call!647431 call!647430)))

(declare-fun b!7104849 () Bool)

(declare-fun e!4270234 () (Set Context!13796))

(assert (=> b!7104849 (= e!4270234 (as set.empty (Set Context!13796)))))

(declare-fun b!7104850 () Bool)

(assert (=> b!7104850 (= e!4270234 call!647435)))

(declare-fun bm!647428 () Bool)

(declare-fun c!1325771 () Bool)

(assert (=> bm!647428 (= call!647432 (derivationStepZipperDown!2427 (ite c!1325771 (regOne!36321 (regTwo!36321 r!11554)) (regOne!36320 (regTwo!36321 r!11554))) (ite c!1325771 lt!2558641 (Context!13797 call!647430)) a!1901))))

(declare-fun b!7104851 () Bool)

(assert (=> b!7104851 (= e!4270231 (nullable!7541 (regOne!36320 (regTwo!36321 r!11554))))))

(declare-fun b!7104852 () Bool)

(assert (=> b!7104852 (= e!4270230 (set.insert lt!2558641 (as set.empty (Set Context!13796))))))

(declare-fun b!7104853 () Bool)

(assert (=> b!7104853 (= e!4270230 e!4270232)))

(assert (=> b!7104853 (= c!1325771 (is-Union!17904 (regTwo!36321 r!11554)))))

(declare-fun bm!647429 () Bool)

(assert (=> bm!647429 (= call!647433 (derivationStepZipperDown!2427 (ite c!1325771 (regTwo!36321 (regTwo!36321 r!11554)) (ite c!1325770 (regTwo!36320 (regTwo!36321 r!11554)) (ite c!1325772 (regOne!36320 (regTwo!36321 r!11554)) (reg!18233 (regTwo!36321 r!11554))))) (ite (or c!1325771 c!1325770) lt!2558641 (Context!13797 call!647431)) a!1901))))

(declare-fun b!7104854 () Bool)

(declare-fun c!1325774 () Bool)

(assert (=> b!7104854 (= c!1325774 (is-Star!17904 (regTwo!36321 r!11554)))))

(assert (=> b!7104854 (= e!4270233 e!4270234)))

(declare-fun bm!647430 () Bool)

(assert (=> bm!647430 (= call!647430 ($colon$colon!2768 (exprs!7398 lt!2558641) (ite (or c!1325770 c!1325772) (regTwo!36320 (regTwo!36321 r!11554)) (regTwo!36321 r!11554))))))

(declare-fun b!7104855 () Bool)

(assert (=> b!7104855 (= e!4270232 (set.union call!647432 call!647433))))

(assert (= (and d!2219098 c!1325773) b!7104852))

(assert (= (and d!2219098 (not c!1325773)) b!7104853))

(assert (= (and b!7104853 c!1325771) b!7104855))

(assert (= (and b!7104853 (not c!1325771)) b!7104847))

(assert (= (and b!7104847 res!2900403) b!7104851))

(assert (= (and b!7104847 c!1325770) b!7104846))

(assert (= (and b!7104847 (not c!1325770)) b!7104848))

(assert (= (and b!7104848 c!1325772) b!7104845))

(assert (= (and b!7104848 (not c!1325772)) b!7104854))

(assert (= (and b!7104854 c!1325774) b!7104850))

(assert (= (and b!7104854 (not c!1325774)) b!7104849))

(assert (= (or b!7104845 b!7104850) bm!647427))

(assert (= (or b!7104845 b!7104850) bm!647426))

(assert (= (or b!7104846 bm!647426) bm!647425))

(assert (= (or b!7104846 bm!647427) bm!647430))

(assert (= (or b!7104855 bm!647425) bm!647429))

(assert (= (or b!7104855 b!7104846) bm!647428))

(declare-fun m!7828394 () Bool)

(assert (=> bm!647429 m!7828394))

(declare-fun m!7828396 () Bool)

(assert (=> bm!647428 m!7828396))

(declare-fun m!7828398 () Bool)

(assert (=> b!7104851 m!7828398))

(assert (=> b!7104852 m!7828390))

(declare-fun m!7828400 () Bool)

(assert (=> bm!647430 m!7828400))

(assert (=> b!7104630 d!2219098))

(declare-fun bm!647431 () Bool)

(declare-fun call!647440 () (Set Context!13796))

(declare-fun call!647439 () (Set Context!13796))

(assert (=> bm!647431 (= call!647440 call!647439)))

(declare-fun bm!647432 () Bool)

(declare-fun call!647441 () (Set Context!13796))

(assert (=> bm!647432 (= call!647441 call!647440)))

(declare-fun b!7104856 () Bool)

(declare-fun e!4270239 () (Set Context!13796))

(assert (=> b!7104856 (= e!4270239 call!647441)))

(declare-fun b!7104857 () Bool)

(declare-fun e!4270235 () (Set Context!13796))

(declare-fun call!647438 () (Set Context!13796))

(assert (=> b!7104857 (= e!4270235 (set.union call!647438 call!647440))))

(declare-fun b!7104858 () Bool)

(declare-fun c!1325775 () Bool)

(declare-fun e!4270237 () Bool)

(assert (=> b!7104858 (= c!1325775 e!4270237)))

(declare-fun res!2900404 () Bool)

(assert (=> b!7104858 (=> (not res!2900404) (not e!4270237))))

(assert (=> b!7104858 (= res!2900404 (is-Concat!26749 (regOne!36321 r!11554)))))

(declare-fun e!4270238 () (Set Context!13796))

(assert (=> b!7104858 (= e!4270238 e!4270235)))

(declare-fun d!2219100 () Bool)

(declare-fun c!1325778 () Bool)

(assert (=> d!2219100 (= c!1325778 (and (is-ElementMatch!17904 (regOne!36321 r!11554)) (= (c!1325701 (regOne!36321 r!11554)) a!1901)))))

(declare-fun e!4270236 () (Set Context!13796))

(assert (=> d!2219100 (= (derivationStepZipperDown!2427 (regOne!36321 r!11554) lt!2558641 a!1901) e!4270236)))

(declare-fun b!7104859 () Bool)

(assert (=> b!7104859 (= e!4270235 e!4270239)))

(declare-fun c!1325777 () Bool)

(assert (=> b!7104859 (= c!1325777 (is-Concat!26749 (regOne!36321 r!11554)))))

(declare-fun bm!647433 () Bool)

(declare-fun call!647437 () List!68865)

(declare-fun call!647436 () List!68865)

(assert (=> bm!647433 (= call!647437 call!647436)))

(declare-fun b!7104860 () Bool)

(declare-fun e!4270240 () (Set Context!13796))

(assert (=> b!7104860 (= e!4270240 (as set.empty (Set Context!13796)))))

(declare-fun b!7104861 () Bool)

(assert (=> b!7104861 (= e!4270240 call!647441)))

(declare-fun bm!647434 () Bool)

(declare-fun c!1325776 () Bool)

(assert (=> bm!647434 (= call!647438 (derivationStepZipperDown!2427 (ite c!1325776 (regOne!36321 (regOne!36321 r!11554)) (regOne!36320 (regOne!36321 r!11554))) (ite c!1325776 lt!2558641 (Context!13797 call!647436)) a!1901))))

(declare-fun b!7104862 () Bool)

(assert (=> b!7104862 (= e!4270237 (nullable!7541 (regOne!36320 (regOne!36321 r!11554))))))

(declare-fun b!7104863 () Bool)

(assert (=> b!7104863 (= e!4270236 (set.insert lt!2558641 (as set.empty (Set Context!13796))))))

(declare-fun b!7104864 () Bool)

(assert (=> b!7104864 (= e!4270236 e!4270238)))

(assert (=> b!7104864 (= c!1325776 (is-Union!17904 (regOne!36321 r!11554)))))

(declare-fun bm!647435 () Bool)

(assert (=> bm!647435 (= call!647439 (derivationStepZipperDown!2427 (ite c!1325776 (regTwo!36321 (regOne!36321 r!11554)) (ite c!1325775 (regTwo!36320 (regOne!36321 r!11554)) (ite c!1325777 (regOne!36320 (regOne!36321 r!11554)) (reg!18233 (regOne!36321 r!11554))))) (ite (or c!1325776 c!1325775) lt!2558641 (Context!13797 call!647437)) a!1901))))

(declare-fun b!7104865 () Bool)

(declare-fun c!1325779 () Bool)

(assert (=> b!7104865 (= c!1325779 (is-Star!17904 (regOne!36321 r!11554)))))

(assert (=> b!7104865 (= e!4270239 e!4270240)))

(declare-fun bm!647436 () Bool)

(assert (=> bm!647436 (= call!647436 ($colon$colon!2768 (exprs!7398 lt!2558641) (ite (or c!1325775 c!1325777) (regTwo!36320 (regOne!36321 r!11554)) (regOne!36321 r!11554))))))

(declare-fun b!7104866 () Bool)

(assert (=> b!7104866 (= e!4270238 (set.union call!647438 call!647439))))

(assert (= (and d!2219100 c!1325778) b!7104863))

(assert (= (and d!2219100 (not c!1325778)) b!7104864))

(assert (= (and b!7104864 c!1325776) b!7104866))

(assert (= (and b!7104864 (not c!1325776)) b!7104858))

(assert (= (and b!7104858 res!2900404) b!7104862))

(assert (= (and b!7104858 c!1325775) b!7104857))

(assert (= (and b!7104858 (not c!1325775)) b!7104859))

(assert (= (and b!7104859 c!1325777) b!7104856))

(assert (= (and b!7104859 (not c!1325777)) b!7104865))

(assert (= (and b!7104865 c!1325779) b!7104861))

(assert (= (and b!7104865 (not c!1325779)) b!7104860))

(assert (= (or b!7104856 b!7104861) bm!647433))

(assert (= (or b!7104856 b!7104861) bm!647432))

(assert (= (or b!7104857 bm!647432) bm!647431))

(assert (= (or b!7104857 bm!647433) bm!647436))

(assert (= (or b!7104866 bm!647431) bm!647435))

(assert (= (or b!7104866 b!7104857) bm!647434))

(declare-fun m!7828402 () Bool)

(assert (=> bm!647435 m!7828402))

(declare-fun m!7828404 () Bool)

(assert (=> bm!647434 m!7828404))

(assert (=> b!7104862 m!7828336))

(assert (=> b!7104863 m!7828390))

(declare-fun m!7828406 () Bool)

(assert (=> bm!647436 m!7828406))

(assert (=> b!7104630 d!2219100))

(declare-fun bm!647437 () Bool)

(declare-fun call!647443 () Bool)

(declare-fun c!1325780 () Bool)

(assert (=> bm!647437 (= call!647443 (validRegex!9177 (ite c!1325780 (regOne!36321 r!11554) (regTwo!36320 r!11554))))))

(declare-fun bm!647438 () Bool)

(declare-fun call!647442 () Bool)

(declare-fun call!647444 () Bool)

(assert (=> bm!647438 (= call!647442 call!647444)))

(declare-fun b!7104867 () Bool)

(declare-fun e!4270244 () Bool)

(declare-fun e!4270242 () Bool)

(assert (=> b!7104867 (= e!4270244 e!4270242)))

(declare-fun res!2900407 () Bool)

(assert (=> b!7104867 (= res!2900407 (not (nullable!7541 (reg!18233 r!11554))))))

(assert (=> b!7104867 (=> (not res!2900407) (not e!4270242))))

(declare-fun b!7104868 () Bool)

(declare-fun e!4270241 () Bool)

(declare-fun e!4270246 () Bool)

(assert (=> b!7104868 (= e!4270241 e!4270246)))

(declare-fun res!2900408 () Bool)

(assert (=> b!7104868 (=> (not res!2900408) (not e!4270246))))

(assert (=> b!7104868 (= res!2900408 call!647442)))

(declare-fun b!7104869 () Bool)

(assert (=> b!7104869 (= e!4270242 call!647444)))

(declare-fun b!7104870 () Bool)

(declare-fun res!2900406 () Bool)

(assert (=> b!7104870 (=> res!2900406 e!4270241)))

(assert (=> b!7104870 (= res!2900406 (not (is-Concat!26749 r!11554)))))

(declare-fun e!4270243 () Bool)

(assert (=> b!7104870 (= e!4270243 e!4270241)))

(declare-fun b!7104872 () Bool)

(declare-fun e!4270247 () Bool)

(assert (=> b!7104872 (= e!4270247 call!647442)))

(declare-fun b!7104873 () Bool)

(assert (=> b!7104873 (= e!4270246 call!647443)))

(declare-fun b!7104874 () Bool)

(assert (=> b!7104874 (= e!4270244 e!4270243)))

(assert (=> b!7104874 (= c!1325780 (is-Union!17904 r!11554))))

(declare-fun b!7104871 () Bool)

(declare-fun e!4270245 () Bool)

(assert (=> b!7104871 (= e!4270245 e!4270244)))

(declare-fun c!1325781 () Bool)

(assert (=> b!7104871 (= c!1325781 (is-Star!17904 r!11554))))

(declare-fun d!2219102 () Bool)

(declare-fun res!2900405 () Bool)

(assert (=> d!2219102 (=> res!2900405 e!4270245)))

(assert (=> d!2219102 (= res!2900405 (is-ElementMatch!17904 r!11554))))

(assert (=> d!2219102 (= (validRegex!9177 r!11554) e!4270245)))

(declare-fun b!7104875 () Bool)

(declare-fun res!2900409 () Bool)

(assert (=> b!7104875 (=> (not res!2900409) (not e!4270247))))

(assert (=> b!7104875 (= res!2900409 call!647443)))

(assert (=> b!7104875 (= e!4270243 e!4270247)))

(declare-fun bm!647439 () Bool)

(assert (=> bm!647439 (= call!647444 (validRegex!9177 (ite c!1325781 (reg!18233 r!11554) (ite c!1325780 (regTwo!36321 r!11554) (regOne!36320 r!11554)))))))

(assert (= (and d!2219102 (not res!2900405)) b!7104871))

(assert (= (and b!7104871 c!1325781) b!7104867))

(assert (= (and b!7104871 (not c!1325781)) b!7104874))

(assert (= (and b!7104867 res!2900407) b!7104869))

(assert (= (and b!7104874 c!1325780) b!7104875))

(assert (= (and b!7104874 (not c!1325780)) b!7104870))

(assert (= (and b!7104875 res!2900409) b!7104872))

(assert (= (and b!7104870 (not res!2900406)) b!7104868))

(assert (= (and b!7104868 res!2900408) b!7104873))

(assert (= (or b!7104875 b!7104873) bm!647437))

(assert (= (or b!7104872 b!7104868) bm!647438))

(assert (= (or b!7104869 bm!647438) bm!647439))

(declare-fun m!7828408 () Bool)

(assert (=> bm!647437 m!7828408))

(declare-fun m!7828410 () Bool)

(assert (=> b!7104867 m!7828410))

(declare-fun m!7828412 () Bool)

(assert (=> bm!647439 m!7828412))

(assert (=> start!691610 d!2219102))

(declare-fun bs!1884571 () Bool)

(declare-fun d!2219104 () Bool)

(assert (= bs!1884571 (and d!2219104 b!7104630)))

(declare-fun lambda!431402 () Int)

(assert (=> bs!1884571 (= lambda!431402 lambda!431374)))

(declare-fun bs!1884572 () Bool)

(assert (= bs!1884572 (and d!2219104 d!2219070)))

(assert (=> bs!1884572 (= lambda!431402 lambda!431386)))

(assert (=> d!2219104 (= (inv!87624 c!9994) (forall!16807 (exprs!7398 c!9994) lambda!431402))))

(declare-fun bs!1884573 () Bool)

(assert (= bs!1884573 d!2219104))

(declare-fun m!7828414 () Bool)

(assert (=> bs!1884573 m!7828414))

(assert (=> start!691610 d!2219104))

(declare-fun bs!1884574 () Bool)

(declare-fun d!2219106 () Bool)

(assert (= bs!1884574 (and d!2219106 b!7104630)))

(declare-fun lambda!431403 () Int)

(assert (=> bs!1884574 (= lambda!431403 lambda!431374)))

(declare-fun bs!1884575 () Bool)

(assert (= bs!1884575 (and d!2219106 d!2219070)))

(assert (=> bs!1884575 (= lambda!431403 lambda!431386)))

(declare-fun bs!1884576 () Bool)

(assert (= bs!1884576 (and d!2219106 d!2219104)))

(assert (=> bs!1884576 (= lambda!431403 lambda!431402)))

(assert (=> d!2219106 (= (inv!87624 auxCtx!45) (forall!16807 (exprs!7398 auxCtx!45) lambda!431403))))

(declare-fun bs!1884577 () Bool)

(assert (= bs!1884577 d!2219106))

(declare-fun m!7828416 () Bool)

(assert (=> bs!1884577 m!7828416))

(assert (=> start!691610 d!2219106))

(declare-fun b!7104902 () Bool)

(declare-fun e!4270262 () Bool)

(declare-fun tp!1953729 () Bool)

(declare-fun tp!1953730 () Bool)

(assert (=> b!7104902 (= e!4270262 (and tp!1953729 tp!1953730))))

(assert (=> b!7104624 (= tp!1953700 e!4270262)))

(assert (= (and b!7104624 (is-Cons!68741 (exprs!7398 auxCtx!45))) b!7104902))

(declare-fun b!7104903 () Bool)

(declare-fun e!4270263 () Bool)

(declare-fun tp!1953731 () Bool)

(declare-fun tp!1953732 () Bool)

(assert (=> b!7104903 (= e!4270263 (and tp!1953731 tp!1953732))))

(assert (=> b!7104628 (= tp!1953698 e!4270263)))

(assert (= (and b!7104628 (is-Cons!68741 (exprs!7398 c!9994))) b!7104903))

(declare-fun b!7104914 () Bool)

(declare-fun e!4270266 () Bool)

(assert (=> b!7104914 (= e!4270266 tp_is_empty!45041)))

(declare-fun b!7104916 () Bool)

(declare-fun tp!1953743 () Bool)

(assert (=> b!7104916 (= e!4270266 tp!1953743)))

(declare-fun b!7104917 () Bool)

(declare-fun tp!1953744 () Bool)

(declare-fun tp!1953745 () Bool)

(assert (=> b!7104917 (= e!4270266 (and tp!1953744 tp!1953745))))

(assert (=> b!7104623 (= tp!1953703 e!4270266)))

(declare-fun b!7104915 () Bool)

(declare-fun tp!1953747 () Bool)

(declare-fun tp!1953746 () Bool)

(assert (=> b!7104915 (= e!4270266 (and tp!1953747 tp!1953746))))

(assert (= (and b!7104623 (is-ElementMatch!17904 (regOne!36320 r!11554))) b!7104914))

(assert (= (and b!7104623 (is-Concat!26749 (regOne!36320 r!11554))) b!7104915))

(assert (= (and b!7104623 (is-Star!17904 (regOne!36320 r!11554))) b!7104916))

(assert (= (and b!7104623 (is-Union!17904 (regOne!36320 r!11554))) b!7104917))

(declare-fun b!7104918 () Bool)

(declare-fun e!4270267 () Bool)

(assert (=> b!7104918 (= e!4270267 tp_is_empty!45041)))

(declare-fun b!7104920 () Bool)

(declare-fun tp!1953748 () Bool)

(assert (=> b!7104920 (= e!4270267 tp!1953748)))

(declare-fun b!7104921 () Bool)

(declare-fun tp!1953749 () Bool)

(declare-fun tp!1953750 () Bool)

(assert (=> b!7104921 (= e!4270267 (and tp!1953749 tp!1953750))))

(assert (=> b!7104623 (= tp!1953702 e!4270267)))

(declare-fun b!7104919 () Bool)

(declare-fun tp!1953752 () Bool)

(declare-fun tp!1953751 () Bool)

(assert (=> b!7104919 (= e!4270267 (and tp!1953752 tp!1953751))))

(assert (= (and b!7104623 (is-ElementMatch!17904 (regTwo!36320 r!11554))) b!7104918))

(assert (= (and b!7104623 (is-Concat!26749 (regTwo!36320 r!11554))) b!7104919))

(assert (= (and b!7104623 (is-Star!17904 (regTwo!36320 r!11554))) b!7104920))

(assert (= (and b!7104623 (is-Union!17904 (regTwo!36320 r!11554))) b!7104921))

(declare-fun b!7104922 () Bool)

(declare-fun e!4270268 () Bool)

(assert (=> b!7104922 (= e!4270268 tp_is_empty!45041)))

(declare-fun b!7104924 () Bool)

(declare-fun tp!1953753 () Bool)

(assert (=> b!7104924 (= e!4270268 tp!1953753)))

(declare-fun b!7104925 () Bool)

(declare-fun tp!1953754 () Bool)

(declare-fun tp!1953755 () Bool)

(assert (=> b!7104925 (= e!4270268 (and tp!1953754 tp!1953755))))

(assert (=> b!7104627 (= tp!1953701 e!4270268)))

(declare-fun b!7104923 () Bool)

(declare-fun tp!1953757 () Bool)

(declare-fun tp!1953756 () Bool)

(assert (=> b!7104923 (= e!4270268 (and tp!1953757 tp!1953756))))

(assert (= (and b!7104627 (is-ElementMatch!17904 (reg!18233 r!11554))) b!7104922))

(assert (= (and b!7104627 (is-Concat!26749 (reg!18233 r!11554))) b!7104923))

(assert (= (and b!7104627 (is-Star!17904 (reg!18233 r!11554))) b!7104924))

(assert (= (and b!7104627 (is-Union!17904 (reg!18233 r!11554))) b!7104925))

(declare-fun b!7104926 () Bool)

(declare-fun e!4270269 () Bool)

(assert (=> b!7104926 (= e!4270269 tp_is_empty!45041)))

(declare-fun b!7104928 () Bool)

(declare-fun tp!1953758 () Bool)

(assert (=> b!7104928 (= e!4270269 tp!1953758)))

(declare-fun b!7104929 () Bool)

(declare-fun tp!1953759 () Bool)

(declare-fun tp!1953760 () Bool)

(assert (=> b!7104929 (= e!4270269 (and tp!1953759 tp!1953760))))

(assert (=> b!7104625 (= tp!1953699 e!4270269)))

(declare-fun b!7104927 () Bool)

(declare-fun tp!1953762 () Bool)

(declare-fun tp!1953761 () Bool)

(assert (=> b!7104927 (= e!4270269 (and tp!1953762 tp!1953761))))

(assert (= (and b!7104625 (is-ElementMatch!17904 (regOne!36321 r!11554))) b!7104926))

(assert (= (and b!7104625 (is-Concat!26749 (regOne!36321 r!11554))) b!7104927))

(assert (= (and b!7104625 (is-Star!17904 (regOne!36321 r!11554))) b!7104928))

(assert (= (and b!7104625 (is-Union!17904 (regOne!36321 r!11554))) b!7104929))

(declare-fun b!7104930 () Bool)

(declare-fun e!4270270 () Bool)

(assert (=> b!7104930 (= e!4270270 tp_is_empty!45041)))

(declare-fun b!7104932 () Bool)

(declare-fun tp!1953763 () Bool)

(assert (=> b!7104932 (= e!4270270 tp!1953763)))

(declare-fun b!7104933 () Bool)

(declare-fun tp!1953764 () Bool)

(declare-fun tp!1953765 () Bool)

(assert (=> b!7104933 (= e!4270270 (and tp!1953764 tp!1953765))))

(assert (=> b!7104625 (= tp!1953697 e!4270270)))

(declare-fun b!7104931 () Bool)

(declare-fun tp!1953767 () Bool)

(declare-fun tp!1953766 () Bool)

(assert (=> b!7104931 (= e!4270270 (and tp!1953767 tp!1953766))))

(assert (= (and b!7104625 (is-ElementMatch!17904 (regTwo!36321 r!11554))) b!7104930))

(assert (= (and b!7104625 (is-Concat!26749 (regTwo!36321 r!11554))) b!7104931))

(assert (= (and b!7104625 (is-Star!17904 (regTwo!36321 r!11554))) b!7104932))

(assert (= (and b!7104625 (is-Union!17904 (regTwo!36321 r!11554))) b!7104933))

(push 1)

(assert (not bm!647437))

(assert (not b!7104831))

(assert (not bm!647414))

(assert (not bm!647418))

(assert (not b!7104734))

(assert (not d!2219076))

(assert (not b!7104925))

(assert (not b!7104923))

(assert (not bm!647416))

(assert (not b!7104902))

(assert (not bm!647423))

(assert (not b!7104903))

(assert tp_is_empty!45041)

(assert (not bm!647434))

(assert (not bm!647436))

(assert (not bm!647424))

(assert (not bm!647430))

(assert (not bm!647428))

(assert (not bm!647406))

(assert (not b!7104920))

(assert (not d!2219070))

(assert (not b!7104867))

(assert (not b!7104917))

(assert (not bm!647417))

(assert (not b!7104862))

(assert (not b!7104851))

(assert (not d!2219104))

(assert (not bm!647410))

(assert (not b!7104915))

(assert (not bm!647363))

(assert (not b!7104929))

(assert (not b!7104931))

(assert (not b!7104932))

(assert (not bm!647413))

(assert (not bm!647409))

(assert (not bm!647407))

(assert (not b!7104924))

(assert (not b!7104933))

(assert (not bm!647422))

(assert (not bm!647381))

(assert (not d!2219092))

(assert (not b!7104840))

(assert (not bm!647429))

(assert (not b!7104916))

(assert (not b!7104927))

(assert (not b!7104928))

(assert (not bm!647380))

(assert (not d!2219078))

(assert (not bm!647361))

(assert (not bm!647379))

(assert (not b!7104681))

(assert (not d!2219106))

(assert (not bm!647435))

(assert (not b!7104919))

(assert (not b!7104832))

(assert (not b!7104921))

(assert (not bm!647411))

(assert (not bm!647439))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

