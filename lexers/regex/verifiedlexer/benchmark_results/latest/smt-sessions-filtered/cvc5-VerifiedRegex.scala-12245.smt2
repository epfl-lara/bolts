; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!689562 () Bool)

(assert start!689562)

(declare-fun b!7084630 () Bool)

(assert (=> b!7084630 true))

(declare-fun b!7084623 () Bool)

(declare-fun e!4259257 () Bool)

(declare-datatypes ((C!35734 0))(
  ( (C!35735 (val!27573 Int)) )
))
(declare-datatypes ((Regex!17732 0))(
  ( (ElementMatch!17732 (c!1322303 C!35734)) (Concat!26577 (regOne!35976 Regex!17732) (regTwo!35976 Regex!17732)) (EmptyExpr!17732) (Star!17732 (reg!18061 Regex!17732)) (EmptyLang!17732) (Union!17732 (regOne!35977 Regex!17732) (regTwo!35977 Regex!17732)) )
))
(declare-datatypes ((List!68695 0))(
  ( (Nil!68571) (Cons!68571 (h!75019 Regex!17732) (t!382480 List!68695)) )
))
(declare-datatypes ((Context!13456 0))(
  ( (Context!13457 (exprs!7228 List!68695)) )
))
(declare-fun c!9994 () Context!13456)

(declare-fun lambda!428895 () Int)

(declare-fun forall!16684 (List!68695 Int) Bool)

(assert (=> b!7084623 (= e!4259257 (forall!16684 (exprs!7228 c!9994) lambda!428895))))

(declare-fun b!7084624 () Bool)

(declare-fun e!4259259 () Bool)

(declare-fun tp!1944811 () Bool)

(assert (=> b!7084624 (= e!4259259 tp!1944811)))

(declare-fun b!7084625 () Bool)

(declare-fun e!4259261 () Bool)

(declare-fun tp!1944807 () Bool)

(assert (=> b!7084625 (= e!4259261 tp!1944807)))

(declare-fun b!7084626 () Bool)

(declare-fun tp_is_empty!44697 () Bool)

(assert (=> b!7084626 (= e!4259261 tp_is_empty!44697)))

(declare-fun b!7084627 () Bool)

(declare-fun e!4259262 () Bool)

(declare-fun tp!1944809 () Bool)

(assert (=> b!7084627 (= e!4259262 tp!1944809)))

(declare-fun b!7084629 () Bool)

(declare-fun tp!1944810 () Bool)

(declare-fun tp!1944805 () Bool)

(assert (=> b!7084629 (= e!4259261 (and tp!1944810 tp!1944805))))

(declare-fun e!4259258 () Bool)

(declare-fun e!4259260 () Bool)

(assert (=> b!7084630 (= e!4259258 e!4259260)))

(declare-fun res!2894235 () Bool)

(assert (=> b!7084630 (=> (not res!2894235) (not e!4259260))))

(declare-fun r!11554 () Regex!17732)

(declare-fun a!1901 () C!35734)

(assert (=> b!7084630 (= res!2894235 (and (is-ElementMatch!17732 r!11554) (= (c!1322303 r!11554) a!1901)))))

(declare-fun b!7084631 () Bool)

(assert (=> b!7084631 (= e!4259260 (not e!4259257))))

(declare-fun res!2894233 () Bool)

(assert (=> b!7084631 (=> res!2894233 e!4259257)))

(declare-fun auxCtx!45 () Context!13456)

(declare-fun derivationStepZipperDown!2329 (Regex!17732 Context!13456 C!35734) (Set Context!13456))

(declare-fun ++!15909 (List!68695 List!68695) List!68695)

(declare-fun appendTo!841 ((Set Context!13456) Context!13456) (Set Context!13456))

(assert (=> b!7084631 (= res!2894233 (not (= (derivationStepZipperDown!2329 r!11554 (Context!13457 (++!15909 (exprs!7228 c!9994) (exprs!7228 auxCtx!45))) a!1901) (appendTo!841 (derivationStepZipperDown!2329 r!11554 c!9994 a!1901) auxCtx!45))))))

(declare-datatypes ((Unit!162171 0))(
  ( (Unit!162172) )
))
(declare-fun lt!2554428 () Unit!162171)

(declare-fun lemmaConcatPreservesForall!1039 (List!68695 List!68695 Int) Unit!162171)

(assert (=> b!7084631 (= lt!2554428 (lemmaConcatPreservesForall!1039 (exprs!7228 c!9994) (exprs!7228 auxCtx!45) lambda!428895))))

(declare-fun lt!2554427 () (Set Context!13456))

(declare-fun lambda!428894 () Int)

(declare-fun map!16089 ((Set Context!13456) Int) (Set Context!13456))

(assert (=> b!7084631 (= (map!16089 lt!2554427 lambda!428894) (set.insert (Context!13457 (++!15909 (exprs!7228 c!9994) (exprs!7228 auxCtx!45))) (as set.empty (Set Context!13456))))))

(declare-fun lt!2554425 () Unit!162171)

(assert (=> b!7084631 (= lt!2554425 (lemmaConcatPreservesForall!1039 (exprs!7228 c!9994) (exprs!7228 auxCtx!45) lambda!428895))))

(declare-fun lt!2554426 () Unit!162171)

(declare-fun lemmaMapOnSingletonSet!445 ((Set Context!13456) Context!13456 Int) Unit!162171)

(assert (=> b!7084631 (= lt!2554426 (lemmaMapOnSingletonSet!445 lt!2554427 c!9994 lambda!428894))))

(assert (=> b!7084631 (= lt!2554427 (set.insert c!9994 (as set.empty (Set Context!13456))))))

(declare-fun res!2894234 () Bool)

(assert (=> start!689562 (=> (not res!2894234) (not e!4259258))))

(declare-fun validRegex!9007 (Regex!17732) Bool)

(assert (=> start!689562 (= res!2894234 (validRegex!9007 r!11554))))

(assert (=> start!689562 e!4259258))

(assert (=> start!689562 e!4259261))

(declare-fun inv!87196 (Context!13456) Bool)

(assert (=> start!689562 (and (inv!87196 c!9994) e!4259259)))

(assert (=> start!689562 tp_is_empty!44697))

(assert (=> start!689562 (and (inv!87196 auxCtx!45) e!4259262)))

(declare-fun b!7084628 () Bool)

(declare-fun tp!1944806 () Bool)

(declare-fun tp!1944808 () Bool)

(assert (=> b!7084628 (= e!4259261 (and tp!1944806 tp!1944808))))

(assert (= (and start!689562 res!2894234) b!7084630))

(assert (= (and b!7084630 res!2894235) b!7084631))

(assert (= (and b!7084631 (not res!2894233)) b!7084623))

(assert (= (and start!689562 (is-ElementMatch!17732 r!11554)) b!7084626))

(assert (= (and start!689562 (is-Concat!26577 r!11554)) b!7084628))

(assert (= (and start!689562 (is-Star!17732 r!11554)) b!7084625))

(assert (= (and start!689562 (is-Union!17732 r!11554)) b!7084629))

(assert (= start!689562 b!7084624))

(assert (= start!689562 b!7084627))

(declare-fun m!7816304 () Bool)

(assert (=> b!7084623 m!7816304))

(declare-fun m!7816306 () Bool)

(assert (=> b!7084631 m!7816306))

(declare-fun m!7816308 () Bool)

(assert (=> b!7084631 m!7816308))

(declare-fun m!7816310 () Bool)

(assert (=> b!7084631 m!7816310))

(declare-fun m!7816312 () Bool)

(assert (=> b!7084631 m!7816312))

(assert (=> b!7084631 m!7816306))

(declare-fun m!7816314 () Bool)

(assert (=> b!7084631 m!7816314))

(declare-fun m!7816316 () Bool)

(assert (=> b!7084631 m!7816316))

(assert (=> b!7084631 m!7816316))

(declare-fun m!7816318 () Bool)

(assert (=> b!7084631 m!7816318))

(declare-fun m!7816320 () Bool)

(assert (=> b!7084631 m!7816320))

(declare-fun m!7816322 () Bool)

(assert (=> b!7084631 m!7816322))

(declare-fun m!7816324 () Bool)

(assert (=> start!689562 m!7816324))

(declare-fun m!7816326 () Bool)

(assert (=> start!689562 m!7816326))

(declare-fun m!7816328 () Bool)

(assert (=> start!689562 m!7816328))

(push 1)

(assert tp_is_empty!44697)

(assert (not start!689562))

(assert (not b!7084623))

(assert (not b!7084627))

(assert (not b!7084629))

(assert (not b!7084624))

(assert (not b!7084625))

(assert (not b!7084631))

(assert (not b!7084628))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2215836 () Bool)

(declare-fun res!2894251 () Bool)

(declare-fun e!4259285 () Bool)

(assert (=> d!2215836 (=> res!2894251 e!4259285)))

(assert (=> d!2215836 (= res!2894251 (is-Nil!68571 (exprs!7228 c!9994)))))

(assert (=> d!2215836 (= (forall!16684 (exprs!7228 c!9994) lambda!428895) e!4259285)))

(declare-fun b!7084667 () Bool)

(declare-fun e!4259286 () Bool)

(assert (=> b!7084667 (= e!4259285 e!4259286)))

(declare-fun res!2894252 () Bool)

(assert (=> b!7084667 (=> (not res!2894252) (not e!4259286))))

(declare-fun dynLambda!27961 (Int Regex!17732) Bool)

(assert (=> b!7084667 (= res!2894252 (dynLambda!27961 lambda!428895 (h!75019 (exprs!7228 c!9994))))))

(declare-fun b!7084668 () Bool)

(assert (=> b!7084668 (= e!4259286 (forall!16684 (t!382480 (exprs!7228 c!9994)) lambda!428895))))

(assert (= (and d!2215836 (not res!2894251)) b!7084667))

(assert (= (and b!7084667 res!2894252) b!7084668))

(declare-fun b_lambda!270793 () Bool)

(assert (=> (not b_lambda!270793) (not b!7084667)))

(declare-fun m!7816356 () Bool)

(assert (=> b!7084667 m!7816356))

(declare-fun m!7816358 () Bool)

(assert (=> b!7084668 m!7816358))

(assert (=> b!7084623 d!2215836))

(declare-fun b!7084687 () Bool)

(declare-fun res!2894263 () Bool)

(declare-fun e!4259306 () Bool)

(assert (=> b!7084687 (=> res!2894263 e!4259306)))

(assert (=> b!7084687 (= res!2894263 (not (is-Concat!26577 r!11554)))))

(declare-fun e!4259304 () Bool)

(assert (=> b!7084687 (= e!4259304 e!4259306)))

(declare-fun bm!643693 () Bool)

(declare-fun call!643698 () Bool)

(declare-fun c!1322310 () Bool)

(assert (=> bm!643693 (= call!643698 (validRegex!9007 (ite c!1322310 (regTwo!35977 r!11554) (regOne!35976 r!11554))))))

(declare-fun d!2215838 () Bool)

(declare-fun res!2894266 () Bool)

(declare-fun e!4259305 () Bool)

(assert (=> d!2215838 (=> res!2894266 e!4259305)))

(assert (=> d!2215838 (= res!2894266 (is-ElementMatch!17732 r!11554))))

(assert (=> d!2215838 (= (validRegex!9007 r!11554) e!4259305)))

(declare-fun b!7084688 () Bool)

(declare-fun res!2894264 () Bool)

(declare-fun e!4259301 () Bool)

(assert (=> b!7084688 (=> (not res!2894264) (not e!4259301))))

(declare-fun call!643699 () Bool)

(assert (=> b!7084688 (= res!2894264 call!643699)))

(assert (=> b!7084688 (= e!4259304 e!4259301)))

(declare-fun b!7084689 () Bool)

(assert (=> b!7084689 (= e!4259301 call!643698)))

(declare-fun b!7084690 () Bool)

(declare-fun e!4259302 () Bool)

(assert (=> b!7084690 (= e!4259306 e!4259302)))

(declare-fun res!2894267 () Bool)

(assert (=> b!7084690 (=> (not res!2894267) (not e!4259302))))

(assert (=> b!7084690 (= res!2894267 call!643698)))

(declare-fun b!7084691 () Bool)

(declare-fun e!4259303 () Bool)

(assert (=> b!7084691 (= e!4259303 e!4259304)))

(assert (=> b!7084691 (= c!1322310 (is-Union!17732 r!11554))))

(declare-fun bm!643694 () Bool)

(declare-fun call!643700 () Bool)

(assert (=> bm!643694 (= call!643699 call!643700)))

(declare-fun b!7084692 () Bool)

(assert (=> b!7084692 (= e!4259305 e!4259303)))

(declare-fun c!1322309 () Bool)

(assert (=> b!7084692 (= c!1322309 (is-Star!17732 r!11554))))

(declare-fun b!7084693 () Bool)

(declare-fun e!4259307 () Bool)

(assert (=> b!7084693 (= e!4259303 e!4259307)))

(declare-fun res!2894265 () Bool)

(declare-fun nullable!7385 (Regex!17732) Bool)

(assert (=> b!7084693 (= res!2894265 (not (nullable!7385 (reg!18061 r!11554))))))

(assert (=> b!7084693 (=> (not res!2894265) (not e!4259307))))

(declare-fun bm!643695 () Bool)

(assert (=> bm!643695 (= call!643700 (validRegex!9007 (ite c!1322309 (reg!18061 r!11554) (ite c!1322310 (regOne!35977 r!11554) (regTwo!35976 r!11554)))))))

(declare-fun b!7084694 () Bool)

(assert (=> b!7084694 (= e!4259307 call!643700)))

(declare-fun b!7084695 () Bool)

(assert (=> b!7084695 (= e!4259302 call!643699)))

(assert (= (and d!2215838 (not res!2894266)) b!7084692))

(assert (= (and b!7084692 c!1322309) b!7084693))

(assert (= (and b!7084692 (not c!1322309)) b!7084691))

(assert (= (and b!7084693 res!2894265) b!7084694))

(assert (= (and b!7084691 c!1322310) b!7084688))

(assert (= (and b!7084691 (not c!1322310)) b!7084687))

(assert (= (and b!7084688 res!2894264) b!7084689))

(assert (= (and b!7084687 (not res!2894263)) b!7084690))

(assert (= (and b!7084690 res!2894267) b!7084695))

(assert (= (or b!7084688 b!7084695) bm!643694))

(assert (= (or b!7084689 b!7084690) bm!643693))

(assert (= (or b!7084694 bm!643694) bm!643695))

(declare-fun m!7816360 () Bool)

(assert (=> bm!643693 m!7816360))

(declare-fun m!7816362 () Bool)

(assert (=> b!7084693 m!7816362))

(declare-fun m!7816364 () Bool)

(assert (=> bm!643695 m!7816364))

(assert (=> start!689562 d!2215838))

(declare-fun bs!1882831 () Bool)

(declare-fun d!2215842 () Bool)

(assert (= bs!1882831 (and d!2215842 b!7084631)))

(declare-fun lambda!428910 () Int)

(assert (=> bs!1882831 (= lambda!428910 lambda!428895)))

(assert (=> d!2215842 (= (inv!87196 c!9994) (forall!16684 (exprs!7228 c!9994) lambda!428910))))

(declare-fun bs!1882832 () Bool)

(assert (= bs!1882832 d!2215842))

(declare-fun m!7816366 () Bool)

(assert (=> bs!1882832 m!7816366))

(assert (=> start!689562 d!2215842))

(declare-fun bs!1882833 () Bool)

(declare-fun d!2215844 () Bool)

(assert (= bs!1882833 (and d!2215844 b!7084631)))

(declare-fun lambda!428911 () Int)

(assert (=> bs!1882833 (= lambda!428911 lambda!428895)))

(declare-fun bs!1882834 () Bool)

(assert (= bs!1882834 (and d!2215844 d!2215842)))

(assert (=> bs!1882834 (= lambda!428911 lambda!428910)))

(assert (=> d!2215844 (= (inv!87196 auxCtx!45) (forall!16684 (exprs!7228 auxCtx!45) lambda!428911))))

(declare-fun bs!1882835 () Bool)

(assert (= bs!1882835 d!2215844))

(declare-fun m!7816368 () Bool)

(assert (=> bs!1882835 m!7816368))

(assert (=> start!689562 d!2215844))

(declare-fun bs!1882836 () Bool)

(declare-fun d!2215846 () Bool)

(assert (= bs!1882836 (and d!2215846 b!7084630)))

(declare-fun lambda!428916 () Int)

(assert (=> bs!1882836 (= lambda!428916 lambda!428894)))

(assert (=> d!2215846 true))

(assert (=> d!2215846 (= (appendTo!841 (derivationStepZipperDown!2329 r!11554 c!9994 a!1901) auxCtx!45) (map!16089 (derivationStepZipperDown!2329 r!11554 c!9994 a!1901) lambda!428916))))

(declare-fun bs!1882837 () Bool)

(assert (= bs!1882837 d!2215846))

(assert (=> bs!1882837 m!7816306))

(declare-fun m!7816370 () Bool)

(assert (=> bs!1882837 m!7816370))

(assert (=> b!7084631 d!2215846))

(declare-fun d!2215848 () Bool)

(assert (=> d!2215848 (forall!16684 (++!15909 (exprs!7228 c!9994) (exprs!7228 auxCtx!45)) lambda!428895)))

(declare-fun lt!2554447 () Unit!162171)

(declare-fun choose!54594 (List!68695 List!68695 Int) Unit!162171)

(assert (=> d!2215848 (= lt!2554447 (choose!54594 (exprs!7228 c!9994) (exprs!7228 auxCtx!45) lambda!428895))))

(assert (=> d!2215848 (forall!16684 (exprs!7228 c!9994) lambda!428895)))

(assert (=> d!2215848 (= (lemmaConcatPreservesForall!1039 (exprs!7228 c!9994) (exprs!7228 auxCtx!45) lambda!428895) lt!2554447)))

(declare-fun bs!1882838 () Bool)

(assert (= bs!1882838 d!2215848))

(assert (=> bs!1882838 m!7816314))

(assert (=> bs!1882838 m!7816314))

(declare-fun m!7816372 () Bool)

(assert (=> bs!1882838 m!7816372))

(declare-fun m!7816374 () Bool)

(assert (=> bs!1882838 m!7816374))

(assert (=> bs!1882838 m!7816304))

(assert (=> b!7084631 d!2215848))

(declare-fun b!7084745 () Bool)

(declare-fun e!4259343 () (Set Context!13456))

(declare-fun call!643724 () (Set Context!13456))

(declare-fun call!643725 () (Set Context!13456))

(assert (=> b!7084745 (= e!4259343 (set.union call!643724 call!643725))))

(declare-fun b!7084746 () Bool)

(declare-fun e!4259341 () (Set Context!13456))

(declare-fun e!4259344 () (Set Context!13456))

(assert (=> b!7084746 (= e!4259341 e!4259344)))

(declare-fun c!1322330 () Bool)

(assert (=> b!7084746 (= c!1322330 (is-Union!17732 r!11554))))

(declare-fun b!7084747 () Bool)

(declare-fun c!1322331 () Bool)

(declare-fun e!4259346 () Bool)

(assert (=> b!7084747 (= c!1322331 e!4259346)))

(declare-fun res!2894285 () Bool)

(assert (=> b!7084747 (=> (not res!2894285) (not e!4259346))))

(assert (=> b!7084747 (= res!2894285 (is-Concat!26577 r!11554))))

(assert (=> b!7084747 (= e!4259344 e!4259343)))

(declare-fun d!2215850 () Bool)

(declare-fun c!1322332 () Bool)

(assert (=> d!2215850 (= c!1322332 (and (is-ElementMatch!17732 r!11554) (= (c!1322303 r!11554) a!1901)))))

(assert (=> d!2215850 (= (derivationStepZipperDown!2329 r!11554 c!9994 a!1901) e!4259341)))

(declare-fun bm!643717 () Bool)

(declare-fun call!643726 () (Set Context!13456))

(assert (=> bm!643717 (= call!643726 call!643725)))

(declare-fun b!7084748 () Bool)

(declare-fun e!4259345 () (Set Context!13456))

(assert (=> b!7084748 (= e!4259345 call!643726)))

(declare-fun b!7084749 () Bool)

(assert (=> b!7084749 (= e!4259341 (set.insert c!9994 (as set.empty (Set Context!13456))))))

(declare-fun bm!643718 () Bool)

(declare-fun call!643723 () List!68695)

(declare-fun call!643722 () List!68695)

(assert (=> bm!643718 (= call!643723 call!643722)))

(declare-fun b!7084750 () Bool)

(declare-fun e!4259342 () (Set Context!13456))

(assert (=> b!7084750 (= e!4259342 call!643726)))

(declare-fun b!7084751 () Bool)

(declare-fun call!643727 () (Set Context!13456))

(assert (=> b!7084751 (= e!4259344 (set.union call!643727 call!643724))))

(declare-fun b!7084752 () Bool)

(assert (=> b!7084752 (= e!4259346 (nullable!7385 (regOne!35976 r!11554)))))

(declare-fun bm!643719 () Bool)

(declare-fun c!1322329 () Bool)

(declare-fun $colon$colon!2683 (List!68695 Regex!17732) List!68695)

(assert (=> bm!643719 (= call!643722 ($colon$colon!2683 (exprs!7228 c!9994) (ite (or c!1322331 c!1322329) (regTwo!35976 r!11554) r!11554)))))

(declare-fun b!7084753 () Bool)

(assert (=> b!7084753 (= e!4259343 e!4259342)))

(assert (=> b!7084753 (= c!1322329 (is-Concat!26577 r!11554))))

(declare-fun b!7084754 () Bool)

(declare-fun c!1322328 () Bool)

(assert (=> b!7084754 (= c!1322328 (is-Star!17732 r!11554))))

(assert (=> b!7084754 (= e!4259342 e!4259345)))

(declare-fun bm!643720 () Bool)

(assert (=> bm!643720 (= call!643727 (derivationStepZipperDown!2329 (ite c!1322330 (regOne!35977 r!11554) (ite c!1322331 (regTwo!35976 r!11554) (ite c!1322329 (regOne!35976 r!11554) (reg!18061 r!11554)))) (ite (or c!1322330 c!1322331) c!9994 (Context!13457 call!643723)) a!1901))))

(declare-fun b!7084755 () Bool)

(assert (=> b!7084755 (= e!4259345 (as set.empty (Set Context!13456)))))

(declare-fun bm!643721 () Bool)

(assert (=> bm!643721 (= call!643724 (derivationStepZipperDown!2329 (ite c!1322330 (regTwo!35977 r!11554) (regOne!35976 r!11554)) (ite c!1322330 c!9994 (Context!13457 call!643722)) a!1901))))

(declare-fun bm!643722 () Bool)

(assert (=> bm!643722 (= call!643725 call!643727)))

(assert (= (and d!2215850 c!1322332) b!7084749))

(assert (= (and d!2215850 (not c!1322332)) b!7084746))

(assert (= (and b!7084746 c!1322330) b!7084751))

(assert (= (and b!7084746 (not c!1322330)) b!7084747))

(assert (= (and b!7084747 res!2894285) b!7084752))

(assert (= (and b!7084747 c!1322331) b!7084745))

(assert (= (and b!7084747 (not c!1322331)) b!7084753))

(assert (= (and b!7084753 c!1322329) b!7084750))

(assert (= (and b!7084753 (not c!1322329)) b!7084754))

(assert (= (and b!7084754 c!1322328) b!7084748))

(assert (= (and b!7084754 (not c!1322328)) b!7084755))

(assert (= (or b!7084750 b!7084748) bm!643718))

(assert (= (or b!7084750 b!7084748) bm!643717))

(assert (= (or b!7084745 bm!643717) bm!643722))

(assert (= (or b!7084745 bm!643718) bm!643719))

(assert (= (or b!7084751 b!7084745) bm!643721))

(assert (= (or b!7084751 bm!643722) bm!643720))

(assert (=> b!7084749 m!7816312))

(declare-fun m!7816386 () Bool)

(assert (=> b!7084752 m!7816386))

(declare-fun m!7816388 () Bool)

(assert (=> bm!643719 m!7816388))

(declare-fun m!7816390 () Bool)

(assert (=> bm!643720 m!7816390))

(declare-fun m!7816392 () Bool)

(assert (=> bm!643721 m!7816392))

(assert (=> b!7084631 d!2215850))

(declare-fun d!2215858 () Bool)

(declare-fun dynLambda!27962 (Int Context!13456) Context!13456)

(assert (=> d!2215858 (= (map!16089 lt!2554427 lambda!428894) (set.insert (dynLambda!27962 lambda!428894 c!9994) (as set.empty (Set Context!13456))))))

(declare-fun lt!2554450 () Unit!162171)

(declare-fun choose!54595 ((Set Context!13456) Context!13456 Int) Unit!162171)

(assert (=> d!2215858 (= lt!2554450 (choose!54595 lt!2554427 c!9994 lambda!428894))))

(assert (=> d!2215858 (= lt!2554427 (set.insert c!9994 (as set.empty (Set Context!13456))))))

(assert (=> d!2215858 (= (lemmaMapOnSingletonSet!445 lt!2554427 c!9994 lambda!428894) lt!2554450)))

(declare-fun b_lambda!270795 () Bool)

(assert (=> (not b_lambda!270795) (not d!2215858)))

(declare-fun bs!1882844 () Bool)

(assert (= bs!1882844 d!2215858))

(assert (=> bs!1882844 m!7816312))

(declare-fun m!7816394 () Bool)

(assert (=> bs!1882844 m!7816394))

(assert (=> bs!1882844 m!7816322))

(assert (=> bs!1882844 m!7816394))

(declare-fun m!7816396 () Bool)

(assert (=> bs!1882844 m!7816396))

(declare-fun m!7816398 () Bool)

(assert (=> bs!1882844 m!7816398))

(assert (=> b!7084631 d!2215858))

(declare-fun b!7084756 () Bool)

(declare-fun e!4259349 () (Set Context!13456))

(declare-fun call!643730 () (Set Context!13456))

(declare-fun call!643731 () (Set Context!13456))

(assert (=> b!7084756 (= e!4259349 (set.union call!643730 call!643731))))

(declare-fun b!7084757 () Bool)

(declare-fun e!4259347 () (Set Context!13456))

(declare-fun e!4259350 () (Set Context!13456))

(assert (=> b!7084757 (= e!4259347 e!4259350)))

(declare-fun c!1322336 () Bool)

(assert (=> b!7084757 (= c!1322336 (is-Union!17732 r!11554))))

(declare-fun b!7084758 () Bool)

(declare-fun c!1322337 () Bool)

(declare-fun e!4259352 () Bool)

(assert (=> b!7084758 (= c!1322337 e!4259352)))

(declare-fun res!2894286 () Bool)

(assert (=> b!7084758 (=> (not res!2894286) (not e!4259352))))

(assert (=> b!7084758 (= res!2894286 (is-Concat!26577 r!11554))))

(assert (=> b!7084758 (= e!4259350 e!4259349)))

(declare-fun d!2215860 () Bool)

(declare-fun c!1322338 () Bool)

(assert (=> d!2215860 (= c!1322338 (and (is-ElementMatch!17732 r!11554) (= (c!1322303 r!11554) a!1901)))))

(assert (=> d!2215860 (= (derivationStepZipperDown!2329 r!11554 (Context!13457 (++!15909 (exprs!7228 c!9994) (exprs!7228 auxCtx!45))) a!1901) e!4259347)))

(declare-fun bm!643723 () Bool)

(declare-fun call!643732 () (Set Context!13456))

(assert (=> bm!643723 (= call!643732 call!643731)))

(declare-fun b!7084759 () Bool)

(declare-fun e!4259351 () (Set Context!13456))

(assert (=> b!7084759 (= e!4259351 call!643732)))

(declare-fun b!7084760 () Bool)

(assert (=> b!7084760 (= e!4259347 (set.insert (Context!13457 (++!15909 (exprs!7228 c!9994) (exprs!7228 auxCtx!45))) (as set.empty (Set Context!13456))))))

(declare-fun bm!643724 () Bool)

(declare-fun call!643729 () List!68695)

(declare-fun call!643728 () List!68695)

(assert (=> bm!643724 (= call!643729 call!643728)))

(declare-fun b!7084761 () Bool)

(declare-fun e!4259348 () (Set Context!13456))

(assert (=> b!7084761 (= e!4259348 call!643732)))

(declare-fun b!7084762 () Bool)

(declare-fun call!643733 () (Set Context!13456))

(assert (=> b!7084762 (= e!4259350 (set.union call!643733 call!643730))))

(declare-fun b!7084763 () Bool)

(assert (=> b!7084763 (= e!4259352 (nullable!7385 (regOne!35976 r!11554)))))

(declare-fun bm!643725 () Bool)

(declare-fun c!1322335 () Bool)

(assert (=> bm!643725 (= call!643728 ($colon$colon!2683 (exprs!7228 (Context!13457 (++!15909 (exprs!7228 c!9994) (exprs!7228 auxCtx!45)))) (ite (or c!1322337 c!1322335) (regTwo!35976 r!11554) r!11554)))))

(declare-fun b!7084764 () Bool)

(assert (=> b!7084764 (= e!4259349 e!4259348)))

(assert (=> b!7084764 (= c!1322335 (is-Concat!26577 r!11554))))

(declare-fun b!7084765 () Bool)

(declare-fun c!1322334 () Bool)

(assert (=> b!7084765 (= c!1322334 (is-Star!17732 r!11554))))

(assert (=> b!7084765 (= e!4259348 e!4259351)))

(declare-fun bm!643726 () Bool)

(assert (=> bm!643726 (= call!643733 (derivationStepZipperDown!2329 (ite c!1322336 (regOne!35977 r!11554) (ite c!1322337 (regTwo!35976 r!11554) (ite c!1322335 (regOne!35976 r!11554) (reg!18061 r!11554)))) (ite (or c!1322336 c!1322337) (Context!13457 (++!15909 (exprs!7228 c!9994) (exprs!7228 auxCtx!45))) (Context!13457 call!643729)) a!1901))))

(declare-fun b!7084766 () Bool)

(assert (=> b!7084766 (= e!4259351 (as set.empty (Set Context!13456)))))

(declare-fun bm!643727 () Bool)

(assert (=> bm!643727 (= call!643730 (derivationStepZipperDown!2329 (ite c!1322336 (regTwo!35977 r!11554) (regOne!35976 r!11554)) (ite c!1322336 (Context!13457 (++!15909 (exprs!7228 c!9994) (exprs!7228 auxCtx!45))) (Context!13457 call!643728)) a!1901))))

(declare-fun bm!643728 () Bool)

(assert (=> bm!643728 (= call!643731 call!643733)))

(assert (= (and d!2215860 c!1322338) b!7084760))

(assert (= (and d!2215860 (not c!1322338)) b!7084757))

(assert (= (and b!7084757 c!1322336) b!7084762))

(assert (= (and b!7084757 (not c!1322336)) b!7084758))

(assert (= (and b!7084758 res!2894286) b!7084763))

(assert (= (and b!7084758 c!1322337) b!7084756))

(assert (= (and b!7084758 (not c!1322337)) b!7084764))

(assert (= (and b!7084764 c!1322335) b!7084761))

(assert (= (and b!7084764 (not c!1322335)) b!7084765))

(assert (= (and b!7084765 c!1322334) b!7084759))

(assert (= (and b!7084765 (not c!1322334)) b!7084766))

(assert (= (or b!7084761 b!7084759) bm!643724))

(assert (= (or b!7084761 b!7084759) bm!643723))

(assert (= (or b!7084756 bm!643723) bm!643728))

(assert (= (or b!7084756 bm!643724) bm!643725))

(assert (= (or b!7084762 b!7084756) bm!643727))

(assert (= (or b!7084762 bm!643728) bm!643726))

(assert (=> b!7084760 m!7816320))

(assert (=> b!7084763 m!7816386))

(declare-fun m!7816400 () Bool)

(assert (=> bm!643725 m!7816400))

(declare-fun m!7816402 () Bool)

(assert (=> bm!643726 m!7816402))

(declare-fun m!7816404 () Bool)

(assert (=> bm!643727 m!7816404))

(assert (=> b!7084631 d!2215860))

(declare-fun b!7084775 () Bool)

(declare-fun e!4259358 () List!68695)

(assert (=> b!7084775 (= e!4259358 (exprs!7228 auxCtx!45))))

(declare-fun d!2215862 () Bool)

(declare-fun e!4259357 () Bool)

(assert (=> d!2215862 e!4259357))

(declare-fun res!2894291 () Bool)

(assert (=> d!2215862 (=> (not res!2894291) (not e!4259357))))

(declare-fun lt!2554455 () List!68695)

(declare-fun content!13915 (List!68695) (Set Regex!17732))

(assert (=> d!2215862 (= res!2894291 (= (content!13915 lt!2554455) (set.union (content!13915 (exprs!7228 c!9994)) (content!13915 (exprs!7228 auxCtx!45)))))))

(assert (=> d!2215862 (= lt!2554455 e!4259358)))

(declare-fun c!1322341 () Bool)

(assert (=> d!2215862 (= c!1322341 (is-Nil!68571 (exprs!7228 c!9994)))))

(assert (=> d!2215862 (= (++!15909 (exprs!7228 c!9994) (exprs!7228 auxCtx!45)) lt!2554455)))

(declare-fun b!7084777 () Bool)

(declare-fun res!2894292 () Bool)

(assert (=> b!7084777 (=> (not res!2894292) (not e!4259357))))

(declare-fun size!41290 (List!68695) Int)

(assert (=> b!7084777 (= res!2894292 (= (size!41290 lt!2554455) (+ (size!41290 (exprs!7228 c!9994)) (size!41290 (exprs!7228 auxCtx!45)))))))

(declare-fun b!7084778 () Bool)

(assert (=> b!7084778 (= e!4259357 (or (not (= (exprs!7228 auxCtx!45) Nil!68571)) (= lt!2554455 (exprs!7228 c!9994))))))

(declare-fun b!7084776 () Bool)

(assert (=> b!7084776 (= e!4259358 (Cons!68571 (h!75019 (exprs!7228 c!9994)) (++!15909 (t!382480 (exprs!7228 c!9994)) (exprs!7228 auxCtx!45))))))

(assert (= (and d!2215862 c!1322341) b!7084775))

(assert (= (and d!2215862 (not c!1322341)) b!7084776))

(assert (= (and d!2215862 res!2894291) b!7084777))

(assert (= (and b!7084777 res!2894292) b!7084778))

(declare-fun m!7816408 () Bool)

(assert (=> d!2215862 m!7816408))

(declare-fun m!7816410 () Bool)

(assert (=> d!2215862 m!7816410))

(declare-fun m!7816412 () Bool)

(assert (=> d!2215862 m!7816412))

(declare-fun m!7816414 () Bool)

(assert (=> b!7084777 m!7816414))

(declare-fun m!7816416 () Bool)

(assert (=> b!7084777 m!7816416))

(declare-fun m!7816418 () Bool)

(assert (=> b!7084777 m!7816418))

(declare-fun m!7816420 () Bool)

(assert (=> b!7084776 m!7816420))

(assert (=> b!7084631 d!2215862))

(declare-fun d!2215866 () Bool)

(declare-fun choose!54596 ((Set Context!13456) Int) (Set Context!13456))

(assert (=> d!2215866 (= (map!16089 lt!2554427 lambda!428894) (choose!54596 lt!2554427 lambda!428894))))

(declare-fun bs!1882848 () Bool)

(assert (= bs!1882848 d!2215866))

(declare-fun m!7816424 () Bool)

(assert (=> bs!1882848 m!7816424))

(assert (=> b!7084631 d!2215866))

(declare-fun b!7084790 () Bool)

(declare-fun e!4259361 () Bool)

(declare-fun tp!1944847 () Bool)

(declare-fun tp!1944844 () Bool)

(assert (=> b!7084790 (= e!4259361 (and tp!1944847 tp!1944844))))

(declare-fun b!7084791 () Bool)

(declare-fun tp!1944845 () Bool)

(assert (=> b!7084791 (= e!4259361 tp!1944845)))

(assert (=> b!7084628 (= tp!1944806 e!4259361)))

(declare-fun b!7084792 () Bool)

(declare-fun tp!1944846 () Bool)

(declare-fun tp!1944843 () Bool)

(assert (=> b!7084792 (= e!4259361 (and tp!1944846 tp!1944843))))

(declare-fun b!7084789 () Bool)

(assert (=> b!7084789 (= e!4259361 tp_is_empty!44697)))

(assert (= (and b!7084628 (is-ElementMatch!17732 (regOne!35976 r!11554))) b!7084789))

(assert (= (and b!7084628 (is-Concat!26577 (regOne!35976 r!11554))) b!7084790))

(assert (= (and b!7084628 (is-Star!17732 (regOne!35976 r!11554))) b!7084791))

(assert (= (and b!7084628 (is-Union!17732 (regOne!35976 r!11554))) b!7084792))

(declare-fun b!7084794 () Bool)

(declare-fun e!4259362 () Bool)

(declare-fun tp!1944852 () Bool)

(declare-fun tp!1944849 () Bool)

(assert (=> b!7084794 (= e!4259362 (and tp!1944852 tp!1944849))))

(declare-fun b!7084795 () Bool)

(declare-fun tp!1944850 () Bool)

(assert (=> b!7084795 (= e!4259362 tp!1944850)))

(assert (=> b!7084628 (= tp!1944808 e!4259362)))

(declare-fun b!7084796 () Bool)

(declare-fun tp!1944851 () Bool)

(declare-fun tp!1944848 () Bool)

(assert (=> b!7084796 (= e!4259362 (and tp!1944851 tp!1944848))))

(declare-fun b!7084793 () Bool)

(assert (=> b!7084793 (= e!4259362 tp_is_empty!44697)))

(assert (= (and b!7084628 (is-ElementMatch!17732 (regTwo!35976 r!11554))) b!7084793))

(assert (= (and b!7084628 (is-Concat!26577 (regTwo!35976 r!11554))) b!7084794))

(assert (= (and b!7084628 (is-Star!17732 (regTwo!35976 r!11554))) b!7084795))

(assert (= (and b!7084628 (is-Union!17732 (regTwo!35976 r!11554))) b!7084796))

(declare-fun b!7084801 () Bool)

(declare-fun e!4259365 () Bool)

(declare-fun tp!1944857 () Bool)

(declare-fun tp!1944858 () Bool)

(assert (=> b!7084801 (= e!4259365 (and tp!1944857 tp!1944858))))

(assert (=> b!7084627 (= tp!1944809 e!4259365)))

(assert (= (and b!7084627 (is-Cons!68571 (exprs!7228 auxCtx!45))) b!7084801))

(declare-fun b!7084803 () Bool)

(declare-fun e!4259366 () Bool)

(declare-fun tp!1944863 () Bool)

(declare-fun tp!1944860 () Bool)

(assert (=> b!7084803 (= e!4259366 (and tp!1944863 tp!1944860))))

(declare-fun b!7084804 () Bool)

(declare-fun tp!1944861 () Bool)

(assert (=> b!7084804 (= e!4259366 tp!1944861)))

(assert (=> b!7084625 (= tp!1944807 e!4259366)))

(declare-fun b!7084805 () Bool)

(declare-fun tp!1944862 () Bool)

(declare-fun tp!1944859 () Bool)

(assert (=> b!7084805 (= e!4259366 (and tp!1944862 tp!1944859))))

(declare-fun b!7084802 () Bool)

(assert (=> b!7084802 (= e!4259366 tp_is_empty!44697)))

(assert (= (and b!7084625 (is-ElementMatch!17732 (reg!18061 r!11554))) b!7084802))

(assert (= (and b!7084625 (is-Concat!26577 (reg!18061 r!11554))) b!7084803))

(assert (= (and b!7084625 (is-Star!17732 (reg!18061 r!11554))) b!7084804))

(assert (= (and b!7084625 (is-Union!17732 (reg!18061 r!11554))) b!7084805))

(declare-fun b!7084807 () Bool)

(declare-fun e!4259367 () Bool)

(declare-fun tp!1944868 () Bool)

(declare-fun tp!1944865 () Bool)

(assert (=> b!7084807 (= e!4259367 (and tp!1944868 tp!1944865))))

(declare-fun b!7084808 () Bool)

(declare-fun tp!1944866 () Bool)

(assert (=> b!7084808 (= e!4259367 tp!1944866)))

(assert (=> b!7084629 (= tp!1944810 e!4259367)))

(declare-fun b!7084809 () Bool)

(declare-fun tp!1944867 () Bool)

(declare-fun tp!1944864 () Bool)

(assert (=> b!7084809 (= e!4259367 (and tp!1944867 tp!1944864))))

(declare-fun b!7084806 () Bool)

(assert (=> b!7084806 (= e!4259367 tp_is_empty!44697)))

(assert (= (and b!7084629 (is-ElementMatch!17732 (regOne!35977 r!11554))) b!7084806))

(assert (= (and b!7084629 (is-Concat!26577 (regOne!35977 r!11554))) b!7084807))

(assert (= (and b!7084629 (is-Star!17732 (regOne!35977 r!11554))) b!7084808))

(assert (= (and b!7084629 (is-Union!17732 (regOne!35977 r!11554))) b!7084809))

(declare-fun b!7084811 () Bool)

(declare-fun e!4259368 () Bool)

(declare-fun tp!1944873 () Bool)

(declare-fun tp!1944870 () Bool)

(assert (=> b!7084811 (= e!4259368 (and tp!1944873 tp!1944870))))

(declare-fun b!7084812 () Bool)

(declare-fun tp!1944871 () Bool)

(assert (=> b!7084812 (= e!4259368 tp!1944871)))

(assert (=> b!7084629 (= tp!1944805 e!4259368)))

(declare-fun b!7084813 () Bool)

(declare-fun tp!1944872 () Bool)

(declare-fun tp!1944869 () Bool)

(assert (=> b!7084813 (= e!4259368 (and tp!1944872 tp!1944869))))

(declare-fun b!7084810 () Bool)

(assert (=> b!7084810 (= e!4259368 tp_is_empty!44697)))

(assert (= (and b!7084629 (is-ElementMatch!17732 (regTwo!35977 r!11554))) b!7084810))

(assert (= (and b!7084629 (is-Concat!26577 (regTwo!35977 r!11554))) b!7084811))

(assert (= (and b!7084629 (is-Star!17732 (regTwo!35977 r!11554))) b!7084812))

(assert (= (and b!7084629 (is-Union!17732 (regTwo!35977 r!11554))) b!7084813))

(declare-fun b!7084814 () Bool)

(declare-fun e!4259369 () Bool)

(declare-fun tp!1944874 () Bool)

(declare-fun tp!1944875 () Bool)

(assert (=> b!7084814 (= e!4259369 (and tp!1944874 tp!1944875))))

(assert (=> b!7084624 (= tp!1944811 e!4259369)))

(assert (= (and b!7084624 (is-Cons!68571 (exprs!7228 c!9994))) b!7084814))

(declare-fun b_lambda!270797 () Bool)

(assert (= b_lambda!270793 (or b!7084631 b_lambda!270797)))

(declare-fun bs!1882849 () Bool)

(declare-fun d!2215870 () Bool)

(assert (= bs!1882849 (and d!2215870 b!7084631)))

(assert (=> bs!1882849 (= (dynLambda!27961 lambda!428895 (h!75019 (exprs!7228 c!9994))) (validRegex!9007 (h!75019 (exprs!7228 c!9994))))))

(declare-fun m!7816426 () Bool)

(assert (=> bs!1882849 m!7816426))

(assert (=> b!7084667 d!2215870))

(declare-fun b_lambda!270799 () Bool)

(assert (= b_lambda!270795 (or b!7084630 b_lambda!270799)))

(declare-fun bs!1882850 () Bool)

(declare-fun d!2215872 () Bool)

(assert (= bs!1882850 (and d!2215872 b!7084630)))

(declare-fun bs!1882851 () Bool)

(assert (= bs!1882851 (and d!2215872 b!7084630 b!7084631)))

(declare-fun lambda!428926 () Int)

(assert (=> bs!1882851 (= lambda!428926 lambda!428895)))

(declare-fun bs!1882852 () Bool)

(assert (= bs!1882852 (and d!2215872 b!7084630 d!2215842)))

(assert (=> bs!1882852 (= lambda!428926 lambda!428910)))

(declare-fun bs!1882853 () Bool)

(assert (= bs!1882853 (and d!2215872 b!7084630 d!2215844)))

(assert (=> bs!1882853 (= lambda!428926 lambda!428911)))

(declare-fun lt!2554456 () Unit!162171)

(assert (=> bs!1882850 (= lt!2554456 (lemmaConcatPreservesForall!1039 (exprs!7228 c!9994) (exprs!7228 auxCtx!45) lambda!428926))))

(assert (=> bs!1882850 (= (dynLambda!27962 lambda!428894 c!9994) (Context!13457 (++!15909 (exprs!7228 c!9994) (exprs!7228 auxCtx!45))))))

(declare-fun m!7816428 () Bool)

(assert (=> bs!1882850 m!7816428))

(assert (=> bs!1882850 m!7816314))

(assert (=> d!2215858 d!2215872))

(push 1)

(assert (not b!7084776))

(assert (not b!7084790))

(assert (not bm!643695))

(assert (not d!2215844))

(assert (not bm!643693))

(assert (not b!7084796))

(assert (not d!2215842))

(assert (not b_lambda!270797))

(assert (not b!7084812))

(assert (not b!7084805))

(assert (not b_lambda!270799))

(assert (not bm!643720))

(assert (not b!7084803))

(assert tp_is_empty!44697)

(assert (not b!7084668))

(assert (not b!7084801))

(assert (not b!7084794))

(assert (not b!7084791))

(assert (not bm!643719))

(assert (not bm!643725))

(assert (not b!7084813))

(assert (not bs!1882849))

(assert (not d!2215858))

(assert (not b!7084763))

(assert (not bm!643727))

(assert (not b!7084752))

(assert (not b!7084795))

(assert (not b!7084777))

(assert (not b!7084811))

(assert (not d!2215862))

(assert (not b!7084792))

(assert (not b!7084807))

(assert (not bm!643721))

(assert (not bs!1882850))

(assert (not b!7084804))

(assert (not b!7084809))

(assert (not b!7084808))

(assert (not b!7084814))

(assert (not d!2215846))

(assert (not d!2215848))

(assert (not bm!643726))

(assert (not b!7084693))

(assert (not d!2215866))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

