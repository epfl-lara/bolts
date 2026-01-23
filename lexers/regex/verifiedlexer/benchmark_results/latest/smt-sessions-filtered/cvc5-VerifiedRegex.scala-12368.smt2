; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!692830 () Bool)

(assert start!692830)

(declare-fun b!7118779 () Bool)

(declare-fun e!4277495 () Bool)

(declare-fun e!4277493 () Bool)

(assert (=> b!7118779 (= e!4277495 e!4277493)))

(declare-fun res!2904185 () Bool)

(assert (=> b!7118779 (=> (not res!2904185) (not e!4277493))))

(declare-datatypes ((C!36226 0))(
  ( (C!36227 (val!27819 Int)) )
))
(declare-datatypes ((Regex!17978 0))(
  ( (ElementMatch!17978 (c!1328481 C!36226)) (Concat!26823 (regOne!36468 Regex!17978) (regTwo!36468 Regex!17978)) (EmptyExpr!17978) (Star!17978 (reg!18307 Regex!17978)) (EmptyLang!17978) (Union!17978 (regOne!36469 Regex!17978) (regTwo!36469 Regex!17978)) )
))
(declare-fun r!11554 () Regex!17978)

(declare-fun validRegex!9251 (Regex!17978) Bool)

(assert (=> b!7118779 (= res!2904185 (validRegex!9251 r!11554))))

(declare-datatypes ((List!68939 0))(
  ( (Nil!68815) (Cons!68815 (h!75263 Regex!17978) (t!382796 List!68939)) )
))
(declare-datatypes ((Context!13944 0))(
  ( (Context!13945 (exprs!7472 List!68939)) )
))
(declare-fun lt!2560956 () Context!13944)

(declare-fun lt!2560955 () List!68939)

(assert (=> b!7118779 (= lt!2560956 (Context!13945 lt!2560955))))

(declare-fun c!9994 () Context!13944)

(declare-fun auxCtx!45 () Context!13944)

(declare-fun ++!16130 (List!68939 List!68939) List!68939)

(assert (=> b!7118779 (= lt!2560955 (++!16130 (exprs!7472 c!9994) (exprs!7472 auxCtx!45)))))

(declare-fun lambda!432518 () Int)

(declare-datatypes ((Unit!162627 0))(
  ( (Unit!162628) )
))
(declare-fun lt!2560958 () Unit!162627)

(declare-fun lemmaConcatPreservesForall!1263 (List!68939 List!68939 Int) Unit!162627)

(assert (=> b!7118779 (= lt!2560958 (lemmaConcatPreservesForall!1263 (exprs!7472 c!9994) (exprs!7472 auxCtx!45) lambda!432518))))

(declare-fun lt!2560959 () Unit!162627)

(assert (=> b!7118779 (= lt!2560959 (lemmaConcatPreservesForall!1263 (exprs!7472 c!9994) (exprs!7472 auxCtx!45) lambda!432518))))

(declare-fun b!7118780 () Bool)

(declare-fun inv!87809 (Context!13944) Bool)

(assert (=> b!7118780 (= e!4277493 (not (inv!87809 lt!2560956)))))

(declare-fun lt!2560961 () Unit!162627)

(assert (=> b!7118780 (= lt!2560961 (lemmaConcatPreservesForall!1263 (exprs!7472 c!9994) (exprs!7472 auxCtx!45) lambda!432518))))

(declare-fun lt!2560953 () List!68939)

(declare-fun a!1901 () C!36226)

(declare-fun lt!2560954 () Context!13944)

(declare-fun derivationStepZipperDown!2475 (Regex!17978 Context!13944 C!36226) (Set Context!13944))

(declare-fun appendTo!943 ((Set Context!13944) Context!13944) (Set Context!13944))

(assert (=> b!7118780 (= (derivationStepZipperDown!2475 (reg!18307 r!11554) (Context!13945 (++!16130 lt!2560953 (exprs!7472 auxCtx!45))) a!1901) (appendTo!943 (derivationStepZipperDown!2475 (reg!18307 r!11554) lt!2560954 a!1901) auxCtx!45))))

(declare-fun lt!2560960 () Unit!162627)

(assert (=> b!7118780 (= lt!2560960 (lemmaConcatPreservesForall!1263 lt!2560953 (exprs!7472 auxCtx!45) lambda!432518))))

(declare-fun lt!2560957 () Unit!162627)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!241 (Context!13944 Regex!17978 C!36226 Context!13944) Unit!162627)

(assert (=> b!7118780 (= lt!2560957 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!241 lt!2560954 (reg!18307 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7118780 (= lt!2560954 (Context!13945 lt!2560953))))

(declare-fun $colon$colon!2822 (List!68939 Regex!17978) List!68939)

(assert (=> b!7118780 (= lt!2560953 ($colon$colon!2822 (exprs!7472 c!9994) r!11554))))

(declare-fun b!7118781 () Bool)

(declare-fun res!2904188 () Bool)

(assert (=> b!7118781 (=> (not res!2904188) (not e!4277493))))

(assert (=> b!7118781 (= res!2904188 (= (derivationStepZipperDown!2475 r!11554 lt!2560956 a!1901) (derivationStepZipperDown!2475 (reg!18307 r!11554) (Context!13945 ($colon$colon!2822 lt!2560955 r!11554)) a!1901)))))

(declare-fun b!7118782 () Bool)

(declare-fun res!2904189 () Bool)

(assert (=> b!7118782 (=> (not res!2904189) (not e!4277495))))

(assert (=> b!7118782 (= res!2904189 (and (or (not (is-ElementMatch!17978 r!11554)) (not (= (c!1328481 r!11554) a!1901))) (not (is-Union!17978 r!11554))))))

(declare-fun b!7118783 () Bool)

(declare-fun e!4277491 () Bool)

(declare-fun tp_is_empty!45189 () Bool)

(assert (=> b!7118783 (= e!4277491 tp_is_empty!45189)))

(declare-fun b!7118784 () Bool)

(declare-fun e!4277492 () Bool)

(declare-fun tp!1959671 () Bool)

(assert (=> b!7118784 (= e!4277492 tp!1959671)))

(declare-fun b!7118786 () Bool)

(declare-fun tp!1959677 () Bool)

(declare-fun tp!1959676 () Bool)

(assert (=> b!7118786 (= e!4277491 (and tp!1959677 tp!1959676))))

(declare-fun b!7118787 () Bool)

(declare-fun res!2904183 () Bool)

(assert (=> b!7118787 (=> (not res!2904183) (not e!4277495))))

(assert (=> b!7118787 (= res!2904183 (and (not (is-Concat!26823 r!11554)) (is-Star!17978 r!11554)))))

(declare-fun b!7118788 () Bool)

(declare-fun e!4277494 () Bool)

(declare-fun nullable!7615 (Regex!17978) Bool)

(assert (=> b!7118788 (= e!4277494 (not (nullable!7615 (regOne!36468 r!11554))))))

(declare-fun b!7118789 () Bool)

(declare-fun res!2904186 () Bool)

(assert (=> b!7118789 (=> (not res!2904186) (not e!4277495))))

(assert (=> b!7118789 (= res!2904186 e!4277494)))

(declare-fun res!2904187 () Bool)

(assert (=> b!7118789 (=> res!2904187 e!4277494)))

(assert (=> b!7118789 (= res!2904187 (not (is-Concat!26823 r!11554)))))

(declare-fun b!7118790 () Bool)

(declare-fun tp!1959673 () Bool)

(declare-fun tp!1959672 () Bool)

(assert (=> b!7118790 (= e!4277491 (and tp!1959673 tp!1959672))))

(declare-fun b!7118791 () Bool)

(declare-fun tp!1959675 () Bool)

(assert (=> b!7118791 (= e!4277491 tp!1959675)))

(declare-fun res!2904184 () Bool)

(assert (=> start!692830 (=> (not res!2904184) (not e!4277495))))

(assert (=> start!692830 (= res!2904184 (validRegex!9251 r!11554))))

(assert (=> start!692830 e!4277495))

(assert (=> start!692830 e!4277491))

(assert (=> start!692830 tp_is_empty!45189))

(assert (=> start!692830 (and (inv!87809 c!9994) e!4277492)))

(declare-fun e!4277496 () Bool)

(assert (=> start!692830 (and (inv!87809 auxCtx!45) e!4277496)))

(declare-fun b!7118785 () Bool)

(declare-fun tp!1959674 () Bool)

(assert (=> b!7118785 (= e!4277496 tp!1959674)))

(assert (= (and start!692830 res!2904184) b!7118782))

(assert (= (and b!7118782 res!2904189) b!7118789))

(assert (= (and b!7118789 (not res!2904187)) b!7118788))

(assert (= (and b!7118789 res!2904186) b!7118787))

(assert (= (and b!7118787 res!2904183) b!7118779))

(assert (= (and b!7118779 res!2904185) b!7118781))

(assert (= (and b!7118781 res!2904188) b!7118780))

(assert (= (and start!692830 (is-ElementMatch!17978 r!11554)) b!7118783))

(assert (= (and start!692830 (is-Concat!26823 r!11554)) b!7118786))

(assert (= (and start!692830 (is-Star!17978 r!11554)) b!7118791))

(assert (= (and start!692830 (is-Union!17978 r!11554)) b!7118790))

(assert (= start!692830 b!7118784))

(assert (= start!692830 b!7118785))

(declare-fun m!7836340 () Bool)

(assert (=> b!7118779 m!7836340))

(declare-fun m!7836342 () Bool)

(assert (=> b!7118779 m!7836342))

(declare-fun m!7836344 () Bool)

(assert (=> b!7118779 m!7836344))

(assert (=> b!7118779 m!7836344))

(declare-fun m!7836346 () Bool)

(assert (=> b!7118781 m!7836346))

(declare-fun m!7836348 () Bool)

(assert (=> b!7118781 m!7836348))

(declare-fun m!7836350 () Bool)

(assert (=> b!7118781 m!7836350))

(declare-fun m!7836352 () Bool)

(assert (=> b!7118788 m!7836352))

(declare-fun m!7836354 () Bool)

(assert (=> b!7118780 m!7836354))

(declare-fun m!7836356 () Bool)

(assert (=> b!7118780 m!7836356))

(assert (=> b!7118780 m!7836354))

(declare-fun m!7836358 () Bool)

(assert (=> b!7118780 m!7836358))

(assert (=> b!7118780 m!7836344))

(declare-fun m!7836360 () Bool)

(assert (=> b!7118780 m!7836360))

(declare-fun m!7836362 () Bool)

(assert (=> b!7118780 m!7836362))

(declare-fun m!7836364 () Bool)

(assert (=> b!7118780 m!7836364))

(declare-fun m!7836366 () Bool)

(assert (=> b!7118780 m!7836366))

(declare-fun m!7836368 () Bool)

(assert (=> b!7118780 m!7836368))

(assert (=> start!692830 m!7836340))

(declare-fun m!7836370 () Bool)

(assert (=> start!692830 m!7836370))

(declare-fun m!7836372 () Bool)

(assert (=> start!692830 m!7836372))

(push 1)

(assert (not b!7118780))

(assert (not b!7118786))

(assert (not b!7118779))

(assert (not b!7118781))

(assert (not b!7118791))

(assert tp_is_empty!45189)

(assert (not b!7118784))

(assert (not b!7118790))

(assert (not start!692830))

(assert (not b!7118785))

(assert (not b!7118788))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7118849 () Bool)

(declare-fun e!4277534 () Bool)

(declare-fun e!4277532 () Bool)

(assert (=> b!7118849 (= e!4277534 e!4277532)))

(declare-fun c!1328488 () Bool)

(assert (=> b!7118849 (= c!1328488 (is-Union!17978 r!11554))))

(declare-fun bm!650287 () Bool)

(declare-fun call!650293 () Bool)

(declare-fun call!650294 () Bool)

(assert (=> bm!650287 (= call!650293 call!650294)))

(declare-fun b!7118850 () Bool)

(declare-fun e!4277529 () Bool)

(assert (=> b!7118850 (= e!4277534 e!4277529)))

(declare-fun res!2904225 () Bool)

(assert (=> b!7118850 (= res!2904225 (not (nullable!7615 (reg!18307 r!11554))))))

(assert (=> b!7118850 (=> (not res!2904225) (not e!4277529))))

(declare-fun b!7118851 () Bool)

(declare-fun e!4277530 () Bool)

(declare-fun e!4277531 () Bool)

(assert (=> b!7118851 (= e!4277530 e!4277531)))

(declare-fun res!2904222 () Bool)

(assert (=> b!7118851 (=> (not res!2904222) (not e!4277531))))

(assert (=> b!7118851 (= res!2904222 call!650293)))

(declare-fun d!2221567 () Bool)

(declare-fun res!2904223 () Bool)

(declare-fun e!4277533 () Bool)

(assert (=> d!2221567 (=> res!2904223 e!4277533)))

(assert (=> d!2221567 (= res!2904223 (is-ElementMatch!17978 r!11554))))

(assert (=> d!2221567 (= (validRegex!9251 r!11554) e!4277533)))

(declare-fun bm!650288 () Bool)

(declare-fun call!650292 () Bool)

(assert (=> bm!650288 (= call!650292 (validRegex!9251 (ite c!1328488 (regOne!36469 r!11554) (regTwo!36468 r!11554))))))

(declare-fun bm!650289 () Bool)

(declare-fun c!1328487 () Bool)

(assert (=> bm!650289 (= call!650294 (validRegex!9251 (ite c!1328487 (reg!18307 r!11554) (ite c!1328488 (regTwo!36469 r!11554) (regOne!36468 r!11554)))))))

(declare-fun b!7118852 () Bool)

(assert (=> b!7118852 (= e!4277529 call!650294)))

(declare-fun b!7118853 () Bool)

(declare-fun res!2904224 () Bool)

(assert (=> b!7118853 (=> res!2904224 e!4277530)))

(assert (=> b!7118853 (= res!2904224 (not (is-Concat!26823 r!11554)))))

(assert (=> b!7118853 (= e!4277532 e!4277530)))

(declare-fun b!7118854 () Bool)

(assert (=> b!7118854 (= e!4277531 call!650292)))

(declare-fun b!7118855 () Bool)

(assert (=> b!7118855 (= e!4277533 e!4277534)))

(assert (=> b!7118855 (= c!1328487 (is-Star!17978 r!11554))))

(declare-fun b!7118856 () Bool)

(declare-fun e!4277535 () Bool)

(assert (=> b!7118856 (= e!4277535 call!650293)))

(declare-fun b!7118857 () Bool)

(declare-fun res!2904221 () Bool)

(assert (=> b!7118857 (=> (not res!2904221) (not e!4277535))))

(assert (=> b!7118857 (= res!2904221 call!650292)))

(assert (=> b!7118857 (= e!4277532 e!4277535)))

(assert (= (and d!2221567 (not res!2904223)) b!7118855))

(assert (= (and b!7118855 c!1328487) b!7118850))

(assert (= (and b!7118855 (not c!1328487)) b!7118849))

(assert (= (and b!7118850 res!2904225) b!7118852))

(assert (= (and b!7118849 c!1328488) b!7118857))

(assert (= (and b!7118849 (not c!1328488)) b!7118853))

(assert (= (and b!7118857 res!2904221) b!7118856))

(assert (= (and b!7118853 (not res!2904224)) b!7118851))

(assert (= (and b!7118851 res!2904222) b!7118854))

(assert (= (or b!7118857 b!7118854) bm!650288))

(assert (= (or b!7118856 b!7118851) bm!650287))

(assert (= (or b!7118852 bm!650287) bm!650289))

(declare-fun m!7836408 () Bool)

(assert (=> b!7118850 m!7836408))

(declare-fun m!7836410 () Bool)

(assert (=> bm!650288 m!7836410))

(declare-fun m!7836412 () Bool)

(assert (=> bm!650289 m!7836412))

(assert (=> start!692830 d!2221567))

(declare-fun bs!1885699 () Bool)

(declare-fun d!2221569 () Bool)

(assert (= bs!1885699 (and d!2221569 b!7118779)))

(declare-fun lambda!432530 () Int)

(assert (=> bs!1885699 (= lambda!432530 lambda!432518)))

(declare-fun forall!16866 (List!68939 Int) Bool)

(assert (=> d!2221569 (= (inv!87809 c!9994) (forall!16866 (exprs!7472 c!9994) lambda!432530))))

(declare-fun bs!1885700 () Bool)

(assert (= bs!1885700 d!2221569))

(declare-fun m!7836414 () Bool)

(assert (=> bs!1885700 m!7836414))

(assert (=> start!692830 d!2221569))

(declare-fun bs!1885701 () Bool)

(declare-fun d!2221571 () Bool)

(assert (= bs!1885701 (and d!2221571 b!7118779)))

(declare-fun lambda!432531 () Int)

(assert (=> bs!1885701 (= lambda!432531 lambda!432518)))

(declare-fun bs!1885702 () Bool)

(assert (= bs!1885702 (and d!2221571 d!2221569)))

(assert (=> bs!1885702 (= lambda!432531 lambda!432530)))

(assert (=> d!2221571 (= (inv!87809 auxCtx!45) (forall!16866 (exprs!7472 auxCtx!45) lambda!432531))))

(declare-fun bs!1885703 () Bool)

(assert (= bs!1885703 d!2221571))

(declare-fun m!7836416 () Bool)

(assert (=> bs!1885703 m!7836416))

(assert (=> start!692830 d!2221571))

(declare-fun bm!650308 () Bool)

(declare-fun call!650318 () (Set Context!13944))

(declare-fun call!650314 () (Set Context!13944))

(assert (=> bm!650308 (= call!650318 call!650314)))

(declare-fun b!7118898 () Bool)

(declare-fun e!4277562 () (Set Context!13944))

(declare-fun e!4277565 () (Set Context!13944))

(assert (=> b!7118898 (= e!4277562 e!4277565)))

(declare-fun c!1328507 () Bool)

(assert (=> b!7118898 (= c!1328507 (is-Concat!26823 r!11554))))

(declare-fun b!7118899 () Bool)

(declare-fun e!4277567 () (Set Context!13944))

(assert (=> b!7118899 (= e!4277567 (set.insert lt!2560956 (as set.empty (Set Context!13944))))))

(declare-fun b!7118900 () Bool)

(declare-fun e!4277564 () Bool)

(assert (=> b!7118900 (= e!4277564 (nullable!7615 (regOne!36468 r!11554)))))

(declare-fun bm!650309 () Bool)

(declare-fun call!650316 () List!68939)

(declare-fun call!650317 () List!68939)

(assert (=> bm!650309 (= call!650316 call!650317)))

(declare-fun c!1328506 () Bool)

(declare-fun c!1328505 () Bool)

(declare-fun bm!650310 () Bool)

(assert (=> bm!650310 (= call!650314 (derivationStepZipperDown!2475 (ite c!1328505 (regTwo!36469 r!11554) (ite c!1328506 (regTwo!36468 r!11554) (ite c!1328507 (regOne!36468 r!11554) (reg!18307 r!11554)))) (ite (or c!1328505 c!1328506) lt!2560956 (Context!13945 call!650316)) a!1901))))

(declare-fun b!7118901 () Bool)

(declare-fun e!4277563 () (Set Context!13944))

(declare-fun call!650313 () (Set Context!13944))

(assert (=> b!7118901 (= e!4277563 (set.union call!650313 call!650314))))

(declare-fun b!7118902 () Bool)

(declare-fun c!1328504 () Bool)

(assert (=> b!7118902 (= c!1328504 (is-Star!17978 r!11554))))

(declare-fun e!4277566 () (Set Context!13944))

(assert (=> b!7118902 (= e!4277565 e!4277566)))

(declare-fun b!7118903 () Bool)

(assert (=> b!7118903 (= e!4277566 (as set.empty (Set Context!13944)))))

(declare-fun bm!650311 () Bool)

(declare-fun call!650315 () (Set Context!13944))

(assert (=> bm!650311 (= call!650315 call!650318)))

(declare-fun b!7118904 () Bool)

(assert (=> b!7118904 (= e!4277565 call!650315)))

(declare-fun b!7118905 () Bool)

(assert (=> b!7118905 (= e!4277567 e!4277563)))

(assert (=> b!7118905 (= c!1328505 (is-Union!17978 r!11554))))

(declare-fun b!7118906 () Bool)

(assert (=> b!7118906 (= e!4277566 call!650315)))

(declare-fun d!2221575 () Bool)

(declare-fun c!1328503 () Bool)

(assert (=> d!2221575 (= c!1328503 (and (is-ElementMatch!17978 r!11554) (= (c!1328481 r!11554) a!1901)))))

(assert (=> d!2221575 (= (derivationStepZipperDown!2475 r!11554 lt!2560956 a!1901) e!4277567)))

(declare-fun bm!650312 () Bool)

(assert (=> bm!650312 (= call!650317 ($colon$colon!2822 (exprs!7472 lt!2560956) (ite (or c!1328506 c!1328507) (regTwo!36468 r!11554) r!11554)))))

(declare-fun b!7118907 () Bool)

(assert (=> b!7118907 (= c!1328506 e!4277564)))

(declare-fun res!2904238 () Bool)

(assert (=> b!7118907 (=> (not res!2904238) (not e!4277564))))

(assert (=> b!7118907 (= res!2904238 (is-Concat!26823 r!11554))))

(assert (=> b!7118907 (= e!4277563 e!4277562)))

(declare-fun b!7118908 () Bool)

(assert (=> b!7118908 (= e!4277562 (set.union call!650313 call!650318))))

(declare-fun bm!650313 () Bool)

(assert (=> bm!650313 (= call!650313 (derivationStepZipperDown!2475 (ite c!1328505 (regOne!36469 r!11554) (regOne!36468 r!11554)) (ite c!1328505 lt!2560956 (Context!13945 call!650317)) a!1901))))

(assert (= (and d!2221575 c!1328503) b!7118899))

(assert (= (and d!2221575 (not c!1328503)) b!7118905))

(assert (= (and b!7118905 c!1328505) b!7118901))

(assert (= (and b!7118905 (not c!1328505)) b!7118907))

(assert (= (and b!7118907 res!2904238) b!7118900))

(assert (= (and b!7118907 c!1328506) b!7118908))

(assert (= (and b!7118907 (not c!1328506)) b!7118898))

(assert (= (and b!7118898 c!1328507) b!7118904))

(assert (= (and b!7118898 (not c!1328507)) b!7118902))

(assert (= (and b!7118902 c!1328504) b!7118906))

(assert (= (and b!7118902 (not c!1328504)) b!7118903))

(assert (= (or b!7118904 b!7118906) bm!650309))

(assert (= (or b!7118904 b!7118906) bm!650311))

(assert (= (or b!7118908 bm!650311) bm!650308))

(assert (= (or b!7118908 bm!650309) bm!650312))

(assert (= (or b!7118901 bm!650308) bm!650310))

(assert (= (or b!7118901 b!7118908) bm!650313))

(assert (=> b!7118900 m!7836352))

(declare-fun m!7836418 () Bool)

(assert (=> bm!650312 m!7836418))

(declare-fun m!7836420 () Bool)

(assert (=> bm!650313 m!7836420))

(declare-fun m!7836422 () Bool)

(assert (=> b!7118899 m!7836422))

(declare-fun m!7836424 () Bool)

(assert (=> bm!650310 m!7836424))

(assert (=> b!7118781 d!2221575))

(declare-fun bm!650314 () Bool)

(declare-fun call!650324 () (Set Context!13944))

(declare-fun call!650320 () (Set Context!13944))

(assert (=> bm!650314 (= call!650324 call!650320)))

(declare-fun b!7118909 () Bool)

(declare-fun e!4277568 () (Set Context!13944))

(declare-fun e!4277571 () (Set Context!13944))

(assert (=> b!7118909 (= e!4277568 e!4277571)))

(declare-fun c!1328512 () Bool)

(assert (=> b!7118909 (= c!1328512 (is-Concat!26823 (reg!18307 r!11554)))))

(declare-fun b!7118910 () Bool)

(declare-fun e!4277573 () (Set Context!13944))

(assert (=> b!7118910 (= e!4277573 (set.insert (Context!13945 ($colon$colon!2822 lt!2560955 r!11554)) (as set.empty (Set Context!13944))))))

(declare-fun b!7118911 () Bool)

(declare-fun e!4277570 () Bool)

(assert (=> b!7118911 (= e!4277570 (nullable!7615 (regOne!36468 (reg!18307 r!11554))))))

(declare-fun bm!650315 () Bool)

(declare-fun call!650322 () List!68939)

(declare-fun call!650323 () List!68939)

(assert (=> bm!650315 (= call!650322 call!650323)))

(declare-fun c!1328511 () Bool)

(declare-fun c!1328510 () Bool)

(declare-fun bm!650316 () Bool)

(assert (=> bm!650316 (= call!650320 (derivationStepZipperDown!2475 (ite c!1328510 (regTwo!36469 (reg!18307 r!11554)) (ite c!1328511 (regTwo!36468 (reg!18307 r!11554)) (ite c!1328512 (regOne!36468 (reg!18307 r!11554)) (reg!18307 (reg!18307 r!11554))))) (ite (or c!1328510 c!1328511) (Context!13945 ($colon$colon!2822 lt!2560955 r!11554)) (Context!13945 call!650322)) a!1901))))

(declare-fun b!7118912 () Bool)

(declare-fun e!4277569 () (Set Context!13944))

(declare-fun call!650319 () (Set Context!13944))

(assert (=> b!7118912 (= e!4277569 (set.union call!650319 call!650320))))

(declare-fun b!7118913 () Bool)

(declare-fun c!1328509 () Bool)

(assert (=> b!7118913 (= c!1328509 (is-Star!17978 (reg!18307 r!11554)))))

(declare-fun e!4277572 () (Set Context!13944))

(assert (=> b!7118913 (= e!4277571 e!4277572)))

(declare-fun b!7118914 () Bool)

(assert (=> b!7118914 (= e!4277572 (as set.empty (Set Context!13944)))))

(declare-fun bm!650317 () Bool)

(declare-fun call!650321 () (Set Context!13944))

(assert (=> bm!650317 (= call!650321 call!650324)))

(declare-fun b!7118915 () Bool)

(assert (=> b!7118915 (= e!4277571 call!650321)))

(declare-fun b!7118916 () Bool)

(assert (=> b!7118916 (= e!4277573 e!4277569)))

(assert (=> b!7118916 (= c!1328510 (is-Union!17978 (reg!18307 r!11554)))))

(declare-fun b!7118917 () Bool)

(assert (=> b!7118917 (= e!4277572 call!650321)))

(declare-fun d!2221577 () Bool)

(declare-fun c!1328508 () Bool)

(assert (=> d!2221577 (= c!1328508 (and (is-ElementMatch!17978 (reg!18307 r!11554)) (= (c!1328481 (reg!18307 r!11554)) a!1901)))))

(assert (=> d!2221577 (= (derivationStepZipperDown!2475 (reg!18307 r!11554) (Context!13945 ($colon$colon!2822 lt!2560955 r!11554)) a!1901) e!4277573)))

(declare-fun bm!650318 () Bool)

(assert (=> bm!650318 (= call!650323 ($colon$colon!2822 (exprs!7472 (Context!13945 ($colon$colon!2822 lt!2560955 r!11554))) (ite (or c!1328511 c!1328512) (regTwo!36468 (reg!18307 r!11554)) (reg!18307 r!11554))))))

(declare-fun b!7118918 () Bool)

(assert (=> b!7118918 (= c!1328511 e!4277570)))

(declare-fun res!2904239 () Bool)

(assert (=> b!7118918 (=> (not res!2904239) (not e!4277570))))

(assert (=> b!7118918 (= res!2904239 (is-Concat!26823 (reg!18307 r!11554)))))

(assert (=> b!7118918 (= e!4277569 e!4277568)))

(declare-fun b!7118919 () Bool)

(assert (=> b!7118919 (= e!4277568 (set.union call!650319 call!650324))))

(declare-fun bm!650319 () Bool)

(assert (=> bm!650319 (= call!650319 (derivationStepZipperDown!2475 (ite c!1328510 (regOne!36469 (reg!18307 r!11554)) (regOne!36468 (reg!18307 r!11554))) (ite c!1328510 (Context!13945 ($colon$colon!2822 lt!2560955 r!11554)) (Context!13945 call!650323)) a!1901))))

(assert (= (and d!2221577 c!1328508) b!7118910))

(assert (= (and d!2221577 (not c!1328508)) b!7118916))

(assert (= (and b!7118916 c!1328510) b!7118912))

(assert (= (and b!7118916 (not c!1328510)) b!7118918))

(assert (= (and b!7118918 res!2904239) b!7118911))

(assert (= (and b!7118918 c!1328511) b!7118919))

(assert (= (and b!7118918 (not c!1328511)) b!7118909))

(assert (= (and b!7118909 c!1328512) b!7118915))

(assert (= (and b!7118909 (not c!1328512)) b!7118913))

(assert (= (and b!7118913 c!1328509) b!7118917))

(assert (= (and b!7118913 (not c!1328509)) b!7118914))

(assert (= (or b!7118915 b!7118917) bm!650315))

(assert (= (or b!7118915 b!7118917) bm!650317))

(assert (= (or b!7118919 bm!650317) bm!650314))

(assert (= (or b!7118919 bm!650315) bm!650318))

(assert (= (or b!7118912 bm!650314) bm!650316))

(assert (= (or b!7118912 b!7118919) bm!650319))

(declare-fun m!7836426 () Bool)

(assert (=> b!7118911 m!7836426))

(declare-fun m!7836428 () Bool)

(assert (=> bm!650318 m!7836428))

(declare-fun m!7836430 () Bool)

(assert (=> bm!650319 m!7836430))

(declare-fun m!7836432 () Bool)

(assert (=> b!7118910 m!7836432))

(declare-fun m!7836434 () Bool)

(assert (=> bm!650316 m!7836434))

(assert (=> b!7118781 d!2221577))

(declare-fun d!2221579 () Bool)

(assert (=> d!2221579 (= ($colon$colon!2822 lt!2560955 r!11554) (Cons!68815 r!11554 lt!2560955))))

(assert (=> b!7118781 d!2221579))

(declare-fun bm!650320 () Bool)

(declare-fun call!650330 () (Set Context!13944))

(declare-fun call!650326 () (Set Context!13944))

(assert (=> bm!650320 (= call!650330 call!650326)))

(declare-fun b!7118920 () Bool)

(declare-fun e!4277574 () (Set Context!13944))

(declare-fun e!4277577 () (Set Context!13944))

(assert (=> b!7118920 (= e!4277574 e!4277577)))

(declare-fun c!1328517 () Bool)

(assert (=> b!7118920 (= c!1328517 (is-Concat!26823 (reg!18307 r!11554)))))

(declare-fun b!7118921 () Bool)

(declare-fun e!4277579 () (Set Context!13944))

(assert (=> b!7118921 (= e!4277579 (set.insert lt!2560954 (as set.empty (Set Context!13944))))))

(declare-fun b!7118922 () Bool)

(declare-fun e!4277576 () Bool)

(assert (=> b!7118922 (= e!4277576 (nullable!7615 (regOne!36468 (reg!18307 r!11554))))))

(declare-fun bm!650321 () Bool)

(declare-fun call!650328 () List!68939)

(declare-fun call!650329 () List!68939)

(assert (=> bm!650321 (= call!650328 call!650329)))

(declare-fun c!1328515 () Bool)

(declare-fun bm!650322 () Bool)

(declare-fun c!1328516 () Bool)

(assert (=> bm!650322 (= call!650326 (derivationStepZipperDown!2475 (ite c!1328515 (regTwo!36469 (reg!18307 r!11554)) (ite c!1328516 (regTwo!36468 (reg!18307 r!11554)) (ite c!1328517 (regOne!36468 (reg!18307 r!11554)) (reg!18307 (reg!18307 r!11554))))) (ite (or c!1328515 c!1328516) lt!2560954 (Context!13945 call!650328)) a!1901))))

(declare-fun b!7118923 () Bool)

(declare-fun e!4277575 () (Set Context!13944))

(declare-fun call!650325 () (Set Context!13944))

(assert (=> b!7118923 (= e!4277575 (set.union call!650325 call!650326))))

(declare-fun b!7118924 () Bool)

(declare-fun c!1328514 () Bool)

(assert (=> b!7118924 (= c!1328514 (is-Star!17978 (reg!18307 r!11554)))))

(declare-fun e!4277578 () (Set Context!13944))

(assert (=> b!7118924 (= e!4277577 e!4277578)))

(declare-fun b!7118925 () Bool)

(assert (=> b!7118925 (= e!4277578 (as set.empty (Set Context!13944)))))

(declare-fun bm!650323 () Bool)

(declare-fun call!650327 () (Set Context!13944))

(assert (=> bm!650323 (= call!650327 call!650330)))

(declare-fun b!7118926 () Bool)

(assert (=> b!7118926 (= e!4277577 call!650327)))

(declare-fun b!7118927 () Bool)

(assert (=> b!7118927 (= e!4277579 e!4277575)))

(assert (=> b!7118927 (= c!1328515 (is-Union!17978 (reg!18307 r!11554)))))

(declare-fun b!7118928 () Bool)

(assert (=> b!7118928 (= e!4277578 call!650327)))

(declare-fun d!2221581 () Bool)

(declare-fun c!1328513 () Bool)

(assert (=> d!2221581 (= c!1328513 (and (is-ElementMatch!17978 (reg!18307 r!11554)) (= (c!1328481 (reg!18307 r!11554)) a!1901)))))

(assert (=> d!2221581 (= (derivationStepZipperDown!2475 (reg!18307 r!11554) lt!2560954 a!1901) e!4277579)))

(declare-fun bm!650324 () Bool)

(assert (=> bm!650324 (= call!650329 ($colon$colon!2822 (exprs!7472 lt!2560954) (ite (or c!1328516 c!1328517) (regTwo!36468 (reg!18307 r!11554)) (reg!18307 r!11554))))))

(declare-fun b!7118929 () Bool)

(assert (=> b!7118929 (= c!1328516 e!4277576)))

(declare-fun res!2904240 () Bool)

(assert (=> b!7118929 (=> (not res!2904240) (not e!4277576))))

(assert (=> b!7118929 (= res!2904240 (is-Concat!26823 (reg!18307 r!11554)))))

(assert (=> b!7118929 (= e!4277575 e!4277574)))

(declare-fun b!7118930 () Bool)

(assert (=> b!7118930 (= e!4277574 (set.union call!650325 call!650330))))

(declare-fun bm!650325 () Bool)

(assert (=> bm!650325 (= call!650325 (derivationStepZipperDown!2475 (ite c!1328515 (regOne!36469 (reg!18307 r!11554)) (regOne!36468 (reg!18307 r!11554))) (ite c!1328515 lt!2560954 (Context!13945 call!650329)) a!1901))))

(assert (= (and d!2221581 c!1328513) b!7118921))

(assert (= (and d!2221581 (not c!1328513)) b!7118927))

(assert (= (and b!7118927 c!1328515) b!7118923))

(assert (= (and b!7118927 (not c!1328515)) b!7118929))

(assert (= (and b!7118929 res!2904240) b!7118922))

(assert (= (and b!7118929 c!1328516) b!7118930))

(assert (= (and b!7118929 (not c!1328516)) b!7118920))

(assert (= (and b!7118920 c!1328517) b!7118926))

(assert (= (and b!7118920 (not c!1328517)) b!7118924))

(assert (= (and b!7118924 c!1328514) b!7118928))

(assert (= (and b!7118924 (not c!1328514)) b!7118925))

(assert (= (or b!7118926 b!7118928) bm!650321))

(assert (= (or b!7118926 b!7118928) bm!650323))

(assert (= (or b!7118930 bm!650323) bm!650320))

(assert (= (or b!7118930 bm!650321) bm!650324))

(assert (= (or b!7118923 bm!650320) bm!650322))

(assert (= (or b!7118923 b!7118930) bm!650325))

(assert (=> b!7118922 m!7836426))

(declare-fun m!7836436 () Bool)

(assert (=> bm!650324 m!7836436))

(declare-fun m!7836438 () Bool)

(assert (=> bm!650325 m!7836438))

(declare-fun m!7836440 () Bool)

(assert (=> b!7118921 m!7836440))

(declare-fun m!7836442 () Bool)

(assert (=> bm!650322 m!7836442))

(assert (=> b!7118780 d!2221581))

(declare-fun d!2221583 () Bool)

(assert (=> d!2221583 (forall!16866 (++!16130 lt!2560953 (exprs!7472 auxCtx!45)) lambda!432518)))

(declare-fun lt!2560991 () Unit!162627)

(declare-fun choose!54900 (List!68939 List!68939 Int) Unit!162627)

(assert (=> d!2221583 (= lt!2560991 (choose!54900 lt!2560953 (exprs!7472 auxCtx!45) lambda!432518))))

(assert (=> d!2221583 (forall!16866 lt!2560953 lambda!432518)))

(assert (=> d!2221583 (= (lemmaConcatPreservesForall!1263 lt!2560953 (exprs!7472 auxCtx!45) lambda!432518) lt!2560991)))

(declare-fun bs!1885704 () Bool)

(assert (= bs!1885704 d!2221583))

(assert (=> bs!1885704 m!7836360))

(assert (=> bs!1885704 m!7836360))

(declare-fun m!7836444 () Bool)

(assert (=> bs!1885704 m!7836444))

(declare-fun m!7836446 () Bool)

(assert (=> bs!1885704 m!7836446))

(declare-fun m!7836448 () Bool)

(assert (=> bs!1885704 m!7836448))

(assert (=> b!7118780 d!2221583))

(declare-fun bs!1885705 () Bool)

(declare-fun d!2221585 () Bool)

(assert (= bs!1885705 (and d!2221585 b!7118779)))

(declare-fun lambda!432534 () Int)

(assert (=> bs!1885705 (= lambda!432534 lambda!432518)))

(declare-fun bs!1885706 () Bool)

(assert (= bs!1885706 (and d!2221585 d!2221569)))

(assert (=> bs!1885706 (= lambda!432534 lambda!432530)))

(declare-fun bs!1885707 () Bool)

(assert (= bs!1885707 (and d!2221585 d!2221571)))

(assert (=> bs!1885707 (= lambda!432534 lambda!432531)))

(assert (=> d!2221585 (= (derivationStepZipperDown!2475 (reg!18307 r!11554) (Context!13945 (++!16130 (exprs!7472 lt!2560954) (exprs!7472 auxCtx!45))) a!1901) (appendTo!943 (derivationStepZipperDown!2475 (reg!18307 r!11554) lt!2560954 a!1901) auxCtx!45))))

(declare-fun lt!2560997 () Unit!162627)

(assert (=> d!2221585 (= lt!2560997 (lemmaConcatPreservesForall!1263 (exprs!7472 lt!2560954) (exprs!7472 auxCtx!45) lambda!432534))))

(declare-fun lt!2560996 () Unit!162627)

(declare-fun choose!54901 (Context!13944 Regex!17978 C!36226 Context!13944) Unit!162627)

(assert (=> d!2221585 (= lt!2560996 (choose!54901 lt!2560954 (reg!18307 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2221585 (validRegex!9251 (reg!18307 r!11554))))

(assert (=> d!2221585 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!241 lt!2560954 (reg!18307 r!11554) a!1901 auxCtx!45) lt!2560996)))

(declare-fun bs!1885708 () Bool)

(assert (= bs!1885708 d!2221585))

(declare-fun m!7836456 () Bool)

(assert (=> bs!1885708 m!7836456))

(declare-fun m!7836458 () Bool)

(assert (=> bs!1885708 m!7836458))

(declare-fun m!7836460 () Bool)

(assert (=> bs!1885708 m!7836460))

(assert (=> bs!1885708 m!7836354))

(assert (=> bs!1885708 m!7836356))

(declare-fun m!7836462 () Bool)

(assert (=> bs!1885708 m!7836462))

(declare-fun m!7836464 () Bool)

(assert (=> bs!1885708 m!7836464))

(assert (=> bs!1885708 m!7836354))

(assert (=> b!7118780 d!2221585))

(declare-fun d!2221589 () Bool)

(assert (=> d!2221589 true))

(declare-fun lambda!432539 () Int)

(declare-fun map!16308 ((Set Context!13944) Int) (Set Context!13944))

(assert (=> d!2221589 (= (appendTo!943 (derivationStepZipperDown!2475 (reg!18307 r!11554) lt!2560954 a!1901) auxCtx!45) (map!16308 (derivationStepZipperDown!2475 (reg!18307 r!11554) lt!2560954 a!1901) lambda!432539))))

(declare-fun bs!1885709 () Bool)

(assert (= bs!1885709 d!2221589))

(assert (=> bs!1885709 m!7836354))

(declare-fun m!7836466 () Bool)

(assert (=> bs!1885709 m!7836466))

(assert (=> b!7118780 d!2221589))

(declare-fun d!2221591 () Bool)

(assert (=> d!2221591 (= ($colon$colon!2822 (exprs!7472 c!9994) r!11554) (Cons!68815 r!11554 (exprs!7472 c!9994)))))

(assert (=> b!7118780 d!2221591))

(declare-fun d!2221593 () Bool)

(assert (=> d!2221593 (forall!16866 (++!16130 (exprs!7472 c!9994) (exprs!7472 auxCtx!45)) lambda!432518)))

(declare-fun lt!2561002 () Unit!162627)

(assert (=> d!2221593 (= lt!2561002 (choose!54900 (exprs!7472 c!9994) (exprs!7472 auxCtx!45) lambda!432518))))

(assert (=> d!2221593 (forall!16866 (exprs!7472 c!9994) lambda!432518)))

(assert (=> d!2221593 (= (lemmaConcatPreservesForall!1263 (exprs!7472 c!9994) (exprs!7472 auxCtx!45) lambda!432518) lt!2561002)))

(declare-fun bs!1885710 () Bool)

(assert (= bs!1885710 d!2221593))

(assert (=> bs!1885710 m!7836342))

(assert (=> bs!1885710 m!7836342))

(declare-fun m!7836468 () Bool)

(assert (=> bs!1885710 m!7836468))

(declare-fun m!7836470 () Bool)

(assert (=> bs!1885710 m!7836470))

(declare-fun m!7836472 () Bool)

(assert (=> bs!1885710 m!7836472))

(assert (=> b!7118780 d!2221593))

(declare-fun bm!650329 () Bool)

(declare-fun call!650339 () (Set Context!13944))

(declare-fun call!650335 () (Set Context!13944))

(assert (=> bm!650329 (= call!650339 call!650335)))

(declare-fun b!7118950 () Bool)

(declare-fun e!4277591 () (Set Context!13944))

(declare-fun e!4277594 () (Set Context!13944))

(assert (=> b!7118950 (= e!4277591 e!4277594)))

(declare-fun c!1328528 () Bool)

(assert (=> b!7118950 (= c!1328528 (is-Concat!26823 (reg!18307 r!11554)))))

(declare-fun b!7118951 () Bool)

(declare-fun e!4277596 () (Set Context!13944))

(assert (=> b!7118951 (= e!4277596 (set.insert (Context!13945 (++!16130 lt!2560953 (exprs!7472 auxCtx!45))) (as set.empty (Set Context!13944))))))

(declare-fun b!7118952 () Bool)

(declare-fun e!4277593 () Bool)

(assert (=> b!7118952 (= e!4277593 (nullable!7615 (regOne!36468 (reg!18307 r!11554))))))

(declare-fun bm!650330 () Bool)

(declare-fun call!650337 () List!68939)

(declare-fun call!650338 () List!68939)

(assert (=> bm!650330 (= call!650337 call!650338)))

(declare-fun bm!650331 () Bool)

(declare-fun c!1328526 () Bool)

(declare-fun c!1328527 () Bool)

(assert (=> bm!650331 (= call!650335 (derivationStepZipperDown!2475 (ite c!1328526 (regTwo!36469 (reg!18307 r!11554)) (ite c!1328527 (regTwo!36468 (reg!18307 r!11554)) (ite c!1328528 (regOne!36468 (reg!18307 r!11554)) (reg!18307 (reg!18307 r!11554))))) (ite (or c!1328526 c!1328527) (Context!13945 (++!16130 lt!2560953 (exprs!7472 auxCtx!45))) (Context!13945 call!650337)) a!1901))))

(declare-fun b!7118953 () Bool)

(declare-fun e!4277592 () (Set Context!13944))

(declare-fun call!650334 () (Set Context!13944))

(assert (=> b!7118953 (= e!4277592 (set.union call!650334 call!650335))))

(declare-fun b!7118954 () Bool)

(declare-fun c!1328525 () Bool)

(assert (=> b!7118954 (= c!1328525 (is-Star!17978 (reg!18307 r!11554)))))

(declare-fun e!4277595 () (Set Context!13944))

(assert (=> b!7118954 (= e!4277594 e!4277595)))

(declare-fun b!7118955 () Bool)

(assert (=> b!7118955 (= e!4277595 (as set.empty (Set Context!13944)))))

(declare-fun bm!650332 () Bool)

(declare-fun call!650336 () (Set Context!13944))

(assert (=> bm!650332 (= call!650336 call!650339)))

(declare-fun b!7118956 () Bool)

(assert (=> b!7118956 (= e!4277594 call!650336)))

(declare-fun b!7118957 () Bool)

(assert (=> b!7118957 (= e!4277596 e!4277592)))

(assert (=> b!7118957 (= c!1328526 (is-Union!17978 (reg!18307 r!11554)))))

(declare-fun b!7118958 () Bool)

(assert (=> b!7118958 (= e!4277595 call!650336)))

(declare-fun d!2221595 () Bool)

(declare-fun c!1328524 () Bool)

(assert (=> d!2221595 (= c!1328524 (and (is-ElementMatch!17978 (reg!18307 r!11554)) (= (c!1328481 (reg!18307 r!11554)) a!1901)))))

(assert (=> d!2221595 (= (derivationStepZipperDown!2475 (reg!18307 r!11554) (Context!13945 (++!16130 lt!2560953 (exprs!7472 auxCtx!45))) a!1901) e!4277596)))

(declare-fun bm!650333 () Bool)

(assert (=> bm!650333 (= call!650338 ($colon$colon!2822 (exprs!7472 (Context!13945 (++!16130 lt!2560953 (exprs!7472 auxCtx!45)))) (ite (or c!1328527 c!1328528) (regTwo!36468 (reg!18307 r!11554)) (reg!18307 r!11554))))))

(declare-fun b!7118959 () Bool)

(assert (=> b!7118959 (= c!1328527 e!4277593)))

(declare-fun res!2904250 () Bool)

(assert (=> b!7118959 (=> (not res!2904250) (not e!4277593))))

(assert (=> b!7118959 (= res!2904250 (is-Concat!26823 (reg!18307 r!11554)))))

(assert (=> b!7118959 (= e!4277592 e!4277591)))

(declare-fun b!7118960 () Bool)

(assert (=> b!7118960 (= e!4277591 (set.union call!650334 call!650339))))

(declare-fun bm!650334 () Bool)

(assert (=> bm!650334 (= call!650334 (derivationStepZipperDown!2475 (ite c!1328526 (regOne!36469 (reg!18307 r!11554)) (regOne!36468 (reg!18307 r!11554))) (ite c!1328526 (Context!13945 (++!16130 lt!2560953 (exprs!7472 auxCtx!45))) (Context!13945 call!650338)) a!1901))))

(assert (= (and d!2221595 c!1328524) b!7118951))

(assert (= (and d!2221595 (not c!1328524)) b!7118957))

(assert (= (and b!7118957 c!1328526) b!7118953))

(assert (= (and b!7118957 (not c!1328526)) b!7118959))

(assert (= (and b!7118959 res!2904250) b!7118952))

(assert (= (and b!7118959 c!1328527) b!7118960))

(assert (= (and b!7118959 (not c!1328527)) b!7118950))

(assert (= (and b!7118950 c!1328528) b!7118956))

(assert (= (and b!7118950 (not c!1328528)) b!7118954))

(assert (= (and b!7118954 c!1328525) b!7118958))

(assert (= (and b!7118954 (not c!1328525)) b!7118955))

(assert (= (or b!7118956 b!7118958) bm!650330))

(assert (= (or b!7118956 b!7118958) bm!650332))

(assert (= (or b!7118960 bm!650332) bm!650329))

(assert (= (or b!7118960 bm!650330) bm!650333))

(assert (= (or b!7118953 bm!650329) bm!650331))

(assert (= (or b!7118953 b!7118960) bm!650334))

(assert (=> b!7118952 m!7836426))

(declare-fun m!7836474 () Bool)

(assert (=> bm!650333 m!7836474))

(declare-fun m!7836476 () Bool)

(assert (=> bm!650334 m!7836476))

(declare-fun m!7836478 () Bool)

(assert (=> b!7118951 m!7836478))

(declare-fun m!7836480 () Bool)

(assert (=> bm!650331 m!7836480))

(assert (=> b!7118780 d!2221595))

(declare-fun b!7118974 () Bool)

(declare-fun e!4277604 () List!68939)

(assert (=> b!7118974 (= e!4277604 (Cons!68815 (h!75263 lt!2560953) (++!16130 (t!382796 lt!2560953) (exprs!7472 auxCtx!45))))))

(declare-fun b!7118975 () Bool)

(declare-fun res!2904258 () Bool)

(declare-fun e!4277603 () Bool)

(assert (=> b!7118975 (=> (not res!2904258) (not e!4277603))))

(declare-fun lt!2561006 () List!68939)

(declare-fun size!41425 (List!68939) Int)

(assert (=> b!7118975 (= res!2904258 (= (size!41425 lt!2561006) (+ (size!41425 lt!2560953) (size!41425 (exprs!7472 auxCtx!45)))))))

(declare-fun b!7118976 () Bool)

(assert (=> b!7118976 (= e!4277603 (or (not (= (exprs!7472 auxCtx!45) Nil!68815)) (= lt!2561006 lt!2560953)))))

(declare-fun b!7118973 () Bool)

(assert (=> b!7118973 (= e!4277604 (exprs!7472 auxCtx!45))))

(declare-fun d!2221597 () Bool)

(assert (=> d!2221597 e!4277603))

(declare-fun res!2904257 () Bool)

(assert (=> d!2221597 (=> (not res!2904257) (not e!4277603))))

(declare-fun content!14050 (List!68939) (Set Regex!17978))

(assert (=> d!2221597 (= res!2904257 (= (content!14050 lt!2561006) (set.union (content!14050 lt!2560953) (content!14050 (exprs!7472 auxCtx!45)))))))

(assert (=> d!2221597 (= lt!2561006 e!4277604)))

(declare-fun c!1328532 () Bool)

(assert (=> d!2221597 (= c!1328532 (is-Nil!68815 lt!2560953))))

(assert (=> d!2221597 (= (++!16130 lt!2560953 (exprs!7472 auxCtx!45)) lt!2561006)))

(assert (= (and d!2221597 c!1328532) b!7118973))

(assert (= (and d!2221597 (not c!1328532)) b!7118974))

(assert (= (and d!2221597 res!2904257) b!7118975))

(assert (= (and b!7118975 res!2904258) b!7118976))

(declare-fun m!7836496 () Bool)

(assert (=> b!7118974 m!7836496))

(declare-fun m!7836498 () Bool)

(assert (=> b!7118975 m!7836498))

(declare-fun m!7836500 () Bool)

(assert (=> b!7118975 m!7836500))

(declare-fun m!7836502 () Bool)

(assert (=> b!7118975 m!7836502))

(declare-fun m!7836504 () Bool)

(assert (=> d!2221597 m!7836504))

(declare-fun m!7836506 () Bool)

(assert (=> d!2221597 m!7836506))

(declare-fun m!7836508 () Bool)

(assert (=> d!2221597 m!7836508))

(assert (=> b!7118780 d!2221597))

(declare-fun bs!1885711 () Bool)

(declare-fun d!2221601 () Bool)

(assert (= bs!1885711 (and d!2221601 b!7118779)))

(declare-fun lambda!432540 () Int)

(assert (=> bs!1885711 (= lambda!432540 lambda!432518)))

(declare-fun bs!1885712 () Bool)

(assert (= bs!1885712 (and d!2221601 d!2221569)))

(assert (=> bs!1885712 (= lambda!432540 lambda!432530)))

(declare-fun bs!1885713 () Bool)

(assert (= bs!1885713 (and d!2221601 d!2221571)))

(assert (=> bs!1885713 (= lambda!432540 lambda!432531)))

(declare-fun bs!1885714 () Bool)

(assert (= bs!1885714 (and d!2221601 d!2221585)))

(assert (=> bs!1885714 (= lambda!432540 lambda!432534)))

(assert (=> d!2221601 (= (inv!87809 lt!2560956) (forall!16866 (exprs!7472 lt!2560956) lambda!432540))))

(declare-fun bs!1885715 () Bool)

(assert (= bs!1885715 d!2221601))

(declare-fun m!7836510 () Bool)

(assert (=> bs!1885715 m!7836510))

(assert (=> b!7118780 d!2221601))

(assert (=> b!7118779 d!2221567))

(declare-fun b!7118978 () Bool)

(declare-fun e!4277606 () List!68939)

(assert (=> b!7118978 (= e!4277606 (Cons!68815 (h!75263 (exprs!7472 c!9994)) (++!16130 (t!382796 (exprs!7472 c!9994)) (exprs!7472 auxCtx!45))))))

(declare-fun b!7118979 () Bool)

(declare-fun res!2904260 () Bool)

(declare-fun e!4277605 () Bool)

(assert (=> b!7118979 (=> (not res!2904260) (not e!4277605))))

(declare-fun lt!2561009 () List!68939)

(assert (=> b!7118979 (= res!2904260 (= (size!41425 lt!2561009) (+ (size!41425 (exprs!7472 c!9994)) (size!41425 (exprs!7472 auxCtx!45)))))))

(declare-fun b!7118980 () Bool)

(assert (=> b!7118980 (= e!4277605 (or (not (= (exprs!7472 auxCtx!45) Nil!68815)) (= lt!2561009 (exprs!7472 c!9994))))))

(declare-fun b!7118977 () Bool)

(assert (=> b!7118977 (= e!4277606 (exprs!7472 auxCtx!45))))

(declare-fun d!2221603 () Bool)

(assert (=> d!2221603 e!4277605))

(declare-fun res!2904259 () Bool)

(assert (=> d!2221603 (=> (not res!2904259) (not e!4277605))))

(assert (=> d!2221603 (= res!2904259 (= (content!14050 lt!2561009) (set.union (content!14050 (exprs!7472 c!9994)) (content!14050 (exprs!7472 auxCtx!45)))))))

(assert (=> d!2221603 (= lt!2561009 e!4277606)))

(declare-fun c!1328533 () Bool)

(assert (=> d!2221603 (= c!1328533 (is-Nil!68815 (exprs!7472 c!9994)))))

(assert (=> d!2221603 (= (++!16130 (exprs!7472 c!9994) (exprs!7472 auxCtx!45)) lt!2561009)))

(assert (= (and d!2221603 c!1328533) b!7118977))

(assert (= (and d!2221603 (not c!1328533)) b!7118978))

(assert (= (and d!2221603 res!2904259) b!7118979))

(assert (= (and b!7118979 res!2904260) b!7118980))

(declare-fun m!7836512 () Bool)

(assert (=> b!7118978 m!7836512))

(declare-fun m!7836514 () Bool)

(assert (=> b!7118979 m!7836514))

(declare-fun m!7836516 () Bool)

(assert (=> b!7118979 m!7836516))

(assert (=> b!7118979 m!7836502))

(declare-fun m!7836518 () Bool)

(assert (=> d!2221603 m!7836518))

(declare-fun m!7836520 () Bool)

(assert (=> d!2221603 m!7836520))

(assert (=> d!2221603 m!7836508))

(assert (=> b!7118779 d!2221603))

(assert (=> b!7118779 d!2221593))

(declare-fun d!2221605 () Bool)

(declare-fun nullableFct!2956 (Regex!17978) Bool)

(assert (=> d!2221605 (= (nullable!7615 (regOne!36468 r!11554)) (nullableFct!2956 (regOne!36468 r!11554)))))

(declare-fun bs!1885716 () Bool)

(assert (= bs!1885716 d!2221605))

(declare-fun m!7836522 () Bool)

(assert (=> bs!1885716 m!7836522))

(assert (=> b!7118788 d!2221605))

(declare-fun b!7118991 () Bool)

(declare-fun e!4277609 () Bool)

(assert (=> b!7118991 (= e!4277609 tp_is_empty!45189)))

(declare-fun b!7118993 () Bool)

(declare-fun tp!1959710 () Bool)

(assert (=> b!7118993 (= e!4277609 tp!1959710)))

(declare-fun b!7118994 () Bool)

(declare-fun tp!1959711 () Bool)

(declare-fun tp!1959713 () Bool)

(assert (=> b!7118994 (= e!4277609 (and tp!1959711 tp!1959713))))

(assert (=> b!7118786 (= tp!1959677 e!4277609)))

(declare-fun b!7118992 () Bool)

(declare-fun tp!1959712 () Bool)

(declare-fun tp!1959709 () Bool)

(assert (=> b!7118992 (= e!4277609 (and tp!1959712 tp!1959709))))

(assert (= (and b!7118786 (is-ElementMatch!17978 (regOne!36468 r!11554))) b!7118991))

(assert (= (and b!7118786 (is-Concat!26823 (regOne!36468 r!11554))) b!7118992))

(assert (= (and b!7118786 (is-Star!17978 (regOne!36468 r!11554))) b!7118993))

(assert (= (and b!7118786 (is-Union!17978 (regOne!36468 r!11554))) b!7118994))

(declare-fun b!7118995 () Bool)

(declare-fun e!4277610 () Bool)

(assert (=> b!7118995 (= e!4277610 tp_is_empty!45189)))

(declare-fun b!7118997 () Bool)

(declare-fun tp!1959715 () Bool)

(assert (=> b!7118997 (= e!4277610 tp!1959715)))

(declare-fun b!7118998 () Bool)

(declare-fun tp!1959716 () Bool)

(declare-fun tp!1959718 () Bool)

(assert (=> b!7118998 (= e!4277610 (and tp!1959716 tp!1959718))))

(assert (=> b!7118786 (= tp!1959676 e!4277610)))

(declare-fun b!7118996 () Bool)

(declare-fun tp!1959717 () Bool)

(declare-fun tp!1959714 () Bool)

(assert (=> b!7118996 (= e!4277610 (and tp!1959717 tp!1959714))))

(assert (= (and b!7118786 (is-ElementMatch!17978 (regTwo!36468 r!11554))) b!7118995))

(assert (= (and b!7118786 (is-Concat!26823 (regTwo!36468 r!11554))) b!7118996))

(assert (= (and b!7118786 (is-Star!17978 (regTwo!36468 r!11554))) b!7118997))

(assert (= (and b!7118786 (is-Union!17978 (regTwo!36468 r!11554))) b!7118998))

(declare-fun b!7118999 () Bool)

(declare-fun e!4277611 () Bool)

(assert (=> b!7118999 (= e!4277611 tp_is_empty!45189)))

(declare-fun b!7119001 () Bool)

(declare-fun tp!1959720 () Bool)

(assert (=> b!7119001 (= e!4277611 tp!1959720)))

(declare-fun b!7119002 () Bool)

(declare-fun tp!1959721 () Bool)

(declare-fun tp!1959723 () Bool)

(assert (=> b!7119002 (= e!4277611 (and tp!1959721 tp!1959723))))

(assert (=> b!7118791 (= tp!1959675 e!4277611)))

(declare-fun b!7119000 () Bool)

(declare-fun tp!1959722 () Bool)

(declare-fun tp!1959719 () Bool)

(assert (=> b!7119000 (= e!4277611 (and tp!1959722 tp!1959719))))

(assert (= (and b!7118791 (is-ElementMatch!17978 (reg!18307 r!11554))) b!7118999))

(assert (= (and b!7118791 (is-Concat!26823 (reg!18307 r!11554))) b!7119000))

(assert (= (and b!7118791 (is-Star!17978 (reg!18307 r!11554))) b!7119001))

(assert (= (and b!7118791 (is-Union!17978 (reg!18307 r!11554))) b!7119002))

(declare-fun b!7119003 () Bool)

(declare-fun e!4277612 () Bool)

(assert (=> b!7119003 (= e!4277612 tp_is_empty!45189)))

(declare-fun b!7119005 () Bool)

(declare-fun tp!1959725 () Bool)

(assert (=> b!7119005 (= e!4277612 tp!1959725)))

(declare-fun b!7119006 () Bool)

(declare-fun tp!1959726 () Bool)

(declare-fun tp!1959728 () Bool)

(assert (=> b!7119006 (= e!4277612 (and tp!1959726 tp!1959728))))

(assert (=> b!7118790 (= tp!1959673 e!4277612)))

(declare-fun b!7119004 () Bool)

(declare-fun tp!1959727 () Bool)

(declare-fun tp!1959724 () Bool)

(assert (=> b!7119004 (= e!4277612 (and tp!1959727 tp!1959724))))

(assert (= (and b!7118790 (is-ElementMatch!17978 (regOne!36469 r!11554))) b!7119003))

(assert (= (and b!7118790 (is-Concat!26823 (regOne!36469 r!11554))) b!7119004))

(assert (= (and b!7118790 (is-Star!17978 (regOne!36469 r!11554))) b!7119005))

(assert (= (and b!7118790 (is-Union!17978 (regOne!36469 r!11554))) b!7119006))

(declare-fun b!7119007 () Bool)

(declare-fun e!4277613 () Bool)

(assert (=> b!7119007 (= e!4277613 tp_is_empty!45189)))

(declare-fun b!7119009 () Bool)

(declare-fun tp!1959730 () Bool)

(assert (=> b!7119009 (= e!4277613 tp!1959730)))

(declare-fun b!7119010 () Bool)

(declare-fun tp!1959731 () Bool)

(declare-fun tp!1959733 () Bool)

(assert (=> b!7119010 (= e!4277613 (and tp!1959731 tp!1959733))))

(assert (=> b!7118790 (= tp!1959672 e!4277613)))

(declare-fun b!7119008 () Bool)

(declare-fun tp!1959732 () Bool)

(declare-fun tp!1959729 () Bool)

(assert (=> b!7119008 (= e!4277613 (and tp!1959732 tp!1959729))))

(assert (= (and b!7118790 (is-ElementMatch!17978 (regTwo!36469 r!11554))) b!7119007))

(assert (= (and b!7118790 (is-Concat!26823 (regTwo!36469 r!11554))) b!7119008))

(assert (= (and b!7118790 (is-Star!17978 (regTwo!36469 r!11554))) b!7119009))

(assert (= (and b!7118790 (is-Union!17978 (regTwo!36469 r!11554))) b!7119010))

(declare-fun b!7119015 () Bool)

(declare-fun e!4277616 () Bool)

(declare-fun tp!1959738 () Bool)

(declare-fun tp!1959739 () Bool)

(assert (=> b!7119015 (= e!4277616 (and tp!1959738 tp!1959739))))

(assert (=> b!7118785 (= tp!1959674 e!4277616)))

(assert (= (and b!7118785 (is-Cons!68815 (exprs!7472 auxCtx!45))) b!7119015))

(declare-fun b!7119016 () Bool)

(declare-fun e!4277617 () Bool)

(declare-fun tp!1959740 () Bool)

(declare-fun tp!1959741 () Bool)

(assert (=> b!7119016 (= e!4277617 (and tp!1959740 tp!1959741))))

(assert (=> b!7118784 (= tp!1959671 e!4277617)))

(assert (= (and b!7118784 (is-Cons!68815 (exprs!7472 c!9994))) b!7119016))

(push 1)

(assert (not d!2221569))

(assert (not bm!650322))

(assert (not b!7118992))

(assert (not b!7118974))

(assert (not b!7118900))

(assert (not b!7119005))

(assert (not b!7118997))

(assert (not b!7118978))

(assert (not d!2221597))

(assert (not b!7118952))

(assert (not b!7118922))

(assert (not b!7119015))

(assert (not d!2221601))

(assert (not d!2221571))

(assert (not b!7118975))

(assert (not bm!650312))

(assert (not b!7118979))

(assert (not d!2221583))

(assert (not bm!650331))

(assert (not b!7118911))

(assert (not bm!650334))

(assert (not bm!650318))

(assert (not d!2221589))

(assert (not bm!650324))

(assert (not b!7119004))

(assert (not b!7118994))

(assert (not b!7118850))

(assert (not d!2221603))

(assert (not bm!650333))

(assert (not bm!650289))

(assert (not b!7119002))

(assert (not b!7119009))

(assert (not b!7119006))

(assert (not b!7119001))

(assert (not b!7119016))

(assert (not b!7119010))

(assert (not b!7118993))

(assert (not bm!650313))

(assert (not b!7119008))

(assert (not bm!650325))

(assert (not b!7118998))

(assert (not b!7118996))

(assert (not d!2221605))

(assert (not bm!650288))

(assert (not bm!650319))

(assert (not d!2221593))

(assert (not b!7119000))

(assert (not d!2221585))

(assert (not bm!650316))

(assert tp_is_empty!45189)

(assert (not bm!650310))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

