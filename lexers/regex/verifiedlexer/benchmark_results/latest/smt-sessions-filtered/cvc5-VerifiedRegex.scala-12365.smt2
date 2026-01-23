; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!692710 () Bool)

(assert start!692710)

(declare-fun b!7117191 () Bool)

(declare-fun res!2903773 () Bool)

(declare-fun e!4276683 () Bool)

(assert (=> b!7117191 (=> (not res!2903773) (not e!4276683))))

(declare-datatypes ((C!36214 0))(
  ( (C!36215 (val!27813 Int)) )
))
(declare-datatypes ((Regex!17972 0))(
  ( (ElementMatch!17972 (c!1328161 C!36214)) (Concat!26817 (regOne!36456 Regex!17972) (regTwo!36456 Regex!17972)) (EmptyExpr!17972) (Star!17972 (reg!18301 Regex!17972)) (EmptyLang!17972) (Union!17972 (regOne!36457 Regex!17972) (regTwo!36457 Regex!17972)) )
))
(declare-datatypes ((List!68933 0))(
  ( (Nil!68809) (Cons!68809 (h!75257 Regex!17972) (t!382784 List!68933)) )
))
(declare-fun lt!2560833 () List!68933)

(declare-fun a!1901 () C!36214)

(declare-fun r!11554 () Regex!17972)

(declare-datatypes ((Context!13932 0))(
  ( (Context!13933 (exprs!7466 List!68933)) )
))
(declare-fun derivationStepZipperDown!2469 (Regex!17972 Context!13932 C!36214) (Set Context!13932))

(declare-fun $colon$colon!2816 (List!68933 Regex!17972) List!68933)

(assert (=> b!7117191 (= res!2903773 (= (derivationStepZipperDown!2469 r!11554 (Context!13933 lt!2560833) a!1901) (derivationStepZipperDown!2469 (reg!18301 r!11554) (Context!13933 ($colon$colon!2816 lt!2560833 r!11554)) a!1901)))))

(declare-fun b!7117192 () Bool)

(declare-fun c!9994 () Context!13932)

(declare-fun inv!87794 (Context!13932) Bool)

(assert (=> b!7117192 (= e!4276683 (not (inv!87794 (Context!13933 ($colon$colon!2816 (exprs!7466 c!9994) r!11554)))))))

(declare-fun b!7117193 () Bool)

(declare-fun res!2903768 () Bool)

(declare-fun e!4276686 () Bool)

(assert (=> b!7117193 (=> (not res!2903768) (not e!4276686))))

(assert (=> b!7117193 (= res!2903768 (and (or (not (is-ElementMatch!17972 r!11554)) (not (= (c!1328161 r!11554) a!1901))) (not (is-Union!17972 r!11554))))))

(declare-fun b!7117194 () Bool)

(declare-fun e!4276684 () Bool)

(declare-fun tp!1959009 () Bool)

(declare-fun tp!1959014 () Bool)

(assert (=> b!7117194 (= e!4276684 (and tp!1959009 tp!1959014))))

(declare-fun res!2903769 () Bool)

(assert (=> start!692710 (=> (not res!2903769) (not e!4276686))))

(declare-fun validRegex!9245 (Regex!17972) Bool)

(assert (=> start!692710 (= res!2903769 (validRegex!9245 r!11554))))

(assert (=> start!692710 e!4276686))

(assert (=> start!692710 e!4276684))

(declare-fun tp_is_empty!45177 () Bool)

(assert (=> start!692710 tp_is_empty!45177))

(declare-fun e!4276682 () Bool)

(assert (=> start!692710 (and (inv!87794 c!9994) e!4276682)))

(declare-fun auxCtx!45 () Context!13932)

(declare-fun e!4276681 () Bool)

(assert (=> start!692710 (and (inv!87794 auxCtx!45) e!4276681)))

(declare-fun b!7117195 () Bool)

(declare-fun tp!1959013 () Bool)

(assert (=> b!7117195 (= e!4276682 tp!1959013)))

(declare-fun b!7117196 () Bool)

(declare-fun tp!1959011 () Bool)

(declare-fun tp!1959012 () Bool)

(assert (=> b!7117196 (= e!4276684 (and tp!1959011 tp!1959012))))

(declare-fun b!7117197 () Bool)

(declare-fun tp!1959010 () Bool)

(assert (=> b!7117197 (= e!4276684 tp!1959010)))

(declare-fun b!7117198 () Bool)

(declare-fun tp!1959015 () Bool)

(assert (=> b!7117198 (= e!4276681 tp!1959015)))

(declare-fun b!7117199 () Bool)

(assert (=> b!7117199 (= e!4276686 e!4276683)))

(declare-fun res!2903771 () Bool)

(assert (=> b!7117199 (=> (not res!2903771) (not e!4276683))))

(assert (=> b!7117199 (= res!2903771 (validRegex!9245 r!11554))))

(declare-fun ++!16124 (List!68933 List!68933) List!68933)

(assert (=> b!7117199 (= lt!2560833 (++!16124 (exprs!7466 c!9994) (exprs!7466 auxCtx!45)))))

(declare-fun lambda!432458 () Int)

(declare-datatypes ((Unit!162615 0))(
  ( (Unit!162616) )
))
(declare-fun lt!2560832 () Unit!162615)

(declare-fun lemmaConcatPreservesForall!1257 (List!68933 List!68933 Int) Unit!162615)

(assert (=> b!7117199 (= lt!2560832 (lemmaConcatPreservesForall!1257 (exprs!7466 c!9994) (exprs!7466 auxCtx!45) lambda!432458))))

(declare-fun lt!2560831 () Unit!162615)

(assert (=> b!7117199 (= lt!2560831 (lemmaConcatPreservesForall!1257 (exprs!7466 c!9994) (exprs!7466 auxCtx!45) lambda!432458))))

(declare-fun b!7117200 () Bool)

(declare-fun res!2903770 () Bool)

(assert (=> b!7117200 (=> (not res!2903770) (not e!4276686))))

(declare-fun e!4276685 () Bool)

(assert (=> b!7117200 (= res!2903770 e!4276685)))

(declare-fun res!2903767 () Bool)

(assert (=> b!7117200 (=> res!2903767 e!4276685)))

(assert (=> b!7117200 (= res!2903767 (not (is-Concat!26817 r!11554)))))

(declare-fun b!7117201 () Bool)

(declare-fun res!2903772 () Bool)

(assert (=> b!7117201 (=> (not res!2903772) (not e!4276686))))

(assert (=> b!7117201 (= res!2903772 (and (not (is-Concat!26817 r!11554)) (is-Star!17972 r!11554)))))

(declare-fun b!7117202 () Bool)

(assert (=> b!7117202 (= e!4276684 tp_is_empty!45177)))

(declare-fun b!7117203 () Bool)

(declare-fun nullable!7609 (Regex!17972) Bool)

(assert (=> b!7117203 (= e!4276685 (not (nullable!7609 (regOne!36456 r!11554))))))

(assert (= (and start!692710 res!2903769) b!7117193))

(assert (= (and b!7117193 res!2903768) b!7117200))

(assert (= (and b!7117200 (not res!2903767)) b!7117203))

(assert (= (and b!7117200 res!2903770) b!7117201))

(assert (= (and b!7117201 res!2903772) b!7117199))

(assert (= (and b!7117199 res!2903771) b!7117191))

(assert (= (and b!7117191 res!2903773) b!7117192))

(assert (= (and start!692710 (is-ElementMatch!17972 r!11554)) b!7117202))

(assert (= (and start!692710 (is-Concat!26817 r!11554)) b!7117194))

(assert (= (and start!692710 (is-Star!17972 r!11554)) b!7117197))

(assert (= (and start!692710 (is-Union!17972 r!11554)) b!7117196))

(assert (= start!692710 b!7117195))

(assert (= start!692710 b!7117198))

(declare-fun m!7835616 () Bool)

(assert (=> start!692710 m!7835616))

(declare-fun m!7835618 () Bool)

(assert (=> start!692710 m!7835618))

(declare-fun m!7835620 () Bool)

(assert (=> start!692710 m!7835620))

(declare-fun m!7835622 () Bool)

(assert (=> b!7117191 m!7835622))

(declare-fun m!7835624 () Bool)

(assert (=> b!7117191 m!7835624))

(declare-fun m!7835626 () Bool)

(assert (=> b!7117191 m!7835626))

(assert (=> b!7117199 m!7835616))

(declare-fun m!7835628 () Bool)

(assert (=> b!7117199 m!7835628))

(declare-fun m!7835630 () Bool)

(assert (=> b!7117199 m!7835630))

(assert (=> b!7117199 m!7835630))

(declare-fun m!7835632 () Bool)

(assert (=> b!7117192 m!7835632))

(declare-fun m!7835634 () Bool)

(assert (=> b!7117192 m!7835634))

(declare-fun m!7835636 () Bool)

(assert (=> b!7117203 m!7835636))

(push 1)

(assert (not start!692710))

(assert tp_is_empty!45177)

(assert (not b!7117194))

(assert (not b!7117195))

(assert (not b!7117199))

(assert (not b!7117196))

(assert (not b!7117197))

(assert (not b!7117198))

(assert (not b!7117192))

(assert (not b!7117203))

(assert (not b!7117191))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7117261 () Bool)

(declare-fun e!4276720 () Bool)

(declare-fun e!4276719 () Bool)

(assert (=> b!7117261 (= e!4276720 e!4276719)))

(declare-fun res!2903807 () Bool)

(assert (=> b!7117261 (=> (not res!2903807) (not e!4276719))))

(declare-fun call!649954 () Bool)

(assert (=> b!7117261 (= res!2903807 call!649954)))

(declare-fun b!7117262 () Bool)

(declare-fun e!4276721 () Bool)

(assert (=> b!7117262 (= e!4276721 call!649954)))

(declare-fun b!7117263 () Bool)

(declare-fun res!2903808 () Bool)

(assert (=> b!7117263 (=> res!2903808 e!4276720)))

(assert (=> b!7117263 (= res!2903808 (not (is-Concat!26817 r!11554)))))

(declare-fun e!4276724 () Bool)

(assert (=> b!7117263 (= e!4276724 e!4276720)))

(declare-fun b!7117265 () Bool)

(declare-fun e!4276723 () Bool)

(assert (=> b!7117265 (= e!4276723 e!4276724)))

(declare-fun c!1328168 () Bool)

(assert (=> b!7117265 (= c!1328168 (is-Union!17972 r!11554))))

(declare-fun bm!649949 () Bool)

(declare-fun call!649956 () Bool)

(assert (=> bm!649949 (= call!649956 (validRegex!9245 (ite c!1328168 (regOne!36457 r!11554) (regTwo!36456 r!11554))))))

(declare-fun b!7117266 () Bool)

(assert (=> b!7117266 (= e!4276719 call!649956)))

(declare-fun c!1328167 () Bool)

(declare-fun bm!649950 () Bool)

(declare-fun call!649955 () Bool)

(assert (=> bm!649950 (= call!649955 (validRegex!9245 (ite c!1328167 (reg!18301 r!11554) (ite c!1328168 (regTwo!36457 r!11554) (regOne!36456 r!11554)))))))

(declare-fun b!7117264 () Bool)

(declare-fun e!4276722 () Bool)

(assert (=> b!7117264 (= e!4276722 e!4276723)))

(assert (=> b!7117264 (= c!1328167 (is-Star!17972 r!11554))))

(declare-fun d!2221316 () Bool)

(declare-fun res!2903805 () Bool)

(assert (=> d!2221316 (=> res!2903805 e!4276722)))

(assert (=> d!2221316 (= res!2903805 (is-ElementMatch!17972 r!11554))))

(assert (=> d!2221316 (= (validRegex!9245 r!11554) e!4276722)))

(declare-fun b!7117267 () Bool)

(declare-fun e!4276725 () Bool)

(assert (=> b!7117267 (= e!4276725 call!649955)))

(declare-fun b!7117268 () Bool)

(assert (=> b!7117268 (= e!4276723 e!4276725)))

(declare-fun res!2903809 () Bool)

(assert (=> b!7117268 (= res!2903809 (not (nullable!7609 (reg!18301 r!11554))))))

(assert (=> b!7117268 (=> (not res!2903809) (not e!4276725))))

(declare-fun bm!649951 () Bool)

(assert (=> bm!649951 (= call!649954 call!649955)))

(declare-fun b!7117269 () Bool)

(declare-fun res!2903806 () Bool)

(assert (=> b!7117269 (=> (not res!2903806) (not e!4276721))))

(assert (=> b!7117269 (= res!2903806 call!649956)))

(assert (=> b!7117269 (= e!4276724 e!4276721)))

(assert (= (and d!2221316 (not res!2903805)) b!7117264))

(assert (= (and b!7117264 c!1328167) b!7117268))

(assert (= (and b!7117264 (not c!1328167)) b!7117265))

(assert (= (and b!7117268 res!2903809) b!7117267))

(assert (= (and b!7117265 c!1328168) b!7117269))

(assert (= (and b!7117265 (not c!1328168)) b!7117263))

(assert (= (and b!7117269 res!2903806) b!7117262))

(assert (= (and b!7117263 (not res!2903808)) b!7117261))

(assert (= (and b!7117261 res!2903807) b!7117266))

(assert (= (or b!7117269 b!7117266) bm!649949))

(assert (= (or b!7117262 b!7117261) bm!649951))

(assert (= (or b!7117267 bm!649951) bm!649950))

(declare-fun m!7835660 () Bool)

(assert (=> bm!649949 m!7835660))

(declare-fun m!7835662 () Bool)

(assert (=> bm!649950 m!7835662))

(declare-fun m!7835664 () Bool)

(assert (=> b!7117268 m!7835664))

(assert (=> start!692710 d!2221316))

(declare-fun bs!1885627 () Bool)

(declare-fun d!2221320 () Bool)

(assert (= bs!1885627 (and d!2221320 b!7117199)))

(declare-fun lambda!432466 () Int)

(assert (=> bs!1885627 (= lambda!432466 lambda!432458)))

(declare-fun forall!16860 (List!68933 Int) Bool)

(assert (=> d!2221320 (= (inv!87794 c!9994) (forall!16860 (exprs!7466 c!9994) lambda!432466))))

(declare-fun bs!1885628 () Bool)

(assert (= bs!1885628 d!2221320))

(declare-fun m!7835666 () Bool)

(assert (=> bs!1885628 m!7835666))

(assert (=> start!692710 d!2221320))

(declare-fun bs!1885629 () Bool)

(declare-fun d!2221322 () Bool)

(assert (= bs!1885629 (and d!2221322 b!7117199)))

(declare-fun lambda!432467 () Int)

(assert (=> bs!1885629 (= lambda!432467 lambda!432458)))

(declare-fun bs!1885630 () Bool)

(assert (= bs!1885630 (and d!2221322 d!2221320)))

(assert (=> bs!1885630 (= lambda!432467 lambda!432466)))

(assert (=> d!2221322 (= (inv!87794 auxCtx!45) (forall!16860 (exprs!7466 auxCtx!45) lambda!432467))))

(declare-fun bs!1885631 () Bool)

(assert (= bs!1885631 d!2221322))

(declare-fun m!7835668 () Bool)

(assert (=> bs!1885631 m!7835668))

(assert (=> start!692710 d!2221322))

(assert (=> b!7117199 d!2221316))

(declare-fun b!7117300 () Bool)

(declare-fun e!4276742 () List!68933)

(assert (=> b!7117300 (= e!4276742 (exprs!7466 auxCtx!45))))

(declare-fun lt!2560845 () List!68933)

(declare-fun b!7117303 () Bool)

(declare-fun e!4276743 () Bool)

(assert (=> b!7117303 (= e!4276743 (or (not (= (exprs!7466 auxCtx!45) Nil!68809)) (= lt!2560845 (exprs!7466 c!9994))))))

(declare-fun b!7117302 () Bool)

(declare-fun res!2903816 () Bool)

(assert (=> b!7117302 (=> (not res!2903816) (not e!4276743))))

(declare-fun size!41420 (List!68933) Int)

(assert (=> b!7117302 (= res!2903816 (= (size!41420 lt!2560845) (+ (size!41420 (exprs!7466 c!9994)) (size!41420 (exprs!7466 auxCtx!45)))))))

(declare-fun d!2221324 () Bool)

(assert (=> d!2221324 e!4276743))

(declare-fun res!2903817 () Bool)

(assert (=> d!2221324 (=> (not res!2903817) (not e!4276743))))

(declare-fun content!14045 (List!68933) (Set Regex!17972))

(assert (=> d!2221324 (= res!2903817 (= (content!14045 lt!2560845) (set.union (content!14045 (exprs!7466 c!9994)) (content!14045 (exprs!7466 auxCtx!45)))))))

(assert (=> d!2221324 (= lt!2560845 e!4276742)))

(declare-fun c!1328181 () Bool)

(assert (=> d!2221324 (= c!1328181 (is-Nil!68809 (exprs!7466 c!9994)))))

(assert (=> d!2221324 (= (++!16124 (exprs!7466 c!9994) (exprs!7466 auxCtx!45)) lt!2560845)))

(declare-fun b!7117301 () Bool)

(assert (=> b!7117301 (= e!4276742 (Cons!68809 (h!75257 (exprs!7466 c!9994)) (++!16124 (t!382784 (exprs!7466 c!9994)) (exprs!7466 auxCtx!45))))))

(assert (= (and d!2221324 c!1328181) b!7117300))

(assert (= (and d!2221324 (not c!1328181)) b!7117301))

(assert (= (and d!2221324 res!2903817) b!7117302))

(assert (= (and b!7117302 res!2903816) b!7117303))

(declare-fun m!7835670 () Bool)

(assert (=> b!7117302 m!7835670))

(declare-fun m!7835672 () Bool)

(assert (=> b!7117302 m!7835672))

(declare-fun m!7835674 () Bool)

(assert (=> b!7117302 m!7835674))

(declare-fun m!7835676 () Bool)

(assert (=> d!2221324 m!7835676))

(declare-fun m!7835678 () Bool)

(assert (=> d!2221324 m!7835678))

(declare-fun m!7835680 () Bool)

(assert (=> d!2221324 m!7835680))

(declare-fun m!7835682 () Bool)

(assert (=> b!7117301 m!7835682))

(assert (=> b!7117199 d!2221324))

(declare-fun d!2221326 () Bool)

(assert (=> d!2221326 (forall!16860 (++!16124 (exprs!7466 c!9994) (exprs!7466 auxCtx!45)) lambda!432458)))

(declare-fun lt!2560848 () Unit!162615)

(declare-fun choose!54895 (List!68933 List!68933 Int) Unit!162615)

(assert (=> d!2221326 (= lt!2560848 (choose!54895 (exprs!7466 c!9994) (exprs!7466 auxCtx!45) lambda!432458))))

(assert (=> d!2221326 (forall!16860 (exprs!7466 c!9994) lambda!432458)))

(assert (=> d!2221326 (= (lemmaConcatPreservesForall!1257 (exprs!7466 c!9994) (exprs!7466 auxCtx!45) lambda!432458) lt!2560848)))

(declare-fun bs!1885632 () Bool)

(assert (= bs!1885632 d!2221326))

(assert (=> bs!1885632 m!7835628))

(assert (=> bs!1885632 m!7835628))

(declare-fun m!7835684 () Bool)

(assert (=> bs!1885632 m!7835684))

(declare-fun m!7835686 () Bool)

(assert (=> bs!1885632 m!7835686))

(declare-fun m!7835688 () Bool)

(assert (=> bs!1885632 m!7835688))

(assert (=> b!7117199 d!2221326))

(declare-fun d!2221328 () Bool)

(declare-fun nullableFct!2951 (Regex!17972) Bool)

(assert (=> d!2221328 (= (nullable!7609 (regOne!36456 r!11554)) (nullableFct!2951 (regOne!36456 r!11554)))))

(declare-fun bs!1885633 () Bool)

(assert (= bs!1885633 d!2221328))

(declare-fun m!7835690 () Bool)

(assert (=> bs!1885633 m!7835690))

(assert (=> b!7117203 d!2221328))

(declare-fun bs!1885634 () Bool)

(declare-fun d!2221330 () Bool)

(assert (= bs!1885634 (and d!2221330 b!7117199)))

(declare-fun lambda!432468 () Int)

(assert (=> bs!1885634 (= lambda!432468 lambda!432458)))

(declare-fun bs!1885635 () Bool)

(assert (= bs!1885635 (and d!2221330 d!2221320)))

(assert (=> bs!1885635 (= lambda!432468 lambda!432466)))

(declare-fun bs!1885636 () Bool)

(assert (= bs!1885636 (and d!2221330 d!2221322)))

(assert (=> bs!1885636 (= lambda!432468 lambda!432467)))

(assert (=> d!2221330 (= (inv!87794 (Context!13933 ($colon$colon!2816 (exprs!7466 c!9994) r!11554))) (forall!16860 (exprs!7466 (Context!13933 ($colon$colon!2816 (exprs!7466 c!9994) r!11554))) lambda!432468))))

(declare-fun bs!1885637 () Bool)

(assert (= bs!1885637 d!2221330))

(declare-fun m!7835692 () Bool)

(assert (=> bs!1885637 m!7835692))

(assert (=> b!7117192 d!2221330))

(declare-fun d!2221332 () Bool)

(assert (=> d!2221332 (= ($colon$colon!2816 (exprs!7466 c!9994) r!11554) (Cons!68809 r!11554 (exprs!7466 c!9994)))))

(assert (=> b!7117192 d!2221332))

(declare-fun b!7117326 () Bool)

(declare-fun e!4276756 () (Set Context!13932))

(declare-fun call!649981 () (Set Context!13932))

(declare-fun call!649983 () (Set Context!13932))

(assert (=> b!7117326 (= e!4276756 (set.union call!649981 call!649983))))

(declare-fun b!7117327 () Bool)

(declare-fun e!4276759 () (Set Context!13932))

(assert (=> b!7117327 (= e!4276759 (set.insert (Context!13933 lt!2560833) (as set.empty (Set Context!13932))))))

(declare-fun b!7117328 () Bool)

(declare-fun e!4276761 () (Set Context!13932))

(declare-fun call!649982 () (Set Context!13932))

(assert (=> b!7117328 (= e!4276761 call!649982)))

(declare-fun c!1328193 () Bool)

(declare-fun bm!649976 () Bool)

(declare-fun call!649985 () List!68933)

(assert (=> bm!649976 (= call!649981 (derivationStepZipperDown!2469 (ite c!1328193 (regTwo!36457 r!11554) (regOne!36456 r!11554)) (ite c!1328193 (Context!13933 lt!2560833) (Context!13933 call!649985)) a!1901))))

(declare-fun b!7117329 () Bool)

(assert (=> b!7117329 (= e!4276761 (as set.empty (Set Context!13932)))))

(declare-fun bm!649977 () Bool)

(declare-fun call!649986 () List!68933)

(assert (=> bm!649977 (= call!649986 call!649985)))

(declare-fun b!7117330 () Bool)

(declare-fun e!4276757 () (Set Context!13932))

(declare-fun call!649984 () (Set Context!13932))

(assert (=> b!7117330 (= e!4276757 (set.union call!649984 call!649981))))

(declare-fun bm!649978 () Bool)

(assert (=> bm!649978 (= call!649983 call!649984)))

(declare-fun b!7117331 () Bool)

(declare-fun c!1328192 () Bool)

(assert (=> b!7117331 (= c!1328192 (is-Star!17972 r!11554))))

(declare-fun e!4276760 () (Set Context!13932))

(assert (=> b!7117331 (= e!4276760 e!4276761)))

(declare-fun b!7117332 () Bool)

(declare-fun c!1328195 () Bool)

(declare-fun e!4276758 () Bool)

(assert (=> b!7117332 (= c!1328195 e!4276758)))

(declare-fun res!2903820 () Bool)

(assert (=> b!7117332 (=> (not res!2903820) (not e!4276758))))

(assert (=> b!7117332 (= res!2903820 (is-Concat!26817 r!11554))))

(assert (=> b!7117332 (= e!4276757 e!4276756)))

(declare-fun b!7117333 () Bool)

(assert (=> b!7117333 (= e!4276756 e!4276760)))

(declare-fun c!1328196 () Bool)

(assert (=> b!7117333 (= c!1328196 (is-Concat!26817 r!11554))))

(declare-fun b!7117335 () Bool)

(assert (=> b!7117335 (= e!4276759 e!4276757)))

(assert (=> b!7117335 (= c!1328193 (is-Union!17972 r!11554))))

(declare-fun b!7117336 () Bool)

(assert (=> b!7117336 (= e!4276760 call!649982)))

(declare-fun bm!649979 () Bool)

(assert (=> bm!649979 (= call!649982 call!649983)))

(declare-fun bm!649980 () Bool)

(assert (=> bm!649980 (= call!649984 (derivationStepZipperDown!2469 (ite c!1328193 (regOne!36457 r!11554) (ite c!1328195 (regTwo!36456 r!11554) (ite c!1328196 (regOne!36456 r!11554) (reg!18301 r!11554)))) (ite (or c!1328193 c!1328195) (Context!13933 lt!2560833) (Context!13933 call!649986)) a!1901))))

(declare-fun bm!649981 () Bool)

(assert (=> bm!649981 (= call!649985 ($colon$colon!2816 (exprs!7466 (Context!13933 lt!2560833)) (ite (or c!1328195 c!1328196) (regTwo!36456 r!11554) r!11554)))))

(declare-fun b!7117334 () Bool)

(assert (=> b!7117334 (= e!4276758 (nullable!7609 (regOne!36456 r!11554)))))

(declare-fun d!2221334 () Bool)

(declare-fun c!1328194 () Bool)

(assert (=> d!2221334 (= c!1328194 (and (is-ElementMatch!17972 r!11554) (= (c!1328161 r!11554) a!1901)))))

(assert (=> d!2221334 (= (derivationStepZipperDown!2469 r!11554 (Context!13933 lt!2560833) a!1901) e!4276759)))

(assert (= (and d!2221334 c!1328194) b!7117327))

(assert (= (and d!2221334 (not c!1328194)) b!7117335))

(assert (= (and b!7117335 c!1328193) b!7117330))

(assert (= (and b!7117335 (not c!1328193)) b!7117332))

(assert (= (and b!7117332 res!2903820) b!7117334))

(assert (= (and b!7117332 c!1328195) b!7117326))

(assert (= (and b!7117332 (not c!1328195)) b!7117333))

(assert (= (and b!7117333 c!1328196) b!7117336))

(assert (= (and b!7117333 (not c!1328196)) b!7117331))

(assert (= (and b!7117331 c!1328192) b!7117328))

(assert (= (and b!7117331 (not c!1328192)) b!7117329))

(assert (= (or b!7117336 b!7117328) bm!649977))

(assert (= (or b!7117336 b!7117328) bm!649979))

(assert (= (or b!7117326 bm!649979) bm!649978))

(assert (= (or b!7117326 bm!649977) bm!649981))

(assert (= (or b!7117330 b!7117326) bm!649976))

(assert (= (or b!7117330 bm!649978) bm!649980))

(declare-fun m!7835694 () Bool)

(assert (=> b!7117327 m!7835694))

(declare-fun m!7835696 () Bool)

(assert (=> bm!649976 m!7835696))

(assert (=> b!7117334 m!7835636))

(declare-fun m!7835698 () Bool)

(assert (=> bm!649980 m!7835698))

(declare-fun m!7835700 () Bool)

(assert (=> bm!649981 m!7835700))

(assert (=> b!7117191 d!2221334))

(declare-fun b!7117348 () Bool)

(declare-fun e!4276768 () (Set Context!13932))

(declare-fun call!649993 () (Set Context!13932))

(declare-fun call!649995 () (Set Context!13932))

(assert (=> b!7117348 (= e!4276768 (set.union call!649993 call!649995))))

(declare-fun b!7117349 () Bool)

(declare-fun e!4276771 () (Set Context!13932))

(assert (=> b!7117349 (= e!4276771 (set.insert (Context!13933 ($colon$colon!2816 lt!2560833 r!11554)) (as set.empty (Set Context!13932))))))

(declare-fun b!7117350 () Bool)

(declare-fun e!4276773 () (Set Context!13932))

(declare-fun call!649994 () (Set Context!13932))

(assert (=> b!7117350 (= e!4276773 call!649994)))

(declare-fun c!1328203 () Bool)

(declare-fun call!649997 () List!68933)

(declare-fun bm!649988 () Bool)

(assert (=> bm!649988 (= call!649993 (derivationStepZipperDown!2469 (ite c!1328203 (regTwo!36457 (reg!18301 r!11554)) (regOne!36456 (reg!18301 r!11554))) (ite c!1328203 (Context!13933 ($colon$colon!2816 lt!2560833 r!11554)) (Context!13933 call!649997)) a!1901))))

(declare-fun b!7117351 () Bool)

(assert (=> b!7117351 (= e!4276773 (as set.empty (Set Context!13932)))))

(declare-fun bm!649989 () Bool)

(declare-fun call!649998 () List!68933)

(assert (=> bm!649989 (= call!649998 call!649997)))

(declare-fun b!7117352 () Bool)

(declare-fun e!4276769 () (Set Context!13932))

(declare-fun call!649996 () (Set Context!13932))

(assert (=> b!7117352 (= e!4276769 (set.union call!649996 call!649993))))

(declare-fun bm!649990 () Bool)

(assert (=> bm!649990 (= call!649995 call!649996)))

(declare-fun b!7117353 () Bool)

(declare-fun c!1328202 () Bool)

(assert (=> b!7117353 (= c!1328202 (is-Star!17972 (reg!18301 r!11554)))))

(declare-fun e!4276772 () (Set Context!13932))

(assert (=> b!7117353 (= e!4276772 e!4276773)))

(declare-fun b!7117354 () Bool)

(declare-fun c!1328205 () Bool)

(declare-fun e!4276770 () Bool)

(assert (=> b!7117354 (= c!1328205 e!4276770)))

(declare-fun res!2903822 () Bool)

(assert (=> b!7117354 (=> (not res!2903822) (not e!4276770))))

(assert (=> b!7117354 (= res!2903822 (is-Concat!26817 (reg!18301 r!11554)))))

(assert (=> b!7117354 (= e!4276769 e!4276768)))

(declare-fun b!7117355 () Bool)

(assert (=> b!7117355 (= e!4276768 e!4276772)))

(declare-fun c!1328206 () Bool)

(assert (=> b!7117355 (= c!1328206 (is-Concat!26817 (reg!18301 r!11554)))))

(declare-fun b!7117357 () Bool)

(assert (=> b!7117357 (= e!4276771 e!4276769)))

(assert (=> b!7117357 (= c!1328203 (is-Union!17972 (reg!18301 r!11554)))))

(declare-fun b!7117358 () Bool)

(assert (=> b!7117358 (= e!4276772 call!649994)))

(declare-fun bm!649991 () Bool)

(assert (=> bm!649991 (= call!649994 call!649995)))

(declare-fun bm!649992 () Bool)

(assert (=> bm!649992 (= call!649996 (derivationStepZipperDown!2469 (ite c!1328203 (regOne!36457 (reg!18301 r!11554)) (ite c!1328205 (regTwo!36456 (reg!18301 r!11554)) (ite c!1328206 (regOne!36456 (reg!18301 r!11554)) (reg!18301 (reg!18301 r!11554))))) (ite (or c!1328203 c!1328205) (Context!13933 ($colon$colon!2816 lt!2560833 r!11554)) (Context!13933 call!649998)) a!1901))))

(declare-fun bm!649993 () Bool)

(assert (=> bm!649993 (= call!649997 ($colon$colon!2816 (exprs!7466 (Context!13933 ($colon$colon!2816 lt!2560833 r!11554))) (ite (or c!1328205 c!1328206) (regTwo!36456 (reg!18301 r!11554)) (reg!18301 r!11554))))))

(declare-fun b!7117356 () Bool)

(assert (=> b!7117356 (= e!4276770 (nullable!7609 (regOne!36456 (reg!18301 r!11554))))))

(declare-fun d!2221336 () Bool)

(declare-fun c!1328204 () Bool)

(assert (=> d!2221336 (= c!1328204 (and (is-ElementMatch!17972 (reg!18301 r!11554)) (= (c!1328161 (reg!18301 r!11554)) a!1901)))))

(assert (=> d!2221336 (= (derivationStepZipperDown!2469 (reg!18301 r!11554) (Context!13933 ($colon$colon!2816 lt!2560833 r!11554)) a!1901) e!4276771)))

(assert (= (and d!2221336 c!1328204) b!7117349))

(assert (= (and d!2221336 (not c!1328204)) b!7117357))

(assert (= (and b!7117357 c!1328203) b!7117352))

(assert (= (and b!7117357 (not c!1328203)) b!7117354))

(assert (= (and b!7117354 res!2903822) b!7117356))

(assert (= (and b!7117354 c!1328205) b!7117348))

(assert (= (and b!7117354 (not c!1328205)) b!7117355))

(assert (= (and b!7117355 c!1328206) b!7117358))

(assert (= (and b!7117355 (not c!1328206)) b!7117353))

(assert (= (and b!7117353 c!1328202) b!7117350))

(assert (= (and b!7117353 (not c!1328202)) b!7117351))

(assert (= (or b!7117358 b!7117350) bm!649989))

(assert (= (or b!7117358 b!7117350) bm!649991))

(assert (= (or b!7117348 bm!649991) bm!649990))

(assert (= (or b!7117348 bm!649989) bm!649993))

(assert (= (or b!7117352 b!7117348) bm!649988))

(assert (= (or b!7117352 bm!649990) bm!649992))

(declare-fun m!7835702 () Bool)

(assert (=> b!7117349 m!7835702))

(declare-fun m!7835704 () Bool)

(assert (=> bm!649988 m!7835704))

(declare-fun m!7835706 () Bool)

(assert (=> b!7117356 m!7835706))

(declare-fun m!7835708 () Bool)

(assert (=> bm!649992 m!7835708))

(declare-fun m!7835710 () Bool)

(assert (=> bm!649993 m!7835710))

(assert (=> b!7117191 d!2221336))

(declare-fun d!2221338 () Bool)

(assert (=> d!2221338 (= ($colon$colon!2816 lt!2560833 r!11554) (Cons!68809 r!11554 lt!2560833))))

(assert (=> b!7117191 d!2221338))

(declare-fun b!7117363 () Bool)

(declare-fun e!4276776 () Bool)

(declare-fun tp!1959041 () Bool)

(declare-fun tp!1959042 () Bool)

(assert (=> b!7117363 (= e!4276776 (and tp!1959041 tp!1959042))))

(assert (=> b!7117198 (= tp!1959015 e!4276776)))

(assert (= (and b!7117198 (is-Cons!68809 (exprs!7466 auxCtx!45))) b!7117363))

(declare-fun b!7117385 () Bool)

(declare-fun e!4276785 () Bool)

(assert (=> b!7117385 (= e!4276785 tp_is_empty!45177)))

(declare-fun b!7117387 () Bool)

(declare-fun tp!1959054 () Bool)

(assert (=> b!7117387 (= e!4276785 tp!1959054)))

(declare-fun b!7117386 () Bool)

(declare-fun tp!1959057 () Bool)

(declare-fun tp!1959053 () Bool)

(assert (=> b!7117386 (= e!4276785 (and tp!1959057 tp!1959053))))

(declare-fun b!7117388 () Bool)

(declare-fun tp!1959056 () Bool)

(declare-fun tp!1959055 () Bool)

(assert (=> b!7117388 (= e!4276785 (and tp!1959056 tp!1959055))))

(assert (=> b!7117197 (= tp!1959010 e!4276785)))

(assert (= (and b!7117197 (is-ElementMatch!17972 (reg!18301 r!11554))) b!7117385))

(assert (= (and b!7117197 (is-Concat!26817 (reg!18301 r!11554))) b!7117386))

(assert (= (and b!7117197 (is-Star!17972 (reg!18301 r!11554))) b!7117387))

(assert (= (and b!7117197 (is-Union!17972 (reg!18301 r!11554))) b!7117388))

(declare-fun b!7117389 () Bool)

(declare-fun e!4276786 () Bool)

(assert (=> b!7117389 (= e!4276786 tp_is_empty!45177)))

(declare-fun b!7117391 () Bool)

(declare-fun tp!1959059 () Bool)

(assert (=> b!7117391 (= e!4276786 tp!1959059)))

(declare-fun b!7117390 () Bool)

(declare-fun tp!1959062 () Bool)

(declare-fun tp!1959058 () Bool)

(assert (=> b!7117390 (= e!4276786 (and tp!1959062 tp!1959058))))

(declare-fun b!7117392 () Bool)

(declare-fun tp!1959061 () Bool)

(declare-fun tp!1959060 () Bool)

(assert (=> b!7117392 (= e!4276786 (and tp!1959061 tp!1959060))))

(assert (=> b!7117196 (= tp!1959011 e!4276786)))

(assert (= (and b!7117196 (is-ElementMatch!17972 (regOne!36457 r!11554))) b!7117389))

(assert (= (and b!7117196 (is-Concat!26817 (regOne!36457 r!11554))) b!7117390))

(assert (= (and b!7117196 (is-Star!17972 (regOne!36457 r!11554))) b!7117391))

(assert (= (and b!7117196 (is-Union!17972 (regOne!36457 r!11554))) b!7117392))

(declare-fun b!7117393 () Bool)

(declare-fun e!4276787 () Bool)

(assert (=> b!7117393 (= e!4276787 tp_is_empty!45177)))

(declare-fun b!7117395 () Bool)

(declare-fun tp!1959064 () Bool)

(assert (=> b!7117395 (= e!4276787 tp!1959064)))

(declare-fun b!7117394 () Bool)

(declare-fun tp!1959067 () Bool)

(declare-fun tp!1959063 () Bool)

(assert (=> b!7117394 (= e!4276787 (and tp!1959067 tp!1959063))))

(declare-fun b!7117396 () Bool)

(declare-fun tp!1959066 () Bool)

(declare-fun tp!1959065 () Bool)

(assert (=> b!7117396 (= e!4276787 (and tp!1959066 tp!1959065))))

(assert (=> b!7117196 (= tp!1959012 e!4276787)))

(assert (= (and b!7117196 (is-ElementMatch!17972 (regTwo!36457 r!11554))) b!7117393))

(assert (= (and b!7117196 (is-Concat!26817 (regTwo!36457 r!11554))) b!7117394))

(assert (= (and b!7117196 (is-Star!17972 (regTwo!36457 r!11554))) b!7117395))

(assert (= (and b!7117196 (is-Union!17972 (regTwo!36457 r!11554))) b!7117396))

(declare-fun b!7117397 () Bool)

(declare-fun e!4276788 () Bool)

(assert (=> b!7117397 (= e!4276788 tp_is_empty!45177)))

(declare-fun b!7117399 () Bool)

(declare-fun tp!1959069 () Bool)

(assert (=> b!7117399 (= e!4276788 tp!1959069)))

(declare-fun b!7117398 () Bool)

(declare-fun tp!1959072 () Bool)

(declare-fun tp!1959068 () Bool)

(assert (=> b!7117398 (= e!4276788 (and tp!1959072 tp!1959068))))

(declare-fun b!7117400 () Bool)

(declare-fun tp!1959071 () Bool)

(declare-fun tp!1959070 () Bool)

(assert (=> b!7117400 (= e!4276788 (and tp!1959071 tp!1959070))))

(assert (=> b!7117194 (= tp!1959009 e!4276788)))

(assert (= (and b!7117194 (is-ElementMatch!17972 (regOne!36456 r!11554))) b!7117397))

(assert (= (and b!7117194 (is-Concat!26817 (regOne!36456 r!11554))) b!7117398))

(assert (= (and b!7117194 (is-Star!17972 (regOne!36456 r!11554))) b!7117399))

(assert (= (and b!7117194 (is-Union!17972 (regOne!36456 r!11554))) b!7117400))

(declare-fun b!7117401 () Bool)

(declare-fun e!4276789 () Bool)

(assert (=> b!7117401 (= e!4276789 tp_is_empty!45177)))

(declare-fun b!7117403 () Bool)

(declare-fun tp!1959074 () Bool)

(assert (=> b!7117403 (= e!4276789 tp!1959074)))

(declare-fun b!7117402 () Bool)

(declare-fun tp!1959077 () Bool)

(declare-fun tp!1959073 () Bool)

(assert (=> b!7117402 (= e!4276789 (and tp!1959077 tp!1959073))))

(declare-fun b!7117404 () Bool)

(declare-fun tp!1959076 () Bool)

(declare-fun tp!1959075 () Bool)

(assert (=> b!7117404 (= e!4276789 (and tp!1959076 tp!1959075))))

(assert (=> b!7117194 (= tp!1959014 e!4276789)))

(assert (= (and b!7117194 (is-ElementMatch!17972 (regTwo!36456 r!11554))) b!7117401))

(assert (= (and b!7117194 (is-Concat!26817 (regTwo!36456 r!11554))) b!7117402))

(assert (= (and b!7117194 (is-Star!17972 (regTwo!36456 r!11554))) b!7117403))

(assert (= (and b!7117194 (is-Union!17972 (regTwo!36456 r!11554))) b!7117404))

(declare-fun b!7117405 () Bool)

(declare-fun e!4276790 () Bool)

(declare-fun tp!1959078 () Bool)

(declare-fun tp!1959079 () Bool)

(assert (=> b!7117405 (= e!4276790 (and tp!1959078 tp!1959079))))

(assert (=> b!7117195 (= tp!1959013 e!4276790)))

(assert (= (and b!7117195 (is-Cons!68809 (exprs!7466 c!9994))) b!7117405))

(push 1)

(assert (not d!2221320))

(assert (not b!7117402))

(assert (not d!2221330))

(assert (not b!7117404))

(assert tp_is_empty!45177)

(assert (not b!7117388))

(assert (not bm!649976))

(assert (not b!7117392))

(assert (not bm!649981))

(assert (not b!7117391))

(assert (not d!2221322))

(assert (not b!7117403))

(assert (not bm!649950))

(assert (not b!7117399))

(assert (not b!7117405))

(assert (not d!2221326))

(assert (not b!7117268))

(assert (not b!7117400))

(assert (not b!7117394))

(assert (not b!7117396))

(assert (not b!7117363))

(assert (not b!7117301))

(assert (not bm!649992))

(assert (not b!7117398))

(assert (not bm!649993))

(assert (not bm!649980))

(assert (not d!2221328))

(assert (not b!7117390))

(assert (not bm!649949))

(assert (not b!7117356))

(assert (not b!7117387))

(assert (not b!7117395))

(assert (not b!7117302))

(assert (not b!7117386))

(assert (not d!2221324))

(assert (not bm!649988))

(assert (not b!7117334))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7117481 () Bool)

(declare-fun e!4276829 () List!68933)

(assert (=> b!7117481 (= e!4276829 (exprs!7466 auxCtx!45))))

(declare-fun e!4276830 () Bool)

(declare-fun b!7117484 () Bool)

(declare-fun lt!2560855 () List!68933)

(assert (=> b!7117484 (= e!4276830 (or (not (= (exprs!7466 auxCtx!45) Nil!68809)) (= lt!2560855 (t!382784 (exprs!7466 c!9994)))))))

(declare-fun b!7117483 () Bool)

(declare-fun res!2903845 () Bool)

(assert (=> b!7117483 (=> (not res!2903845) (not e!4276830))))

(assert (=> b!7117483 (= res!2903845 (= (size!41420 lt!2560855) (+ (size!41420 (t!382784 (exprs!7466 c!9994))) (size!41420 (exprs!7466 auxCtx!45)))))))

(declare-fun d!2221360 () Bool)

(assert (=> d!2221360 e!4276830))

(declare-fun res!2903846 () Bool)

(assert (=> d!2221360 (=> (not res!2903846) (not e!4276830))))

(assert (=> d!2221360 (= res!2903846 (= (content!14045 lt!2560855) (set.union (content!14045 (t!382784 (exprs!7466 c!9994))) (content!14045 (exprs!7466 auxCtx!45)))))))

(assert (=> d!2221360 (= lt!2560855 e!4276829)))

(declare-fun c!1328221 () Bool)

(assert (=> d!2221360 (= c!1328221 (is-Nil!68809 (t!382784 (exprs!7466 c!9994))))))

(assert (=> d!2221360 (= (++!16124 (t!382784 (exprs!7466 c!9994)) (exprs!7466 auxCtx!45)) lt!2560855)))

(declare-fun b!7117482 () Bool)

(assert (=> b!7117482 (= e!4276829 (Cons!68809 (h!75257 (t!382784 (exprs!7466 c!9994))) (++!16124 (t!382784 (t!382784 (exprs!7466 c!9994))) (exprs!7466 auxCtx!45))))))

(assert (= (and d!2221360 c!1328221) b!7117481))

(assert (= (and d!2221360 (not c!1328221)) b!7117482))

(assert (= (and d!2221360 res!2903846) b!7117483))

(assert (= (and b!7117483 res!2903845) b!7117484))

(declare-fun m!7835764 () Bool)

(assert (=> b!7117483 m!7835764))

(declare-fun m!7835766 () Bool)

(assert (=> b!7117483 m!7835766))

(assert (=> b!7117483 m!7835674))

(declare-fun m!7835768 () Bool)

(assert (=> d!2221360 m!7835768))

(declare-fun m!7835770 () Bool)

(assert (=> d!2221360 m!7835770))

(assert (=> d!2221360 m!7835680))

(declare-fun m!7835772 () Bool)

(assert (=> b!7117482 m!7835772))

(assert (=> b!7117301 d!2221360))

(declare-fun b!7117485 () Bool)

(declare-fun e!4276831 () (Set Context!13932))

(declare-fun call!650014 () (Set Context!13932))

(declare-fun call!650016 () (Set Context!13932))

(assert (=> b!7117485 (= e!4276831 (set.union call!650014 call!650016))))

(declare-fun e!4276834 () (Set Context!13932))

(declare-fun b!7117486 () Bool)

(assert (=> b!7117486 (= e!4276834 (set.insert (ite (or c!1328203 c!1328205) (Context!13933 ($colon$colon!2816 lt!2560833 r!11554)) (Context!13933 call!649998)) (as set.empty (Set Context!13932))))))

(declare-fun b!7117487 () Bool)

(declare-fun e!4276836 () (Set Context!13932))

(declare-fun call!650015 () (Set Context!13932))

(assert (=> b!7117487 (= e!4276836 call!650015)))

(declare-fun bm!650009 () Bool)

(declare-fun call!650018 () List!68933)

(declare-fun c!1328223 () Bool)

(assert (=> bm!650009 (= call!650014 (derivationStepZipperDown!2469 (ite c!1328223 (regTwo!36457 (ite c!1328203 (regOne!36457 (reg!18301 r!11554)) (ite c!1328205 (regTwo!36456 (reg!18301 r!11554)) (ite c!1328206 (regOne!36456 (reg!18301 r!11554)) (reg!18301 (reg!18301 r!11554)))))) (regOne!36456 (ite c!1328203 (regOne!36457 (reg!18301 r!11554)) (ite c!1328205 (regTwo!36456 (reg!18301 r!11554)) (ite c!1328206 (regOne!36456 (reg!18301 r!11554)) (reg!18301 (reg!18301 r!11554))))))) (ite c!1328223 (ite (or c!1328203 c!1328205) (Context!13933 ($colon$colon!2816 lt!2560833 r!11554)) (Context!13933 call!649998)) (Context!13933 call!650018)) a!1901))))

(declare-fun b!7117488 () Bool)

(assert (=> b!7117488 (= e!4276836 (as set.empty (Set Context!13932)))))

(declare-fun bm!650010 () Bool)

(declare-fun call!650019 () List!68933)

(assert (=> bm!650010 (= call!650019 call!650018)))

(declare-fun b!7117489 () Bool)

(declare-fun e!4276832 () (Set Context!13932))

(declare-fun call!650017 () (Set Context!13932))

(assert (=> b!7117489 (= e!4276832 (set.union call!650017 call!650014))))

(declare-fun bm!650011 () Bool)

(assert (=> bm!650011 (= call!650016 call!650017)))

(declare-fun c!1328222 () Bool)

(declare-fun b!7117490 () Bool)

(assert (=> b!7117490 (= c!1328222 (is-Star!17972 (ite c!1328203 (regOne!36457 (reg!18301 r!11554)) (ite c!1328205 (regTwo!36456 (reg!18301 r!11554)) (ite c!1328206 (regOne!36456 (reg!18301 r!11554)) (reg!18301 (reg!18301 r!11554)))))))))

(declare-fun e!4276835 () (Set Context!13932))

(assert (=> b!7117490 (= e!4276835 e!4276836)))

(declare-fun b!7117491 () Bool)

(declare-fun c!1328225 () Bool)

(declare-fun e!4276833 () Bool)

(assert (=> b!7117491 (= c!1328225 e!4276833)))

(declare-fun res!2903847 () Bool)

(assert (=> b!7117491 (=> (not res!2903847) (not e!4276833))))

(assert (=> b!7117491 (= res!2903847 (is-Concat!26817 (ite c!1328203 (regOne!36457 (reg!18301 r!11554)) (ite c!1328205 (regTwo!36456 (reg!18301 r!11554)) (ite c!1328206 (regOne!36456 (reg!18301 r!11554)) (reg!18301 (reg!18301 r!11554)))))))))

(assert (=> b!7117491 (= e!4276832 e!4276831)))

(declare-fun b!7117492 () Bool)

(assert (=> b!7117492 (= e!4276831 e!4276835)))

(declare-fun c!1328226 () Bool)

(assert (=> b!7117492 (= c!1328226 (is-Concat!26817 (ite c!1328203 (regOne!36457 (reg!18301 r!11554)) (ite c!1328205 (regTwo!36456 (reg!18301 r!11554)) (ite c!1328206 (regOne!36456 (reg!18301 r!11554)) (reg!18301 (reg!18301 r!11554)))))))))

(declare-fun b!7117494 () Bool)

(assert (=> b!7117494 (= e!4276834 e!4276832)))

(assert (=> b!7117494 (= c!1328223 (is-Union!17972 (ite c!1328203 (regOne!36457 (reg!18301 r!11554)) (ite c!1328205 (regTwo!36456 (reg!18301 r!11554)) (ite c!1328206 (regOne!36456 (reg!18301 r!11554)) (reg!18301 (reg!18301 r!11554)))))))))

(declare-fun b!7117495 () Bool)

(assert (=> b!7117495 (= e!4276835 call!650015)))

(declare-fun bm!650012 () Bool)

(assert (=> bm!650012 (= call!650015 call!650016)))

(declare-fun bm!650013 () Bool)

(assert (=> bm!650013 (= call!650017 (derivationStepZipperDown!2469 (ite c!1328223 (regOne!36457 (ite c!1328203 (regOne!36457 (reg!18301 r!11554)) (ite c!1328205 (regTwo!36456 (reg!18301 r!11554)) (ite c!1328206 (regOne!36456 (reg!18301 r!11554)) (reg!18301 (reg!18301 r!11554)))))) (ite c!1328225 (regTwo!36456 (ite c!1328203 (regOne!36457 (reg!18301 r!11554)) (ite c!1328205 (regTwo!36456 (reg!18301 r!11554)) (ite c!1328206 (regOne!36456 (reg!18301 r!11554)) (reg!18301 (reg!18301 r!11554)))))) (ite c!1328226 (regOne!36456 (ite c!1328203 (regOne!36457 (reg!18301 r!11554)) (ite c!1328205 (regTwo!36456 (reg!18301 r!11554)) (ite c!1328206 (regOne!36456 (reg!18301 r!11554)) (reg!18301 (reg!18301 r!11554)))))) (reg!18301 (ite c!1328203 (regOne!36457 (reg!18301 r!11554)) (ite c!1328205 (regTwo!36456 (reg!18301 r!11554)) (ite c!1328206 (regOne!36456 (reg!18301 r!11554)) (reg!18301 (reg!18301 r!11554))))))))) (ite (or c!1328223 c!1328225) (ite (or c!1328203 c!1328205) (Context!13933 ($colon$colon!2816 lt!2560833 r!11554)) (Context!13933 call!649998)) (Context!13933 call!650019)) a!1901))))

(declare-fun bm!650014 () Bool)

(assert (=> bm!650014 (= call!650018 ($colon$colon!2816 (exprs!7466 (ite (or c!1328203 c!1328205) (Context!13933 ($colon$colon!2816 lt!2560833 r!11554)) (Context!13933 call!649998))) (ite (or c!1328225 c!1328226) (regTwo!36456 (ite c!1328203 (regOne!36457 (reg!18301 r!11554)) (ite c!1328205 (regTwo!36456 (reg!18301 r!11554)) (ite c!1328206 (regOne!36456 (reg!18301 r!11554)) (reg!18301 (reg!18301 r!11554)))))) (ite c!1328203 (regOne!36457 (reg!18301 r!11554)) (ite c!1328205 (regTwo!36456 (reg!18301 r!11554)) (ite c!1328206 (regOne!36456 (reg!18301 r!11554)) (reg!18301 (reg!18301 r!11554))))))))))

(declare-fun b!7117493 () Bool)

(assert (=> b!7117493 (= e!4276833 (nullable!7609 (regOne!36456 (ite c!1328203 (regOne!36457 (reg!18301 r!11554)) (ite c!1328205 (regTwo!36456 (reg!18301 r!11554)) (ite c!1328206 (regOne!36456 (reg!18301 r!11554)) (reg!18301 (reg!18301 r!11554))))))))))

(declare-fun c!1328224 () Bool)

(declare-fun d!2221362 () Bool)

(assert (=> d!2221362 (= c!1328224 (and (is-ElementMatch!17972 (ite c!1328203 (regOne!36457 (reg!18301 r!11554)) (ite c!1328205 (regTwo!36456 (reg!18301 r!11554)) (ite c!1328206 (regOne!36456 (reg!18301 r!11554)) (reg!18301 (reg!18301 r!11554)))))) (= (c!1328161 (ite c!1328203 (regOne!36457 (reg!18301 r!11554)) (ite c!1328205 (regTwo!36456 (reg!18301 r!11554)) (ite c!1328206 (regOne!36456 (reg!18301 r!11554)) (reg!18301 (reg!18301 r!11554)))))) a!1901)))))

(assert (=> d!2221362 (= (derivationStepZipperDown!2469 (ite c!1328203 (regOne!36457 (reg!18301 r!11554)) (ite c!1328205 (regTwo!36456 (reg!18301 r!11554)) (ite c!1328206 (regOne!36456 (reg!18301 r!11554)) (reg!18301 (reg!18301 r!11554))))) (ite (or c!1328203 c!1328205) (Context!13933 ($colon$colon!2816 lt!2560833 r!11554)) (Context!13933 call!649998)) a!1901) e!4276834)))

(assert (= (and d!2221362 c!1328224) b!7117486))

(assert (= (and d!2221362 (not c!1328224)) b!7117494))

(assert (= (and b!7117494 c!1328223) b!7117489))

(assert (= (and b!7117494 (not c!1328223)) b!7117491))

(assert (= (and b!7117491 res!2903847) b!7117493))

(assert (= (and b!7117491 c!1328225) b!7117485))

(assert (= (and b!7117491 (not c!1328225)) b!7117492))

(assert (= (and b!7117492 c!1328226) b!7117495))

(assert (= (and b!7117492 (not c!1328226)) b!7117490))

(assert (= (and b!7117490 c!1328222) b!7117487))

(assert (= (and b!7117490 (not c!1328222)) b!7117488))

(assert (= (or b!7117495 b!7117487) bm!650010))

(assert (= (or b!7117495 b!7117487) bm!650012))

(assert (= (or b!7117485 bm!650012) bm!650011))

(assert (= (or b!7117485 bm!650010) bm!650014))

(assert (= (or b!7117489 b!7117485) bm!650009))

(assert (= (or b!7117489 bm!650011) bm!650013))

(declare-fun m!7835774 () Bool)

(assert (=> b!7117486 m!7835774))

(declare-fun m!7835776 () Bool)

(assert (=> bm!650009 m!7835776))

(declare-fun m!7835778 () Bool)

(assert (=> b!7117493 m!7835778))

(declare-fun m!7835780 () Bool)

(assert (=> bm!650013 m!7835780))

(declare-fun m!7835782 () Bool)

(assert (=> bm!650014 m!7835782))

(assert (=> bm!649992 d!2221362))

(declare-fun d!2221364 () Bool)

(declare-fun res!2903852 () Bool)

(declare-fun e!4276841 () Bool)

(assert (=> d!2221364 (=> res!2903852 e!4276841)))

(assert (=> d!2221364 (= res!2903852 (is-Nil!68809 (++!16124 (exprs!7466 c!9994) (exprs!7466 auxCtx!45))))))

(assert (=> d!2221364 (= (forall!16860 (++!16124 (exprs!7466 c!9994) (exprs!7466 auxCtx!45)) lambda!432458) e!4276841)))

(declare-fun b!7117500 () Bool)

(declare-fun e!4276842 () Bool)

(assert (=> b!7117500 (= e!4276841 e!4276842)))

(declare-fun res!2903853 () Bool)

(assert (=> b!7117500 (=> (not res!2903853) (not e!4276842))))

(declare-fun dynLambda!28062 (Int Regex!17972) Bool)

(assert (=> b!7117500 (= res!2903853 (dynLambda!28062 lambda!432458 (h!75257 (++!16124 (exprs!7466 c!9994) (exprs!7466 auxCtx!45)))))))

(declare-fun b!7117501 () Bool)

(assert (=> b!7117501 (= e!4276842 (forall!16860 (t!382784 (++!16124 (exprs!7466 c!9994) (exprs!7466 auxCtx!45))) lambda!432458))))

(assert (= (and d!2221364 (not res!2903852)) b!7117500))

(assert (= (and b!7117500 res!2903853) b!7117501))

(declare-fun b_lambda!271537 () Bool)

(assert (=> (not b_lambda!271537) (not b!7117500)))

(declare-fun m!7835784 () Bool)

(assert (=> b!7117500 m!7835784))

(declare-fun m!7835786 () Bool)

(assert (=> b!7117501 m!7835786))

(assert (=> d!2221326 d!2221364))

(assert (=> d!2221326 d!2221324))

(declare-fun d!2221366 () Bool)

(assert (=> d!2221366 (forall!16860 (++!16124 (exprs!7466 c!9994) (exprs!7466 auxCtx!45)) lambda!432458)))

(assert (=> d!2221366 true))

(declare-fun _$78!713 () Unit!162615)

(assert (=> d!2221366 (= (choose!54895 (exprs!7466 c!9994) (exprs!7466 auxCtx!45) lambda!432458) _$78!713)))

(declare-fun bs!1885649 () Bool)

(assert (= bs!1885649 d!2221366))

(assert (=> bs!1885649 m!7835628))

(assert (=> bs!1885649 m!7835628))

(assert (=> bs!1885649 m!7835684))

(assert (=> d!2221326 d!2221366))

(declare-fun d!2221368 () Bool)

(declare-fun res!2903854 () Bool)

(declare-fun e!4276843 () Bool)

(assert (=> d!2221368 (=> res!2903854 e!4276843)))

(assert (=> d!2221368 (= res!2903854 (is-Nil!68809 (exprs!7466 c!9994)))))

(assert (=> d!2221368 (= (forall!16860 (exprs!7466 c!9994) lambda!432458) e!4276843)))

(declare-fun b!7117502 () Bool)

(declare-fun e!4276844 () Bool)

(assert (=> b!7117502 (= e!4276843 e!4276844)))

(declare-fun res!2903855 () Bool)

(assert (=> b!7117502 (=> (not res!2903855) (not e!4276844))))

(assert (=> b!7117502 (= res!2903855 (dynLambda!28062 lambda!432458 (h!75257 (exprs!7466 c!9994))))))

(declare-fun b!7117503 () Bool)

(assert (=> b!7117503 (= e!4276844 (forall!16860 (t!382784 (exprs!7466 c!9994)) lambda!432458))))

(assert (= (and d!2221368 (not res!2903854)) b!7117502))

(assert (= (and b!7117502 res!2903855) b!7117503))

(declare-fun b_lambda!271539 () Bool)

(assert (=> (not b_lambda!271539) (not b!7117502)))

(declare-fun m!7835788 () Bool)

(assert (=> b!7117502 m!7835788))

(declare-fun m!7835790 () Bool)

(assert (=> b!7117503 m!7835790))

(assert (=> d!2221326 d!2221368))

(declare-fun d!2221370 () Bool)

(declare-fun res!2903856 () Bool)

(declare-fun e!4276845 () Bool)

(assert (=> d!2221370 (=> res!2903856 e!4276845)))

(assert (=> d!2221370 (= res!2903856 (is-Nil!68809 (exprs!7466 auxCtx!45)))))

(assert (=> d!2221370 (= (forall!16860 (exprs!7466 auxCtx!45) lambda!432467) e!4276845)))

(declare-fun b!7117504 () Bool)

(declare-fun e!4276846 () Bool)

(assert (=> b!7117504 (= e!4276845 e!4276846)))

(declare-fun res!2903857 () Bool)

(assert (=> b!7117504 (=> (not res!2903857) (not e!4276846))))

(assert (=> b!7117504 (= res!2903857 (dynLambda!28062 lambda!432467 (h!75257 (exprs!7466 auxCtx!45))))))

(declare-fun b!7117505 () Bool)

(assert (=> b!7117505 (= e!4276846 (forall!16860 (t!382784 (exprs!7466 auxCtx!45)) lambda!432467))))

(assert (= (and d!2221370 (not res!2903856)) b!7117504))

(assert (= (and b!7117504 res!2903857) b!7117505))

(declare-fun b_lambda!271541 () Bool)

(assert (=> (not b_lambda!271541) (not b!7117504)))

(declare-fun m!7835792 () Bool)

(assert (=> b!7117504 m!7835792))

(declare-fun m!7835794 () Bool)

(assert (=> b!7117505 m!7835794))

(assert (=> d!2221322 d!2221370))

(declare-fun d!2221372 () Bool)

(declare-fun lt!2560858 () Int)

(assert (=> d!2221372 (>= lt!2560858 0)))

(declare-fun e!4276849 () Int)

(assert (=> d!2221372 (= lt!2560858 e!4276849)))

(declare-fun c!1328229 () Bool)

(assert (=> d!2221372 (= c!1328229 (is-Nil!68809 lt!2560845))))

(assert (=> d!2221372 (= (size!41420 lt!2560845) lt!2560858)))

(declare-fun b!7117510 () Bool)

(assert (=> b!7117510 (= e!4276849 0)))

(declare-fun b!7117511 () Bool)

(assert (=> b!7117511 (= e!4276849 (+ 1 (size!41420 (t!382784 lt!2560845))))))

(assert (= (and d!2221372 c!1328229) b!7117510))

(assert (= (and d!2221372 (not c!1328229)) b!7117511))

(declare-fun m!7835796 () Bool)

(assert (=> b!7117511 m!7835796))

(assert (=> b!7117302 d!2221372))

(declare-fun d!2221374 () Bool)

(declare-fun lt!2560859 () Int)

(assert (=> d!2221374 (>= lt!2560859 0)))

(declare-fun e!4276850 () Int)

(assert (=> d!2221374 (= lt!2560859 e!4276850)))

(declare-fun c!1328230 () Bool)

(assert (=> d!2221374 (= c!1328230 (is-Nil!68809 (exprs!7466 c!9994)))))

(assert (=> d!2221374 (= (size!41420 (exprs!7466 c!9994)) lt!2560859)))

(declare-fun b!7117512 () Bool)

(assert (=> b!7117512 (= e!4276850 0)))

(declare-fun b!7117513 () Bool)

(assert (=> b!7117513 (= e!4276850 (+ 1 (size!41420 (t!382784 (exprs!7466 c!9994)))))))

(assert (= (and d!2221374 c!1328230) b!7117512))

(assert (= (and d!2221374 (not c!1328230)) b!7117513))

(assert (=> b!7117513 m!7835766))

(assert (=> b!7117302 d!2221374))

(declare-fun d!2221376 () Bool)

(declare-fun lt!2560860 () Int)

(assert (=> d!2221376 (>= lt!2560860 0)))

(declare-fun e!4276851 () Int)

(assert (=> d!2221376 (= lt!2560860 e!4276851)))

(declare-fun c!1328231 () Bool)

(assert (=> d!2221376 (= c!1328231 (is-Nil!68809 (exprs!7466 auxCtx!45)))))

(assert (=> d!2221376 (= (size!41420 (exprs!7466 auxCtx!45)) lt!2560860)))

(declare-fun b!7117514 () Bool)

(assert (=> b!7117514 (= e!4276851 0)))

(declare-fun b!7117515 () Bool)

(assert (=> b!7117515 (= e!4276851 (+ 1 (size!41420 (t!382784 (exprs!7466 auxCtx!45)))))))

(assert (= (and d!2221376 c!1328231) b!7117514))

(assert (= (and d!2221376 (not c!1328231)) b!7117515))

(declare-fun m!7835798 () Bool)

(assert (=> b!7117515 m!7835798))

(assert (=> b!7117302 d!2221376))

(declare-fun b!7117516 () Bool)

(declare-fun e!4276852 () (Set Context!13932))

(declare-fun call!650020 () (Set Context!13932))

(declare-fun call!650022 () (Set Context!13932))

(assert (=> b!7117516 (= e!4276852 (set.union call!650020 call!650022))))

(declare-fun b!7117517 () Bool)

(declare-fun e!4276855 () (Set Context!13932))

(assert (=> b!7117517 (= e!4276855 (set.insert (ite c!1328203 (Context!13933 ($colon$colon!2816 lt!2560833 r!11554)) (Context!13933 call!649997)) (as set.empty (Set Context!13932))))))

(declare-fun b!7117518 () Bool)

(declare-fun e!4276857 () (Set Context!13932))

(declare-fun call!650021 () (Set Context!13932))

(assert (=> b!7117518 (= e!4276857 call!650021)))

(declare-fun c!1328233 () Bool)

(declare-fun bm!650015 () Bool)

(declare-fun call!650024 () List!68933)

(assert (=> bm!650015 (= call!650020 (derivationStepZipperDown!2469 (ite c!1328233 (regTwo!36457 (ite c!1328203 (regTwo!36457 (reg!18301 r!11554)) (regOne!36456 (reg!18301 r!11554)))) (regOne!36456 (ite c!1328203 (regTwo!36457 (reg!18301 r!11554)) (regOne!36456 (reg!18301 r!11554))))) (ite c!1328233 (ite c!1328203 (Context!13933 ($colon$colon!2816 lt!2560833 r!11554)) (Context!13933 call!649997)) (Context!13933 call!650024)) a!1901))))

(declare-fun b!7117519 () Bool)

(assert (=> b!7117519 (= e!4276857 (as set.empty (Set Context!13932)))))

(declare-fun bm!650016 () Bool)

(declare-fun call!650025 () List!68933)

(assert (=> bm!650016 (= call!650025 call!650024)))

(declare-fun b!7117520 () Bool)

(declare-fun e!4276853 () (Set Context!13932))

(declare-fun call!650023 () (Set Context!13932))

(assert (=> b!7117520 (= e!4276853 (set.union call!650023 call!650020))))

(declare-fun bm!650017 () Bool)

(assert (=> bm!650017 (= call!650022 call!650023)))

(declare-fun b!7117521 () Bool)

(declare-fun c!1328232 () Bool)

(assert (=> b!7117521 (= c!1328232 (is-Star!17972 (ite c!1328203 (regTwo!36457 (reg!18301 r!11554)) (regOne!36456 (reg!18301 r!11554)))))))

(declare-fun e!4276856 () (Set Context!13932))

(assert (=> b!7117521 (= e!4276856 e!4276857)))

(declare-fun b!7117522 () Bool)

(declare-fun c!1328235 () Bool)

(declare-fun e!4276854 () Bool)

(assert (=> b!7117522 (= c!1328235 e!4276854)))

(declare-fun res!2903858 () Bool)

(assert (=> b!7117522 (=> (not res!2903858) (not e!4276854))))

(assert (=> b!7117522 (= res!2903858 (is-Concat!26817 (ite c!1328203 (regTwo!36457 (reg!18301 r!11554)) (regOne!36456 (reg!18301 r!11554)))))))

(assert (=> b!7117522 (= e!4276853 e!4276852)))

(declare-fun b!7117523 () Bool)

(assert (=> b!7117523 (= e!4276852 e!4276856)))

(declare-fun c!1328236 () Bool)

(assert (=> b!7117523 (= c!1328236 (is-Concat!26817 (ite c!1328203 (regTwo!36457 (reg!18301 r!11554)) (regOne!36456 (reg!18301 r!11554)))))))

(declare-fun b!7117525 () Bool)

(assert (=> b!7117525 (= e!4276855 e!4276853)))

(assert (=> b!7117525 (= c!1328233 (is-Union!17972 (ite c!1328203 (regTwo!36457 (reg!18301 r!11554)) (regOne!36456 (reg!18301 r!11554)))))))

(declare-fun b!7117526 () Bool)

(assert (=> b!7117526 (= e!4276856 call!650021)))

(declare-fun bm!650018 () Bool)

(assert (=> bm!650018 (= call!650021 call!650022)))

(declare-fun bm!650019 () Bool)

(assert (=> bm!650019 (= call!650023 (derivationStepZipperDown!2469 (ite c!1328233 (regOne!36457 (ite c!1328203 (regTwo!36457 (reg!18301 r!11554)) (regOne!36456 (reg!18301 r!11554)))) (ite c!1328235 (regTwo!36456 (ite c!1328203 (regTwo!36457 (reg!18301 r!11554)) (regOne!36456 (reg!18301 r!11554)))) (ite c!1328236 (regOne!36456 (ite c!1328203 (regTwo!36457 (reg!18301 r!11554)) (regOne!36456 (reg!18301 r!11554)))) (reg!18301 (ite c!1328203 (regTwo!36457 (reg!18301 r!11554)) (regOne!36456 (reg!18301 r!11554))))))) (ite (or c!1328233 c!1328235) (ite c!1328203 (Context!13933 ($colon$colon!2816 lt!2560833 r!11554)) (Context!13933 call!649997)) (Context!13933 call!650025)) a!1901))))

(declare-fun bm!650020 () Bool)

(assert (=> bm!650020 (= call!650024 ($colon$colon!2816 (exprs!7466 (ite c!1328203 (Context!13933 ($colon$colon!2816 lt!2560833 r!11554)) (Context!13933 call!649997))) (ite (or c!1328235 c!1328236) (regTwo!36456 (ite c!1328203 (regTwo!36457 (reg!18301 r!11554)) (regOne!36456 (reg!18301 r!11554)))) (ite c!1328203 (regTwo!36457 (reg!18301 r!11554)) (regOne!36456 (reg!18301 r!11554))))))))

(declare-fun b!7117524 () Bool)

(assert (=> b!7117524 (= e!4276854 (nullable!7609 (regOne!36456 (ite c!1328203 (regTwo!36457 (reg!18301 r!11554)) (regOne!36456 (reg!18301 r!11554))))))))

(declare-fun c!1328234 () Bool)

(declare-fun d!2221378 () Bool)

(assert (=> d!2221378 (= c!1328234 (and (is-ElementMatch!17972 (ite c!1328203 (regTwo!36457 (reg!18301 r!11554)) (regOne!36456 (reg!18301 r!11554)))) (= (c!1328161 (ite c!1328203 (regTwo!36457 (reg!18301 r!11554)) (regOne!36456 (reg!18301 r!11554)))) a!1901)))))

(assert (=> d!2221378 (= (derivationStepZipperDown!2469 (ite c!1328203 (regTwo!36457 (reg!18301 r!11554)) (regOne!36456 (reg!18301 r!11554))) (ite c!1328203 (Context!13933 ($colon$colon!2816 lt!2560833 r!11554)) (Context!13933 call!649997)) a!1901) e!4276855)))

(assert (= (and d!2221378 c!1328234) b!7117517))

(assert (= (and d!2221378 (not c!1328234)) b!7117525))

(assert (= (and b!7117525 c!1328233) b!7117520))

(assert (= (and b!7117525 (not c!1328233)) b!7117522))

(assert (= (and b!7117522 res!2903858) b!7117524))

(assert (= (and b!7117522 c!1328235) b!7117516))

(assert (= (and b!7117522 (not c!1328235)) b!7117523))

(assert (= (and b!7117523 c!1328236) b!7117526))

(assert (= (and b!7117523 (not c!1328236)) b!7117521))

(assert (= (and b!7117521 c!1328232) b!7117518))

(assert (= (and b!7117521 (not c!1328232)) b!7117519))

(assert (= (or b!7117526 b!7117518) bm!650016))

(assert (= (or b!7117526 b!7117518) bm!650018))

(assert (= (or b!7117516 bm!650018) bm!650017))

(assert (= (or b!7117516 bm!650016) bm!650020))

(assert (= (or b!7117520 b!7117516) bm!650015))

(assert (= (or b!7117520 bm!650017) bm!650019))

(declare-fun m!7835800 () Bool)

(assert (=> b!7117517 m!7835800))

(declare-fun m!7835802 () Bool)

(assert (=> bm!650015 m!7835802))

(declare-fun m!7835804 () Bool)

(assert (=> b!7117524 m!7835804))

(declare-fun m!7835806 () Bool)

(assert (=> bm!650019 m!7835806))

(declare-fun m!7835808 () Bool)

(assert (=> bm!650020 m!7835808))

(assert (=> bm!649988 d!2221378))

(declare-fun d!2221380 () Bool)

(declare-fun res!2903859 () Bool)

(declare-fun e!4276858 () Bool)

(assert (=> d!2221380 (=> res!2903859 e!4276858)))

(assert (=> d!2221380 (= res!2903859 (is-Nil!68809 (exprs!7466 c!9994)))))

(assert (=> d!2221380 (= (forall!16860 (exprs!7466 c!9994) lambda!432466) e!4276858)))

(declare-fun b!7117527 () Bool)

(declare-fun e!4276859 () Bool)

(assert (=> b!7117527 (= e!4276858 e!4276859)))

(declare-fun res!2903860 () Bool)

(assert (=> b!7117527 (=> (not res!2903860) (not e!4276859))))

(assert (=> b!7117527 (= res!2903860 (dynLambda!28062 lambda!432466 (h!75257 (exprs!7466 c!9994))))))

(declare-fun b!7117528 () Bool)

(assert (=> b!7117528 (= e!4276859 (forall!16860 (t!382784 (exprs!7466 c!9994)) lambda!432466))))

(assert (= (and d!2221380 (not res!2903859)) b!7117527))

(assert (= (and b!7117527 res!2903860) b!7117528))

(declare-fun b_lambda!271543 () Bool)

(assert (=> (not b_lambda!271543) (not b!7117527)))

(declare-fun m!7835810 () Bool)

(assert (=> b!7117527 m!7835810))

(declare-fun m!7835812 () Bool)

(assert (=> b!7117528 m!7835812))

(assert (=> d!2221320 d!2221380))

(declare-fun d!2221382 () Bool)

(declare-fun c!1328239 () Bool)

(assert (=> d!2221382 (= c!1328239 (is-Nil!68809 lt!2560845))))

(declare-fun e!4276862 () (Set Regex!17972))

(assert (=> d!2221382 (= (content!14045 lt!2560845) e!4276862)))

(declare-fun b!7117533 () Bool)

(assert (=> b!7117533 (= e!4276862 (as set.empty (Set Regex!17972)))))

(declare-fun b!7117534 () Bool)

(assert (=> b!7117534 (= e!4276862 (set.union (set.insert (h!75257 lt!2560845) (as set.empty (Set Regex!17972))) (content!14045 (t!382784 lt!2560845))))))

(assert (= (and d!2221382 c!1328239) b!7117533))

(assert (= (and d!2221382 (not c!1328239)) b!7117534))

(declare-fun m!7835814 () Bool)

(assert (=> b!7117534 m!7835814))

(declare-fun m!7835816 () Bool)

(assert (=> b!7117534 m!7835816))

(assert (=> d!2221324 d!2221382))

(declare-fun d!2221384 () Bool)

(declare-fun c!1328240 () Bool)

(assert (=> d!2221384 (= c!1328240 (is-Nil!68809 (exprs!7466 c!9994)))))

(declare-fun e!4276863 () (Set Regex!17972))

(assert (=> d!2221384 (= (content!14045 (exprs!7466 c!9994)) e!4276863)))

(declare-fun b!7117535 () Bool)

(assert (=> b!7117535 (= e!4276863 (as set.empty (Set Regex!17972)))))

(declare-fun b!7117536 () Bool)

(assert (=> b!7117536 (= e!4276863 (set.union (set.insert (h!75257 (exprs!7466 c!9994)) (as set.empty (Set Regex!17972))) (content!14045 (t!382784 (exprs!7466 c!9994)))))))

(assert (= (and d!2221384 c!1328240) b!7117535))

(assert (= (and d!2221384 (not c!1328240)) b!7117536))

(declare-fun m!7835818 () Bool)

(assert (=> b!7117536 m!7835818))

(assert (=> b!7117536 m!7835770))

(assert (=> d!2221324 d!2221384))

(declare-fun d!2221386 () Bool)

(declare-fun c!1328241 () Bool)

(assert (=> d!2221386 (= c!1328241 (is-Nil!68809 (exprs!7466 auxCtx!45)))))

(declare-fun e!4276864 () (Set Regex!17972))

(assert (=> d!2221386 (= (content!14045 (exprs!7466 auxCtx!45)) e!4276864)))

(declare-fun b!7117537 () Bool)

(assert (=> b!7117537 (= e!4276864 (as set.empty (Set Regex!17972)))))

(declare-fun b!7117538 () Bool)

(assert (=> b!7117538 (= e!4276864 (set.union (set.insert (h!75257 (exprs!7466 auxCtx!45)) (as set.empty (Set Regex!17972))) (content!14045 (t!382784 (exprs!7466 auxCtx!45)))))))

(assert (= (and d!2221386 c!1328241) b!7117537))

(assert (= (and d!2221386 (not c!1328241)) b!7117538))

(declare-fun m!7835820 () Bool)

(assert (=> b!7117538 m!7835820))

(declare-fun m!7835822 () Bool)

(assert (=> b!7117538 m!7835822))

(assert (=> d!2221324 d!2221386))

(declare-fun d!2221388 () Bool)

(assert (=> d!2221388 (= (nullable!7609 (reg!18301 r!11554)) (nullableFct!2951 (reg!18301 r!11554)))))

(declare-fun bs!1885650 () Bool)

(assert (= bs!1885650 d!2221388))

(declare-fun m!7835824 () Bool)

(assert (=> bs!1885650 m!7835824))

(assert (=> b!7117268 d!2221388))

(declare-fun d!2221390 () Bool)

(assert (=> d!2221390 (= ($colon$colon!2816 (exprs!7466 (Context!13933 lt!2560833)) (ite (or c!1328195 c!1328196) (regTwo!36456 r!11554) r!11554)) (Cons!68809 (ite (or c!1328195 c!1328196) (regTwo!36456 r!11554) r!11554) (exprs!7466 (Context!13933 lt!2560833))))))

(assert (=> bm!649981 d!2221390))

(declare-fun d!2221392 () Bool)

(assert (=> d!2221392 (= (nullable!7609 (regOne!36456 (reg!18301 r!11554))) (nullableFct!2951 (regOne!36456 (reg!18301 r!11554))))))

(declare-fun bs!1885651 () Bool)

(assert (= bs!1885651 d!2221392))

(declare-fun m!7835826 () Bool)

(assert (=> bs!1885651 m!7835826))

(assert (=> b!7117356 d!2221392))

(declare-fun b!7117539 () Bool)

(declare-fun e!4276866 () Bool)

(declare-fun e!4276865 () Bool)

(assert (=> b!7117539 (= e!4276866 e!4276865)))

(declare-fun res!2903863 () Bool)

(assert (=> b!7117539 (=> (not res!2903863) (not e!4276865))))

(declare-fun call!650026 () Bool)

(assert (=> b!7117539 (= res!2903863 call!650026)))

(declare-fun b!7117540 () Bool)

(declare-fun e!4276867 () Bool)

(assert (=> b!7117540 (= e!4276867 call!650026)))

(declare-fun b!7117541 () Bool)

(declare-fun res!2903864 () Bool)

(assert (=> b!7117541 (=> res!2903864 e!4276866)))

(assert (=> b!7117541 (= res!2903864 (not (is-Concat!26817 (ite c!1328167 (reg!18301 r!11554) (ite c!1328168 (regTwo!36457 r!11554) (regOne!36456 r!11554))))))))

(declare-fun e!4276870 () Bool)

(assert (=> b!7117541 (= e!4276870 e!4276866)))

(declare-fun b!7117543 () Bool)

(declare-fun e!4276869 () Bool)

(assert (=> b!7117543 (= e!4276869 e!4276870)))

(declare-fun c!1328243 () Bool)

(assert (=> b!7117543 (= c!1328243 (is-Union!17972 (ite c!1328167 (reg!18301 r!11554) (ite c!1328168 (regTwo!36457 r!11554) (regOne!36456 r!11554)))))))

(declare-fun bm!650021 () Bool)

(declare-fun call!650028 () Bool)

(assert (=> bm!650021 (= call!650028 (validRegex!9245 (ite c!1328243 (regOne!36457 (ite c!1328167 (reg!18301 r!11554) (ite c!1328168 (regTwo!36457 r!11554) (regOne!36456 r!11554)))) (regTwo!36456 (ite c!1328167 (reg!18301 r!11554) (ite c!1328168 (regTwo!36457 r!11554) (regOne!36456 r!11554)))))))))

(declare-fun b!7117544 () Bool)

(assert (=> b!7117544 (= e!4276865 call!650028)))

(declare-fun c!1328242 () Bool)

(declare-fun call!650027 () Bool)

(declare-fun bm!650022 () Bool)

(assert (=> bm!650022 (= call!650027 (validRegex!9245 (ite c!1328242 (reg!18301 (ite c!1328167 (reg!18301 r!11554) (ite c!1328168 (regTwo!36457 r!11554) (regOne!36456 r!11554)))) (ite c!1328243 (regTwo!36457 (ite c!1328167 (reg!18301 r!11554) (ite c!1328168 (regTwo!36457 r!11554) (regOne!36456 r!11554)))) (regOne!36456 (ite c!1328167 (reg!18301 r!11554) (ite c!1328168 (regTwo!36457 r!11554) (regOne!36456 r!11554))))))))))

(declare-fun b!7117542 () Bool)

(declare-fun e!4276868 () Bool)

(assert (=> b!7117542 (= e!4276868 e!4276869)))

(assert (=> b!7117542 (= c!1328242 (is-Star!17972 (ite c!1328167 (reg!18301 r!11554) (ite c!1328168 (regTwo!36457 r!11554) (regOne!36456 r!11554)))))))

(declare-fun d!2221394 () Bool)

(declare-fun res!2903861 () Bool)

(assert (=> d!2221394 (=> res!2903861 e!4276868)))

(assert (=> d!2221394 (= res!2903861 (is-ElementMatch!17972 (ite c!1328167 (reg!18301 r!11554) (ite c!1328168 (regTwo!36457 r!11554) (regOne!36456 r!11554)))))))

(assert (=> d!2221394 (= (validRegex!9245 (ite c!1328167 (reg!18301 r!11554) (ite c!1328168 (regTwo!36457 r!11554) (regOne!36456 r!11554)))) e!4276868)))

(declare-fun b!7117545 () Bool)

(declare-fun e!4276871 () Bool)

(assert (=> b!7117545 (= e!4276871 call!650027)))

(declare-fun b!7117546 () Bool)

(assert (=> b!7117546 (= e!4276869 e!4276871)))

(declare-fun res!2903865 () Bool)

(assert (=> b!7117546 (= res!2903865 (not (nullable!7609 (reg!18301 (ite c!1328167 (reg!18301 r!11554) (ite c!1328168 (regTwo!36457 r!11554) (regOne!36456 r!11554)))))))))

(assert (=> b!7117546 (=> (not res!2903865) (not e!4276871))))

(declare-fun bm!650023 () Bool)

(assert (=> bm!650023 (= call!650026 call!650027)))

(declare-fun b!7117547 () Bool)

(declare-fun res!2903862 () Bool)

(assert (=> b!7117547 (=> (not res!2903862) (not e!4276867))))

(assert (=> b!7117547 (= res!2903862 call!650028)))

(assert (=> b!7117547 (= e!4276870 e!4276867)))

(assert (= (and d!2221394 (not res!2903861)) b!7117542))

(assert (= (and b!7117542 c!1328242) b!7117546))

(assert (= (and b!7117542 (not c!1328242)) b!7117543))

(assert (= (and b!7117546 res!2903865) b!7117545))

(assert (= (and b!7117543 c!1328243) b!7117547))

(assert (= (and b!7117543 (not c!1328243)) b!7117541))

(assert (= (and b!7117547 res!2903862) b!7117540))

(assert (= (and b!7117541 (not res!2903864)) b!7117539))

(assert (= (and b!7117539 res!2903863) b!7117544))

(assert (= (or b!7117547 b!7117544) bm!650021))

(assert (= (or b!7117540 b!7117539) bm!650023))

(assert (= (or b!7117545 bm!650023) bm!650022))

(declare-fun m!7835828 () Bool)

(assert (=> bm!650021 m!7835828))

(declare-fun m!7835830 () Bool)

(assert (=> bm!650022 m!7835830))

(declare-fun m!7835832 () Bool)

(assert (=> b!7117546 m!7835832))

(assert (=> bm!649950 d!2221394))

(declare-fun b!7117548 () Bool)

(declare-fun e!4276872 () (Set Context!13932))

(declare-fun call!650029 () (Set Context!13932))

(declare-fun call!650031 () (Set Context!13932))

(assert (=> b!7117548 (= e!4276872 (set.union call!650029 call!650031))))

(declare-fun e!4276875 () (Set Context!13932))

(declare-fun b!7117549 () Bool)

(assert (=> b!7117549 (= e!4276875 (set.insert (ite (or c!1328193 c!1328195) (Context!13933 lt!2560833) (Context!13933 call!649986)) (as set.empty (Set Context!13932))))))

(declare-fun b!7117550 () Bool)

(declare-fun e!4276877 () (Set Context!13932))

(declare-fun call!650030 () (Set Context!13932))

(assert (=> b!7117550 (= e!4276877 call!650030)))

(declare-fun bm!650024 () Bool)

(declare-fun c!1328245 () Bool)

(declare-fun call!650033 () List!68933)

(assert (=> bm!650024 (= call!650029 (derivationStepZipperDown!2469 (ite c!1328245 (regTwo!36457 (ite c!1328193 (regOne!36457 r!11554) (ite c!1328195 (regTwo!36456 r!11554) (ite c!1328196 (regOne!36456 r!11554) (reg!18301 r!11554))))) (regOne!36456 (ite c!1328193 (regOne!36457 r!11554) (ite c!1328195 (regTwo!36456 r!11554) (ite c!1328196 (regOne!36456 r!11554) (reg!18301 r!11554)))))) (ite c!1328245 (ite (or c!1328193 c!1328195) (Context!13933 lt!2560833) (Context!13933 call!649986)) (Context!13933 call!650033)) a!1901))))

(declare-fun b!7117551 () Bool)

(assert (=> b!7117551 (= e!4276877 (as set.empty (Set Context!13932)))))

(declare-fun bm!650025 () Bool)

(declare-fun call!650034 () List!68933)

(assert (=> bm!650025 (= call!650034 call!650033)))

(declare-fun b!7117552 () Bool)

(declare-fun e!4276873 () (Set Context!13932))

(declare-fun call!650032 () (Set Context!13932))

(assert (=> b!7117552 (= e!4276873 (set.union call!650032 call!650029))))

(declare-fun bm!650026 () Bool)

(assert (=> bm!650026 (= call!650031 call!650032)))

(declare-fun b!7117553 () Bool)

(declare-fun c!1328244 () Bool)

(assert (=> b!7117553 (= c!1328244 (is-Star!17972 (ite c!1328193 (regOne!36457 r!11554) (ite c!1328195 (regTwo!36456 r!11554) (ite c!1328196 (regOne!36456 r!11554) (reg!18301 r!11554))))))))

(declare-fun e!4276876 () (Set Context!13932))

(assert (=> b!7117553 (= e!4276876 e!4276877)))

(declare-fun b!7117554 () Bool)

(declare-fun c!1328247 () Bool)

(declare-fun e!4276874 () Bool)

(assert (=> b!7117554 (= c!1328247 e!4276874)))

(declare-fun res!2903866 () Bool)

(assert (=> b!7117554 (=> (not res!2903866) (not e!4276874))))

(assert (=> b!7117554 (= res!2903866 (is-Concat!26817 (ite c!1328193 (regOne!36457 r!11554) (ite c!1328195 (regTwo!36456 r!11554) (ite c!1328196 (regOne!36456 r!11554) (reg!18301 r!11554))))))))

(assert (=> b!7117554 (= e!4276873 e!4276872)))

(declare-fun b!7117555 () Bool)

(assert (=> b!7117555 (= e!4276872 e!4276876)))

(declare-fun c!1328248 () Bool)

(assert (=> b!7117555 (= c!1328248 (is-Concat!26817 (ite c!1328193 (regOne!36457 r!11554) (ite c!1328195 (regTwo!36456 r!11554) (ite c!1328196 (regOne!36456 r!11554) (reg!18301 r!11554))))))))

(declare-fun b!7117557 () Bool)

(assert (=> b!7117557 (= e!4276875 e!4276873)))

(assert (=> b!7117557 (= c!1328245 (is-Union!17972 (ite c!1328193 (regOne!36457 r!11554) (ite c!1328195 (regTwo!36456 r!11554) (ite c!1328196 (regOne!36456 r!11554) (reg!18301 r!11554))))))))

(declare-fun b!7117558 () Bool)

(assert (=> b!7117558 (= e!4276876 call!650030)))

(declare-fun bm!650027 () Bool)

(assert (=> bm!650027 (= call!650030 call!650031)))

(declare-fun bm!650028 () Bool)

(assert (=> bm!650028 (= call!650032 (derivationStepZipperDown!2469 (ite c!1328245 (regOne!36457 (ite c!1328193 (regOne!36457 r!11554) (ite c!1328195 (regTwo!36456 r!11554) (ite c!1328196 (regOne!36456 r!11554) (reg!18301 r!11554))))) (ite c!1328247 (regTwo!36456 (ite c!1328193 (regOne!36457 r!11554) (ite c!1328195 (regTwo!36456 r!11554) (ite c!1328196 (regOne!36456 r!11554) (reg!18301 r!11554))))) (ite c!1328248 (regOne!36456 (ite c!1328193 (regOne!36457 r!11554) (ite c!1328195 (regTwo!36456 r!11554) (ite c!1328196 (regOne!36456 r!11554) (reg!18301 r!11554))))) (reg!18301 (ite c!1328193 (regOne!36457 r!11554) (ite c!1328195 (regTwo!36456 r!11554) (ite c!1328196 (regOne!36456 r!11554) (reg!18301 r!11554)))))))) (ite (or c!1328245 c!1328247) (ite (or c!1328193 c!1328195) (Context!13933 lt!2560833) (Context!13933 call!649986)) (Context!13933 call!650034)) a!1901))))

(declare-fun bm!650029 () Bool)

(assert (=> bm!650029 (= call!650033 ($colon$colon!2816 (exprs!7466 (ite (or c!1328193 c!1328195) (Context!13933 lt!2560833) (Context!13933 call!649986))) (ite (or c!1328247 c!1328248) (regTwo!36456 (ite c!1328193 (regOne!36457 r!11554) (ite c!1328195 (regTwo!36456 r!11554) (ite c!1328196 (regOne!36456 r!11554) (reg!18301 r!11554))))) (ite c!1328193 (regOne!36457 r!11554) (ite c!1328195 (regTwo!36456 r!11554) (ite c!1328196 (regOne!36456 r!11554) (reg!18301 r!11554)))))))))

(declare-fun b!7117556 () Bool)

(assert (=> b!7117556 (= e!4276874 (nullable!7609 (regOne!36456 (ite c!1328193 (regOne!36457 r!11554) (ite c!1328195 (regTwo!36456 r!11554) (ite c!1328196 (regOne!36456 r!11554) (reg!18301 r!11554)))))))))

(declare-fun c!1328246 () Bool)

(declare-fun d!2221396 () Bool)

(assert (=> d!2221396 (= c!1328246 (and (is-ElementMatch!17972 (ite c!1328193 (regOne!36457 r!11554) (ite c!1328195 (regTwo!36456 r!11554) (ite c!1328196 (regOne!36456 r!11554) (reg!18301 r!11554))))) (= (c!1328161 (ite c!1328193 (regOne!36457 r!11554) (ite c!1328195 (regTwo!36456 r!11554) (ite c!1328196 (regOne!36456 r!11554) (reg!18301 r!11554))))) a!1901)))))

(assert (=> d!2221396 (= (derivationStepZipperDown!2469 (ite c!1328193 (regOne!36457 r!11554) (ite c!1328195 (regTwo!36456 r!11554) (ite c!1328196 (regOne!36456 r!11554) (reg!18301 r!11554)))) (ite (or c!1328193 c!1328195) (Context!13933 lt!2560833) (Context!13933 call!649986)) a!1901) e!4276875)))

(assert (= (and d!2221396 c!1328246) b!7117549))

(assert (= (and d!2221396 (not c!1328246)) b!7117557))

(assert (= (and b!7117557 c!1328245) b!7117552))

(assert (= (and b!7117557 (not c!1328245)) b!7117554))

(assert (= (and b!7117554 res!2903866) b!7117556))

(assert (= (and b!7117554 c!1328247) b!7117548))

(assert (= (and b!7117554 (not c!1328247)) b!7117555))

(assert (= (and b!7117555 c!1328248) b!7117558))

(assert (= (and b!7117555 (not c!1328248)) b!7117553))

(assert (= (and b!7117553 c!1328244) b!7117550))

(assert (= (and b!7117553 (not c!1328244)) b!7117551))

(assert (= (or b!7117558 b!7117550) bm!650025))

(assert (= (or b!7117558 b!7117550) bm!650027))

(assert (= (or b!7117548 bm!650027) bm!650026))

(assert (= (or b!7117548 bm!650025) bm!650029))

(assert (= (or b!7117552 b!7117548) bm!650024))

(assert (= (or b!7117552 bm!650026) bm!650028))

(declare-fun m!7835834 () Bool)

(assert (=> b!7117549 m!7835834))

(declare-fun m!7835836 () Bool)

(assert (=> bm!650024 m!7835836))

(declare-fun m!7835838 () Bool)

(assert (=> b!7117556 m!7835838))

(declare-fun m!7835840 () Bool)

(assert (=> bm!650028 m!7835840))

(declare-fun m!7835842 () Bool)

(assert (=> bm!650029 m!7835842))

(assert (=> bm!649980 d!2221396))

(declare-fun b!7117559 () Bool)

(declare-fun e!4276878 () (Set Context!13932))

(declare-fun call!650035 () (Set Context!13932))

(declare-fun call!650037 () (Set Context!13932))

(assert (=> b!7117559 (= e!4276878 (set.union call!650035 call!650037))))

(declare-fun b!7117560 () Bool)

(declare-fun e!4276881 () (Set Context!13932))

(assert (=> b!7117560 (= e!4276881 (set.insert (ite c!1328193 (Context!13933 lt!2560833) (Context!13933 call!649985)) (as set.empty (Set Context!13932))))))

(declare-fun b!7117561 () Bool)

(declare-fun e!4276883 () (Set Context!13932))

(declare-fun call!650036 () (Set Context!13932))

(assert (=> b!7117561 (= e!4276883 call!650036)))

(declare-fun call!650039 () List!68933)

(declare-fun c!1328250 () Bool)

(declare-fun bm!650030 () Bool)

(assert (=> bm!650030 (= call!650035 (derivationStepZipperDown!2469 (ite c!1328250 (regTwo!36457 (ite c!1328193 (regTwo!36457 r!11554) (regOne!36456 r!11554))) (regOne!36456 (ite c!1328193 (regTwo!36457 r!11554) (regOne!36456 r!11554)))) (ite c!1328250 (ite c!1328193 (Context!13933 lt!2560833) (Context!13933 call!649985)) (Context!13933 call!650039)) a!1901))))

(declare-fun b!7117562 () Bool)

(assert (=> b!7117562 (= e!4276883 (as set.empty (Set Context!13932)))))

(declare-fun bm!650031 () Bool)

(declare-fun call!650040 () List!68933)

(assert (=> bm!650031 (= call!650040 call!650039)))

(declare-fun b!7117563 () Bool)

(declare-fun e!4276879 () (Set Context!13932))

(declare-fun call!650038 () (Set Context!13932))

(assert (=> b!7117563 (= e!4276879 (set.union call!650038 call!650035))))

(declare-fun bm!650032 () Bool)

(assert (=> bm!650032 (= call!650037 call!650038)))

(declare-fun b!7117564 () Bool)

(declare-fun c!1328249 () Bool)

(assert (=> b!7117564 (= c!1328249 (is-Star!17972 (ite c!1328193 (regTwo!36457 r!11554) (regOne!36456 r!11554))))))

(declare-fun e!4276882 () (Set Context!13932))

(assert (=> b!7117564 (= e!4276882 e!4276883)))

(declare-fun b!7117565 () Bool)

(declare-fun c!1328252 () Bool)

(declare-fun e!4276880 () Bool)

(assert (=> b!7117565 (= c!1328252 e!4276880)))

(declare-fun res!2903867 () Bool)

(assert (=> b!7117565 (=> (not res!2903867) (not e!4276880))))

(assert (=> b!7117565 (= res!2903867 (is-Concat!26817 (ite c!1328193 (regTwo!36457 r!11554) (regOne!36456 r!11554))))))

(assert (=> b!7117565 (= e!4276879 e!4276878)))

(declare-fun b!7117566 () Bool)

(assert (=> b!7117566 (= e!4276878 e!4276882)))

(declare-fun c!1328253 () Bool)

(assert (=> b!7117566 (= c!1328253 (is-Concat!26817 (ite c!1328193 (regTwo!36457 r!11554) (regOne!36456 r!11554))))))

(declare-fun b!7117568 () Bool)

(assert (=> b!7117568 (= e!4276881 e!4276879)))

(assert (=> b!7117568 (= c!1328250 (is-Union!17972 (ite c!1328193 (regTwo!36457 r!11554) (regOne!36456 r!11554))))))

(declare-fun b!7117569 () Bool)

(assert (=> b!7117569 (= e!4276882 call!650036)))

(declare-fun bm!650033 () Bool)

(assert (=> bm!650033 (= call!650036 call!650037)))

(declare-fun bm!650034 () Bool)

(assert (=> bm!650034 (= call!650038 (derivationStepZipperDown!2469 (ite c!1328250 (regOne!36457 (ite c!1328193 (regTwo!36457 r!11554) (regOne!36456 r!11554))) (ite c!1328252 (regTwo!36456 (ite c!1328193 (regTwo!36457 r!11554) (regOne!36456 r!11554))) (ite c!1328253 (regOne!36456 (ite c!1328193 (regTwo!36457 r!11554) (regOne!36456 r!11554))) (reg!18301 (ite c!1328193 (regTwo!36457 r!11554) (regOne!36456 r!11554)))))) (ite (or c!1328250 c!1328252) (ite c!1328193 (Context!13933 lt!2560833) (Context!13933 call!649985)) (Context!13933 call!650040)) a!1901))))

(declare-fun bm!650035 () Bool)

(assert (=> bm!650035 (= call!650039 ($colon$colon!2816 (exprs!7466 (ite c!1328193 (Context!13933 lt!2560833) (Context!13933 call!649985))) (ite (or c!1328252 c!1328253) (regTwo!36456 (ite c!1328193 (regTwo!36457 r!11554) (regOne!36456 r!11554))) (ite c!1328193 (regTwo!36457 r!11554) (regOne!36456 r!11554)))))))

(declare-fun b!7117567 () Bool)

(assert (=> b!7117567 (= e!4276880 (nullable!7609 (regOne!36456 (ite c!1328193 (regTwo!36457 r!11554) (regOne!36456 r!11554)))))))

(declare-fun c!1328251 () Bool)

(declare-fun d!2221398 () Bool)

(assert (=> d!2221398 (= c!1328251 (and (is-ElementMatch!17972 (ite c!1328193 (regTwo!36457 r!11554) (regOne!36456 r!11554))) (= (c!1328161 (ite c!1328193 (regTwo!36457 r!11554) (regOne!36456 r!11554))) a!1901)))))

(assert (=> d!2221398 (= (derivationStepZipperDown!2469 (ite c!1328193 (regTwo!36457 r!11554) (regOne!36456 r!11554)) (ite c!1328193 (Context!13933 lt!2560833) (Context!13933 call!649985)) a!1901) e!4276881)))

(assert (= (and d!2221398 c!1328251) b!7117560))

(assert (= (and d!2221398 (not c!1328251)) b!7117568))

(assert (= (and b!7117568 c!1328250) b!7117563))

(assert (= (and b!7117568 (not c!1328250)) b!7117565))

(assert (= (and b!7117565 res!2903867) b!7117567))

(assert (= (and b!7117565 c!1328252) b!7117559))

(assert (= (and b!7117565 (not c!1328252)) b!7117566))

(assert (= (and b!7117566 c!1328253) b!7117569))

(assert (= (and b!7117566 (not c!1328253)) b!7117564))

(assert (= (and b!7117564 c!1328249) b!7117561))

(assert (= (and b!7117564 (not c!1328249)) b!7117562))

(assert (= (or b!7117569 b!7117561) bm!650031))

(assert (= (or b!7117569 b!7117561) bm!650033))

(assert (= (or b!7117559 bm!650033) bm!650032))

(assert (= (or b!7117559 bm!650031) bm!650035))

(assert (= (or b!7117563 b!7117559) bm!650030))

(assert (= (or b!7117563 bm!650032) bm!650034))

(declare-fun m!7835844 () Bool)

(assert (=> b!7117560 m!7835844))

(declare-fun m!7835846 () Bool)

(assert (=> bm!650030 m!7835846))

(declare-fun m!7835848 () Bool)

(assert (=> b!7117567 m!7835848))

(declare-fun m!7835850 () Bool)

(assert (=> bm!650034 m!7835850))

(declare-fun m!7835852 () Bool)

(assert (=> bm!650035 m!7835852))

(assert (=> bm!649976 d!2221398))

(declare-fun d!2221400 () Bool)

(declare-fun res!2903879 () Bool)

(declare-fun e!4276898 () Bool)

(assert (=> d!2221400 (=> res!2903879 e!4276898)))

(assert (=> d!2221400 (= res!2903879 (is-EmptyExpr!17972 (regOne!36456 r!11554)))))

(assert (=> d!2221400 (= (nullableFct!2951 (regOne!36456 r!11554)) e!4276898)))

(declare-fun b!7117584 () Bool)

(declare-fun e!4276899 () Bool)

(declare-fun call!650045 () Bool)

(assert (=> b!7117584 (= e!4276899 call!650045)))

(declare-fun b!7117585 () Bool)

(declare-fun e!4276901 () Bool)

(declare-fun e!4276896 () Bool)

(assert (=> b!7117585 (= e!4276901 e!4276896)))

(declare-fun res!2903880 () Bool)

(assert (=> b!7117585 (=> res!2903880 e!4276896)))

(assert (=> b!7117585 (= res!2903880 (is-Star!17972 (regOne!36456 r!11554)))))

(declare-fun b!7117586 () Bool)

(declare-fun e!4276897 () Bool)

(declare-fun call!650046 () Bool)

(assert (=> b!7117586 (= e!4276897 call!650046)))

(declare-fun b!7117587 () Bool)

(declare-fun e!4276900 () Bool)

(assert (=> b!7117587 (= e!4276900 e!4276897)))

(declare-fun res!2903881 () Bool)

(assert (=> b!7117587 (= res!2903881 call!650045)))

(assert (=> b!7117587 (=> (not res!2903881) (not e!4276897))))

(declare-fun bm!650040 () Bool)

(declare-fun c!1328256 () Bool)

(assert (=> bm!650040 (= call!650045 (nullable!7609 (ite c!1328256 (regTwo!36457 (regOne!36456 r!11554)) (regOne!36456 (regOne!36456 r!11554)))))))

(declare-fun b!7117588 () Bool)

(assert (=> b!7117588 (= e!4276896 e!4276900)))

(assert (=> b!7117588 (= c!1328256 (is-Union!17972 (regOne!36456 r!11554)))))

(declare-fun bm!650041 () Bool)

(assert (=> bm!650041 (= call!650046 (nullable!7609 (ite c!1328256 (regOne!36457 (regOne!36456 r!11554)) (regTwo!36456 (regOne!36456 r!11554)))))))

(declare-fun b!7117589 () Bool)

(assert (=> b!7117589 (= e!4276900 e!4276899)))

(declare-fun res!2903878 () Bool)

(assert (=> b!7117589 (= res!2903878 call!650046)))

(assert (=> b!7117589 (=> res!2903878 e!4276899)))

(declare-fun b!7117590 () Bool)

(assert (=> b!7117590 (= e!4276898 e!4276901)))

(declare-fun res!2903882 () Bool)

(assert (=> b!7117590 (=> (not res!2903882) (not e!4276901))))

(assert (=> b!7117590 (= res!2903882 (and (not (is-EmptyLang!17972 (regOne!36456 r!11554))) (not (is-ElementMatch!17972 (regOne!36456 r!11554)))))))

(assert (= (and d!2221400 (not res!2903879)) b!7117590))

(assert (= (and b!7117590 res!2903882) b!7117585))

(assert (= (and b!7117585 (not res!2903880)) b!7117588))

(assert (= (and b!7117588 c!1328256) b!7117589))

(assert (= (and b!7117588 (not c!1328256)) b!7117587))

(assert (= (and b!7117589 (not res!2903878)) b!7117584))

(assert (= (and b!7117587 res!2903881) b!7117586))

(assert (= (or b!7117589 b!7117586) bm!650041))

(assert (= (or b!7117584 b!7117587) bm!650040))

(declare-fun m!7835854 () Bool)

(assert (=> bm!650040 m!7835854))

(declare-fun m!7835856 () Bool)

(assert (=> bm!650041 m!7835856))

(assert (=> d!2221328 d!2221400))

(declare-fun b!7117591 () Bool)

(declare-fun e!4276903 () Bool)

(declare-fun e!4276902 () Bool)

(assert (=> b!7117591 (= e!4276903 e!4276902)))

(declare-fun res!2903885 () Bool)

(assert (=> b!7117591 (=> (not res!2903885) (not e!4276902))))

(declare-fun call!650047 () Bool)

(assert (=> b!7117591 (= res!2903885 call!650047)))

(declare-fun b!7117592 () Bool)

(declare-fun e!4276904 () Bool)

(assert (=> b!7117592 (= e!4276904 call!650047)))

(declare-fun b!7117593 () Bool)

(declare-fun res!2903886 () Bool)

(assert (=> b!7117593 (=> res!2903886 e!4276903)))

(assert (=> b!7117593 (= res!2903886 (not (is-Concat!26817 (ite c!1328168 (regOne!36457 r!11554) (regTwo!36456 r!11554)))))))

(declare-fun e!4276907 () Bool)

(assert (=> b!7117593 (= e!4276907 e!4276903)))

(declare-fun b!7117595 () Bool)

(declare-fun e!4276906 () Bool)

(assert (=> b!7117595 (= e!4276906 e!4276907)))

(declare-fun c!1328258 () Bool)

(assert (=> b!7117595 (= c!1328258 (is-Union!17972 (ite c!1328168 (regOne!36457 r!11554) (regTwo!36456 r!11554))))))

(declare-fun bm!650042 () Bool)

(declare-fun call!650049 () Bool)

(assert (=> bm!650042 (= call!650049 (validRegex!9245 (ite c!1328258 (regOne!36457 (ite c!1328168 (regOne!36457 r!11554) (regTwo!36456 r!11554))) (regTwo!36456 (ite c!1328168 (regOne!36457 r!11554) (regTwo!36456 r!11554))))))))

(declare-fun b!7117596 () Bool)

(assert (=> b!7117596 (= e!4276902 call!650049)))

(declare-fun c!1328257 () Bool)

(declare-fun call!650048 () Bool)

(declare-fun bm!650043 () Bool)

(assert (=> bm!650043 (= call!650048 (validRegex!9245 (ite c!1328257 (reg!18301 (ite c!1328168 (regOne!36457 r!11554) (regTwo!36456 r!11554))) (ite c!1328258 (regTwo!36457 (ite c!1328168 (regOne!36457 r!11554) (regTwo!36456 r!11554))) (regOne!36456 (ite c!1328168 (regOne!36457 r!11554) (regTwo!36456 r!11554)))))))))

(declare-fun b!7117594 () Bool)

(declare-fun e!4276905 () Bool)

(assert (=> b!7117594 (= e!4276905 e!4276906)))

(assert (=> b!7117594 (= c!1328257 (is-Star!17972 (ite c!1328168 (regOne!36457 r!11554) (regTwo!36456 r!11554))))))

(declare-fun d!2221402 () Bool)

(declare-fun res!2903883 () Bool)

(assert (=> d!2221402 (=> res!2903883 e!4276905)))

(assert (=> d!2221402 (= res!2903883 (is-ElementMatch!17972 (ite c!1328168 (regOne!36457 r!11554) (regTwo!36456 r!11554))))))

(assert (=> d!2221402 (= (validRegex!9245 (ite c!1328168 (regOne!36457 r!11554) (regTwo!36456 r!11554))) e!4276905)))

(declare-fun b!7117597 () Bool)

(declare-fun e!4276908 () Bool)

(assert (=> b!7117597 (= e!4276908 call!650048)))

(declare-fun b!7117598 () Bool)

(assert (=> b!7117598 (= e!4276906 e!4276908)))

(declare-fun res!2903887 () Bool)

(assert (=> b!7117598 (= res!2903887 (not (nullable!7609 (reg!18301 (ite c!1328168 (regOne!36457 r!11554) (regTwo!36456 r!11554))))))))

(assert (=> b!7117598 (=> (not res!2903887) (not e!4276908))))

(declare-fun bm!650044 () Bool)

(assert (=> bm!650044 (= call!650047 call!650048)))

(declare-fun b!7117599 () Bool)

(declare-fun res!2903884 () Bool)

(assert (=> b!7117599 (=> (not res!2903884) (not e!4276904))))

(assert (=> b!7117599 (= res!2903884 call!650049)))

(assert (=> b!7117599 (= e!4276907 e!4276904)))

(assert (= (and d!2221402 (not res!2903883)) b!7117594))

(assert (= (and b!7117594 c!1328257) b!7117598))

(assert (= (and b!7117594 (not c!1328257)) b!7117595))

(assert (= (and b!7117598 res!2903887) b!7117597))

(assert (= (and b!7117595 c!1328258) b!7117599))

(assert (= (and b!7117595 (not c!1328258)) b!7117593))

(assert (= (and b!7117599 res!2903884) b!7117592))

(assert (= (and b!7117593 (not res!2903886)) b!7117591))

(assert (= (and b!7117591 res!2903885) b!7117596))

(assert (= (or b!7117599 b!7117596) bm!650042))

(assert (= (or b!7117592 b!7117591) bm!650044))

(assert (= (or b!7117597 bm!650044) bm!650043))

(declare-fun m!7835858 () Bool)

(assert (=> bm!650042 m!7835858))

(declare-fun m!7835860 () Bool)

(assert (=> bm!650043 m!7835860))

(declare-fun m!7835862 () Bool)

(assert (=> b!7117598 m!7835862))

(assert (=> bm!649949 d!2221402))

(declare-fun d!2221404 () Bool)

(assert (=> d!2221404 (= ($colon$colon!2816 (exprs!7466 (Context!13933 ($colon$colon!2816 lt!2560833 r!11554))) (ite (or c!1328205 c!1328206) (regTwo!36456 (reg!18301 r!11554)) (reg!18301 r!11554))) (Cons!68809 (ite (or c!1328205 c!1328206) (regTwo!36456 (reg!18301 r!11554)) (reg!18301 r!11554)) (exprs!7466 (Context!13933 ($colon$colon!2816 lt!2560833 r!11554)))))))

(assert (=> bm!649993 d!2221404))

(assert (=> b!7117334 d!2221328))

(declare-fun d!2221406 () Bool)

(declare-fun res!2903888 () Bool)

(declare-fun e!4276909 () Bool)

(assert (=> d!2221406 (=> res!2903888 e!4276909)))

(assert (=> d!2221406 (= res!2903888 (is-Nil!68809 (exprs!7466 (Context!13933 ($colon$colon!2816 (exprs!7466 c!9994) r!11554)))))))

(assert (=> d!2221406 (= (forall!16860 (exprs!7466 (Context!13933 ($colon$colon!2816 (exprs!7466 c!9994) r!11554))) lambda!432468) e!4276909)))

(declare-fun b!7117600 () Bool)

(declare-fun e!4276910 () Bool)

(assert (=> b!7117600 (= e!4276909 e!4276910)))

(declare-fun res!2903889 () Bool)

(assert (=> b!7117600 (=> (not res!2903889) (not e!4276910))))

(assert (=> b!7117600 (= res!2903889 (dynLambda!28062 lambda!432468 (h!75257 (exprs!7466 (Context!13933 ($colon$colon!2816 (exprs!7466 c!9994) r!11554))))))))

(declare-fun b!7117601 () Bool)

(assert (=> b!7117601 (= e!4276910 (forall!16860 (t!382784 (exprs!7466 (Context!13933 ($colon$colon!2816 (exprs!7466 c!9994) r!11554)))) lambda!432468))))

(assert (= (and d!2221406 (not res!2903888)) b!7117600))

(assert (= (and b!7117600 res!2903889) b!7117601))

(declare-fun b_lambda!271545 () Bool)

(assert (=> (not b_lambda!271545) (not b!7117600)))

(declare-fun m!7835864 () Bool)

(assert (=> b!7117600 m!7835864))

(declare-fun m!7835866 () Bool)

(assert (=> b!7117601 m!7835866))

(assert (=> d!2221330 d!2221406))

(declare-fun b!7117602 () Bool)

(declare-fun e!4276911 () Bool)

(assert (=> b!7117602 (= e!4276911 tp_is_empty!45177)))

(declare-fun b!7117604 () Bool)

(declare-fun tp!1959124 () Bool)

(assert (=> b!7117604 (= e!4276911 tp!1959124)))

(declare-fun b!7117603 () Bool)

(declare-fun tp!1959127 () Bool)

(declare-fun tp!1959123 () Bool)

(assert (=> b!7117603 (= e!4276911 (and tp!1959127 tp!1959123))))

(declare-fun b!7117605 () Bool)

(declare-fun tp!1959126 () Bool)

(declare-fun tp!1959125 () Bool)

(assert (=> b!7117605 (= e!4276911 (and tp!1959126 tp!1959125))))

(assert (=> b!7117402 (= tp!1959077 e!4276911)))

(assert (= (and b!7117402 (is-ElementMatch!17972 (regOne!36456 (regTwo!36456 r!11554)))) b!7117602))

(assert (= (and b!7117402 (is-Concat!26817 (regOne!36456 (regTwo!36456 r!11554)))) b!7117603))

(assert (= (and b!7117402 (is-Star!17972 (regOne!36456 (regTwo!36456 r!11554)))) b!7117604))

(assert (= (and b!7117402 (is-Union!17972 (regOne!36456 (regTwo!36456 r!11554)))) b!7117605))

(declare-fun b!7117606 () Bool)

(declare-fun e!4276912 () Bool)

(assert (=> b!7117606 (= e!4276912 tp_is_empty!45177)))

(declare-fun b!7117608 () Bool)

(declare-fun tp!1959129 () Bool)

(assert (=> b!7117608 (= e!4276912 tp!1959129)))

(declare-fun b!7117607 () Bool)

(declare-fun tp!1959132 () Bool)

(declare-fun tp!1959128 () Bool)

(assert (=> b!7117607 (= e!4276912 (and tp!1959132 tp!1959128))))

(declare-fun b!7117609 () Bool)

(declare-fun tp!1959131 () Bool)

(declare-fun tp!1959130 () Bool)

(assert (=> b!7117609 (= e!4276912 (and tp!1959131 tp!1959130))))

(assert (=> b!7117402 (= tp!1959073 e!4276912)))

(assert (= (and b!7117402 (is-ElementMatch!17972 (regTwo!36456 (regTwo!36456 r!11554)))) b!7117606))

(assert (= (and b!7117402 (is-Concat!26817 (regTwo!36456 (regTwo!36456 r!11554)))) b!7117607))

(assert (= (and b!7117402 (is-Star!17972 (regTwo!36456 (regTwo!36456 r!11554)))) b!7117608))

(assert (= (and b!7117402 (is-Union!17972 (regTwo!36456 (regTwo!36456 r!11554)))) b!7117609))

(declare-fun b!7117610 () Bool)

(declare-fun e!4276913 () Bool)

(assert (=> b!7117610 (= e!4276913 tp_is_empty!45177)))

(declare-fun b!7117612 () Bool)

(declare-fun tp!1959134 () Bool)

(assert (=> b!7117612 (= e!4276913 tp!1959134)))

(declare-fun b!7117611 () Bool)

(declare-fun tp!1959137 () Bool)

(declare-fun tp!1959133 () Bool)

(assert (=> b!7117611 (= e!4276913 (and tp!1959137 tp!1959133))))

(declare-fun b!7117613 () Bool)

(declare-fun tp!1959136 () Bool)

(declare-fun tp!1959135 () Bool)

(assert (=> b!7117613 (= e!4276913 (and tp!1959136 tp!1959135))))

(assert (=> b!7117405 (= tp!1959078 e!4276913)))

(assert (= (and b!7117405 (is-ElementMatch!17972 (h!75257 (exprs!7466 c!9994)))) b!7117610))

(assert (= (and b!7117405 (is-Concat!26817 (h!75257 (exprs!7466 c!9994)))) b!7117611))

(assert (= (and b!7117405 (is-Star!17972 (h!75257 (exprs!7466 c!9994)))) b!7117612))

(assert (= (and b!7117405 (is-Union!17972 (h!75257 (exprs!7466 c!9994)))) b!7117613))

(declare-fun b!7117614 () Bool)

(declare-fun e!4276914 () Bool)

(declare-fun tp!1959138 () Bool)

(declare-fun tp!1959139 () Bool)

(assert (=> b!7117614 (= e!4276914 (and tp!1959138 tp!1959139))))

(assert (=> b!7117405 (= tp!1959079 e!4276914)))

(assert (= (and b!7117405 (is-Cons!68809 (t!382784 (exprs!7466 c!9994)))) b!7117614))

(declare-fun b!7117615 () Bool)

(declare-fun e!4276915 () Bool)

(assert (=> b!7117615 (= e!4276915 tp_is_empty!45177)))

(declare-fun b!7117617 () Bool)

(declare-fun tp!1959141 () Bool)

(assert (=> b!7117617 (= e!4276915 tp!1959141)))

(declare-fun b!7117616 () Bool)

(declare-fun tp!1959144 () Bool)

(declare-fun tp!1959140 () Bool)

(assert (=> b!7117616 (= e!4276915 (and tp!1959144 tp!1959140))))

(declare-fun b!7117618 () Bool)

(declare-fun tp!1959143 () Bool)

(declare-fun tp!1959142 () Bool)

(assert (=> b!7117618 (= e!4276915 (and tp!1959143 tp!1959142))))

(assert (=> b!7117363 (= tp!1959041 e!4276915)))

(assert (= (and b!7117363 (is-ElementMatch!17972 (h!75257 (exprs!7466 auxCtx!45)))) b!7117615))

(assert (= (and b!7117363 (is-Concat!26817 (h!75257 (exprs!7466 auxCtx!45)))) b!7117616))

(assert (= (and b!7117363 (is-Star!17972 (h!75257 (exprs!7466 auxCtx!45)))) b!7117617))

(assert (= (and b!7117363 (is-Union!17972 (h!75257 (exprs!7466 auxCtx!45)))) b!7117618))

(declare-fun b!7117619 () Bool)

(declare-fun e!4276916 () Bool)

(declare-fun tp!1959145 () Bool)

(declare-fun tp!1959146 () Bool)

(assert (=> b!7117619 (= e!4276916 (and tp!1959145 tp!1959146))))

(assert (=> b!7117363 (= tp!1959042 e!4276916)))

(assert (= (and b!7117363 (is-Cons!68809 (t!382784 (exprs!7466 auxCtx!45)))) b!7117619))

(declare-fun b!7117620 () Bool)

(declare-fun e!4276917 () Bool)

(assert (=> b!7117620 (= e!4276917 tp_is_empty!45177)))

(declare-fun b!7117622 () Bool)

(declare-fun tp!1959148 () Bool)

(assert (=> b!7117622 (= e!4276917 tp!1959148)))

(declare-fun b!7117621 () Bool)

(declare-fun tp!1959151 () Bool)

(declare-fun tp!1959147 () Bool)

(assert (=> b!7117621 (= e!4276917 (and tp!1959151 tp!1959147))))

(declare-fun b!7117623 () Bool)

(declare-fun tp!1959150 () Bool)

(declare-fun tp!1959149 () Bool)

(assert (=> b!7117623 (= e!4276917 (and tp!1959150 tp!1959149))))

(assert (=> b!7117388 (= tp!1959056 e!4276917)))

(assert (= (and b!7117388 (is-ElementMatch!17972 (regOne!36457 (reg!18301 r!11554)))) b!7117620))

(assert (= (and b!7117388 (is-Concat!26817 (regOne!36457 (reg!18301 r!11554)))) b!7117621))

(assert (= (and b!7117388 (is-Star!17972 (regOne!36457 (reg!18301 r!11554)))) b!7117622))

(assert (= (and b!7117388 (is-Union!17972 (regOne!36457 (reg!18301 r!11554)))) b!7117623))

(declare-fun b!7117624 () Bool)

(declare-fun e!4276918 () Bool)

(assert (=> b!7117624 (= e!4276918 tp_is_empty!45177)))

(declare-fun b!7117626 () Bool)

(declare-fun tp!1959153 () Bool)

(assert (=> b!7117626 (= e!4276918 tp!1959153)))

(declare-fun b!7117625 () Bool)

(declare-fun tp!1959156 () Bool)

(declare-fun tp!1959152 () Bool)

(assert (=> b!7117625 (= e!4276918 (and tp!1959156 tp!1959152))))

(declare-fun b!7117627 () Bool)

(declare-fun tp!1959155 () Bool)

(declare-fun tp!1959154 () Bool)

(assert (=> b!7117627 (= e!4276918 (and tp!1959155 tp!1959154))))

(assert (=> b!7117388 (= tp!1959055 e!4276918)))

(assert (= (and b!7117388 (is-ElementMatch!17972 (regTwo!36457 (reg!18301 r!11554)))) b!7117624))

(assert (= (and b!7117388 (is-Concat!26817 (regTwo!36457 (reg!18301 r!11554)))) b!7117625))

(assert (= (and b!7117388 (is-Star!17972 (regTwo!36457 (reg!18301 r!11554)))) b!7117626))

(assert (= (and b!7117388 (is-Union!17972 (regTwo!36457 (reg!18301 r!11554)))) b!7117627))

(declare-fun b!7117628 () Bool)

(declare-fun e!4276919 () Bool)

(assert (=> b!7117628 (= e!4276919 tp_is_empty!45177)))

(declare-fun b!7117630 () Bool)

(declare-fun tp!1959158 () Bool)

(assert (=> b!7117630 (= e!4276919 tp!1959158)))

(declare-fun b!7117629 () Bool)

(declare-fun tp!1959161 () Bool)

(declare-fun tp!1959157 () Bool)

(assert (=> b!7117629 (= e!4276919 (and tp!1959161 tp!1959157))))

(declare-fun b!7117631 () Bool)

(declare-fun tp!1959160 () Bool)

(declare-fun tp!1959159 () Bool)

(assert (=> b!7117631 (= e!4276919 (and tp!1959160 tp!1959159))))

(assert (=> b!7117391 (= tp!1959059 e!4276919)))

(assert (= (and b!7117391 (is-ElementMatch!17972 (reg!18301 (regOne!36457 r!11554)))) b!7117628))

(assert (= (and b!7117391 (is-Concat!26817 (reg!18301 (regOne!36457 r!11554)))) b!7117629))

(assert (= (and b!7117391 (is-Star!17972 (reg!18301 (regOne!36457 r!11554)))) b!7117630))

(assert (= (and b!7117391 (is-Union!17972 (reg!18301 (regOne!36457 r!11554)))) b!7117631))

(declare-fun b!7117632 () Bool)

(declare-fun e!4276920 () Bool)

(assert (=> b!7117632 (= e!4276920 tp_is_empty!45177)))

(declare-fun b!7117634 () Bool)

(declare-fun tp!1959163 () Bool)

(assert (=> b!7117634 (= e!4276920 tp!1959163)))

(declare-fun b!7117633 () Bool)

(declare-fun tp!1959166 () Bool)

(declare-fun tp!1959162 () Bool)

(assert (=> b!7117633 (= e!4276920 (and tp!1959166 tp!1959162))))

(declare-fun b!7117635 () Bool)

(declare-fun tp!1959165 () Bool)

(declare-fun tp!1959164 () Bool)

(assert (=> b!7117635 (= e!4276920 (and tp!1959165 tp!1959164))))

(assert (=> b!7117396 (= tp!1959066 e!4276920)))

(assert (= (and b!7117396 (is-ElementMatch!17972 (regOne!36457 (regTwo!36457 r!11554)))) b!7117632))

(assert (= (and b!7117396 (is-Concat!26817 (regOne!36457 (regTwo!36457 r!11554)))) b!7117633))

(assert (= (and b!7117396 (is-Star!17972 (regOne!36457 (regTwo!36457 r!11554)))) b!7117634))

(assert (= (and b!7117396 (is-Union!17972 (regOne!36457 (regTwo!36457 r!11554)))) b!7117635))

(declare-fun b!7117636 () Bool)

(declare-fun e!4276921 () Bool)

(assert (=> b!7117636 (= e!4276921 tp_is_empty!45177)))

(declare-fun b!7117638 () Bool)

(declare-fun tp!1959168 () Bool)

(assert (=> b!7117638 (= e!4276921 tp!1959168)))

(declare-fun b!7117637 () Bool)

(declare-fun tp!1959171 () Bool)

(declare-fun tp!1959167 () Bool)

(assert (=> b!7117637 (= e!4276921 (and tp!1959171 tp!1959167))))

(declare-fun b!7117639 () Bool)

(declare-fun tp!1959170 () Bool)

(declare-fun tp!1959169 () Bool)

(assert (=> b!7117639 (= e!4276921 (and tp!1959170 tp!1959169))))

(assert (=> b!7117396 (= tp!1959065 e!4276921)))

(assert (= (and b!7117396 (is-ElementMatch!17972 (regTwo!36457 (regTwo!36457 r!11554)))) b!7117636))

(assert (= (and b!7117396 (is-Concat!26817 (regTwo!36457 (regTwo!36457 r!11554)))) b!7117637))

(assert (= (and b!7117396 (is-Star!17972 (regTwo!36457 (regTwo!36457 r!11554)))) b!7117638))

(assert (= (and b!7117396 (is-Union!17972 (regTwo!36457 (regTwo!36457 r!11554)))) b!7117639))

(declare-fun b!7117640 () Bool)

(declare-fun e!4276922 () Bool)

(assert (=> b!7117640 (= e!4276922 tp_is_empty!45177)))

(declare-fun b!7117642 () Bool)

(declare-fun tp!1959173 () Bool)

(assert (=> b!7117642 (= e!4276922 tp!1959173)))

(declare-fun b!7117641 () Bool)

(declare-fun tp!1959176 () Bool)

(declare-fun tp!1959172 () Bool)

(assert (=> b!7117641 (= e!4276922 (and tp!1959176 tp!1959172))))

(declare-fun b!7117643 () Bool)

(declare-fun tp!1959175 () Bool)

(declare-fun tp!1959174 () Bool)

(assert (=> b!7117643 (= e!4276922 (and tp!1959175 tp!1959174))))

(assert (=> b!7117387 (= tp!1959054 e!4276922)))

(assert (= (and b!7117387 (is-ElementMatch!17972 (reg!18301 (reg!18301 r!11554)))) b!7117640))

(assert (= (and b!7117387 (is-Concat!26817 (reg!18301 (reg!18301 r!11554)))) b!7117641))

(assert (= (and b!7117387 (is-Star!17972 (reg!18301 (reg!18301 r!11554)))) b!7117642))

(assert (= (and b!7117387 (is-Union!17972 (reg!18301 (reg!18301 r!11554)))) b!7117643))

(declare-fun b!7117644 () Bool)

(declare-fun e!4276923 () Bool)

(assert (=> b!7117644 (= e!4276923 tp_is_empty!45177)))

(declare-fun b!7117646 () Bool)

(declare-fun tp!1959178 () Bool)

(assert (=> b!7117646 (= e!4276923 tp!1959178)))

(declare-fun b!7117645 () Bool)

(declare-fun tp!1959181 () Bool)

(declare-fun tp!1959177 () Bool)

(assert (=> b!7117645 (= e!4276923 (and tp!1959181 tp!1959177))))

(declare-fun b!7117647 () Bool)

(declare-fun tp!1959180 () Bool)

(declare-fun tp!1959179 () Bool)

(assert (=> b!7117647 (= e!4276923 (and tp!1959180 tp!1959179))))

(assert (=> b!7117392 (= tp!1959061 e!4276923)))

(assert (= (and b!7117392 (is-ElementMatch!17972 (regOne!36457 (regOne!36457 r!11554)))) b!7117644))

(assert (= (and b!7117392 (is-Concat!26817 (regOne!36457 (regOne!36457 r!11554)))) b!7117645))

(assert (= (and b!7117392 (is-Star!17972 (regOne!36457 (regOne!36457 r!11554)))) b!7117646))

(assert (= (and b!7117392 (is-Union!17972 (regOne!36457 (regOne!36457 r!11554)))) b!7117647))

(declare-fun b!7117648 () Bool)

(declare-fun e!4276924 () Bool)

(assert (=> b!7117648 (= e!4276924 tp_is_empty!45177)))

(declare-fun b!7117650 () Bool)

(declare-fun tp!1959183 () Bool)

(assert (=> b!7117650 (= e!4276924 tp!1959183)))

(declare-fun b!7117649 () Bool)

(declare-fun tp!1959186 () Bool)

(declare-fun tp!1959182 () Bool)

(assert (=> b!7117649 (= e!4276924 (and tp!1959186 tp!1959182))))

(declare-fun b!7117651 () Bool)

(declare-fun tp!1959185 () Bool)

(declare-fun tp!1959184 () Bool)

(assert (=> b!7117651 (= e!4276924 (and tp!1959185 tp!1959184))))

(assert (=> b!7117392 (= tp!1959060 e!4276924)))

(assert (= (and b!7117392 (is-ElementMatch!17972 (regTwo!36457 (regOne!36457 r!11554)))) b!7117648))

(assert (= (and b!7117392 (is-Concat!26817 (regTwo!36457 (regOne!36457 r!11554)))) b!7117649))

(assert (= (and b!7117392 (is-Star!17972 (regTwo!36457 (regOne!36457 r!11554)))) b!7117650))

(assert (= (and b!7117392 (is-Union!17972 (regTwo!36457 (regOne!36457 r!11554)))) b!7117651))

(declare-fun b!7117652 () Bool)

(declare-fun e!4276925 () Bool)

(assert (=> b!7117652 (= e!4276925 tp_is_empty!45177)))

(declare-fun b!7117654 () Bool)

(declare-fun tp!1959188 () Bool)

(assert (=> b!7117654 (= e!4276925 tp!1959188)))

(declare-fun b!7117653 () Bool)

(declare-fun tp!1959191 () Bool)

(declare-fun tp!1959187 () Bool)

(assert (=> b!7117653 (= e!4276925 (and tp!1959191 tp!1959187))))

(declare-fun b!7117655 () Bool)

(declare-fun tp!1959190 () Bool)

(declare-fun tp!1959189 () Bool)

(assert (=> b!7117655 (= e!4276925 (and tp!1959190 tp!1959189))))

(assert (=> b!7117399 (= tp!1959069 e!4276925)))

(assert (= (and b!7117399 (is-ElementMatch!17972 (reg!18301 (regOne!36456 r!11554)))) b!7117652))

(assert (= (and b!7117399 (is-Concat!26817 (reg!18301 (regOne!36456 r!11554)))) b!7117653))

(assert (= (and b!7117399 (is-Star!17972 (reg!18301 (regOne!36456 r!11554)))) b!7117654))

(assert (= (and b!7117399 (is-Union!17972 (reg!18301 (regOne!36456 r!11554)))) b!7117655))

(declare-fun b!7117656 () Bool)

(declare-fun e!4276926 () Bool)

(assert (=> b!7117656 (= e!4276926 tp_is_empty!45177)))

(declare-fun b!7117658 () Bool)

(declare-fun tp!1959193 () Bool)

(assert (=> b!7117658 (= e!4276926 tp!1959193)))

(declare-fun b!7117657 () Bool)

(declare-fun tp!1959196 () Bool)

(declare-fun tp!1959192 () Bool)

(assert (=> b!7117657 (= e!4276926 (and tp!1959196 tp!1959192))))

(declare-fun b!7117659 () Bool)

(declare-fun tp!1959195 () Bool)

(declare-fun tp!1959194 () Bool)

(assert (=> b!7117659 (= e!4276926 (and tp!1959195 tp!1959194))))

(assert (=> b!7117390 (= tp!1959062 e!4276926)))

(assert (= (and b!7117390 (is-ElementMatch!17972 (regOne!36456 (regOne!36457 r!11554)))) b!7117656))

(assert (= (and b!7117390 (is-Concat!26817 (regOne!36456 (regOne!36457 r!11554)))) b!7117657))

(assert (= (and b!7117390 (is-Star!17972 (regOne!36456 (regOne!36457 r!11554)))) b!7117658))

(assert (= (and b!7117390 (is-Union!17972 (regOne!36456 (regOne!36457 r!11554)))) b!7117659))

(declare-fun b!7117660 () Bool)

(declare-fun e!4276927 () Bool)

(assert (=> b!7117660 (= e!4276927 tp_is_empty!45177)))

(declare-fun b!7117662 () Bool)

(declare-fun tp!1959198 () Bool)

(assert (=> b!7117662 (= e!4276927 tp!1959198)))

(declare-fun b!7117661 () Bool)

(declare-fun tp!1959201 () Bool)

(declare-fun tp!1959197 () Bool)

(assert (=> b!7117661 (= e!4276927 (and tp!1959201 tp!1959197))))

(declare-fun b!7117663 () Bool)

(declare-fun tp!1959200 () Bool)

(declare-fun tp!1959199 () Bool)

(assert (=> b!7117663 (= e!4276927 (and tp!1959200 tp!1959199))))

(assert (=> b!7117390 (= tp!1959058 e!4276927)))

(assert (= (and b!7117390 (is-ElementMatch!17972 (regTwo!36456 (regOne!36457 r!11554)))) b!7117660))

(assert (= (and b!7117390 (is-Concat!26817 (regTwo!36456 (regOne!36457 r!11554)))) b!7117661))

(assert (= (and b!7117390 (is-Star!17972 (regTwo!36456 (regOne!36457 r!11554)))) b!7117662))

(assert (= (and b!7117390 (is-Union!17972 (regTwo!36456 (regOne!36457 r!11554)))) b!7117663))

(declare-fun b!7117664 () Bool)

(declare-fun e!4276928 () Bool)

(assert (=> b!7117664 (= e!4276928 tp_is_empty!45177)))

(declare-fun b!7117666 () Bool)

(declare-fun tp!1959203 () Bool)

(assert (=> b!7117666 (= e!4276928 tp!1959203)))

(declare-fun b!7117665 () Bool)

(declare-fun tp!1959206 () Bool)

(declare-fun tp!1959202 () Bool)

(assert (=> b!7117665 (= e!4276928 (and tp!1959206 tp!1959202))))

(declare-fun b!7117667 () Bool)

(declare-fun tp!1959205 () Bool)

(declare-fun tp!1959204 () Bool)

(assert (=> b!7117667 (= e!4276928 (and tp!1959205 tp!1959204))))

(assert (=> b!7117404 (= tp!1959076 e!4276928)))

(assert (= (and b!7117404 (is-ElementMatch!17972 (regOne!36457 (regTwo!36456 r!11554)))) b!7117664))

(assert (= (and b!7117404 (is-Concat!26817 (regOne!36457 (regTwo!36456 r!11554)))) b!7117665))

(assert (= (and b!7117404 (is-Star!17972 (regOne!36457 (regTwo!36456 r!11554)))) b!7117666))

(assert (= (and b!7117404 (is-Union!17972 (regOne!36457 (regTwo!36456 r!11554)))) b!7117667))

(declare-fun b!7117668 () Bool)

(declare-fun e!4276929 () Bool)

(assert (=> b!7117668 (= e!4276929 tp_is_empty!45177)))

(declare-fun b!7117670 () Bool)

(declare-fun tp!1959208 () Bool)

(assert (=> b!7117670 (= e!4276929 tp!1959208)))

(declare-fun b!7117669 () Bool)

(declare-fun tp!1959211 () Bool)

(declare-fun tp!1959207 () Bool)

(assert (=> b!7117669 (= e!4276929 (and tp!1959211 tp!1959207))))

(declare-fun b!7117671 () Bool)

(declare-fun tp!1959210 () Bool)

(declare-fun tp!1959209 () Bool)

(assert (=> b!7117671 (= e!4276929 (and tp!1959210 tp!1959209))))

(assert (=> b!7117404 (= tp!1959075 e!4276929)))

(assert (= (and b!7117404 (is-ElementMatch!17972 (regTwo!36457 (regTwo!36456 r!11554)))) b!7117668))

(assert (= (and b!7117404 (is-Concat!26817 (regTwo!36457 (regTwo!36456 r!11554)))) b!7117669))

(assert (= (and b!7117404 (is-Star!17972 (regTwo!36457 (regTwo!36456 r!11554)))) b!7117670))

(assert (= (and b!7117404 (is-Union!17972 (regTwo!36457 (regTwo!36456 r!11554)))) b!7117671))

(declare-fun b!7117672 () Bool)

(declare-fun e!4276930 () Bool)

(assert (=> b!7117672 (= e!4276930 tp_is_empty!45177)))

(declare-fun b!7117674 () Bool)

(declare-fun tp!1959213 () Bool)

(assert (=> b!7117674 (= e!4276930 tp!1959213)))

(declare-fun b!7117673 () Bool)

(declare-fun tp!1959216 () Bool)

(declare-fun tp!1959212 () Bool)

(assert (=> b!7117673 (= e!4276930 (and tp!1959216 tp!1959212))))

(declare-fun b!7117675 () Bool)

(declare-fun tp!1959215 () Bool)

(declare-fun tp!1959214 () Bool)

(assert (=> b!7117675 (= e!4276930 (and tp!1959215 tp!1959214))))

(assert (=> b!7117395 (= tp!1959064 e!4276930)))

(assert (= (and b!7117395 (is-ElementMatch!17972 (reg!18301 (regTwo!36457 r!11554)))) b!7117672))

(assert (= (and b!7117395 (is-Concat!26817 (reg!18301 (regTwo!36457 r!11554)))) b!7117673))

(assert (= (and b!7117395 (is-Star!17972 (reg!18301 (regTwo!36457 r!11554)))) b!7117674))

(assert (= (and b!7117395 (is-Union!17972 (reg!18301 (regTwo!36457 r!11554)))) b!7117675))

(declare-fun b!7117676 () Bool)

(declare-fun e!4276931 () Bool)

(assert (=> b!7117676 (= e!4276931 tp_is_empty!45177)))

(declare-fun b!7117678 () Bool)

(declare-fun tp!1959218 () Bool)

(assert (=> b!7117678 (= e!4276931 tp!1959218)))

(declare-fun b!7117677 () Bool)

(declare-fun tp!1959221 () Bool)

(declare-fun tp!1959217 () Bool)

(assert (=> b!7117677 (= e!4276931 (and tp!1959221 tp!1959217))))

(declare-fun b!7117679 () Bool)

(declare-fun tp!1959220 () Bool)

(declare-fun tp!1959219 () Bool)

(assert (=> b!7117679 (= e!4276931 (and tp!1959220 tp!1959219))))

(assert (=> b!7117386 (= tp!1959057 e!4276931)))

(assert (= (and b!7117386 (is-ElementMatch!17972 (regOne!36456 (reg!18301 r!11554)))) b!7117676))

(assert (= (and b!7117386 (is-Concat!26817 (regOne!36456 (reg!18301 r!11554)))) b!7117677))

(assert (= (and b!7117386 (is-Star!17972 (regOne!36456 (reg!18301 r!11554)))) b!7117678))

(assert (= (and b!7117386 (is-Union!17972 (regOne!36456 (reg!18301 r!11554)))) b!7117679))

(declare-fun b!7117680 () Bool)

(declare-fun e!4276932 () Bool)

(assert (=> b!7117680 (= e!4276932 tp_is_empty!45177)))

(declare-fun b!7117682 () Bool)

(declare-fun tp!1959223 () Bool)

(assert (=> b!7117682 (= e!4276932 tp!1959223)))

(declare-fun b!7117681 () Bool)

(declare-fun tp!1959226 () Bool)

(declare-fun tp!1959222 () Bool)

(assert (=> b!7117681 (= e!4276932 (and tp!1959226 tp!1959222))))

(declare-fun b!7117683 () Bool)

(declare-fun tp!1959225 () Bool)

(declare-fun tp!1959224 () Bool)

(assert (=> b!7117683 (= e!4276932 (and tp!1959225 tp!1959224))))

(assert (=> b!7117386 (= tp!1959053 e!4276932)))

(assert (= (and b!7117386 (is-ElementMatch!17972 (regTwo!36456 (reg!18301 r!11554)))) b!7117680))

(assert (= (and b!7117386 (is-Concat!26817 (regTwo!36456 (reg!18301 r!11554)))) b!7117681))

(assert (= (and b!7117386 (is-Star!17972 (regTwo!36456 (reg!18301 r!11554)))) b!7117682))

(assert (= (and b!7117386 (is-Union!17972 (regTwo!36456 (reg!18301 r!11554)))) b!7117683))

(declare-fun b!7117684 () Bool)

(declare-fun e!4276933 () Bool)

(assert (=> b!7117684 (= e!4276933 tp_is_empty!45177)))

(declare-fun b!7117686 () Bool)

(declare-fun tp!1959228 () Bool)

(assert (=> b!7117686 (= e!4276933 tp!1959228)))

(declare-fun b!7117685 () Bool)

(declare-fun tp!1959231 () Bool)

(declare-fun tp!1959227 () Bool)

(assert (=> b!7117685 (= e!4276933 (and tp!1959231 tp!1959227))))

(declare-fun b!7117687 () Bool)

(declare-fun tp!1959230 () Bool)

(declare-fun tp!1959229 () Bool)

(assert (=> b!7117687 (= e!4276933 (and tp!1959230 tp!1959229))))

(assert (=> b!7117400 (= tp!1959071 e!4276933)))

(assert (= (and b!7117400 (is-ElementMatch!17972 (regOne!36457 (regOne!36456 r!11554)))) b!7117684))

(assert (= (and b!7117400 (is-Concat!26817 (regOne!36457 (regOne!36456 r!11554)))) b!7117685))

(assert (= (and b!7117400 (is-Star!17972 (regOne!36457 (regOne!36456 r!11554)))) b!7117686))

(assert (= (and b!7117400 (is-Union!17972 (regOne!36457 (regOne!36456 r!11554)))) b!7117687))

(declare-fun b!7117688 () Bool)

(declare-fun e!4276934 () Bool)

(assert (=> b!7117688 (= e!4276934 tp_is_empty!45177)))

(declare-fun b!7117690 () Bool)

(declare-fun tp!1959233 () Bool)

(assert (=> b!7117690 (= e!4276934 tp!1959233)))

(declare-fun b!7117689 () Bool)

(declare-fun tp!1959236 () Bool)

(declare-fun tp!1959232 () Bool)

(assert (=> b!7117689 (= e!4276934 (and tp!1959236 tp!1959232))))

(declare-fun b!7117691 () Bool)

(declare-fun tp!1959235 () Bool)

(declare-fun tp!1959234 () Bool)

(assert (=> b!7117691 (= e!4276934 (and tp!1959235 tp!1959234))))

(assert (=> b!7117400 (= tp!1959070 e!4276934)))

(assert (= (and b!7117400 (is-ElementMatch!17972 (regTwo!36457 (regOne!36456 r!11554)))) b!7117688))

(assert (= (and b!7117400 (is-Concat!26817 (regTwo!36457 (regOne!36456 r!11554)))) b!7117689))

(assert (= (and b!7117400 (is-Star!17972 (regTwo!36457 (regOne!36456 r!11554)))) b!7117690))

(assert (= (and b!7117400 (is-Union!17972 (regTwo!36457 (regOne!36456 r!11554)))) b!7117691))

(declare-fun b!7117692 () Bool)

(declare-fun e!4276935 () Bool)

(assert (=> b!7117692 (= e!4276935 tp_is_empty!45177)))

(declare-fun b!7117694 () Bool)

(declare-fun tp!1959238 () Bool)

(assert (=> b!7117694 (= e!4276935 tp!1959238)))

(declare-fun b!7117693 () Bool)

(declare-fun tp!1959241 () Bool)

(declare-fun tp!1959237 () Bool)

(assert (=> b!7117693 (= e!4276935 (and tp!1959241 tp!1959237))))

(declare-fun b!7117695 () Bool)

(declare-fun tp!1959240 () Bool)

(declare-fun tp!1959239 () Bool)

(assert (=> b!7117695 (= e!4276935 (and tp!1959240 tp!1959239))))

(assert (=> b!7117398 (= tp!1959072 e!4276935)))

(assert (= (and b!7117398 (is-ElementMatch!17972 (regOne!36456 (regOne!36456 r!11554)))) b!7117692))

(assert (= (and b!7117398 (is-Concat!26817 (regOne!36456 (regOne!36456 r!11554)))) b!7117693))

(assert (= (and b!7117398 (is-Star!17972 (regOne!36456 (regOne!36456 r!11554)))) b!7117694))

(assert (= (and b!7117398 (is-Union!17972 (regOne!36456 (regOne!36456 r!11554)))) b!7117695))

(declare-fun b!7117696 () Bool)

(declare-fun e!4276936 () Bool)

(assert (=> b!7117696 (= e!4276936 tp_is_empty!45177)))

(declare-fun b!7117698 () Bool)

(declare-fun tp!1959243 () Bool)

(assert (=> b!7117698 (= e!4276936 tp!1959243)))

(declare-fun b!7117697 () Bool)

(declare-fun tp!1959246 () Bool)

(declare-fun tp!1959242 () Bool)

(assert (=> b!7117697 (= e!4276936 (and tp!1959246 tp!1959242))))

(declare-fun b!7117699 () Bool)

(declare-fun tp!1959245 () Bool)

(declare-fun tp!1959244 () Bool)

(assert (=> b!7117699 (= e!4276936 (and tp!1959245 tp!1959244))))

(assert (=> b!7117398 (= tp!1959068 e!4276936)))

(assert (= (and b!7117398 (is-ElementMatch!17972 (regTwo!36456 (regOne!36456 r!11554)))) b!7117696))

(assert (= (and b!7117398 (is-Concat!26817 (regTwo!36456 (regOne!36456 r!11554)))) b!7117697))

(assert (= (and b!7117398 (is-Star!17972 (regTwo!36456 (regOne!36456 r!11554)))) b!7117698))

(assert (= (and b!7117398 (is-Union!17972 (regTwo!36456 (regOne!36456 r!11554)))) b!7117699))

(declare-fun b!7117700 () Bool)

(declare-fun e!4276937 () Bool)

(assert (=> b!7117700 (= e!4276937 tp_is_empty!45177)))

(declare-fun b!7117702 () Bool)

(declare-fun tp!1959248 () Bool)

(assert (=> b!7117702 (= e!4276937 tp!1959248)))

(declare-fun b!7117701 () Bool)

(declare-fun tp!1959251 () Bool)

(declare-fun tp!1959247 () Bool)

(assert (=> b!7117701 (= e!4276937 (and tp!1959251 tp!1959247))))

(declare-fun b!7117703 () Bool)

(declare-fun tp!1959250 () Bool)

(declare-fun tp!1959249 () Bool)

(assert (=> b!7117703 (= e!4276937 (and tp!1959250 tp!1959249))))

(assert (=> b!7117403 (= tp!1959074 e!4276937)))

(assert (= (and b!7117403 (is-ElementMatch!17972 (reg!18301 (regTwo!36456 r!11554)))) b!7117700))

(assert (= (and b!7117403 (is-Concat!26817 (reg!18301 (regTwo!36456 r!11554)))) b!7117701))

(assert (= (and b!7117403 (is-Star!17972 (reg!18301 (regTwo!36456 r!11554)))) b!7117702))

(assert (= (and b!7117403 (is-Union!17972 (reg!18301 (regTwo!36456 r!11554)))) b!7117703))

(declare-fun b!7117704 () Bool)

(declare-fun e!4276938 () Bool)

(assert (=> b!7117704 (= e!4276938 tp_is_empty!45177)))

(declare-fun b!7117706 () Bool)

(declare-fun tp!1959253 () Bool)

(assert (=> b!7117706 (= e!4276938 tp!1959253)))

(declare-fun b!7117705 () Bool)

(declare-fun tp!1959256 () Bool)

(declare-fun tp!1959252 () Bool)

(assert (=> b!7117705 (= e!4276938 (and tp!1959256 tp!1959252))))

(declare-fun b!7117707 () Bool)

(declare-fun tp!1959255 () Bool)

(declare-fun tp!1959254 () Bool)

(assert (=> b!7117707 (= e!4276938 (and tp!1959255 tp!1959254))))

(assert (=> b!7117394 (= tp!1959067 e!4276938)))

(assert (= (and b!7117394 (is-ElementMatch!17972 (regOne!36456 (regTwo!36457 r!11554)))) b!7117704))

(assert (= (and b!7117394 (is-Concat!26817 (regOne!36456 (regTwo!36457 r!11554)))) b!7117705))

(assert (= (and b!7117394 (is-Star!17972 (regOne!36456 (regTwo!36457 r!11554)))) b!7117706))

(assert (= (and b!7117394 (is-Union!17972 (regOne!36456 (regTwo!36457 r!11554)))) b!7117707))

(declare-fun b!7117708 () Bool)

(declare-fun e!4276939 () Bool)

(assert (=> b!7117708 (= e!4276939 tp_is_empty!45177)))

(declare-fun b!7117710 () Bool)

(declare-fun tp!1959258 () Bool)

(assert (=> b!7117710 (= e!4276939 tp!1959258)))

(declare-fun b!7117709 () Bool)

(declare-fun tp!1959261 () Bool)

(declare-fun tp!1959257 () Bool)

(assert (=> b!7117709 (= e!4276939 (and tp!1959261 tp!1959257))))

(declare-fun b!7117711 () Bool)

(declare-fun tp!1959260 () Bool)

(declare-fun tp!1959259 () Bool)

(assert (=> b!7117711 (= e!4276939 (and tp!1959260 tp!1959259))))

(assert (=> b!7117394 (= tp!1959063 e!4276939)))

(assert (= (and b!7117394 (is-ElementMatch!17972 (regTwo!36456 (regTwo!36457 r!11554)))) b!7117708))

(assert (= (and b!7117394 (is-Concat!26817 (regTwo!36456 (regTwo!36457 r!11554)))) b!7117709))

(assert (= (and b!7117394 (is-Star!17972 (regTwo!36456 (regTwo!36457 r!11554)))) b!7117710))

(assert (= (and b!7117394 (is-Union!17972 (regTwo!36456 (regTwo!36457 r!11554)))) b!7117711))

(declare-fun b_lambda!271547 () Bool)

(assert (= b_lambda!271545 (or d!2221330 b_lambda!271547)))

(declare-fun bs!1885652 () Bool)

(declare-fun d!2221408 () Bool)

(assert (= bs!1885652 (and d!2221408 d!2221330)))

(assert (=> bs!1885652 (= (dynLambda!28062 lambda!432468 (h!75257 (exprs!7466 (Context!13933 ($colon$colon!2816 (exprs!7466 c!9994) r!11554))))) (validRegex!9245 (h!75257 (exprs!7466 (Context!13933 ($colon$colon!2816 (exprs!7466 c!9994) r!11554))))))))

(declare-fun m!7835868 () Bool)

(assert (=> bs!1885652 m!7835868))

(assert (=> b!7117600 d!2221408))

(declare-fun b_lambda!271549 () Bool)

(assert (= b_lambda!271539 (or b!7117199 b_lambda!271549)))

(declare-fun bs!1885653 () Bool)

(declare-fun d!2221410 () Bool)

(assert (= bs!1885653 (and d!2221410 b!7117199)))

(assert (=> bs!1885653 (= (dynLambda!28062 lambda!432458 (h!75257 (exprs!7466 c!9994))) (validRegex!9245 (h!75257 (exprs!7466 c!9994))))))

(declare-fun m!7835870 () Bool)

(assert (=> bs!1885653 m!7835870))

(assert (=> b!7117502 d!2221410))

(declare-fun b_lambda!271551 () Bool)

(assert (= b_lambda!271543 (or d!2221320 b_lambda!271551)))

(declare-fun bs!1885654 () Bool)

(declare-fun d!2221412 () Bool)

(assert (= bs!1885654 (and d!2221412 d!2221320)))

(assert (=> bs!1885654 (= (dynLambda!28062 lambda!432466 (h!75257 (exprs!7466 c!9994))) (validRegex!9245 (h!75257 (exprs!7466 c!9994))))))

(assert (=> bs!1885654 m!7835870))

(assert (=> b!7117527 d!2221412))

(declare-fun b_lambda!271553 () Bool)

(assert (= b_lambda!271537 (or b!7117199 b_lambda!271553)))

(declare-fun bs!1885655 () Bool)

(declare-fun d!2221414 () Bool)

(assert (= bs!1885655 (and d!2221414 b!7117199)))

(assert (=> bs!1885655 (= (dynLambda!28062 lambda!432458 (h!75257 (++!16124 (exprs!7466 c!9994) (exprs!7466 auxCtx!45)))) (validRegex!9245 (h!75257 (++!16124 (exprs!7466 c!9994) (exprs!7466 auxCtx!45)))))))

(declare-fun m!7835872 () Bool)

(assert (=> bs!1885655 m!7835872))

(assert (=> b!7117500 d!2221414))

(declare-fun b_lambda!271555 () Bool)

(assert (= b_lambda!271541 (or d!2221322 b_lambda!271555)))

(declare-fun bs!1885656 () Bool)

(declare-fun d!2221416 () Bool)

(assert (= bs!1885656 (and d!2221416 d!2221322)))

(assert (=> bs!1885656 (= (dynLambda!28062 lambda!432467 (h!75257 (exprs!7466 auxCtx!45))) (validRegex!9245 (h!75257 (exprs!7466 auxCtx!45))))))

(declare-fun m!7835874 () Bool)

(assert (=> bs!1885656 m!7835874))

(assert (=> b!7117504 d!2221416))

(push 1)

(assert (not bm!650022))

(assert (not bm!650024))

(assert (not d!2221388))

(assert (not b!7117655))

(assert (not b!7117637))

(assert (not b!7117681))

(assert (not b!7117677))

(assert (not b!7117659))

(assert (not b!7117699))

(assert (not b!7117605))

(assert (not bm!650014))

(assert (not bm!650040))

(assert (not b!7117697))

(assert (not b!7117643))

(assert (not bm!650029))

(assert (not b!7117567))

(assert (not b!7117711))

(assert (not b!7117706))

(assert (not b!7117667))

(assert (not bm!650013))

(assert (not b!7117482))

(assert (not b!7117619))

(assert (not b!7117505))

(assert (not b_lambda!271553))

(assert (not b!7117663))

(assert (not b!7117693))

(assert (not b!7117679))

(assert (not b!7117538))

(assert (not b!7117528))

(assert (not b!7117627))

(assert (not b!7117683))

(assert (not b!7117689))

(assert (not bs!1885655))

(assert (not b!7117625))

(assert (not d!2221392))

(assert (not b_lambda!271549))

(assert (not b!7117534))

(assert (not b!7117621))

(assert (not b!7117694))

(assert (not bm!650034))

(assert (not b!7117707))

(assert (not b!7117623))

(assert (not bm!650030))

(assert (not b!7117503))

(assert (not b!7117690))

(assert (not b!7117651))

(assert (not bm!650043))

(assert tp_is_empty!45177)

(assert (not b!7117513))

(assert (not bm!650035))

(assert (not b!7117649))

(assert (not bm!650009))

(assert (not b!7117515))

(assert (not b!7117622))

(assert (not b!7117673))

(assert (not b!7117608))

(assert (not bs!1885654))

(assert (not b!7117687))

(assert (not b!7117629))

(assert (not b!7117662))

(assert (not b!7117642))

(assert (not b!7117650))

(assert (not b!7117646))

(assert (not bs!1885652))

(assert (not b!7117614))

(assert (not b!7117654))

(assert (not bm!650041))

(assert (not b!7117647))

(assert (not b!7117546))

(assert (not bs!1885653))

(assert (not b_lambda!271555))

(assert (not b!7117641))

(assert (not b!7117639))

(assert (not b!7117658))

(assert (not b!7117703))

(assert (not b!7117613))

(assert (not b!7117685))

(assert (not b_lambda!271547))

(assert (not b!7117686))

(assert (not bm!650019))

(assert (not b!7117678))

(assert (not b!7117710))

(assert (not b!7117607))

(assert (not b!7117674))

(assert (not bm!650042))

(assert (not b!7117536))

(assert (not b!7117626))

(assert (not b!7117653))

(assert (not b!7117635))

(assert (not b!7117661))

(assert (not b!7117645))

(assert (not b!7117483))

(assert (not b!7117702))

(assert (not b!7117612))

(assert (not bs!1885656))

(assert (not b!7117671))

(assert (not bm!650015))

(assert (not b!7117617))

(assert (not b!7117524))

(assert (not b!7117669))

(assert (not b!7117634))

(assert (not b!7117701))

(assert (not b!7117556))

(assert (not b!7117682))

(assert (not b!7117631))

(assert (not b!7117611))

(assert (not b!7117603))

(assert (not d!2221366))

(assert (not d!2221360))

(assert (not bm!650021))

(assert (not b!7117709))

(assert (not b!7117705))

(assert (not b!7117670))

(assert (not b!7117609))

(assert (not b!7117665))

(assert (not b!7117598))

(assert (not b!7117698))

(assert (not b!7117616))

(assert (not b!7117691))

(assert (not b!7117675))

(assert (not b!7117618))

(assert (not b!7117601))

(assert (not b!7117695))

(assert (not b_lambda!271551))

(assert (not b!7117657))

(assert (not b!7117666))

(assert (not b!7117511))

(assert (not b!7117633))

(assert (not b!7117493))

(assert (not bm!650020))

(assert (not b!7117630))

(assert (not b!7117501))

(assert (not b!7117604))

(assert (not b!7117638))

(assert (not bm!650028))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

