; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!690966 () Bool)

(assert start!690966)

(declare-fun b!7098287 () Bool)

(declare-fun e!4266702 () Bool)

(declare-datatypes ((C!35978 0))(
  ( (C!35979 (val!27695 Int)) )
))
(declare-datatypes ((Regex!17854 0))(
  ( (ElementMatch!17854 (c!1324515 C!35978)) (Concat!26699 (regOne!36220 Regex!17854) (regTwo!36220 Regex!17854)) (EmptyExpr!17854) (Star!17854 (reg!18183 Regex!17854)) (EmptyLang!17854) (Union!17854 (regOne!36221 Regex!17854) (regTwo!36221 Regex!17854)) )
))
(declare-datatypes ((List!68817 0))(
  ( (Nil!68693) (Cons!68693 (h!75141 Regex!17854) (t!382622 List!68817)) )
))
(declare-datatypes ((Context!13700 0))(
  ( (Context!13701 (exprs!7350 List!68817)) )
))
(declare-fun auxCtx!45 () Context!13700)

(declare-fun lambda!430696 () Int)

(declare-fun forall!16770 (List!68817 Int) Bool)

(assert (=> b!7098287 (= e!4266702 (forall!16770 (exprs!7350 auxCtx!45) lambda!430696))))

(declare-fun b!7098288 () Bool)

(declare-fun res!2898524 () Bool)

(declare-fun e!4266701 () Bool)

(assert (=> b!7098288 (=> (not res!2898524) (not e!4266701))))

(declare-fun a!1901 () C!35978)

(declare-fun lt!2557624 () List!68817)

(declare-fun r!11554 () Regex!17854)

(declare-fun derivationStepZipperDown!2393 (Regex!17854 Context!13700 C!35978) (Set Context!13700))

(declare-fun $colon$colon!2737 (List!68817 Regex!17854) List!68817)

(assert (=> b!7098288 (= res!2898524 (= (derivationStepZipperDown!2393 r!11554 (Context!13701 lt!2557624) a!1901) (derivationStepZipperDown!2393 (reg!18183 r!11554) (Context!13701 ($colon$colon!2737 lt!2557624 r!11554)) a!1901)))))

(declare-fun b!7098289 () Bool)

(assert (=> b!7098289 (= e!4266701 (not e!4266702))))

(declare-fun res!2898521 () Bool)

(assert (=> b!7098289 (=> res!2898521 e!4266702)))

(declare-fun c!9994 () Context!13700)

(assert (=> b!7098289 (= res!2898521 (not (forall!16770 (exprs!7350 c!9994) lambda!430696)))))

(declare-fun lt!2557619 () Context!13700)

(declare-fun lt!2557620 () List!68817)

(declare-fun ++!16014 (List!68817 List!68817) List!68817)

(declare-fun appendTo!897 ((Set Context!13700) Context!13700) (Set Context!13700))

(assert (=> b!7098289 (= (derivationStepZipperDown!2393 (reg!18183 r!11554) (Context!13701 (++!16014 lt!2557620 (exprs!7350 auxCtx!45))) a!1901) (appendTo!897 (derivationStepZipperDown!2393 (reg!18183 r!11554) lt!2557619 a!1901) auxCtx!45))))

(declare-datatypes ((Unit!162383 0))(
  ( (Unit!162384) )
))
(declare-fun lt!2557622 () Unit!162383)

(declare-fun lemmaConcatPreservesForall!1145 (List!68817 List!68817 Int) Unit!162383)

(assert (=> b!7098289 (= lt!2557622 (lemmaConcatPreservesForall!1145 lt!2557620 (exprs!7350 auxCtx!45) lambda!430696))))

(declare-fun lt!2557623 () Unit!162383)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!205 (Context!13700 Regex!17854 C!35978 Context!13700) Unit!162383)

(assert (=> b!7098289 (= lt!2557623 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!205 lt!2557619 (reg!18183 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7098289 (= lt!2557619 (Context!13701 lt!2557620))))

(assert (=> b!7098289 (= lt!2557620 ($colon$colon!2737 (exprs!7350 c!9994) r!11554))))

(declare-fun b!7098290 () Bool)

(declare-fun e!4266700 () Bool)

(declare-fun tp!1951030 () Bool)

(assert (=> b!7098290 (= e!4266700 tp!1951030)))

(declare-fun b!7098292 () Bool)

(declare-fun e!4266703 () Bool)

(assert (=> b!7098292 (= e!4266703 e!4266701)))

(declare-fun res!2898525 () Bool)

(assert (=> b!7098292 (=> (not res!2898525) (not e!4266701))))

(declare-fun validRegex!9129 (Regex!17854) Bool)

(assert (=> b!7098292 (= res!2898525 (validRegex!9129 r!11554))))

(assert (=> b!7098292 (= lt!2557624 (++!16014 (exprs!7350 c!9994) (exprs!7350 auxCtx!45)))))

(declare-fun lt!2557625 () Unit!162383)

(assert (=> b!7098292 (= lt!2557625 (lemmaConcatPreservesForall!1145 (exprs!7350 c!9994) (exprs!7350 auxCtx!45) lambda!430696))))

(declare-fun lt!2557621 () Unit!162383)

(assert (=> b!7098292 (= lt!2557621 (lemmaConcatPreservesForall!1145 (exprs!7350 c!9994) (exprs!7350 auxCtx!45) lambda!430696))))

(declare-fun b!7098293 () Bool)

(declare-fun e!4266699 () Bool)

(declare-fun tp!1951031 () Bool)

(declare-fun tp!1951028 () Bool)

(assert (=> b!7098293 (= e!4266699 (and tp!1951031 tp!1951028))))

(declare-fun b!7098294 () Bool)

(declare-fun tp!1951029 () Bool)

(declare-fun tp!1951025 () Bool)

(assert (=> b!7098294 (= e!4266699 (and tp!1951029 tp!1951025))))

(declare-fun b!7098295 () Bool)

(declare-fun tp_is_empty!44941 () Bool)

(assert (=> b!7098295 (= e!4266699 tp_is_empty!44941)))

(declare-fun b!7098296 () Bool)

(declare-fun res!2898522 () Bool)

(assert (=> b!7098296 (=> (not res!2898522) (not e!4266703))))

(assert (=> b!7098296 (= res!2898522 (and (not (is-Concat!26699 r!11554)) (is-Star!17854 r!11554)))))

(declare-fun b!7098297 () Bool)

(declare-fun res!2898523 () Bool)

(assert (=> b!7098297 (=> (not res!2898523) (not e!4266703))))

(assert (=> b!7098297 (= res!2898523 (and (or (not (is-ElementMatch!17854 r!11554)) (not (= (c!1324515 r!11554) a!1901))) (not (is-Union!17854 r!11554))))))

(declare-fun b!7098298 () Bool)

(declare-fun res!2898528 () Bool)

(assert (=> b!7098298 (=> (not res!2898528) (not e!4266703))))

(declare-fun e!4266698 () Bool)

(assert (=> b!7098298 (= res!2898528 e!4266698)))

(declare-fun res!2898526 () Bool)

(assert (=> b!7098298 (=> res!2898526 e!4266698)))

(assert (=> b!7098298 (= res!2898526 (not (is-Concat!26699 r!11554)))))

(declare-fun b!7098299 () Bool)

(declare-fun e!4266697 () Bool)

(declare-fun tp!1951027 () Bool)

(assert (=> b!7098299 (= e!4266697 tp!1951027)))

(declare-fun b!7098300 () Bool)

(declare-fun tp!1951026 () Bool)

(assert (=> b!7098300 (= e!4266699 tp!1951026)))

(declare-fun b!7098291 () Bool)

(declare-fun nullable!7494 (Regex!17854) Bool)

(assert (=> b!7098291 (= e!4266698 (not (nullable!7494 (regOne!36220 r!11554))))))

(declare-fun res!2898527 () Bool)

(assert (=> start!690966 (=> (not res!2898527) (not e!4266703))))

(assert (=> start!690966 (= res!2898527 (validRegex!9129 r!11554))))

(assert (=> start!690966 e!4266703))

(assert (=> start!690966 e!4266699))

(assert (=> start!690966 tp_is_empty!44941))

(declare-fun inv!87501 (Context!13700) Bool)

(assert (=> start!690966 (and (inv!87501 c!9994) e!4266697)))

(assert (=> start!690966 (and (inv!87501 auxCtx!45) e!4266700)))

(assert (= (and start!690966 res!2898527) b!7098297))

(assert (= (and b!7098297 res!2898523) b!7098298))

(assert (= (and b!7098298 (not res!2898526)) b!7098291))

(assert (= (and b!7098298 res!2898528) b!7098296))

(assert (= (and b!7098296 res!2898522) b!7098292))

(assert (= (and b!7098292 res!2898525) b!7098288))

(assert (= (and b!7098288 res!2898524) b!7098289))

(assert (= (and b!7098289 (not res!2898521)) b!7098287))

(assert (= (and start!690966 (is-ElementMatch!17854 r!11554)) b!7098295))

(assert (= (and start!690966 (is-Concat!26699 r!11554)) b!7098293))

(assert (= (and start!690966 (is-Star!17854 r!11554)) b!7098300))

(assert (= (and start!690966 (is-Union!17854 r!11554)) b!7098294))

(assert (= start!690966 b!7098299))

(assert (= start!690966 b!7098290))

(declare-fun m!7824804 () Bool)

(assert (=> b!7098292 m!7824804))

(declare-fun m!7824806 () Bool)

(assert (=> b!7098292 m!7824806))

(declare-fun m!7824808 () Bool)

(assert (=> b!7098292 m!7824808))

(assert (=> b!7098292 m!7824808))

(declare-fun m!7824810 () Bool)

(assert (=> b!7098289 m!7824810))

(declare-fun m!7824812 () Bool)

(assert (=> b!7098289 m!7824812))

(declare-fun m!7824814 () Bool)

(assert (=> b!7098289 m!7824814))

(declare-fun m!7824816 () Bool)

(assert (=> b!7098289 m!7824816))

(assert (=> b!7098289 m!7824814))

(declare-fun m!7824818 () Bool)

(assert (=> b!7098289 m!7824818))

(declare-fun m!7824820 () Bool)

(assert (=> b!7098289 m!7824820))

(declare-fun m!7824822 () Bool)

(assert (=> b!7098289 m!7824822))

(declare-fun m!7824824 () Bool)

(assert (=> b!7098289 m!7824824))

(declare-fun m!7824826 () Bool)

(assert (=> b!7098287 m!7824826))

(declare-fun m!7824828 () Bool)

(assert (=> b!7098288 m!7824828))

(declare-fun m!7824830 () Bool)

(assert (=> b!7098288 m!7824830))

(declare-fun m!7824832 () Bool)

(assert (=> b!7098288 m!7824832))

(assert (=> start!690966 m!7824804))

(declare-fun m!7824834 () Bool)

(assert (=> start!690966 m!7824834))

(declare-fun m!7824836 () Bool)

(assert (=> start!690966 m!7824836))

(declare-fun m!7824838 () Bool)

(assert (=> b!7098291 m!7824838))

(push 1)

(assert (not b!7098288))

(assert (not b!7098287))

(assert tp_is_empty!44941)

(assert (not b!7098300))

(assert (not b!7098294))

(assert (not b!7098299))

(assert (not start!690966))

(assert (not b!7098293))

(assert (not b!7098292))

(assert (not b!7098291))

(assert (not b!7098290))

(assert (not b!7098289))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!646099 () Bool)

(declare-fun call!646108 () (Set Context!13700))

(declare-fun call!646107 () (Set Context!13700))

(assert (=> bm!646099 (= call!646108 call!646107)))

(declare-fun b!7098365 () Bool)

(declare-fun e!4266739 () (Set Context!13700))

(assert (=> b!7098365 (= e!4266739 call!646108)))

(declare-fun b!7098366 () Bool)

(declare-fun e!4266742 () Bool)

(assert (=> b!7098366 (= e!4266742 (nullable!7494 (regOne!36220 (reg!18183 r!11554))))))

(declare-fun d!2218157 () Bool)

(declare-fun c!1324529 () Bool)

(assert (=> d!2218157 (= c!1324529 (and (is-ElementMatch!17854 (reg!18183 r!11554)) (= (c!1324515 (reg!18183 r!11554)) a!1901)))))

(declare-fun e!4266740 () (Set Context!13700))

(assert (=> d!2218157 (= (derivationStepZipperDown!2393 (reg!18183 r!11554) (Context!13701 (++!16014 lt!2557620 (exprs!7350 auxCtx!45))) a!1901) e!4266740)))

(declare-fun b!7098367 () Bool)

(declare-fun c!1324527 () Bool)

(assert (=> b!7098367 (= c!1324527 e!4266742)))

(declare-fun res!2898555 () Bool)

(assert (=> b!7098367 (=> (not res!2898555) (not e!4266742))))

(assert (=> b!7098367 (= res!2898555 (is-Concat!26699 (reg!18183 r!11554)))))

(declare-fun e!4266738 () (Set Context!13700))

(declare-fun e!4266741 () (Set Context!13700))

(assert (=> b!7098367 (= e!4266738 e!4266741)))

(declare-fun b!7098368 () Bool)

(declare-fun call!646106 () (Set Context!13700))

(declare-fun call!646105 () (Set Context!13700))

(assert (=> b!7098368 (= e!4266738 (set.union call!646106 call!646105))))

(declare-fun c!1324528 () Bool)

(declare-fun call!646104 () List!68817)

(declare-fun bm!646100 () Bool)

(declare-fun c!1324530 () Bool)

(assert (=> bm!646100 (= call!646105 (derivationStepZipperDown!2393 (ite c!1324530 (regTwo!36221 (reg!18183 r!11554)) (ite c!1324527 (regTwo!36220 (reg!18183 r!11554)) (ite c!1324528 (regOne!36220 (reg!18183 r!11554)) (reg!18183 (reg!18183 r!11554))))) (ite (or c!1324530 c!1324527) (Context!13701 (++!16014 lt!2557620 (exprs!7350 auxCtx!45))) (Context!13701 call!646104)) a!1901))))

(declare-fun b!7098369 () Bool)

(assert (=> b!7098369 (= e!4266740 e!4266738)))

(assert (=> b!7098369 (= c!1324530 (is-Union!17854 (reg!18183 r!11554)))))

(declare-fun b!7098370 () Bool)

(assert (=> b!7098370 (= e!4266740 (set.insert (Context!13701 (++!16014 lt!2557620 (exprs!7350 auxCtx!45))) (as set.empty (Set Context!13700))))))

(declare-fun bm!646101 () Bool)

(assert (=> bm!646101 (= call!646107 call!646105)))

(declare-fun b!7098371 () Bool)

(assert (=> b!7098371 (= e!4266739 (as set.empty (Set Context!13700)))))

(declare-fun bm!646102 () Bool)

(declare-fun call!646109 () List!68817)

(assert (=> bm!646102 (= call!646104 call!646109)))

(declare-fun bm!646103 () Bool)

(assert (=> bm!646103 (= call!646106 (derivationStepZipperDown!2393 (ite c!1324530 (regOne!36221 (reg!18183 r!11554)) (regOne!36220 (reg!18183 r!11554))) (ite c!1324530 (Context!13701 (++!16014 lt!2557620 (exprs!7350 auxCtx!45))) (Context!13701 call!646109)) a!1901))))

(declare-fun b!7098372 () Bool)

(assert (=> b!7098372 (= e!4266741 (set.union call!646106 call!646107))))

(declare-fun bm!646104 () Bool)

(assert (=> bm!646104 (= call!646109 ($colon$colon!2737 (exprs!7350 (Context!13701 (++!16014 lt!2557620 (exprs!7350 auxCtx!45)))) (ite (or c!1324527 c!1324528) (regTwo!36220 (reg!18183 r!11554)) (reg!18183 r!11554))))))

(declare-fun b!7098373 () Bool)

(declare-fun e!4266737 () (Set Context!13700))

(assert (=> b!7098373 (= e!4266741 e!4266737)))

(assert (=> b!7098373 (= c!1324528 (is-Concat!26699 (reg!18183 r!11554)))))

(declare-fun b!7098374 () Bool)

(declare-fun c!1324531 () Bool)

(assert (=> b!7098374 (= c!1324531 (is-Star!17854 (reg!18183 r!11554)))))

(assert (=> b!7098374 (= e!4266737 e!4266739)))

(declare-fun b!7098375 () Bool)

(assert (=> b!7098375 (= e!4266737 call!646108)))

(assert (= (and d!2218157 c!1324529) b!7098370))

(assert (= (and d!2218157 (not c!1324529)) b!7098369))

(assert (= (and b!7098369 c!1324530) b!7098368))

(assert (= (and b!7098369 (not c!1324530)) b!7098367))

(assert (= (and b!7098367 res!2898555) b!7098366))

(assert (= (and b!7098367 c!1324527) b!7098372))

(assert (= (and b!7098367 (not c!1324527)) b!7098373))

(assert (= (and b!7098373 c!1324528) b!7098375))

(assert (= (and b!7098373 (not c!1324528)) b!7098374))

(assert (= (and b!7098374 c!1324531) b!7098365))

(assert (= (and b!7098374 (not c!1324531)) b!7098371))

(assert (= (or b!7098375 b!7098365) bm!646102))

(assert (= (or b!7098375 b!7098365) bm!646099))

(assert (= (or b!7098372 bm!646099) bm!646101))

(assert (= (or b!7098372 bm!646102) bm!646104))

(assert (= (or b!7098368 bm!646101) bm!646100))

(assert (= (or b!7098368 b!7098372) bm!646103))

(declare-fun m!7824878 () Bool)

(assert (=> bm!646100 m!7824878))

(declare-fun m!7824880 () Bool)

(assert (=> bm!646103 m!7824880))

(declare-fun m!7824882 () Bool)

(assert (=> bm!646104 m!7824882))

(declare-fun m!7824884 () Bool)

(assert (=> b!7098366 m!7824884))

(declare-fun m!7824886 () Bool)

(assert (=> b!7098370 m!7824886))

(assert (=> b!7098289 d!2218157))

(declare-fun d!2218163 () Bool)

(assert (=> d!2218163 (forall!16770 (++!16014 lt!2557620 (exprs!7350 auxCtx!45)) lambda!430696)))

(declare-fun lt!2557649 () Unit!162383)

(declare-fun choose!54730 (List!68817 List!68817 Int) Unit!162383)

(assert (=> d!2218163 (= lt!2557649 (choose!54730 lt!2557620 (exprs!7350 auxCtx!45) lambda!430696))))

(assert (=> d!2218163 (forall!16770 lt!2557620 lambda!430696)))

(assert (=> d!2218163 (= (lemmaConcatPreservesForall!1145 lt!2557620 (exprs!7350 auxCtx!45) lambda!430696) lt!2557649)))

(declare-fun bs!1884090 () Bool)

(assert (= bs!1884090 d!2218163))

(assert (=> bs!1884090 m!7824810))

(assert (=> bs!1884090 m!7824810))

(declare-fun m!7824888 () Bool)

(assert (=> bs!1884090 m!7824888))

(declare-fun m!7824890 () Bool)

(assert (=> bs!1884090 m!7824890))

(declare-fun m!7824892 () Bool)

(assert (=> bs!1884090 m!7824892))

(assert (=> b!7098289 d!2218163))

(declare-fun d!2218165 () Bool)

(assert (=> d!2218165 (= ($colon$colon!2737 (exprs!7350 c!9994) r!11554) (Cons!68693 r!11554 (exprs!7350 c!9994)))))

(assert (=> b!7098289 d!2218165))

(declare-fun bm!646105 () Bool)

(declare-fun call!646116 () (Set Context!13700))

(declare-fun call!646115 () (Set Context!13700))

(assert (=> bm!646105 (= call!646116 call!646115)))

(declare-fun b!7098394 () Bool)

(declare-fun e!4266759 () (Set Context!13700))

(assert (=> b!7098394 (= e!4266759 call!646116)))

(declare-fun b!7098395 () Bool)

(declare-fun e!4266762 () Bool)

(assert (=> b!7098395 (= e!4266762 (nullable!7494 (regOne!36220 (reg!18183 r!11554))))))

(declare-fun d!2218167 () Bool)

(declare-fun c!1324538 () Bool)

(assert (=> d!2218167 (= c!1324538 (and (is-ElementMatch!17854 (reg!18183 r!11554)) (= (c!1324515 (reg!18183 r!11554)) a!1901)))))

(declare-fun e!4266760 () (Set Context!13700))

(assert (=> d!2218167 (= (derivationStepZipperDown!2393 (reg!18183 r!11554) lt!2557619 a!1901) e!4266760)))

(declare-fun b!7098396 () Bool)

(declare-fun c!1324536 () Bool)

(assert (=> b!7098396 (= c!1324536 e!4266762)))

(declare-fun res!2898566 () Bool)

(assert (=> b!7098396 (=> (not res!2898566) (not e!4266762))))

(assert (=> b!7098396 (= res!2898566 (is-Concat!26699 (reg!18183 r!11554)))))

(declare-fun e!4266758 () (Set Context!13700))

(declare-fun e!4266761 () (Set Context!13700))

(assert (=> b!7098396 (= e!4266758 e!4266761)))

(declare-fun b!7098397 () Bool)

(declare-fun call!646114 () (Set Context!13700))

(declare-fun call!646113 () (Set Context!13700))

(assert (=> b!7098397 (= e!4266758 (set.union call!646114 call!646113))))

(declare-fun c!1324539 () Bool)

(declare-fun call!646112 () List!68817)

(declare-fun c!1324537 () Bool)

(declare-fun bm!646106 () Bool)

(assert (=> bm!646106 (= call!646113 (derivationStepZipperDown!2393 (ite c!1324539 (regTwo!36221 (reg!18183 r!11554)) (ite c!1324536 (regTwo!36220 (reg!18183 r!11554)) (ite c!1324537 (regOne!36220 (reg!18183 r!11554)) (reg!18183 (reg!18183 r!11554))))) (ite (or c!1324539 c!1324536) lt!2557619 (Context!13701 call!646112)) a!1901))))

(declare-fun b!7098398 () Bool)

(assert (=> b!7098398 (= e!4266760 e!4266758)))

(assert (=> b!7098398 (= c!1324539 (is-Union!17854 (reg!18183 r!11554)))))

(declare-fun b!7098399 () Bool)

(assert (=> b!7098399 (= e!4266760 (set.insert lt!2557619 (as set.empty (Set Context!13700))))))

(declare-fun bm!646107 () Bool)

(assert (=> bm!646107 (= call!646115 call!646113)))

(declare-fun b!7098400 () Bool)

(assert (=> b!7098400 (= e!4266759 (as set.empty (Set Context!13700)))))

(declare-fun bm!646108 () Bool)

(declare-fun call!646117 () List!68817)

(assert (=> bm!646108 (= call!646112 call!646117)))

(declare-fun bm!646109 () Bool)

(assert (=> bm!646109 (= call!646114 (derivationStepZipperDown!2393 (ite c!1324539 (regOne!36221 (reg!18183 r!11554)) (regOne!36220 (reg!18183 r!11554))) (ite c!1324539 lt!2557619 (Context!13701 call!646117)) a!1901))))

(declare-fun b!7098401 () Bool)

(assert (=> b!7098401 (= e!4266761 (set.union call!646114 call!646115))))

(declare-fun bm!646110 () Bool)

(assert (=> bm!646110 (= call!646117 ($colon$colon!2737 (exprs!7350 lt!2557619) (ite (or c!1324536 c!1324537) (regTwo!36220 (reg!18183 r!11554)) (reg!18183 r!11554))))))

(declare-fun b!7098402 () Bool)

(declare-fun e!4266757 () (Set Context!13700))

(assert (=> b!7098402 (= e!4266761 e!4266757)))

(assert (=> b!7098402 (= c!1324537 (is-Concat!26699 (reg!18183 r!11554)))))

(declare-fun b!7098403 () Bool)

(declare-fun c!1324540 () Bool)

(assert (=> b!7098403 (= c!1324540 (is-Star!17854 (reg!18183 r!11554)))))

(assert (=> b!7098403 (= e!4266757 e!4266759)))

(declare-fun b!7098404 () Bool)

(assert (=> b!7098404 (= e!4266757 call!646116)))

(assert (= (and d!2218167 c!1324538) b!7098399))

(assert (= (and d!2218167 (not c!1324538)) b!7098398))

(assert (= (and b!7098398 c!1324539) b!7098397))

(assert (= (and b!7098398 (not c!1324539)) b!7098396))

(assert (= (and b!7098396 res!2898566) b!7098395))

(assert (= (and b!7098396 c!1324536) b!7098401))

(assert (= (and b!7098396 (not c!1324536)) b!7098402))

(assert (= (and b!7098402 c!1324537) b!7098404))

(assert (= (and b!7098402 (not c!1324537)) b!7098403))

(assert (= (and b!7098403 c!1324540) b!7098394))

(assert (= (and b!7098403 (not c!1324540)) b!7098400))

(assert (= (or b!7098404 b!7098394) bm!646108))

(assert (= (or b!7098404 b!7098394) bm!646105))

(assert (= (or b!7098401 bm!646105) bm!646107))

(assert (= (or b!7098401 bm!646108) bm!646110))

(assert (= (or b!7098397 bm!646107) bm!646106))

(assert (= (or b!7098397 b!7098401) bm!646109))

(declare-fun m!7824894 () Bool)

(assert (=> bm!646106 m!7824894))

(declare-fun m!7824896 () Bool)

(assert (=> bm!646109 m!7824896))

(declare-fun m!7824898 () Bool)

(assert (=> bm!646110 m!7824898))

(assert (=> b!7098395 m!7824884))

(declare-fun m!7824900 () Bool)

(assert (=> b!7098399 m!7824900))

(assert (=> b!7098289 d!2218167))

(declare-fun d!2218169 () Bool)

(assert (=> d!2218169 true))

(declare-fun lambda!430710 () Int)

(declare-fun map!16195 ((Set Context!13700) Int) (Set Context!13700))

(assert (=> d!2218169 (= (appendTo!897 (derivationStepZipperDown!2393 (reg!18183 r!11554) lt!2557619 a!1901) auxCtx!45) (map!16195 (derivationStepZipperDown!2393 (reg!18183 r!11554) lt!2557619 a!1901) lambda!430710))))

(declare-fun bs!1884091 () Bool)

(assert (= bs!1884091 d!2218169))

(assert (=> bs!1884091 m!7824814))

(declare-fun m!7824902 () Bool)

(assert (=> bs!1884091 m!7824902))

(assert (=> b!7098289 d!2218169))

(declare-fun bs!1884092 () Bool)

(declare-fun d!2218171 () Bool)

(assert (= bs!1884092 (and d!2218171 b!7098292)))

(declare-fun lambda!430714 () Int)

(assert (=> bs!1884092 (= lambda!430714 lambda!430696)))

(assert (=> d!2218171 (= (derivationStepZipperDown!2393 (reg!18183 r!11554) (Context!13701 (++!16014 (exprs!7350 lt!2557619) (exprs!7350 auxCtx!45))) a!1901) (appendTo!897 (derivationStepZipperDown!2393 (reg!18183 r!11554) lt!2557619 a!1901) auxCtx!45))))

(declare-fun lt!2557657 () Unit!162383)

(assert (=> d!2218171 (= lt!2557657 (lemmaConcatPreservesForall!1145 (exprs!7350 lt!2557619) (exprs!7350 auxCtx!45) lambda!430714))))

(declare-fun lt!2557656 () Unit!162383)

(declare-fun choose!54731 (Context!13700 Regex!17854 C!35978 Context!13700) Unit!162383)

(assert (=> d!2218171 (= lt!2557656 (choose!54731 lt!2557619 (reg!18183 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2218171 (validRegex!9129 (reg!18183 r!11554))))

(assert (=> d!2218171 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!205 lt!2557619 (reg!18183 r!11554) a!1901 auxCtx!45) lt!2557656)))

(declare-fun bs!1884093 () Bool)

(assert (= bs!1884093 d!2218171))

(declare-fun m!7824910 () Bool)

(assert (=> bs!1884093 m!7824910))

(declare-fun m!7824912 () Bool)

(assert (=> bs!1884093 m!7824912))

(assert (=> bs!1884093 m!7824814))

(assert (=> bs!1884093 m!7824816))

(assert (=> bs!1884093 m!7824814))

(declare-fun m!7824914 () Bool)

(assert (=> bs!1884093 m!7824914))

(declare-fun m!7824916 () Bool)

(assert (=> bs!1884093 m!7824916))

(declare-fun m!7824918 () Bool)

(assert (=> bs!1884093 m!7824918))

(assert (=> b!7098289 d!2218171))

(declare-fun b!7098431 () Bool)

(declare-fun e!4266779 () Bool)

(declare-fun lt!2557660 () List!68817)

(assert (=> b!7098431 (= e!4266779 (or (not (= (exprs!7350 auxCtx!45) Nil!68693)) (= lt!2557660 lt!2557620)))))

(declare-fun d!2218175 () Bool)

(assert (=> d!2218175 e!4266779))

(declare-fun res!2898580 () Bool)

(assert (=> d!2218175 (=> (not res!2898580) (not e!4266779))))

(declare-fun content!13961 (List!68817) (Set Regex!17854))

(assert (=> d!2218175 (= res!2898580 (= (content!13961 lt!2557660) (set.union (content!13961 lt!2557620) (content!13961 (exprs!7350 auxCtx!45)))))))

(declare-fun e!4266778 () List!68817)

(assert (=> d!2218175 (= lt!2557660 e!4266778)))

(declare-fun c!1324547 () Bool)

(assert (=> d!2218175 (= c!1324547 (is-Nil!68693 lt!2557620))))

(assert (=> d!2218175 (= (++!16014 lt!2557620 (exprs!7350 auxCtx!45)) lt!2557660)))

(declare-fun b!7098428 () Bool)

(assert (=> b!7098428 (= e!4266778 (exprs!7350 auxCtx!45))))

(declare-fun b!7098429 () Bool)

(assert (=> b!7098429 (= e!4266778 (Cons!68693 (h!75141 lt!2557620) (++!16014 (t!382622 lt!2557620) (exprs!7350 auxCtx!45))))))

(declare-fun b!7098430 () Bool)

(declare-fun res!2898581 () Bool)

(assert (=> b!7098430 (=> (not res!2898581) (not e!4266779))))

(declare-fun size!41336 (List!68817) Int)

(assert (=> b!7098430 (= res!2898581 (= (size!41336 lt!2557660) (+ (size!41336 lt!2557620) (size!41336 (exprs!7350 auxCtx!45)))))))

(assert (= (and d!2218175 c!1324547) b!7098428))

(assert (= (and d!2218175 (not c!1324547)) b!7098429))

(assert (= (and d!2218175 res!2898580) b!7098430))

(assert (= (and b!7098430 res!2898581) b!7098431))

(declare-fun m!7824924 () Bool)

(assert (=> d!2218175 m!7824924))

(declare-fun m!7824926 () Bool)

(assert (=> d!2218175 m!7824926))

(declare-fun m!7824928 () Bool)

(assert (=> d!2218175 m!7824928))

(declare-fun m!7824930 () Bool)

(assert (=> b!7098429 m!7824930))

(declare-fun m!7824932 () Bool)

(assert (=> b!7098430 m!7824932))

(declare-fun m!7824934 () Bool)

(assert (=> b!7098430 m!7824934))

(declare-fun m!7824936 () Bool)

(assert (=> b!7098430 m!7824936))

(assert (=> b!7098289 d!2218175))

(declare-fun d!2218181 () Bool)

(declare-fun res!2898588 () Bool)

(declare-fun e!4266786 () Bool)

(assert (=> d!2218181 (=> res!2898588 e!4266786)))

(assert (=> d!2218181 (= res!2898588 (is-Nil!68693 (exprs!7350 c!9994)))))

(assert (=> d!2218181 (= (forall!16770 (exprs!7350 c!9994) lambda!430696) e!4266786)))

(declare-fun b!7098438 () Bool)

(declare-fun e!4266787 () Bool)

(assert (=> b!7098438 (= e!4266786 e!4266787)))

(declare-fun res!2898589 () Bool)

(assert (=> b!7098438 (=> (not res!2898589) (not e!4266787))))

(declare-fun dynLambda!28033 (Int Regex!17854) Bool)

(assert (=> b!7098438 (= res!2898589 (dynLambda!28033 lambda!430696 (h!75141 (exprs!7350 c!9994))))))

(declare-fun b!7098439 () Bool)

(assert (=> b!7098439 (= e!4266787 (forall!16770 (t!382622 (exprs!7350 c!9994)) lambda!430696))))

(assert (= (and d!2218181 (not res!2898588)) b!7098438))

(assert (= (and b!7098438 res!2898589) b!7098439))

(declare-fun b_lambda!271225 () Bool)

(assert (=> (not b_lambda!271225) (not b!7098438)))

(declare-fun m!7824938 () Bool)

(assert (=> b!7098438 m!7824938))

(declare-fun m!7824940 () Bool)

(assert (=> b!7098439 m!7824940))

(assert (=> b!7098289 d!2218181))

(declare-fun d!2218183 () Bool)

(declare-fun nullableFct!2886 (Regex!17854) Bool)

(assert (=> d!2218183 (= (nullable!7494 (regOne!36220 r!11554)) (nullableFct!2886 (regOne!36220 r!11554)))))

(declare-fun bs!1884099 () Bool)

(assert (= bs!1884099 d!2218183))

(declare-fun m!7824946 () Bool)

(assert (=> bs!1884099 m!7824946))

(assert (=> b!7098291 d!2218183))

(declare-fun b!7098458 () Bool)

(declare-fun e!4266803 () Bool)

(declare-fun e!4266802 () Bool)

(assert (=> b!7098458 (= e!4266803 e!4266802)))

(declare-fun res!2898604 () Bool)

(assert (=> b!7098458 (= res!2898604 (not (nullable!7494 (reg!18183 r!11554))))))

(assert (=> b!7098458 (=> (not res!2898604) (not e!4266802))))

(declare-fun b!7098459 () Bool)

(declare-fun e!4266804 () Bool)

(declare-fun e!4266806 () Bool)

(assert (=> b!7098459 (= e!4266804 e!4266806)))

(declare-fun res!2898600 () Bool)

(assert (=> b!7098459 (=> (not res!2898600) (not e!4266806))))

(declare-fun call!646133 () Bool)

(assert (=> b!7098459 (= res!2898600 call!646133)))

(declare-fun c!1324552 () Bool)

(declare-fun call!646131 () Bool)

(declare-fun c!1324553 () Bool)

(declare-fun bm!646126 () Bool)

(assert (=> bm!646126 (= call!646131 (validRegex!9129 (ite c!1324553 (reg!18183 r!11554) (ite c!1324552 (regOne!36221 r!11554) (regTwo!36220 r!11554)))))))

(declare-fun b!7098460 () Bool)

(declare-fun res!2898602 () Bool)

(assert (=> b!7098460 (=> res!2898602 e!4266804)))

(assert (=> b!7098460 (= res!2898602 (not (is-Concat!26699 r!11554)))))

(declare-fun e!4266807 () Bool)

(assert (=> b!7098460 (= e!4266807 e!4266804)))

(declare-fun b!7098461 () Bool)

(assert (=> b!7098461 (= e!4266802 call!646131)))

(declare-fun b!7098462 () Bool)

(declare-fun call!646132 () Bool)

(assert (=> b!7098462 (= e!4266806 call!646132)))

(declare-fun b!7098463 () Bool)

(declare-fun e!4266805 () Bool)

(assert (=> b!7098463 (= e!4266805 e!4266803)))

(assert (=> b!7098463 (= c!1324553 (is-Star!17854 r!11554))))

(declare-fun d!2218187 () Bool)

(declare-fun res!2898603 () Bool)

(assert (=> d!2218187 (=> res!2898603 e!4266805)))

(assert (=> d!2218187 (= res!2898603 (is-ElementMatch!17854 r!11554))))

(assert (=> d!2218187 (= (validRegex!9129 r!11554) e!4266805)))

(declare-fun bm!646127 () Bool)

(assert (=> bm!646127 (= call!646132 call!646131)))

(declare-fun bm!646128 () Bool)

(assert (=> bm!646128 (= call!646133 (validRegex!9129 (ite c!1324552 (regTwo!36221 r!11554) (regOne!36220 r!11554))))))

(declare-fun b!7098464 () Bool)

(assert (=> b!7098464 (= e!4266803 e!4266807)))

(assert (=> b!7098464 (= c!1324552 (is-Union!17854 r!11554))))

(declare-fun b!7098465 () Bool)

(declare-fun e!4266808 () Bool)

(assert (=> b!7098465 (= e!4266808 call!646133)))

(declare-fun b!7098466 () Bool)

(declare-fun res!2898601 () Bool)

(assert (=> b!7098466 (=> (not res!2898601) (not e!4266808))))

(assert (=> b!7098466 (= res!2898601 call!646132)))

(assert (=> b!7098466 (= e!4266807 e!4266808)))

(assert (= (and d!2218187 (not res!2898603)) b!7098463))

(assert (= (and b!7098463 c!1324553) b!7098458))

(assert (= (and b!7098463 (not c!1324553)) b!7098464))

(assert (= (and b!7098458 res!2898604) b!7098461))

(assert (= (and b!7098464 c!1324552) b!7098466))

(assert (= (and b!7098464 (not c!1324552)) b!7098460))

(assert (= (and b!7098466 res!2898601) b!7098465))

(assert (= (and b!7098460 (not res!2898602)) b!7098459))

(assert (= (and b!7098459 res!2898600) b!7098462))

(assert (= (or b!7098466 b!7098462) bm!646127))

(assert (= (or b!7098465 b!7098459) bm!646128))

(assert (= (or b!7098461 bm!646127) bm!646126))

(declare-fun m!7824948 () Bool)

(assert (=> b!7098458 m!7824948))

(declare-fun m!7824950 () Bool)

(assert (=> bm!646126 m!7824950))

(declare-fun m!7824952 () Bool)

(assert (=> bm!646128 m!7824952))

(assert (=> b!7098292 d!2218187))

(declare-fun b!7098470 () Bool)

(declare-fun lt!2557661 () List!68817)

(declare-fun e!4266810 () Bool)

(assert (=> b!7098470 (= e!4266810 (or (not (= (exprs!7350 auxCtx!45) Nil!68693)) (= lt!2557661 (exprs!7350 c!9994))))))

(declare-fun d!2218189 () Bool)

(assert (=> d!2218189 e!4266810))

(declare-fun res!2898605 () Bool)

(assert (=> d!2218189 (=> (not res!2898605) (not e!4266810))))

(assert (=> d!2218189 (= res!2898605 (= (content!13961 lt!2557661) (set.union (content!13961 (exprs!7350 c!9994)) (content!13961 (exprs!7350 auxCtx!45)))))))

(declare-fun e!4266809 () List!68817)

(assert (=> d!2218189 (= lt!2557661 e!4266809)))

(declare-fun c!1324554 () Bool)

(assert (=> d!2218189 (= c!1324554 (is-Nil!68693 (exprs!7350 c!9994)))))

(assert (=> d!2218189 (= (++!16014 (exprs!7350 c!9994) (exprs!7350 auxCtx!45)) lt!2557661)))

(declare-fun b!7098467 () Bool)

(assert (=> b!7098467 (= e!4266809 (exprs!7350 auxCtx!45))))

(declare-fun b!7098468 () Bool)

(assert (=> b!7098468 (= e!4266809 (Cons!68693 (h!75141 (exprs!7350 c!9994)) (++!16014 (t!382622 (exprs!7350 c!9994)) (exprs!7350 auxCtx!45))))))

(declare-fun b!7098469 () Bool)

(declare-fun res!2898606 () Bool)

(assert (=> b!7098469 (=> (not res!2898606) (not e!4266810))))

(assert (=> b!7098469 (= res!2898606 (= (size!41336 lt!2557661) (+ (size!41336 (exprs!7350 c!9994)) (size!41336 (exprs!7350 auxCtx!45)))))))

(assert (= (and d!2218189 c!1324554) b!7098467))

(assert (= (and d!2218189 (not c!1324554)) b!7098468))

(assert (= (and d!2218189 res!2898605) b!7098469))

(assert (= (and b!7098469 res!2898606) b!7098470))

(declare-fun m!7824954 () Bool)

(assert (=> d!2218189 m!7824954))

(declare-fun m!7824956 () Bool)

(assert (=> d!2218189 m!7824956))

(assert (=> d!2218189 m!7824928))

(declare-fun m!7824958 () Bool)

(assert (=> b!7098468 m!7824958))

(declare-fun m!7824960 () Bool)

(assert (=> b!7098469 m!7824960))

(declare-fun m!7824962 () Bool)

(assert (=> b!7098469 m!7824962))

(assert (=> b!7098469 m!7824936))

(assert (=> b!7098292 d!2218189))

(declare-fun d!2218191 () Bool)

(assert (=> d!2218191 (forall!16770 (++!16014 (exprs!7350 c!9994) (exprs!7350 auxCtx!45)) lambda!430696)))

(declare-fun lt!2557662 () Unit!162383)

(assert (=> d!2218191 (= lt!2557662 (choose!54730 (exprs!7350 c!9994) (exprs!7350 auxCtx!45) lambda!430696))))

(assert (=> d!2218191 (forall!16770 (exprs!7350 c!9994) lambda!430696)))

(assert (=> d!2218191 (= (lemmaConcatPreservesForall!1145 (exprs!7350 c!9994) (exprs!7350 auxCtx!45) lambda!430696) lt!2557662)))

(declare-fun bs!1884100 () Bool)

(assert (= bs!1884100 d!2218191))

(assert (=> bs!1884100 m!7824806))

(assert (=> bs!1884100 m!7824806))

(declare-fun m!7824964 () Bool)

(assert (=> bs!1884100 m!7824964))

(declare-fun m!7824966 () Bool)

(assert (=> bs!1884100 m!7824966))

(assert (=> bs!1884100 m!7824824))

(assert (=> b!7098292 d!2218191))

(declare-fun d!2218193 () Bool)

(declare-fun res!2898607 () Bool)

(declare-fun e!4266811 () Bool)

(assert (=> d!2218193 (=> res!2898607 e!4266811)))

(assert (=> d!2218193 (= res!2898607 (is-Nil!68693 (exprs!7350 auxCtx!45)))))

(assert (=> d!2218193 (= (forall!16770 (exprs!7350 auxCtx!45) lambda!430696) e!4266811)))

(declare-fun b!7098471 () Bool)

(declare-fun e!4266812 () Bool)

(assert (=> b!7098471 (= e!4266811 e!4266812)))

(declare-fun res!2898608 () Bool)

(assert (=> b!7098471 (=> (not res!2898608) (not e!4266812))))

(assert (=> b!7098471 (= res!2898608 (dynLambda!28033 lambda!430696 (h!75141 (exprs!7350 auxCtx!45))))))

(declare-fun b!7098472 () Bool)

(assert (=> b!7098472 (= e!4266812 (forall!16770 (t!382622 (exprs!7350 auxCtx!45)) lambda!430696))))

(assert (= (and d!2218193 (not res!2898607)) b!7098471))

(assert (= (and b!7098471 res!2898608) b!7098472))

(declare-fun b_lambda!271229 () Bool)

(assert (=> (not b_lambda!271229) (not b!7098471)))

(declare-fun m!7824968 () Bool)

(assert (=> b!7098471 m!7824968))

(declare-fun m!7824970 () Bool)

(assert (=> b!7098472 m!7824970))

(assert (=> b!7098287 d!2218193))

(declare-fun bm!646129 () Bool)

(declare-fun call!646138 () (Set Context!13700))

(declare-fun call!646137 () (Set Context!13700))

(assert (=> bm!646129 (= call!646138 call!646137)))

(declare-fun b!7098473 () Bool)

(declare-fun e!4266815 () (Set Context!13700))

(assert (=> b!7098473 (= e!4266815 call!646138)))

(declare-fun b!7098474 () Bool)

(declare-fun e!4266818 () Bool)

(assert (=> b!7098474 (= e!4266818 (nullable!7494 (regOne!36220 r!11554)))))

(declare-fun d!2218195 () Bool)

(declare-fun c!1324557 () Bool)

(assert (=> d!2218195 (= c!1324557 (and (is-ElementMatch!17854 r!11554) (= (c!1324515 r!11554) a!1901)))))

(declare-fun e!4266816 () (Set Context!13700))

(assert (=> d!2218195 (= (derivationStepZipperDown!2393 r!11554 (Context!13701 lt!2557624) a!1901) e!4266816)))

(declare-fun b!7098475 () Bool)

(declare-fun c!1324555 () Bool)

(assert (=> b!7098475 (= c!1324555 e!4266818)))

(declare-fun res!2898609 () Bool)

(assert (=> b!7098475 (=> (not res!2898609) (not e!4266818))))

(assert (=> b!7098475 (= res!2898609 (is-Concat!26699 r!11554))))

(declare-fun e!4266814 () (Set Context!13700))

(declare-fun e!4266817 () (Set Context!13700))

(assert (=> b!7098475 (= e!4266814 e!4266817)))

(declare-fun b!7098476 () Bool)

(declare-fun call!646136 () (Set Context!13700))

(declare-fun call!646135 () (Set Context!13700))

(assert (=> b!7098476 (= e!4266814 (set.union call!646136 call!646135))))

(declare-fun bm!646130 () Bool)

(declare-fun call!646134 () List!68817)

(declare-fun c!1324556 () Bool)

(declare-fun c!1324558 () Bool)

(assert (=> bm!646130 (= call!646135 (derivationStepZipperDown!2393 (ite c!1324558 (regTwo!36221 r!11554) (ite c!1324555 (regTwo!36220 r!11554) (ite c!1324556 (regOne!36220 r!11554) (reg!18183 r!11554)))) (ite (or c!1324558 c!1324555) (Context!13701 lt!2557624) (Context!13701 call!646134)) a!1901))))

(declare-fun b!7098477 () Bool)

(assert (=> b!7098477 (= e!4266816 e!4266814)))

(assert (=> b!7098477 (= c!1324558 (is-Union!17854 r!11554))))

(declare-fun b!7098478 () Bool)

(assert (=> b!7098478 (= e!4266816 (set.insert (Context!13701 lt!2557624) (as set.empty (Set Context!13700))))))

(declare-fun bm!646131 () Bool)

(assert (=> bm!646131 (= call!646137 call!646135)))

(declare-fun b!7098479 () Bool)

(assert (=> b!7098479 (= e!4266815 (as set.empty (Set Context!13700)))))

(declare-fun bm!646132 () Bool)

(declare-fun call!646139 () List!68817)

(assert (=> bm!646132 (= call!646134 call!646139)))

(declare-fun bm!646133 () Bool)

(assert (=> bm!646133 (= call!646136 (derivationStepZipperDown!2393 (ite c!1324558 (regOne!36221 r!11554) (regOne!36220 r!11554)) (ite c!1324558 (Context!13701 lt!2557624) (Context!13701 call!646139)) a!1901))))

(declare-fun b!7098480 () Bool)

(assert (=> b!7098480 (= e!4266817 (set.union call!646136 call!646137))))

(declare-fun bm!646134 () Bool)

(assert (=> bm!646134 (= call!646139 ($colon$colon!2737 (exprs!7350 (Context!13701 lt!2557624)) (ite (or c!1324555 c!1324556) (regTwo!36220 r!11554) r!11554)))))

(declare-fun b!7098481 () Bool)

(declare-fun e!4266813 () (Set Context!13700))

(assert (=> b!7098481 (= e!4266817 e!4266813)))

(assert (=> b!7098481 (= c!1324556 (is-Concat!26699 r!11554))))

(declare-fun b!7098482 () Bool)

(declare-fun c!1324559 () Bool)

(assert (=> b!7098482 (= c!1324559 (is-Star!17854 r!11554))))

(assert (=> b!7098482 (= e!4266813 e!4266815)))

(declare-fun b!7098483 () Bool)

(assert (=> b!7098483 (= e!4266813 call!646138)))

(assert (= (and d!2218195 c!1324557) b!7098478))

(assert (= (and d!2218195 (not c!1324557)) b!7098477))

(assert (= (and b!7098477 c!1324558) b!7098476))

(assert (= (and b!7098477 (not c!1324558)) b!7098475))

(assert (= (and b!7098475 res!2898609) b!7098474))

(assert (= (and b!7098475 c!1324555) b!7098480))

(assert (= (and b!7098475 (not c!1324555)) b!7098481))

(assert (= (and b!7098481 c!1324556) b!7098483))

(assert (= (and b!7098481 (not c!1324556)) b!7098482))

(assert (= (and b!7098482 c!1324559) b!7098473))

(assert (= (and b!7098482 (not c!1324559)) b!7098479))

(assert (= (or b!7098483 b!7098473) bm!646132))

(assert (= (or b!7098483 b!7098473) bm!646129))

(assert (= (or b!7098480 bm!646129) bm!646131))

(assert (= (or b!7098480 bm!646132) bm!646134))

(assert (= (or b!7098476 bm!646131) bm!646130))

(assert (= (or b!7098476 b!7098480) bm!646133))

(declare-fun m!7824972 () Bool)

(assert (=> bm!646130 m!7824972))

(declare-fun m!7824974 () Bool)

(assert (=> bm!646133 m!7824974))

(declare-fun m!7824976 () Bool)

(assert (=> bm!646134 m!7824976))

(assert (=> b!7098474 m!7824838))

(declare-fun m!7824978 () Bool)

(assert (=> b!7098478 m!7824978))

(assert (=> b!7098288 d!2218195))

(declare-fun bm!646135 () Bool)

(declare-fun call!646144 () (Set Context!13700))

(declare-fun call!646143 () (Set Context!13700))

(assert (=> bm!646135 (= call!646144 call!646143)))

(declare-fun b!7098488 () Bool)

(declare-fun e!4266823 () (Set Context!13700))

(assert (=> b!7098488 (= e!4266823 call!646144)))

(declare-fun b!7098489 () Bool)

(declare-fun e!4266826 () Bool)

(assert (=> b!7098489 (= e!4266826 (nullable!7494 (regOne!36220 (reg!18183 r!11554))))))

(declare-fun d!2218197 () Bool)

(declare-fun c!1324564 () Bool)

(assert (=> d!2218197 (= c!1324564 (and (is-ElementMatch!17854 (reg!18183 r!11554)) (= (c!1324515 (reg!18183 r!11554)) a!1901)))))

(declare-fun e!4266824 () (Set Context!13700))

(assert (=> d!2218197 (= (derivationStepZipperDown!2393 (reg!18183 r!11554) (Context!13701 ($colon$colon!2737 lt!2557624 r!11554)) a!1901) e!4266824)))

(declare-fun b!7098490 () Bool)

(declare-fun c!1324562 () Bool)

(assert (=> b!7098490 (= c!1324562 e!4266826)))

(declare-fun res!2898610 () Bool)

(assert (=> b!7098490 (=> (not res!2898610) (not e!4266826))))

(assert (=> b!7098490 (= res!2898610 (is-Concat!26699 (reg!18183 r!11554)))))

(declare-fun e!4266822 () (Set Context!13700))

(declare-fun e!4266825 () (Set Context!13700))

(assert (=> b!7098490 (= e!4266822 e!4266825)))

(declare-fun b!7098491 () Bool)

(declare-fun call!646142 () (Set Context!13700))

(declare-fun call!646141 () (Set Context!13700))

(assert (=> b!7098491 (= e!4266822 (set.union call!646142 call!646141))))

(declare-fun bm!646136 () Bool)

(declare-fun c!1324563 () Bool)

(declare-fun call!646140 () List!68817)

(declare-fun c!1324565 () Bool)

(assert (=> bm!646136 (= call!646141 (derivationStepZipperDown!2393 (ite c!1324565 (regTwo!36221 (reg!18183 r!11554)) (ite c!1324562 (regTwo!36220 (reg!18183 r!11554)) (ite c!1324563 (regOne!36220 (reg!18183 r!11554)) (reg!18183 (reg!18183 r!11554))))) (ite (or c!1324565 c!1324562) (Context!13701 ($colon$colon!2737 lt!2557624 r!11554)) (Context!13701 call!646140)) a!1901))))

(declare-fun b!7098492 () Bool)

(assert (=> b!7098492 (= e!4266824 e!4266822)))

(assert (=> b!7098492 (= c!1324565 (is-Union!17854 (reg!18183 r!11554)))))

(declare-fun b!7098493 () Bool)

(assert (=> b!7098493 (= e!4266824 (set.insert (Context!13701 ($colon$colon!2737 lt!2557624 r!11554)) (as set.empty (Set Context!13700))))))

(declare-fun bm!646137 () Bool)

(assert (=> bm!646137 (= call!646143 call!646141)))

(declare-fun b!7098494 () Bool)

(assert (=> b!7098494 (= e!4266823 (as set.empty (Set Context!13700)))))

(declare-fun bm!646138 () Bool)

(declare-fun call!646145 () List!68817)

(assert (=> bm!646138 (= call!646140 call!646145)))

(declare-fun bm!646139 () Bool)

(assert (=> bm!646139 (= call!646142 (derivationStepZipperDown!2393 (ite c!1324565 (regOne!36221 (reg!18183 r!11554)) (regOne!36220 (reg!18183 r!11554))) (ite c!1324565 (Context!13701 ($colon$colon!2737 lt!2557624 r!11554)) (Context!13701 call!646145)) a!1901))))

(declare-fun b!7098495 () Bool)

(assert (=> b!7098495 (= e!4266825 (set.union call!646142 call!646143))))

(declare-fun bm!646140 () Bool)

(assert (=> bm!646140 (= call!646145 ($colon$colon!2737 (exprs!7350 (Context!13701 ($colon$colon!2737 lt!2557624 r!11554))) (ite (or c!1324562 c!1324563) (regTwo!36220 (reg!18183 r!11554)) (reg!18183 r!11554))))))

(declare-fun b!7098496 () Bool)

(declare-fun e!4266821 () (Set Context!13700))

(assert (=> b!7098496 (= e!4266825 e!4266821)))

(assert (=> b!7098496 (= c!1324563 (is-Concat!26699 (reg!18183 r!11554)))))

(declare-fun b!7098497 () Bool)

(declare-fun c!1324566 () Bool)

(assert (=> b!7098497 (= c!1324566 (is-Star!17854 (reg!18183 r!11554)))))

(assert (=> b!7098497 (= e!4266821 e!4266823)))

(declare-fun b!7098498 () Bool)

(assert (=> b!7098498 (= e!4266821 call!646144)))

(assert (= (and d!2218197 c!1324564) b!7098493))

(assert (= (and d!2218197 (not c!1324564)) b!7098492))

(assert (= (and b!7098492 c!1324565) b!7098491))

(assert (= (and b!7098492 (not c!1324565)) b!7098490))

(assert (= (and b!7098490 res!2898610) b!7098489))

(assert (= (and b!7098490 c!1324562) b!7098495))

(assert (= (and b!7098490 (not c!1324562)) b!7098496))

(assert (= (and b!7098496 c!1324563) b!7098498))

(assert (= (and b!7098496 (not c!1324563)) b!7098497))

(assert (= (and b!7098497 c!1324566) b!7098488))

(assert (= (and b!7098497 (not c!1324566)) b!7098494))

(assert (= (or b!7098498 b!7098488) bm!646138))

(assert (= (or b!7098498 b!7098488) bm!646135))

(assert (= (or b!7098495 bm!646135) bm!646137))

(assert (= (or b!7098495 bm!646138) bm!646140))

(assert (= (or b!7098491 bm!646137) bm!646136))

(assert (= (or b!7098491 b!7098495) bm!646139))

(declare-fun m!7824980 () Bool)

(assert (=> bm!646136 m!7824980))

(declare-fun m!7824982 () Bool)

(assert (=> bm!646139 m!7824982))

(declare-fun m!7824984 () Bool)

(assert (=> bm!646140 m!7824984))

(assert (=> b!7098489 m!7824884))

(declare-fun m!7824986 () Bool)

(assert (=> b!7098493 m!7824986))

(assert (=> b!7098288 d!2218197))

(declare-fun d!2218199 () Bool)

(assert (=> d!2218199 (= ($colon$colon!2737 lt!2557624 r!11554) (Cons!68693 r!11554 lt!2557624))))

(assert (=> b!7098288 d!2218199))

(assert (=> start!690966 d!2218187))

(declare-fun bs!1884101 () Bool)

(declare-fun d!2218201 () Bool)

(assert (= bs!1884101 (and d!2218201 b!7098292)))

(declare-fun lambda!430720 () Int)

(assert (=> bs!1884101 (= lambda!430720 lambda!430696)))

(declare-fun bs!1884102 () Bool)

(assert (= bs!1884102 (and d!2218201 d!2218171)))

(assert (=> bs!1884102 (= lambda!430720 lambda!430714)))

(assert (=> d!2218201 (= (inv!87501 c!9994) (forall!16770 (exprs!7350 c!9994) lambda!430720))))

(declare-fun bs!1884103 () Bool)

(assert (= bs!1884103 d!2218201))

(declare-fun m!7824988 () Bool)

(assert (=> bs!1884103 m!7824988))

(assert (=> start!690966 d!2218201))

(declare-fun bs!1884104 () Bool)

(declare-fun d!2218203 () Bool)

(assert (= bs!1884104 (and d!2218203 b!7098292)))

(declare-fun lambda!430721 () Int)

(assert (=> bs!1884104 (= lambda!430721 lambda!430696)))

(declare-fun bs!1884105 () Bool)

(assert (= bs!1884105 (and d!2218203 d!2218171)))

(assert (=> bs!1884105 (= lambda!430721 lambda!430714)))

(declare-fun bs!1884106 () Bool)

(assert (= bs!1884106 (and d!2218203 d!2218201)))

(assert (=> bs!1884106 (= lambda!430721 lambda!430720)))

(assert (=> d!2218203 (= (inv!87501 auxCtx!45) (forall!16770 (exprs!7350 auxCtx!45) lambda!430721))))

(declare-fun bs!1884107 () Bool)

(assert (= bs!1884107 d!2218203))

(declare-fun m!7824990 () Bool)

(assert (=> bs!1884107 m!7824990))

(assert (=> start!690966 d!2218203))

(declare-fun b!7098527 () Bool)

(declare-fun e!4266839 () Bool)

(assert (=> b!7098527 (= e!4266839 tp_is_empty!44941)))

(declare-fun b!7098529 () Bool)

(declare-fun tp!1951064 () Bool)

(assert (=> b!7098529 (= e!4266839 tp!1951064)))

(declare-fun b!7098528 () Bool)

(declare-fun tp!1951067 () Bool)

(declare-fun tp!1951065 () Bool)

(assert (=> b!7098528 (= e!4266839 (and tp!1951067 tp!1951065))))

(declare-fun b!7098530 () Bool)

(declare-fun tp!1951066 () Bool)

(declare-fun tp!1951063 () Bool)

(assert (=> b!7098530 (= e!4266839 (and tp!1951066 tp!1951063))))

(assert (=> b!7098300 (= tp!1951026 e!4266839)))

(assert (= (and b!7098300 (is-ElementMatch!17854 (reg!18183 r!11554))) b!7098527))

(assert (= (and b!7098300 (is-Concat!26699 (reg!18183 r!11554))) b!7098528))

(assert (= (and b!7098300 (is-Star!17854 (reg!18183 r!11554))) b!7098529))

(assert (= (and b!7098300 (is-Union!17854 (reg!18183 r!11554))) b!7098530))

(declare-fun b!7098535 () Bool)

(declare-fun e!4266842 () Bool)

(declare-fun tp!1951072 () Bool)

(declare-fun tp!1951073 () Bool)

(assert (=> b!7098535 (= e!4266842 (and tp!1951072 tp!1951073))))

(assert (=> b!7098290 (= tp!1951030 e!4266842)))

(assert (= (and b!7098290 (is-Cons!68693 (exprs!7350 auxCtx!45))) b!7098535))

(declare-fun b!7098536 () Bool)

(declare-fun e!4266843 () Bool)

(assert (=> b!7098536 (= e!4266843 tp_is_empty!44941)))

(declare-fun b!7098538 () Bool)

(declare-fun tp!1951075 () Bool)

(assert (=> b!7098538 (= e!4266843 tp!1951075)))

(declare-fun b!7098537 () Bool)

(declare-fun tp!1951078 () Bool)

(declare-fun tp!1951076 () Bool)

(assert (=> b!7098537 (= e!4266843 (and tp!1951078 tp!1951076))))

(declare-fun b!7098539 () Bool)

(declare-fun tp!1951077 () Bool)

(declare-fun tp!1951074 () Bool)

(assert (=> b!7098539 (= e!4266843 (and tp!1951077 tp!1951074))))

(assert (=> b!7098293 (= tp!1951031 e!4266843)))

(assert (= (and b!7098293 (is-ElementMatch!17854 (regOne!36220 r!11554))) b!7098536))

(assert (= (and b!7098293 (is-Concat!26699 (regOne!36220 r!11554))) b!7098537))

(assert (= (and b!7098293 (is-Star!17854 (regOne!36220 r!11554))) b!7098538))

(assert (= (and b!7098293 (is-Union!17854 (regOne!36220 r!11554))) b!7098539))

(declare-fun b!7098540 () Bool)

(declare-fun e!4266844 () Bool)

(assert (=> b!7098540 (= e!4266844 tp_is_empty!44941)))

(declare-fun b!7098542 () Bool)

(declare-fun tp!1951080 () Bool)

(assert (=> b!7098542 (= e!4266844 tp!1951080)))

(declare-fun b!7098541 () Bool)

(declare-fun tp!1951083 () Bool)

(declare-fun tp!1951081 () Bool)

(assert (=> b!7098541 (= e!4266844 (and tp!1951083 tp!1951081))))

(declare-fun b!7098543 () Bool)

(declare-fun tp!1951082 () Bool)

(declare-fun tp!1951079 () Bool)

(assert (=> b!7098543 (= e!4266844 (and tp!1951082 tp!1951079))))

(assert (=> b!7098293 (= tp!1951028 e!4266844)))

(assert (= (and b!7098293 (is-ElementMatch!17854 (regTwo!36220 r!11554))) b!7098540))

(assert (= (and b!7098293 (is-Concat!26699 (regTwo!36220 r!11554))) b!7098541))

(assert (= (and b!7098293 (is-Star!17854 (regTwo!36220 r!11554))) b!7098542))

(assert (= (and b!7098293 (is-Union!17854 (regTwo!36220 r!11554))) b!7098543))

(declare-fun b!7098544 () Bool)

(declare-fun e!4266845 () Bool)

(assert (=> b!7098544 (= e!4266845 tp_is_empty!44941)))

(declare-fun b!7098546 () Bool)

(declare-fun tp!1951085 () Bool)

(assert (=> b!7098546 (= e!4266845 tp!1951085)))

(declare-fun b!7098545 () Bool)

(declare-fun tp!1951088 () Bool)

(declare-fun tp!1951086 () Bool)

(assert (=> b!7098545 (= e!4266845 (and tp!1951088 tp!1951086))))

(declare-fun b!7098547 () Bool)

(declare-fun tp!1951087 () Bool)

(declare-fun tp!1951084 () Bool)

(assert (=> b!7098547 (= e!4266845 (and tp!1951087 tp!1951084))))

(assert (=> b!7098294 (= tp!1951029 e!4266845)))

(assert (= (and b!7098294 (is-ElementMatch!17854 (regOne!36221 r!11554))) b!7098544))

(assert (= (and b!7098294 (is-Concat!26699 (regOne!36221 r!11554))) b!7098545))

(assert (= (and b!7098294 (is-Star!17854 (regOne!36221 r!11554))) b!7098546))

(assert (= (and b!7098294 (is-Union!17854 (regOne!36221 r!11554))) b!7098547))

(declare-fun b!7098548 () Bool)

(declare-fun e!4266846 () Bool)

(assert (=> b!7098548 (= e!4266846 tp_is_empty!44941)))

(declare-fun b!7098550 () Bool)

(declare-fun tp!1951090 () Bool)

(assert (=> b!7098550 (= e!4266846 tp!1951090)))

(declare-fun b!7098549 () Bool)

(declare-fun tp!1951093 () Bool)

(declare-fun tp!1951091 () Bool)

(assert (=> b!7098549 (= e!4266846 (and tp!1951093 tp!1951091))))

(declare-fun b!7098551 () Bool)

(declare-fun tp!1951092 () Bool)

(declare-fun tp!1951089 () Bool)

(assert (=> b!7098551 (= e!4266846 (and tp!1951092 tp!1951089))))

(assert (=> b!7098294 (= tp!1951025 e!4266846)))

(assert (= (and b!7098294 (is-ElementMatch!17854 (regTwo!36221 r!11554))) b!7098548))

(assert (= (and b!7098294 (is-Concat!26699 (regTwo!36221 r!11554))) b!7098549))

(assert (= (and b!7098294 (is-Star!17854 (regTwo!36221 r!11554))) b!7098550))

(assert (= (and b!7098294 (is-Union!17854 (regTwo!36221 r!11554))) b!7098551))

(declare-fun b!7098552 () Bool)

(declare-fun e!4266847 () Bool)

(declare-fun tp!1951094 () Bool)

(declare-fun tp!1951095 () Bool)

(assert (=> b!7098552 (= e!4266847 (and tp!1951094 tp!1951095))))

(assert (=> b!7098299 (= tp!1951027 e!4266847)))

(assert (= (and b!7098299 (is-Cons!68693 (exprs!7350 c!9994))) b!7098552))

(declare-fun b_lambda!271231 () Bool)

(assert (= b_lambda!271229 (or b!7098292 b_lambda!271231)))

(declare-fun bs!1884108 () Bool)

(declare-fun d!2218205 () Bool)

(assert (= bs!1884108 (and d!2218205 b!7098292)))

(assert (=> bs!1884108 (= (dynLambda!28033 lambda!430696 (h!75141 (exprs!7350 auxCtx!45))) (validRegex!9129 (h!75141 (exprs!7350 auxCtx!45))))))

(declare-fun m!7824992 () Bool)

(assert (=> bs!1884108 m!7824992))

(assert (=> b!7098471 d!2218205))

(declare-fun b_lambda!271233 () Bool)

(assert (= b_lambda!271225 (or b!7098292 b_lambda!271233)))

(declare-fun bs!1884109 () Bool)

(declare-fun d!2218207 () Bool)

(assert (= bs!1884109 (and d!2218207 b!7098292)))

(assert (=> bs!1884109 (= (dynLambda!28033 lambda!430696 (h!75141 (exprs!7350 c!9994))) (validRegex!9129 (h!75141 (exprs!7350 c!9994))))))

(declare-fun m!7824994 () Bool)

(assert (=> bs!1884109 m!7824994))

(assert (=> b!7098438 d!2218207))

(push 1)

(assert (not bm!646126))

(assert (not b!7098539))

(assert tp_is_empty!44941)

(assert (not bm!646134))

(assert (not bm!646104))

(assert (not b_lambda!271231))

(assert (not bm!646106))

(assert (not d!2218183))

(assert (not b!7098542))

(assert (not bm!646128))

(assert (not b!7098395))

(assert (not d!2218191))

(assert (not bm!646110))

(assert (not bm!646136))

(assert (not b!7098472))

(assert (not b!7098552))

(assert (not b!7098545))

(assert (not b!7098537))

(assert (not d!2218169))

(assert (not b!7098547))

(assert (not b!7098541))

(assert (not b!7098529))

(assert (not bs!1884108))

(assert (not bm!646140))

(assert (not bm!646133))

(assert (not b!7098439))

(assert (not b_lambda!271233))

(assert (not b!7098546))

(assert (not b!7098489))

(assert (not b!7098430))

(assert (not d!2218163))

(assert (not b!7098530))

(assert (not b!7098549))

(assert (not bs!1884109))

(assert (not d!2218171))

(assert (not b!7098468))

(assert (not b!7098543))

(assert (not b!7098458))

(assert (not bm!646109))

(assert (not b!7098469))

(assert (not bm!646103))

(assert (not b!7098429))

(assert (not b!7098535))

(assert (not b!7098550))

(assert (not bm!646139))

(assert (not b!7098551))

(assert (not b!7098538))

(assert (not bm!646130))

(assert (not d!2218203))

(assert (not b!7098474))

(assert (not d!2218175))

(assert (not d!2218201))

(assert (not bm!646100))

(assert (not d!2218189))

(assert (not b!7098528))

(assert (not b!7098366))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

