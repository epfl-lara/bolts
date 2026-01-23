; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!689602 () Bool)

(assert start!689602)

(declare-fun b!7084934 () Bool)

(assert (=> b!7084934 true))

(declare-fun b!7084933 () Bool)

(declare-fun e!4259435 () Bool)

(declare-fun tp!1944938 () Bool)

(declare-fun tp!1944934 () Bool)

(assert (=> b!7084933 (= e!4259435 (and tp!1944938 tp!1944934))))

(declare-fun e!4259432 () Bool)

(declare-fun e!4259437 () Bool)

(assert (=> b!7084934 (= e!4259432 e!4259437)))

(declare-fun res!2894318 () Bool)

(assert (=> b!7084934 (=> (not res!2894318) (not e!4259437))))

(declare-datatypes ((C!35738 0))(
  ( (C!35739 (val!27575 Int)) )
))
(declare-datatypes ((Regex!17734 0))(
  ( (ElementMatch!17734 (c!1322365 C!35738)) (Concat!26579 (regOne!35980 Regex!17734) (regTwo!35980 Regex!17734)) (EmptyExpr!17734) (Star!17734 (reg!18063 Regex!17734)) (EmptyLang!17734) (Union!17734 (regOne!35981 Regex!17734) (regTwo!35981 Regex!17734)) )
))
(declare-fun r!11554 () Regex!17734)

(declare-fun a!1901 () C!35738)

(assert (=> b!7084934 (= res!2894318 (and (is-ElementMatch!17734 r!11554) (= (c!1322365 r!11554) a!1901)))))

(declare-fun b!7084935 () Bool)

(declare-fun e!4259436 () Bool)

(declare-datatypes ((List!68697 0))(
  ( (Nil!68573) (Cons!68573 (h!75021 Regex!17734) (t!382482 List!68697)) )
))
(declare-datatypes ((Context!13460 0))(
  ( (Context!13461 (exprs!7230 List!68697)) )
))
(declare-fun auxCtx!45 () Context!13460)

(declare-fun lambda!428939 () Int)

(declare-fun forall!16686 (List!68697 Int) Bool)

(assert (=> b!7084935 (= e!4259436 (forall!16686 (exprs!7230 auxCtx!45) lambda!428939))))

(declare-fun b!7084936 () Bool)

(declare-fun tp_is_empty!44701 () Bool)

(assert (=> b!7084936 (= e!4259435 tp_is_empty!44701)))

(declare-fun b!7084937 () Bool)

(declare-fun e!4259434 () Bool)

(declare-fun tp!1944935 () Bool)

(assert (=> b!7084937 (= e!4259434 tp!1944935)))

(declare-fun b!7084938 () Bool)

(declare-fun e!4259431 () Bool)

(assert (=> b!7084938 (= e!4259431 e!4259436)))

(declare-fun res!2894319 () Bool)

(assert (=> b!7084938 (=> res!2894319 e!4259436)))

(declare-fun c!9994 () Context!13460)

(assert (=> b!7084938 (= res!2894319 (not (forall!16686 (exprs!7230 c!9994) lambda!428939)))))

(declare-fun b!7084939 () Bool)

(assert (=> b!7084939 (= e!4259437 (not e!4259431))))

(declare-fun res!2894320 () Bool)

(assert (=> b!7084939 (=> res!2894320 e!4259431)))

(declare-fun derivationStepZipperDown!2331 (Regex!17734 Context!13460 C!35738) (Set Context!13460))

(declare-fun ++!15911 (List!68697 List!68697) List!68697)

(declare-fun appendTo!843 ((Set Context!13460) Context!13460) (Set Context!13460))

(assert (=> b!7084939 (= res!2894320 (not (= (derivationStepZipperDown!2331 r!11554 (Context!13461 (++!15911 (exprs!7230 c!9994) (exprs!7230 auxCtx!45))) a!1901) (appendTo!843 (derivationStepZipperDown!2331 r!11554 c!9994 a!1901) auxCtx!45))))))

(declare-datatypes ((Unit!162175 0))(
  ( (Unit!162176) )
))
(declare-fun lt!2554478 () Unit!162175)

(declare-fun lemmaConcatPreservesForall!1041 (List!68697 List!68697 Int) Unit!162175)

(assert (=> b!7084939 (= lt!2554478 (lemmaConcatPreservesForall!1041 (exprs!7230 c!9994) (exprs!7230 auxCtx!45) lambda!428939))))

(declare-fun lt!2554479 () (Set Context!13460))

(declare-fun lambda!428938 () Int)

(declare-fun map!16092 ((Set Context!13460) Int) (Set Context!13460))

(assert (=> b!7084939 (= (map!16092 lt!2554479 lambda!428938) (set.insert (Context!13461 (++!15911 (exprs!7230 c!9994) (exprs!7230 auxCtx!45))) (as set.empty (Set Context!13460))))))

(declare-fun lt!2554477 () Unit!162175)

(assert (=> b!7084939 (= lt!2554477 (lemmaConcatPreservesForall!1041 (exprs!7230 c!9994) (exprs!7230 auxCtx!45) lambda!428939))))

(declare-fun lt!2554480 () Unit!162175)

(declare-fun lemmaMapOnSingletonSet!447 ((Set Context!13460) Context!13460 Int) Unit!162175)

(assert (=> b!7084939 (= lt!2554480 (lemmaMapOnSingletonSet!447 lt!2554479 c!9994 lambda!428938))))

(assert (=> b!7084939 (= lt!2554479 (set.insert c!9994 (as set.empty (Set Context!13460))))))

(declare-fun b!7084941 () Bool)

(declare-fun tp!1944939 () Bool)

(assert (=> b!7084941 (= e!4259435 tp!1944939)))

(declare-fun b!7084942 () Bool)

(declare-fun e!4259433 () Bool)

(declare-fun tp!1944936 () Bool)

(assert (=> b!7084942 (= e!4259433 tp!1944936)))

(declare-fun b!7084940 () Bool)

(declare-fun tp!1944933 () Bool)

(declare-fun tp!1944937 () Bool)

(assert (=> b!7084940 (= e!4259435 (and tp!1944933 tp!1944937))))

(declare-fun res!2894317 () Bool)

(assert (=> start!689602 (=> (not res!2894317) (not e!4259432))))

(declare-fun validRegex!9009 (Regex!17734) Bool)

(assert (=> start!689602 (= res!2894317 (validRegex!9009 r!11554))))

(assert (=> start!689602 e!4259432))

(assert (=> start!689602 e!4259435))

(declare-fun inv!87201 (Context!13460) Bool)

(assert (=> start!689602 (and (inv!87201 c!9994) e!4259433)))

(assert (=> start!689602 tp_is_empty!44701))

(assert (=> start!689602 (and (inv!87201 auxCtx!45) e!4259434)))

(assert (= (and start!689602 res!2894317) b!7084934))

(assert (= (and b!7084934 res!2894318) b!7084939))

(assert (= (and b!7084939 (not res!2894320)) b!7084938))

(assert (= (and b!7084938 (not res!2894319)) b!7084935))

(assert (= (and start!689602 (is-ElementMatch!17734 r!11554)) b!7084936))

(assert (= (and start!689602 (is-Concat!26579 r!11554)) b!7084940))

(assert (= (and start!689602 (is-Star!17734 r!11554)) b!7084941))

(assert (= (and start!689602 (is-Union!17734 r!11554)) b!7084933))

(assert (= start!689602 b!7084942))

(assert (= start!689602 b!7084937))

(declare-fun m!7816476 () Bool)

(assert (=> b!7084935 m!7816476))

(declare-fun m!7816478 () Bool)

(assert (=> b!7084938 m!7816478))

(declare-fun m!7816480 () Bool)

(assert (=> b!7084939 m!7816480))

(declare-fun m!7816482 () Bool)

(assert (=> b!7084939 m!7816482))

(declare-fun m!7816484 () Bool)

(assert (=> b!7084939 m!7816484))

(declare-fun m!7816486 () Bool)

(assert (=> b!7084939 m!7816486))

(assert (=> b!7084939 m!7816484))

(assert (=> b!7084939 m!7816480))

(declare-fun m!7816488 () Bool)

(assert (=> b!7084939 m!7816488))

(declare-fun m!7816490 () Bool)

(assert (=> b!7084939 m!7816490))

(declare-fun m!7816492 () Bool)

(assert (=> b!7084939 m!7816492))

(declare-fun m!7816494 () Bool)

(assert (=> b!7084939 m!7816494))

(declare-fun m!7816496 () Bool)

(assert (=> b!7084939 m!7816496))

(declare-fun m!7816498 () Bool)

(assert (=> start!689602 m!7816498))

(declare-fun m!7816500 () Bool)

(assert (=> start!689602 m!7816500))

(declare-fun m!7816502 () Bool)

(assert (=> start!689602 m!7816502))

(push 1)

(assert (not b!7084938))

(assert (not start!689602))

(assert (not b!7084937))

(assert (not b!7084942))

(assert tp_is_empty!44701)

(assert (not b!7084933))

(assert (not b!7084939))

(assert (not b!7084941))

(assert (not b!7084935))

(assert (not b!7084940))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7085003 () Bool)

(declare-fun res!2894354 () Bool)

(declare-fun e!4259485 () Bool)

(assert (=> b!7085003 (=> (not res!2894354) (not e!4259485))))

(declare-fun call!643766 () Bool)

(assert (=> b!7085003 (= res!2894354 call!643766)))

(declare-fun e!4259484 () Bool)

(assert (=> b!7085003 (= e!4259484 e!4259485)))

(declare-fun b!7085004 () Bool)

(declare-fun e!4259487 () Bool)

(assert (=> b!7085004 (= e!4259487 e!4259484)))

(declare-fun c!1322371 () Bool)

(assert (=> b!7085004 (= c!1322371 (is-Union!17734 r!11554))))

(declare-fun b!7085005 () Bool)

(declare-fun e!4259482 () Bool)

(declare-fun call!643765 () Bool)

(assert (=> b!7085005 (= e!4259482 call!643765)))

(declare-fun b!7085006 () Bool)

(declare-fun e!4259486 () Bool)

(assert (=> b!7085006 (= e!4259486 e!4259487)))

(declare-fun c!1322372 () Bool)

(assert (=> b!7085006 (= c!1322372 (is-Star!17734 r!11554))))

(declare-fun bm!643759 () Bool)

(assert (=> bm!643759 (= call!643765 (validRegex!9009 (ite c!1322372 (reg!18063 r!11554) (ite c!1322371 (regOne!35981 r!11554) (regTwo!35980 r!11554)))))))

(declare-fun b!7085007 () Bool)

(assert (=> b!7085007 (= e!4259487 e!4259482)))

(declare-fun res!2894355 () Bool)

(declare-fun nullable!7387 (Regex!17734) Bool)

(assert (=> b!7085007 (= res!2894355 (not (nullable!7387 (reg!18063 r!11554))))))

(assert (=> b!7085007 (=> (not res!2894355) (not e!4259482))))

(declare-fun b!7085008 () Bool)

(declare-fun e!4259483 () Bool)

(declare-fun e!4259481 () Bool)

(assert (=> b!7085008 (= e!4259483 e!4259481)))

(declare-fun res!2894357 () Bool)

(assert (=> b!7085008 (=> (not res!2894357) (not e!4259481))))

(declare-fun call!643764 () Bool)

(assert (=> b!7085008 (= res!2894357 call!643764)))

(declare-fun b!7085009 () Bool)

(declare-fun res!2894353 () Bool)

(assert (=> b!7085009 (=> res!2894353 e!4259483)))

(assert (=> b!7085009 (= res!2894353 (not (is-Concat!26579 r!11554)))))

(assert (=> b!7085009 (= e!4259484 e!4259483)))

(declare-fun d!2215891 () Bool)

(declare-fun res!2894356 () Bool)

(assert (=> d!2215891 (=> res!2894356 e!4259486)))

(assert (=> d!2215891 (= res!2894356 (is-ElementMatch!17734 r!11554))))

(assert (=> d!2215891 (= (validRegex!9009 r!11554) e!4259486)))

(declare-fun b!7085010 () Bool)

(assert (=> b!7085010 (= e!4259481 call!643766)))

(declare-fun bm!643760 () Bool)

(assert (=> bm!643760 (= call!643766 call!643765)))

(declare-fun bm!643761 () Bool)

(assert (=> bm!643761 (= call!643764 (validRegex!9009 (ite c!1322371 (regTwo!35981 r!11554) (regOne!35980 r!11554))))))

(declare-fun b!7085011 () Bool)

(assert (=> b!7085011 (= e!4259485 call!643764)))

(assert (= (and d!2215891 (not res!2894356)) b!7085006))

(assert (= (and b!7085006 c!1322372) b!7085007))

(assert (= (and b!7085006 (not c!1322372)) b!7085004))

(assert (= (and b!7085007 res!2894355) b!7085005))

(assert (= (and b!7085004 c!1322371) b!7085003))

(assert (= (and b!7085004 (not c!1322371)) b!7085009))

(assert (= (and b!7085003 res!2894354) b!7085011))

(assert (= (and b!7085009 (not res!2894353)) b!7085008))

(assert (= (and b!7085008 res!2894357) b!7085010))

(assert (= (or b!7085003 b!7085010) bm!643760))

(assert (= (or b!7085011 b!7085008) bm!643761))

(assert (= (or b!7085005 bm!643760) bm!643759))

(declare-fun m!7816540 () Bool)

(assert (=> bm!643759 m!7816540))

(declare-fun m!7816542 () Bool)

(assert (=> b!7085007 m!7816542))

(declare-fun m!7816544 () Bool)

(assert (=> bm!643761 m!7816544))

(assert (=> start!689602 d!2215891))

(declare-fun bs!1882863 () Bool)

(declare-fun d!2215897 () Bool)

(assert (= bs!1882863 (and d!2215897 b!7084939)))

(declare-fun lambda!428954 () Int)

(assert (=> bs!1882863 (= lambda!428954 lambda!428939)))

(assert (=> d!2215897 (= (inv!87201 c!9994) (forall!16686 (exprs!7230 c!9994) lambda!428954))))

(declare-fun bs!1882864 () Bool)

(assert (= bs!1882864 d!2215897))

(declare-fun m!7816546 () Bool)

(assert (=> bs!1882864 m!7816546))

(assert (=> start!689602 d!2215897))

(declare-fun bs!1882865 () Bool)

(declare-fun d!2215899 () Bool)

(assert (= bs!1882865 (and d!2215899 b!7084939)))

(declare-fun lambda!428955 () Int)

(assert (=> bs!1882865 (= lambda!428955 lambda!428939)))

(declare-fun bs!1882866 () Bool)

(assert (= bs!1882866 (and d!2215899 d!2215897)))

(assert (=> bs!1882866 (= lambda!428955 lambda!428954)))

(assert (=> d!2215899 (= (inv!87201 auxCtx!45) (forall!16686 (exprs!7230 auxCtx!45) lambda!428955))))

(declare-fun bs!1882867 () Bool)

(assert (= bs!1882867 d!2215899))

(declare-fun m!7816548 () Bool)

(assert (=> bs!1882867 m!7816548))

(assert (=> start!689602 d!2215899))

(declare-fun d!2215901 () Bool)

(declare-fun res!2894372 () Bool)

(declare-fun e!4259506 () Bool)

(assert (=> d!2215901 (=> res!2894372 e!4259506)))

(assert (=> d!2215901 (= res!2894372 (is-Nil!68573 (exprs!7230 c!9994)))))

(assert (=> d!2215901 (= (forall!16686 (exprs!7230 c!9994) lambda!428939) e!4259506)))

(declare-fun b!7085034 () Bool)

(declare-fun e!4259507 () Bool)

(assert (=> b!7085034 (= e!4259506 e!4259507)))

(declare-fun res!2894373 () Bool)

(assert (=> b!7085034 (=> (not res!2894373) (not e!4259507))))

(declare-fun dynLambda!27964 (Int Regex!17734) Bool)

(assert (=> b!7085034 (= res!2894373 (dynLambda!27964 lambda!428939 (h!75021 (exprs!7230 c!9994))))))

(declare-fun b!7085035 () Bool)

(assert (=> b!7085035 (= e!4259507 (forall!16686 (t!382482 (exprs!7230 c!9994)) lambda!428939))))

(assert (= (and d!2215901 (not res!2894372)) b!7085034))

(assert (= (and b!7085034 res!2894373) b!7085035))

(declare-fun b_lambda!270813 () Bool)

(assert (=> (not b_lambda!270813) (not b!7085034)))

(declare-fun m!7816550 () Bool)

(assert (=> b!7085034 m!7816550))

(declare-fun m!7816552 () Bool)

(assert (=> b!7085035 m!7816552))

(assert (=> b!7084938 d!2215901))

(declare-fun d!2215903 () Bool)

(assert (=> d!2215903 (forall!16686 (++!15911 (exprs!7230 c!9994) (exprs!7230 auxCtx!45)) lambda!428939)))

(declare-fun lt!2554497 () Unit!162175)

(declare-fun choose!54600 (List!68697 List!68697 Int) Unit!162175)

(assert (=> d!2215903 (= lt!2554497 (choose!54600 (exprs!7230 c!9994) (exprs!7230 auxCtx!45) lambda!428939))))

(assert (=> d!2215903 (forall!16686 (exprs!7230 c!9994) lambda!428939)))

(assert (=> d!2215903 (= (lemmaConcatPreservesForall!1041 (exprs!7230 c!9994) (exprs!7230 auxCtx!45) lambda!428939) lt!2554497)))

(declare-fun bs!1882868 () Bool)

(assert (= bs!1882868 d!2215903))

(assert (=> bs!1882868 m!7816494))

(assert (=> bs!1882868 m!7816494))

(declare-fun m!7816554 () Bool)

(assert (=> bs!1882868 m!7816554))

(declare-fun m!7816556 () Bool)

(assert (=> bs!1882868 m!7816556))

(assert (=> bs!1882868 m!7816478))

(assert (=> b!7084939 d!2215903))

(declare-fun bs!1882869 () Bool)

(declare-fun d!2215905 () Bool)

(assert (= bs!1882869 (and d!2215905 b!7084934)))

(declare-fun lambda!428960 () Int)

(assert (=> bs!1882869 (= lambda!428960 lambda!428938)))

(assert (=> d!2215905 true))

(assert (=> d!2215905 (= (appendTo!843 (derivationStepZipperDown!2331 r!11554 c!9994 a!1901) auxCtx!45) (map!16092 (derivationStepZipperDown!2331 r!11554 c!9994 a!1901) lambda!428960))))

(declare-fun bs!1882870 () Bool)

(assert (= bs!1882870 d!2215905))

(assert (=> bs!1882870 m!7816480))

(declare-fun m!7816558 () Bool)

(assert (=> bs!1882870 m!7816558))

(assert (=> b!7084939 d!2215905))

(declare-fun bm!643783 () Bool)

(declare-fun c!1322392 () Bool)

(declare-fun c!1322390 () Bool)

(declare-fun call!643789 () List!68697)

(declare-fun c!1322393 () Bool)

(declare-fun call!643793 () (Set Context!13460))

(assert (=> bm!643783 (= call!643793 (derivationStepZipperDown!2331 (ite c!1322392 (regTwo!35981 r!11554) (ite c!1322393 (regTwo!35980 r!11554) (ite c!1322390 (regOne!35980 r!11554) (reg!18063 r!11554)))) (ite (or c!1322392 c!1322393) c!9994 (Context!13461 call!643789)) a!1901))))

(declare-fun b!7085067 () Bool)

(declare-fun e!4259527 () (Set Context!13460))

(declare-fun e!4259529 () (Set Context!13460))

(assert (=> b!7085067 (= e!4259527 e!4259529)))

(assert (=> b!7085067 (= c!1322390 (is-Concat!26579 r!11554))))

(declare-fun b!7085068 () Bool)

(declare-fun call!643790 () (Set Context!13460))

(declare-fun call!643791 () (Set Context!13460))

(assert (=> b!7085068 (= e!4259527 (set.union call!643790 call!643791))))

(declare-fun b!7085069 () Bool)

(declare-fun e!4259531 () Bool)

(assert (=> b!7085069 (= e!4259531 (nullable!7387 (regOne!35980 r!11554)))))

(declare-fun b!7085070 () Bool)

(declare-fun e!4259532 () (Set Context!13460))

(declare-fun e!4259528 () (Set Context!13460))

(assert (=> b!7085070 (= e!4259532 e!4259528)))

(assert (=> b!7085070 (= c!1322392 (is-Union!17734 r!11554))))

(declare-fun bm!643784 () Bool)

(declare-fun call!643788 () List!68697)

(assert (=> bm!643784 (= call!643790 (derivationStepZipperDown!2331 (ite c!1322392 (regOne!35981 r!11554) (regOne!35980 r!11554)) (ite c!1322392 c!9994 (Context!13461 call!643788)) a!1901))))

(declare-fun b!7085071 () Bool)

(assert (=> b!7085071 (= c!1322393 e!4259531)))

(declare-fun res!2894381 () Bool)

(assert (=> b!7085071 (=> (not res!2894381) (not e!4259531))))

(assert (=> b!7085071 (= res!2894381 (is-Concat!26579 r!11554))))

(assert (=> b!7085071 (= e!4259528 e!4259527)))

(declare-fun b!7085072 () Bool)

(declare-fun call!643792 () (Set Context!13460))

(assert (=> b!7085072 (= e!4259529 call!643792)))

(declare-fun bm!643785 () Bool)

(assert (=> bm!643785 (= call!643789 call!643788)))

(declare-fun bm!643786 () Bool)

(assert (=> bm!643786 (= call!643792 call!643791)))

(declare-fun d!2215907 () Bool)

(declare-fun c!1322394 () Bool)

(assert (=> d!2215907 (= c!1322394 (and (is-ElementMatch!17734 r!11554) (= (c!1322365 r!11554) a!1901)))))

(assert (=> d!2215907 (= (derivationStepZipperDown!2331 r!11554 c!9994 a!1901) e!4259532)))

(declare-fun b!7085073 () Bool)

(assert (=> b!7085073 (= e!4259528 (set.union call!643790 call!643793))))

(declare-fun b!7085074 () Bool)

(declare-fun c!1322391 () Bool)

(assert (=> b!7085074 (= c!1322391 (is-Star!17734 r!11554))))

(declare-fun e!4259530 () (Set Context!13460))

(assert (=> b!7085074 (= e!4259529 e!4259530)))

(declare-fun b!7085075 () Bool)

(assert (=> b!7085075 (= e!4259532 (set.insert c!9994 (as set.empty (Set Context!13460))))))

(declare-fun b!7085076 () Bool)

(assert (=> b!7085076 (= e!4259530 call!643792)))

(declare-fun bm!643787 () Bool)

(assert (=> bm!643787 (= call!643791 call!643793)))

(declare-fun bm!643788 () Bool)

(declare-fun $colon$colon!2685 (List!68697 Regex!17734) List!68697)

(assert (=> bm!643788 (= call!643788 ($colon$colon!2685 (exprs!7230 c!9994) (ite (or c!1322393 c!1322390) (regTwo!35980 r!11554) r!11554)))))

(declare-fun b!7085077 () Bool)

(assert (=> b!7085077 (= e!4259530 (as set.empty (Set Context!13460)))))

(assert (= (and d!2215907 c!1322394) b!7085075))

(assert (= (and d!2215907 (not c!1322394)) b!7085070))

(assert (= (and b!7085070 c!1322392) b!7085073))

(assert (= (and b!7085070 (not c!1322392)) b!7085071))

(assert (= (and b!7085071 res!2894381) b!7085069))

(assert (= (and b!7085071 c!1322393) b!7085068))

(assert (= (and b!7085071 (not c!1322393)) b!7085067))

(assert (= (and b!7085067 c!1322390) b!7085072))

(assert (= (and b!7085067 (not c!1322390)) b!7085074))

(assert (= (and b!7085074 c!1322391) b!7085076))

(assert (= (and b!7085074 (not c!1322391)) b!7085077))

(assert (= (or b!7085072 b!7085076) bm!643785))

(assert (= (or b!7085072 b!7085076) bm!643786))

(assert (= (or b!7085068 bm!643786) bm!643787))

(assert (= (or b!7085068 bm!643785) bm!643788))

(assert (= (or b!7085073 bm!643787) bm!643783))

(assert (= (or b!7085073 b!7085068) bm!643784))

(assert (=> b!7085075 m!7816486))

(declare-fun m!7816570 () Bool)

(assert (=> bm!643788 m!7816570))

(declare-fun m!7816572 () Bool)

(assert (=> b!7085069 m!7816572))

(declare-fun m!7816574 () Bool)

(assert (=> bm!643784 m!7816574))

(declare-fun m!7816576 () Bool)

(assert (=> bm!643783 m!7816576))

(assert (=> b!7084939 d!2215907))

(declare-fun bm!643789 () Bool)

(declare-fun c!1322395 () Bool)

(declare-fun c!1322397 () Bool)

(declare-fun call!643795 () List!68697)

(declare-fun c!1322398 () Bool)

(declare-fun call!643799 () (Set Context!13460))

(assert (=> bm!643789 (= call!643799 (derivationStepZipperDown!2331 (ite c!1322397 (regTwo!35981 r!11554) (ite c!1322398 (regTwo!35980 r!11554) (ite c!1322395 (regOne!35980 r!11554) (reg!18063 r!11554)))) (ite (or c!1322397 c!1322398) (Context!13461 (++!15911 (exprs!7230 c!9994) (exprs!7230 auxCtx!45))) (Context!13461 call!643795)) a!1901))))

(declare-fun b!7085078 () Bool)

(declare-fun e!4259533 () (Set Context!13460))

(declare-fun e!4259535 () (Set Context!13460))

(assert (=> b!7085078 (= e!4259533 e!4259535)))

(assert (=> b!7085078 (= c!1322395 (is-Concat!26579 r!11554))))

(declare-fun b!7085079 () Bool)

(declare-fun call!643796 () (Set Context!13460))

(declare-fun call!643797 () (Set Context!13460))

(assert (=> b!7085079 (= e!4259533 (set.union call!643796 call!643797))))

(declare-fun b!7085080 () Bool)

(declare-fun e!4259537 () Bool)

(assert (=> b!7085080 (= e!4259537 (nullable!7387 (regOne!35980 r!11554)))))

(declare-fun b!7085081 () Bool)

(declare-fun e!4259538 () (Set Context!13460))

(declare-fun e!4259534 () (Set Context!13460))

(assert (=> b!7085081 (= e!4259538 e!4259534)))

(assert (=> b!7085081 (= c!1322397 (is-Union!17734 r!11554))))

(declare-fun call!643794 () List!68697)

(declare-fun bm!643790 () Bool)

(assert (=> bm!643790 (= call!643796 (derivationStepZipperDown!2331 (ite c!1322397 (regOne!35981 r!11554) (regOne!35980 r!11554)) (ite c!1322397 (Context!13461 (++!15911 (exprs!7230 c!9994) (exprs!7230 auxCtx!45))) (Context!13461 call!643794)) a!1901))))

(declare-fun b!7085082 () Bool)

(assert (=> b!7085082 (= c!1322398 e!4259537)))

(declare-fun res!2894382 () Bool)

(assert (=> b!7085082 (=> (not res!2894382) (not e!4259537))))

(assert (=> b!7085082 (= res!2894382 (is-Concat!26579 r!11554))))

(assert (=> b!7085082 (= e!4259534 e!4259533)))

(declare-fun b!7085083 () Bool)

(declare-fun call!643798 () (Set Context!13460))

(assert (=> b!7085083 (= e!4259535 call!643798)))

(declare-fun bm!643791 () Bool)

(assert (=> bm!643791 (= call!643795 call!643794)))

(declare-fun bm!643792 () Bool)

(assert (=> bm!643792 (= call!643798 call!643797)))

(declare-fun d!2215915 () Bool)

(declare-fun c!1322399 () Bool)

(assert (=> d!2215915 (= c!1322399 (and (is-ElementMatch!17734 r!11554) (= (c!1322365 r!11554) a!1901)))))

(assert (=> d!2215915 (= (derivationStepZipperDown!2331 r!11554 (Context!13461 (++!15911 (exprs!7230 c!9994) (exprs!7230 auxCtx!45))) a!1901) e!4259538)))

(declare-fun b!7085084 () Bool)

(assert (=> b!7085084 (= e!4259534 (set.union call!643796 call!643799))))

(declare-fun b!7085085 () Bool)

(declare-fun c!1322396 () Bool)

(assert (=> b!7085085 (= c!1322396 (is-Star!17734 r!11554))))

(declare-fun e!4259536 () (Set Context!13460))

(assert (=> b!7085085 (= e!4259535 e!4259536)))

(declare-fun b!7085086 () Bool)

(assert (=> b!7085086 (= e!4259538 (set.insert (Context!13461 (++!15911 (exprs!7230 c!9994) (exprs!7230 auxCtx!45))) (as set.empty (Set Context!13460))))))

(declare-fun b!7085087 () Bool)

(assert (=> b!7085087 (= e!4259536 call!643798)))

(declare-fun bm!643793 () Bool)

(assert (=> bm!643793 (= call!643797 call!643799)))

(declare-fun bm!643794 () Bool)

(assert (=> bm!643794 (= call!643794 ($colon$colon!2685 (exprs!7230 (Context!13461 (++!15911 (exprs!7230 c!9994) (exprs!7230 auxCtx!45)))) (ite (or c!1322398 c!1322395) (regTwo!35980 r!11554) r!11554)))))

(declare-fun b!7085088 () Bool)

(assert (=> b!7085088 (= e!4259536 (as set.empty (Set Context!13460)))))

(assert (= (and d!2215915 c!1322399) b!7085086))

(assert (= (and d!2215915 (not c!1322399)) b!7085081))

(assert (= (and b!7085081 c!1322397) b!7085084))

(assert (= (and b!7085081 (not c!1322397)) b!7085082))

(assert (= (and b!7085082 res!2894382) b!7085080))

(assert (= (and b!7085082 c!1322398) b!7085079))

(assert (= (and b!7085082 (not c!1322398)) b!7085078))

(assert (= (and b!7085078 c!1322395) b!7085083))

(assert (= (and b!7085078 (not c!1322395)) b!7085085))

(assert (= (and b!7085085 c!1322396) b!7085087))

(assert (= (and b!7085085 (not c!1322396)) b!7085088))

(assert (= (or b!7085083 b!7085087) bm!643791))

(assert (= (or b!7085083 b!7085087) bm!643792))

(assert (= (or b!7085079 bm!643792) bm!643793))

(assert (= (or b!7085079 bm!643791) bm!643794))

(assert (= (or b!7085084 bm!643793) bm!643789))

(assert (= (or b!7085084 b!7085079) bm!643790))

(assert (=> b!7085086 m!7816492))

(declare-fun m!7816582 () Bool)

(assert (=> bm!643794 m!7816582))

(assert (=> b!7085080 m!7816572))

(declare-fun m!7816584 () Bool)

(assert (=> bm!643790 m!7816584))

(declare-fun m!7816586 () Bool)

(assert (=> bm!643789 m!7816586))

(assert (=> b!7084939 d!2215915))

(declare-fun d!2215919 () Bool)

(declare-fun e!4259543 () Bool)

(assert (=> d!2215919 e!4259543))

(declare-fun res!2894388 () Bool)

(assert (=> d!2215919 (=> (not res!2894388) (not e!4259543))))

(declare-fun lt!2554505 () List!68697)

(declare-fun content!13916 (List!68697) (Set Regex!17734))

(assert (=> d!2215919 (= res!2894388 (= (content!13916 lt!2554505) (set.union (content!13916 (exprs!7230 c!9994)) (content!13916 (exprs!7230 auxCtx!45)))))))

(declare-fun e!4259544 () List!68697)

(assert (=> d!2215919 (= lt!2554505 e!4259544)))

(declare-fun c!1322403 () Bool)

(assert (=> d!2215919 (= c!1322403 (is-Nil!68573 (exprs!7230 c!9994)))))

(assert (=> d!2215919 (= (++!15911 (exprs!7230 c!9994) (exprs!7230 auxCtx!45)) lt!2554505)))

(declare-fun b!7085097 () Bool)

(assert (=> b!7085097 (= e!4259544 (exprs!7230 auxCtx!45))))

(declare-fun b!7085099 () Bool)

(declare-fun res!2894387 () Bool)

(assert (=> b!7085099 (=> (not res!2894387) (not e!4259543))))

(declare-fun size!41291 (List!68697) Int)

(assert (=> b!7085099 (= res!2894387 (= (size!41291 lt!2554505) (+ (size!41291 (exprs!7230 c!9994)) (size!41291 (exprs!7230 auxCtx!45)))))))

(declare-fun b!7085100 () Bool)

(assert (=> b!7085100 (= e!4259543 (or (not (= (exprs!7230 auxCtx!45) Nil!68573)) (= lt!2554505 (exprs!7230 c!9994))))))

(declare-fun b!7085098 () Bool)

(assert (=> b!7085098 (= e!4259544 (Cons!68573 (h!75021 (exprs!7230 c!9994)) (++!15911 (t!382482 (exprs!7230 c!9994)) (exprs!7230 auxCtx!45))))))

(assert (= (and d!2215919 c!1322403) b!7085097))

(assert (= (and d!2215919 (not c!1322403)) b!7085098))

(assert (= (and d!2215919 res!2894388) b!7085099))

(assert (= (and b!7085099 res!2894387) b!7085100))

(declare-fun m!7816588 () Bool)

(assert (=> d!2215919 m!7816588))

(declare-fun m!7816590 () Bool)

(assert (=> d!2215919 m!7816590))

(declare-fun m!7816592 () Bool)

(assert (=> d!2215919 m!7816592))

(declare-fun m!7816594 () Bool)

(assert (=> b!7085099 m!7816594))

(declare-fun m!7816596 () Bool)

(assert (=> b!7085099 m!7816596))

(declare-fun m!7816598 () Bool)

(assert (=> b!7085099 m!7816598))

(declare-fun m!7816600 () Bool)

(assert (=> b!7085098 m!7816600))

(assert (=> b!7084939 d!2215919))

(declare-fun d!2215921 () Bool)

(declare-fun choose!54601 ((Set Context!13460) Int) (Set Context!13460))

(assert (=> d!2215921 (= (map!16092 lt!2554479 lambda!428938) (choose!54601 lt!2554479 lambda!428938))))

(declare-fun bs!1882877 () Bool)

(assert (= bs!1882877 d!2215921))

(declare-fun m!7816602 () Bool)

(assert (=> bs!1882877 m!7816602))

(assert (=> b!7084939 d!2215921))

(declare-fun d!2215923 () Bool)

(declare-fun dynLambda!27965 (Int Context!13460) Context!13460)

(assert (=> d!2215923 (= (map!16092 lt!2554479 lambda!428938) (set.insert (dynLambda!27965 lambda!428938 c!9994) (as set.empty (Set Context!13460))))))

(declare-fun lt!2554510 () Unit!162175)

(declare-fun choose!54602 ((Set Context!13460) Context!13460 Int) Unit!162175)

(assert (=> d!2215923 (= lt!2554510 (choose!54602 lt!2554479 c!9994 lambda!428938))))

(assert (=> d!2215923 (= lt!2554479 (set.insert c!9994 (as set.empty (Set Context!13460))))))

(assert (=> d!2215923 (= (lemmaMapOnSingletonSet!447 lt!2554479 c!9994 lambda!428938) lt!2554510)))

(declare-fun b_lambda!270815 () Bool)

(assert (=> (not b_lambda!270815) (not d!2215923)))

(declare-fun bs!1882878 () Bool)

(assert (= bs!1882878 d!2215923))

(declare-fun m!7816604 () Bool)

(assert (=> bs!1882878 m!7816604))

(declare-fun m!7816606 () Bool)

(assert (=> bs!1882878 m!7816606))

(declare-fun m!7816608 () Bool)

(assert (=> bs!1882878 m!7816608))

(assert (=> bs!1882878 m!7816496))

(assert (=> bs!1882878 m!7816486))

(assert (=> bs!1882878 m!7816604))

(assert (=> b!7084939 d!2215923))

(declare-fun d!2215925 () Bool)

(declare-fun res!2894389 () Bool)

(declare-fun e!4259545 () Bool)

(assert (=> d!2215925 (=> res!2894389 e!4259545)))

(assert (=> d!2215925 (= res!2894389 (is-Nil!68573 (exprs!7230 auxCtx!45)))))

(assert (=> d!2215925 (= (forall!16686 (exprs!7230 auxCtx!45) lambda!428939) e!4259545)))

(declare-fun b!7085101 () Bool)

(declare-fun e!4259546 () Bool)

(assert (=> b!7085101 (= e!4259545 e!4259546)))

(declare-fun res!2894390 () Bool)

(assert (=> b!7085101 (=> (not res!2894390) (not e!4259546))))

(assert (=> b!7085101 (= res!2894390 (dynLambda!27964 lambda!428939 (h!75021 (exprs!7230 auxCtx!45))))))

(declare-fun b!7085102 () Bool)

(assert (=> b!7085102 (= e!4259546 (forall!16686 (t!382482 (exprs!7230 auxCtx!45)) lambda!428939))))

(assert (= (and d!2215925 (not res!2894389)) b!7085101))

(assert (= (and b!7085101 res!2894390) b!7085102))

(declare-fun b_lambda!270817 () Bool)

(assert (=> (not b_lambda!270817) (not b!7085101)))

(declare-fun m!7816610 () Bool)

(assert (=> b!7085101 m!7816610))

(declare-fun m!7816612 () Bool)

(assert (=> b!7085102 m!7816612))

(assert (=> b!7084935 d!2215925))

(declare-fun b!7085107 () Bool)

(declare-fun e!4259549 () Bool)

(declare-fun tp!1944965 () Bool)

(declare-fun tp!1944966 () Bool)

(assert (=> b!7085107 (= e!4259549 (and tp!1944965 tp!1944966))))

(assert (=> b!7084937 (= tp!1944935 e!4259549)))

(assert (= (and b!7084937 (is-Cons!68573 (exprs!7230 auxCtx!45))) b!7085107))

(declare-fun b!7085108 () Bool)

(declare-fun e!4259550 () Bool)

(declare-fun tp!1944967 () Bool)

(declare-fun tp!1944968 () Bool)

(assert (=> b!7085108 (= e!4259550 (and tp!1944967 tp!1944968))))

(assert (=> b!7084942 (= tp!1944936 e!4259550)))

(assert (= (and b!7084942 (is-Cons!68573 (exprs!7230 c!9994))) b!7085108))

(declare-fun b!7085121 () Bool)

(declare-fun e!4259553 () Bool)

(declare-fun tp!1944979 () Bool)

(assert (=> b!7085121 (= e!4259553 tp!1944979)))

(declare-fun b!7085122 () Bool)

(declare-fun tp!1944983 () Bool)

(declare-fun tp!1944982 () Bool)

(assert (=> b!7085122 (= e!4259553 (and tp!1944983 tp!1944982))))

(declare-fun b!7085120 () Bool)

(declare-fun tp!1944981 () Bool)

(declare-fun tp!1944980 () Bool)

(assert (=> b!7085120 (= e!4259553 (and tp!1944981 tp!1944980))))

(declare-fun b!7085119 () Bool)

(assert (=> b!7085119 (= e!4259553 tp_is_empty!44701)))

(assert (=> b!7084933 (= tp!1944938 e!4259553)))

(assert (= (and b!7084933 (is-ElementMatch!17734 (regOne!35981 r!11554))) b!7085119))

(assert (= (and b!7084933 (is-Concat!26579 (regOne!35981 r!11554))) b!7085120))

(assert (= (and b!7084933 (is-Star!17734 (regOne!35981 r!11554))) b!7085121))

(assert (= (and b!7084933 (is-Union!17734 (regOne!35981 r!11554))) b!7085122))

(declare-fun b!7085125 () Bool)

(declare-fun e!4259554 () Bool)

(declare-fun tp!1944984 () Bool)

(assert (=> b!7085125 (= e!4259554 tp!1944984)))

(declare-fun b!7085126 () Bool)

(declare-fun tp!1944988 () Bool)

(declare-fun tp!1944987 () Bool)

(assert (=> b!7085126 (= e!4259554 (and tp!1944988 tp!1944987))))

(declare-fun b!7085124 () Bool)

(declare-fun tp!1944986 () Bool)

(declare-fun tp!1944985 () Bool)

(assert (=> b!7085124 (= e!4259554 (and tp!1944986 tp!1944985))))

(declare-fun b!7085123 () Bool)

(assert (=> b!7085123 (= e!4259554 tp_is_empty!44701)))

(assert (=> b!7084933 (= tp!1944934 e!4259554)))

(assert (= (and b!7084933 (is-ElementMatch!17734 (regTwo!35981 r!11554))) b!7085123))

(assert (= (and b!7084933 (is-Concat!26579 (regTwo!35981 r!11554))) b!7085124))

(assert (= (and b!7084933 (is-Star!17734 (regTwo!35981 r!11554))) b!7085125))

(assert (= (and b!7084933 (is-Union!17734 (regTwo!35981 r!11554))) b!7085126))

(declare-fun b!7085129 () Bool)

(declare-fun e!4259555 () Bool)

(declare-fun tp!1944989 () Bool)

(assert (=> b!7085129 (= e!4259555 tp!1944989)))

(declare-fun b!7085130 () Bool)

(declare-fun tp!1944993 () Bool)

(declare-fun tp!1944992 () Bool)

(assert (=> b!7085130 (= e!4259555 (and tp!1944993 tp!1944992))))

(declare-fun b!7085128 () Bool)

(declare-fun tp!1944991 () Bool)

(declare-fun tp!1944990 () Bool)

(assert (=> b!7085128 (= e!4259555 (and tp!1944991 tp!1944990))))

(declare-fun b!7085127 () Bool)

(assert (=> b!7085127 (= e!4259555 tp_is_empty!44701)))

(assert (=> b!7084940 (= tp!1944933 e!4259555)))

(assert (= (and b!7084940 (is-ElementMatch!17734 (regOne!35980 r!11554))) b!7085127))

(assert (= (and b!7084940 (is-Concat!26579 (regOne!35980 r!11554))) b!7085128))

(assert (= (and b!7084940 (is-Star!17734 (regOne!35980 r!11554))) b!7085129))

(assert (= (and b!7084940 (is-Union!17734 (regOne!35980 r!11554))) b!7085130))

(declare-fun b!7085133 () Bool)

(declare-fun e!4259556 () Bool)

(declare-fun tp!1944994 () Bool)

(assert (=> b!7085133 (= e!4259556 tp!1944994)))

(declare-fun b!7085134 () Bool)

(declare-fun tp!1944998 () Bool)

(declare-fun tp!1944997 () Bool)

(assert (=> b!7085134 (= e!4259556 (and tp!1944998 tp!1944997))))

(declare-fun b!7085132 () Bool)

(declare-fun tp!1944996 () Bool)

(declare-fun tp!1944995 () Bool)

(assert (=> b!7085132 (= e!4259556 (and tp!1944996 tp!1944995))))

(declare-fun b!7085131 () Bool)

(assert (=> b!7085131 (= e!4259556 tp_is_empty!44701)))

(assert (=> b!7084940 (= tp!1944937 e!4259556)))

(assert (= (and b!7084940 (is-ElementMatch!17734 (regTwo!35980 r!11554))) b!7085131))

(assert (= (and b!7084940 (is-Concat!26579 (regTwo!35980 r!11554))) b!7085132))

(assert (= (and b!7084940 (is-Star!17734 (regTwo!35980 r!11554))) b!7085133))

(assert (= (and b!7084940 (is-Union!17734 (regTwo!35980 r!11554))) b!7085134))

(declare-fun b!7085137 () Bool)

(declare-fun e!4259557 () Bool)

(declare-fun tp!1944999 () Bool)

(assert (=> b!7085137 (= e!4259557 tp!1944999)))

(declare-fun b!7085138 () Bool)

(declare-fun tp!1945003 () Bool)

(declare-fun tp!1945002 () Bool)

(assert (=> b!7085138 (= e!4259557 (and tp!1945003 tp!1945002))))

(declare-fun b!7085136 () Bool)

(declare-fun tp!1945001 () Bool)

(declare-fun tp!1945000 () Bool)

(assert (=> b!7085136 (= e!4259557 (and tp!1945001 tp!1945000))))

(declare-fun b!7085135 () Bool)

(assert (=> b!7085135 (= e!4259557 tp_is_empty!44701)))

(assert (=> b!7084941 (= tp!1944939 e!4259557)))

(assert (= (and b!7084941 (is-ElementMatch!17734 (reg!18063 r!11554))) b!7085135))

(assert (= (and b!7084941 (is-Concat!26579 (reg!18063 r!11554))) b!7085136))

(assert (= (and b!7084941 (is-Star!17734 (reg!18063 r!11554))) b!7085137))

(assert (= (and b!7084941 (is-Union!17734 (reg!18063 r!11554))) b!7085138))

(declare-fun b_lambda!270819 () Bool)

(assert (= b_lambda!270817 (or b!7084939 b_lambda!270819)))

(declare-fun bs!1882881 () Bool)

(declare-fun d!2215929 () Bool)

(assert (= bs!1882881 (and d!2215929 b!7084939)))

(assert (=> bs!1882881 (= (dynLambda!27964 lambda!428939 (h!75021 (exprs!7230 auxCtx!45))) (validRegex!9009 (h!75021 (exprs!7230 auxCtx!45))))))

(declare-fun m!7816616 () Bool)

(assert (=> bs!1882881 m!7816616))

(assert (=> b!7085101 d!2215929))

(declare-fun b_lambda!270821 () Bool)

(assert (= b_lambda!270815 (or b!7084934 b_lambda!270821)))

(declare-fun bs!1882882 () Bool)

(declare-fun d!2215931 () Bool)

(assert (= bs!1882882 (and d!2215931 b!7084934)))

(declare-fun bs!1882883 () Bool)

(assert (= bs!1882883 (and d!2215931 b!7084934 b!7084939)))

(declare-fun lambda!428970 () Int)

(assert (=> bs!1882883 (= lambda!428970 lambda!428939)))

(declare-fun bs!1882884 () Bool)

(assert (= bs!1882884 (and d!2215931 b!7084934 d!2215897)))

(assert (=> bs!1882884 (= lambda!428970 lambda!428954)))

(declare-fun bs!1882885 () Bool)

(assert (= bs!1882885 (and d!2215931 b!7084934 d!2215899)))

(assert (=> bs!1882885 (= lambda!428970 lambda!428955)))

(declare-fun lt!2554511 () Unit!162175)

(assert (=> bs!1882882 (= lt!2554511 (lemmaConcatPreservesForall!1041 (exprs!7230 c!9994) (exprs!7230 auxCtx!45) lambda!428970))))

(assert (=> bs!1882882 (= (dynLambda!27965 lambda!428938 c!9994) (Context!13461 (++!15911 (exprs!7230 c!9994) (exprs!7230 auxCtx!45))))))

(declare-fun m!7816618 () Bool)

(assert (=> bs!1882882 m!7816618))

(assert (=> bs!1882882 m!7816494))

(assert (=> d!2215923 d!2215931))

(declare-fun b_lambda!270823 () Bool)

(assert (= b_lambda!270813 (or b!7084939 b_lambda!270823)))

(declare-fun bs!1882886 () Bool)

(declare-fun d!2215933 () Bool)

(assert (= bs!1882886 (and d!2215933 b!7084939)))

(assert (=> bs!1882886 (= (dynLambda!27964 lambda!428939 (h!75021 (exprs!7230 c!9994))) (validRegex!9009 (h!75021 (exprs!7230 c!9994))))))

(declare-fun m!7816620 () Bool)

(assert (=> bs!1882886 m!7816620))

(assert (=> b!7085034 d!2215933))

(push 1)

(assert (not d!2215899))

(assert (not bs!1882881))

(assert (not b!7085007))

(assert (not d!2215919))

(assert (not b!7085124))

(assert (not b!7085069))

(assert (not bs!1882882))

(assert (not b!7085130))

(assert (not b!7085121))

(assert (not b!7085137))

(assert (not bm!643759))

(assert (not b!7085122))

(assert (not b!7085126))

(assert (not b!7085128))

(assert (not b!7085120))

(assert (not b!7085134))

(assert (not b!7085133))

(assert (not b!7085136))

(assert (not b_lambda!270823))

(assert (not b!7085129))

(assert (not bm!643783))

(assert (not b!7085035))

(assert (not b!7085098))

(assert (not d!2215905))

(assert (not bm!643788))

(assert (not d!2215921))

(assert (not b!7085107))

(assert (not b!7085132))

(assert (not bm!643784))

(assert (not b!7085108))

(assert (not bm!643790))

(assert tp_is_empty!44701)

(assert (not bm!643789))

(assert (not b!7085125))

(assert (not d!2215897))

(assert (not bm!643794))

(assert (not b_lambda!270821))

(assert (not b_lambda!270819))

(assert (not bm!643761))

(assert (not b!7085099))

(assert (not b!7085080))

(assert (not b!7085138))

(assert (not b!7085102))

(assert (not d!2215923))

(assert (not bs!1882886))

(assert (not d!2215903))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

