; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!692482 () Bool)

(assert start!692482)

(declare-fun b!7114733 () Bool)

(declare-fun res!2903027 () Bool)

(declare-fun e!4275435 () Bool)

(assert (=> b!7114733 (=> (not res!2903027) (not e!4275435))))

(declare-datatypes ((C!36178 0))(
  ( (C!36179 (val!27795 Int)) )
))
(declare-datatypes ((Regex!17954 0))(
  ( (ElementMatch!17954 (c!1327769 C!36178)) (Concat!26799 (regOne!36420 Regex!17954) (regTwo!36420 Regex!17954)) (EmptyExpr!17954) (Star!17954 (reg!18283 Regex!17954)) (EmptyLang!17954) (Union!17954 (regOne!36421 Regex!17954) (regTwo!36421 Regex!17954)) )
))
(declare-datatypes ((List!68915 0))(
  ( (Nil!68791) (Cons!68791 (h!75239 Regex!17954) (t!382758 List!68915)) )
))
(declare-datatypes ((Context!13896 0))(
  ( (Context!13897 (exprs!7448 List!68915)) )
))
(declare-fun lt!2560419 () Context!13896)

(declare-fun a!1901 () C!36178)

(declare-fun r!11554 () Regex!17954)

(declare-fun lt!2560418 () List!68915)

(declare-fun derivationStepZipperDown!2461 (Regex!17954 Context!13896 C!36178) (Set Context!13896))

(declare-fun $colon$colon!2806 (List!68915 Regex!17954) List!68915)

(assert (=> b!7114733 (= res!2903027 (= (derivationStepZipperDown!2461 r!11554 lt!2560419 a!1901) (derivationStepZipperDown!2461 (regOne!36420 r!11554) (Context!13897 ($colon$colon!2806 lt!2560418 (regTwo!36420 r!11554))) a!1901)))))

(declare-fun b!7114734 () Bool)

(declare-fun res!2903023 () Bool)

(declare-fun e!4275437 () Bool)

(assert (=> b!7114734 (=> (not res!2903023) (not e!4275437))))

(assert (=> b!7114734 (= res!2903023 (and (or (not (is-ElementMatch!17954 r!11554)) (not (= (c!1327769 r!11554) a!1901))) (not (is-Union!17954 r!11554))))))

(declare-fun b!7114735 () Bool)

(declare-fun res!2903024 () Bool)

(assert (=> b!7114735 (=> (not res!2903024) (not e!4275437))))

(declare-fun e!4275434 () Bool)

(assert (=> b!7114735 (= res!2903024 e!4275434)))

(declare-fun res!2903022 () Bool)

(assert (=> b!7114735 (=> res!2903022 e!4275434)))

(assert (=> b!7114735 (= res!2903022 (not (is-Concat!26799 r!11554)))))

(declare-fun res!2903026 () Bool)

(assert (=> start!692482 (=> (not res!2903026) (not e!4275437))))

(declare-fun validRegex!9227 (Regex!17954) Bool)

(assert (=> start!692482 (= res!2903026 (validRegex!9227 r!11554))))

(assert (=> start!692482 e!4275437))

(declare-fun e!4275438 () Bool)

(assert (=> start!692482 e!4275438))

(declare-fun tp_is_empty!45141 () Bool)

(assert (=> start!692482 tp_is_empty!45141))

(declare-fun c!9994 () Context!13896)

(declare-fun e!4275433 () Bool)

(declare-fun inv!87749 (Context!13896) Bool)

(assert (=> start!692482 (and (inv!87749 c!9994) e!4275433)))

(declare-fun auxCtx!45 () Context!13896)

(declare-fun e!4275436 () Bool)

(assert (=> start!692482 (and (inv!87749 auxCtx!45) e!4275436)))

(declare-fun b!7114736 () Bool)

(declare-fun tp!1957839 () Bool)

(assert (=> b!7114736 (= e!4275438 tp!1957839)))

(declare-fun b!7114737 () Bool)

(assert (=> b!7114737 (= e!4275435 (not (inv!87749 lt!2560419)))))

(declare-fun lambda!432234 () Int)

(declare-datatypes ((Unit!162579 0))(
  ( (Unit!162580) )
))
(declare-fun lt!2560415 () Unit!162579)

(declare-fun lemmaConcatPreservesForall!1239 (List!68915 List!68915 Int) Unit!162579)

(assert (=> b!7114737 (= lt!2560415 (lemmaConcatPreservesForall!1239 (exprs!7448 c!9994) (exprs!7448 auxCtx!45) lambda!432234))))

(declare-fun lt!2560414 () List!68915)

(declare-fun lt!2560416 () Context!13896)

(declare-fun ++!16106 (List!68915 List!68915) List!68915)

(declare-fun appendTo!937 ((Set Context!13896) Context!13896) (Set Context!13896))

(assert (=> b!7114737 (= (derivationStepZipperDown!2461 (regOne!36420 r!11554) (Context!13897 (++!16106 lt!2560414 (exprs!7448 auxCtx!45))) a!1901) (appendTo!937 (derivationStepZipperDown!2461 (regOne!36420 r!11554) lt!2560416 a!1901) auxCtx!45))))

(declare-fun lt!2560413 () Unit!162579)

(assert (=> b!7114737 (= lt!2560413 (lemmaConcatPreservesForall!1239 lt!2560414 (exprs!7448 auxCtx!45) lambda!432234))))

(declare-fun lt!2560411 () Unit!162579)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!235 (Context!13896 Regex!17954 C!36178 Context!13896) Unit!162579)

(assert (=> b!7114737 (= lt!2560411 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!235 lt!2560416 (regOne!36420 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7114737 (= lt!2560416 (Context!13897 lt!2560414))))

(assert (=> b!7114737 (= lt!2560414 ($colon$colon!2806 (exprs!7448 c!9994) (regTwo!36420 r!11554)))))

(declare-fun b!7114738 () Bool)

(assert (=> b!7114738 (= e!4275438 tp_is_empty!45141)))

(declare-fun b!7114739 () Bool)

(declare-fun tp!1957840 () Bool)

(assert (=> b!7114739 (= e!4275436 tp!1957840)))

(declare-fun b!7114740 () Bool)

(declare-fun tp!1957843 () Bool)

(declare-fun tp!1957837 () Bool)

(assert (=> b!7114740 (= e!4275438 (and tp!1957843 tp!1957837))))

(declare-fun b!7114741 () Bool)

(declare-fun res!2903025 () Bool)

(assert (=> b!7114741 (=> (not res!2903025) (not e!4275437))))

(assert (=> b!7114741 (= res!2903025 (is-Concat!26799 r!11554))))

(declare-fun b!7114742 () Bool)

(declare-fun tp!1957842 () Bool)

(declare-fun tp!1957841 () Bool)

(assert (=> b!7114742 (= e!4275438 (and tp!1957842 tp!1957841))))

(declare-fun b!7114743 () Bool)

(declare-fun tp!1957838 () Bool)

(assert (=> b!7114743 (= e!4275433 tp!1957838)))

(declare-fun b!7114744 () Bool)

(assert (=> b!7114744 (= e!4275437 e!4275435)))

(declare-fun res!2903021 () Bool)

(assert (=> b!7114744 (=> (not res!2903021) (not e!4275435))))

(assert (=> b!7114744 (= res!2903021 (validRegex!9227 (regTwo!36420 r!11554)))))

(assert (=> b!7114744 (= lt!2560419 (Context!13897 lt!2560418))))

(assert (=> b!7114744 (= lt!2560418 (++!16106 (exprs!7448 c!9994) (exprs!7448 auxCtx!45)))))

(declare-fun lt!2560412 () Unit!162579)

(assert (=> b!7114744 (= lt!2560412 (lemmaConcatPreservesForall!1239 (exprs!7448 c!9994) (exprs!7448 auxCtx!45) lambda!432234))))

(declare-fun lt!2560417 () Unit!162579)

(assert (=> b!7114744 (= lt!2560417 (lemmaConcatPreservesForall!1239 (exprs!7448 c!9994) (exprs!7448 auxCtx!45) lambda!432234))))

(declare-fun b!7114745 () Bool)

(declare-fun nullable!7591 (Regex!17954) Bool)

(assert (=> b!7114745 (= e!4275434 (not (nullable!7591 (regOne!36420 r!11554))))))

(assert (= (and start!692482 res!2903026) b!7114734))

(assert (= (and b!7114734 res!2903023) b!7114735))

(assert (= (and b!7114735 (not res!2903022)) b!7114745))

(assert (= (and b!7114735 res!2903024) b!7114741))

(assert (= (and b!7114741 res!2903025) b!7114744))

(assert (= (and b!7114744 res!2903021) b!7114733))

(assert (= (and b!7114733 res!2903027) b!7114737))

(assert (= (and start!692482 (is-ElementMatch!17954 r!11554)) b!7114738))

(assert (= (and start!692482 (is-Concat!26799 r!11554)) b!7114740))

(assert (= (and start!692482 (is-Star!17954 r!11554)) b!7114736))

(assert (= (and start!692482 (is-Union!17954 r!11554)) b!7114742))

(assert (= start!692482 b!7114743))

(assert (= start!692482 b!7114739))

(declare-fun m!7834224 () Bool)

(assert (=> b!7114733 m!7834224))

(declare-fun m!7834226 () Bool)

(assert (=> b!7114733 m!7834226))

(declare-fun m!7834228 () Bool)

(assert (=> b!7114733 m!7834228))

(declare-fun m!7834230 () Bool)

(assert (=> b!7114737 m!7834230))

(declare-fun m!7834232 () Bool)

(assert (=> b!7114737 m!7834232))

(declare-fun m!7834234 () Bool)

(assert (=> b!7114737 m!7834234))

(assert (=> b!7114737 m!7834230))

(declare-fun m!7834236 () Bool)

(assert (=> b!7114737 m!7834236))

(declare-fun m!7834238 () Bool)

(assert (=> b!7114737 m!7834238))

(declare-fun m!7834240 () Bool)

(assert (=> b!7114737 m!7834240))

(declare-fun m!7834242 () Bool)

(assert (=> b!7114737 m!7834242))

(declare-fun m!7834244 () Bool)

(assert (=> b!7114737 m!7834244))

(declare-fun m!7834246 () Bool)

(assert (=> b!7114737 m!7834246))

(declare-fun m!7834248 () Bool)

(assert (=> b!7114744 m!7834248))

(declare-fun m!7834250 () Bool)

(assert (=> b!7114744 m!7834250))

(assert (=> b!7114744 m!7834240))

(assert (=> b!7114744 m!7834240))

(declare-fun m!7834252 () Bool)

(assert (=> start!692482 m!7834252))

(declare-fun m!7834254 () Bool)

(assert (=> start!692482 m!7834254))

(declare-fun m!7834256 () Bool)

(assert (=> start!692482 m!7834256))

(declare-fun m!7834258 () Bool)

(assert (=> b!7114745 m!7834258))

(push 1)

(assert (not b!7114740))

(assert (not b!7114736))

(assert (not b!7114742))

(assert (not start!692482))

(assert (not b!7114733))

(assert (not b!7114737))

(assert tp_is_empty!45141)

(assert (not b!7114745))

(assert (not b!7114739))

(assert (not b!7114743))

(assert (not b!7114744))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!649571 () Bool)

(declare-fun call!649577 () (Set Context!13896))

(declare-fun call!649576 () (Set Context!13896))

(assert (=> bm!649571 (= call!649577 call!649576)))

(declare-fun b!7114825 () Bool)

(declare-fun e!4275484 () (Set Context!13896))

(declare-fun call!649578 () (Set Context!13896))

(assert (=> b!7114825 (= e!4275484 call!649578)))

(declare-fun b!7114826 () Bool)

(declare-fun e!4275486 () (Set Context!13896))

(declare-fun call!649581 () (Set Context!13896))

(assert (=> b!7114826 (= e!4275486 (set.union call!649581 call!649577))))

(declare-fun b!7114827 () Bool)

(declare-fun e!4275483 () Bool)

(assert (=> b!7114827 (= e!4275483 (nullable!7591 (regOne!36420 r!11554)))))

(declare-fun c!1327787 () Bool)

(declare-fun c!1327786 () Bool)

(declare-fun call!649579 () List!68915)

(declare-fun bm!649572 () Bool)

(declare-fun c!1327789 () Bool)

(assert (=> bm!649572 (= call!649576 (derivationStepZipperDown!2461 (ite c!1327789 (regOne!36421 r!11554) (ite c!1327786 (regTwo!36420 r!11554) (ite c!1327787 (regOne!36420 r!11554) (reg!18283 r!11554)))) (ite (or c!1327789 c!1327786) lt!2560419 (Context!13897 call!649579)) a!1901))))

(declare-fun call!649580 () List!68915)

(declare-fun bm!649573 () Bool)

(assert (=> bm!649573 (= call!649581 (derivationStepZipperDown!2461 (ite c!1327789 (regTwo!36421 r!11554) (regOne!36420 r!11554)) (ite c!1327789 lt!2560419 (Context!13897 call!649580)) a!1901))))

(declare-fun b!7114828 () Bool)

(declare-fun e!4275485 () (Set Context!13896))

(assert (=> b!7114828 (= e!4275485 (set.union call!649576 call!649581))))

(declare-fun d!2220903 () Bool)

(declare-fun c!1327788 () Bool)

(assert (=> d!2220903 (= c!1327788 (and (is-ElementMatch!17954 r!11554) (= (c!1327769 r!11554) a!1901)))))

(declare-fun e!4275487 () (Set Context!13896))

(assert (=> d!2220903 (= (derivationStepZipperDown!2461 r!11554 lt!2560419 a!1901) e!4275487)))

(declare-fun b!7114829 () Bool)

(declare-fun e!4275488 () (Set Context!13896))

(assert (=> b!7114829 (= e!4275488 call!649578)))

(declare-fun b!7114830 () Bool)

(assert (=> b!7114830 (= c!1327786 e!4275483)))

(declare-fun res!2903061 () Bool)

(assert (=> b!7114830 (=> (not res!2903061) (not e!4275483))))

(assert (=> b!7114830 (= res!2903061 (is-Concat!26799 r!11554))))

(assert (=> b!7114830 (= e!4275485 e!4275486)))

(declare-fun b!7114831 () Bool)

(assert (=> b!7114831 (= e!4275486 e!4275484)))

(assert (=> b!7114831 (= c!1327787 (is-Concat!26799 r!11554))))

(declare-fun b!7114832 () Bool)

(declare-fun c!1327785 () Bool)

(assert (=> b!7114832 (= c!1327785 (is-Star!17954 r!11554))))

(assert (=> b!7114832 (= e!4275484 e!4275488)))

(declare-fun b!7114833 () Bool)

(assert (=> b!7114833 (= e!4275488 (as set.empty (Set Context!13896)))))

(declare-fun bm!649574 () Bool)

(assert (=> bm!649574 (= call!649580 ($colon$colon!2806 (exprs!7448 lt!2560419) (ite (or c!1327786 c!1327787) (regTwo!36420 r!11554) r!11554)))))

(declare-fun bm!649575 () Bool)

(assert (=> bm!649575 (= call!649579 call!649580)))

(declare-fun b!7114834 () Bool)

(assert (=> b!7114834 (= e!4275487 (set.insert lt!2560419 (as set.empty (Set Context!13896))))))

(declare-fun bm!649576 () Bool)

(assert (=> bm!649576 (= call!649578 call!649577)))

(declare-fun b!7114835 () Bool)

(assert (=> b!7114835 (= e!4275487 e!4275485)))

(assert (=> b!7114835 (= c!1327789 (is-Union!17954 r!11554))))

(assert (= (and d!2220903 c!1327788) b!7114834))

(assert (= (and d!2220903 (not c!1327788)) b!7114835))

(assert (= (and b!7114835 c!1327789) b!7114828))

(assert (= (and b!7114835 (not c!1327789)) b!7114830))

(assert (= (and b!7114830 res!2903061) b!7114827))

(assert (= (and b!7114830 c!1327786) b!7114826))

(assert (= (and b!7114830 (not c!1327786)) b!7114831))

(assert (= (and b!7114831 c!1327787) b!7114825))

(assert (= (and b!7114831 (not c!1327787)) b!7114832))

(assert (= (and b!7114832 c!1327785) b!7114829))

(assert (= (and b!7114832 (not c!1327785)) b!7114833))

(assert (= (or b!7114825 b!7114829) bm!649575))

(assert (= (or b!7114825 b!7114829) bm!649576))

(assert (= (or b!7114826 bm!649576) bm!649571))

(assert (= (or b!7114826 bm!649575) bm!649574))

(assert (= (or b!7114828 b!7114826) bm!649573))

(assert (= (or b!7114828 bm!649571) bm!649572))

(declare-fun m!7834296 () Bool)

(assert (=> bm!649574 m!7834296))

(declare-fun m!7834298 () Bool)

(assert (=> bm!649573 m!7834298))

(assert (=> b!7114827 m!7834258))

(declare-fun m!7834300 () Bool)

(assert (=> bm!649572 m!7834300))

(declare-fun m!7834302 () Bool)

(assert (=> b!7114834 m!7834302))

(assert (=> b!7114733 d!2220903))

(declare-fun bm!649577 () Bool)

(declare-fun call!649583 () (Set Context!13896))

(declare-fun call!649582 () (Set Context!13896))

(assert (=> bm!649577 (= call!649583 call!649582)))

(declare-fun b!7114836 () Bool)

(declare-fun e!4275490 () (Set Context!13896))

(declare-fun call!649584 () (Set Context!13896))

(assert (=> b!7114836 (= e!4275490 call!649584)))

(declare-fun b!7114837 () Bool)

(declare-fun e!4275492 () (Set Context!13896))

(declare-fun call!649587 () (Set Context!13896))

(assert (=> b!7114837 (= e!4275492 (set.union call!649587 call!649583))))

(declare-fun b!7114838 () Bool)

(declare-fun e!4275489 () Bool)

(assert (=> b!7114838 (= e!4275489 (nullable!7591 (regOne!36420 (regOne!36420 r!11554))))))

(declare-fun call!649585 () List!68915)

(declare-fun c!1327791 () Bool)

(declare-fun c!1327792 () Bool)

(declare-fun c!1327794 () Bool)

(declare-fun bm!649578 () Bool)

(assert (=> bm!649578 (= call!649582 (derivationStepZipperDown!2461 (ite c!1327794 (regOne!36421 (regOne!36420 r!11554)) (ite c!1327791 (regTwo!36420 (regOne!36420 r!11554)) (ite c!1327792 (regOne!36420 (regOne!36420 r!11554)) (reg!18283 (regOne!36420 r!11554))))) (ite (or c!1327794 c!1327791) (Context!13897 ($colon$colon!2806 lt!2560418 (regTwo!36420 r!11554))) (Context!13897 call!649585)) a!1901))))

(declare-fun call!649586 () List!68915)

(declare-fun bm!649579 () Bool)

(assert (=> bm!649579 (= call!649587 (derivationStepZipperDown!2461 (ite c!1327794 (regTwo!36421 (regOne!36420 r!11554)) (regOne!36420 (regOne!36420 r!11554))) (ite c!1327794 (Context!13897 ($colon$colon!2806 lt!2560418 (regTwo!36420 r!11554))) (Context!13897 call!649586)) a!1901))))

(declare-fun b!7114839 () Bool)

(declare-fun e!4275491 () (Set Context!13896))

(assert (=> b!7114839 (= e!4275491 (set.union call!649582 call!649587))))

(declare-fun d!2220907 () Bool)

(declare-fun c!1327793 () Bool)

(assert (=> d!2220907 (= c!1327793 (and (is-ElementMatch!17954 (regOne!36420 r!11554)) (= (c!1327769 (regOne!36420 r!11554)) a!1901)))))

(declare-fun e!4275493 () (Set Context!13896))

(assert (=> d!2220907 (= (derivationStepZipperDown!2461 (regOne!36420 r!11554) (Context!13897 ($colon$colon!2806 lt!2560418 (regTwo!36420 r!11554))) a!1901) e!4275493)))

(declare-fun b!7114840 () Bool)

(declare-fun e!4275494 () (Set Context!13896))

(assert (=> b!7114840 (= e!4275494 call!649584)))

(declare-fun b!7114841 () Bool)

(assert (=> b!7114841 (= c!1327791 e!4275489)))

(declare-fun res!2903062 () Bool)

(assert (=> b!7114841 (=> (not res!2903062) (not e!4275489))))

(assert (=> b!7114841 (= res!2903062 (is-Concat!26799 (regOne!36420 r!11554)))))

(assert (=> b!7114841 (= e!4275491 e!4275492)))

(declare-fun b!7114842 () Bool)

(assert (=> b!7114842 (= e!4275492 e!4275490)))

(assert (=> b!7114842 (= c!1327792 (is-Concat!26799 (regOne!36420 r!11554)))))

(declare-fun b!7114843 () Bool)

(declare-fun c!1327790 () Bool)

(assert (=> b!7114843 (= c!1327790 (is-Star!17954 (regOne!36420 r!11554)))))

(assert (=> b!7114843 (= e!4275490 e!4275494)))

(declare-fun b!7114844 () Bool)

(assert (=> b!7114844 (= e!4275494 (as set.empty (Set Context!13896)))))

(declare-fun bm!649580 () Bool)

(assert (=> bm!649580 (= call!649586 ($colon$colon!2806 (exprs!7448 (Context!13897 ($colon$colon!2806 lt!2560418 (regTwo!36420 r!11554)))) (ite (or c!1327791 c!1327792) (regTwo!36420 (regOne!36420 r!11554)) (regOne!36420 r!11554))))))

(declare-fun bm!649581 () Bool)

(assert (=> bm!649581 (= call!649585 call!649586)))

(declare-fun b!7114845 () Bool)

(assert (=> b!7114845 (= e!4275493 (set.insert (Context!13897 ($colon$colon!2806 lt!2560418 (regTwo!36420 r!11554))) (as set.empty (Set Context!13896))))))

(declare-fun bm!649582 () Bool)

(assert (=> bm!649582 (= call!649584 call!649583)))

(declare-fun b!7114846 () Bool)

(assert (=> b!7114846 (= e!4275493 e!4275491)))

(assert (=> b!7114846 (= c!1327794 (is-Union!17954 (regOne!36420 r!11554)))))

(assert (= (and d!2220907 c!1327793) b!7114845))

(assert (= (and d!2220907 (not c!1327793)) b!7114846))

(assert (= (and b!7114846 c!1327794) b!7114839))

(assert (= (and b!7114846 (not c!1327794)) b!7114841))

(assert (= (and b!7114841 res!2903062) b!7114838))

(assert (= (and b!7114841 c!1327791) b!7114837))

(assert (= (and b!7114841 (not c!1327791)) b!7114842))

(assert (= (and b!7114842 c!1327792) b!7114836))

(assert (= (and b!7114842 (not c!1327792)) b!7114843))

(assert (= (and b!7114843 c!1327790) b!7114840))

(assert (= (and b!7114843 (not c!1327790)) b!7114844))

(assert (= (or b!7114836 b!7114840) bm!649581))

(assert (= (or b!7114836 b!7114840) bm!649582))

(assert (= (or b!7114837 bm!649582) bm!649577))

(assert (= (or b!7114837 bm!649581) bm!649580))

(assert (= (or b!7114839 b!7114837) bm!649579))

(assert (= (or b!7114839 bm!649577) bm!649578))

(declare-fun m!7834304 () Bool)

(assert (=> bm!649580 m!7834304))

(declare-fun m!7834306 () Bool)

(assert (=> bm!649579 m!7834306))

(declare-fun m!7834308 () Bool)

(assert (=> b!7114838 m!7834308))

(declare-fun m!7834310 () Bool)

(assert (=> bm!649578 m!7834310))

(declare-fun m!7834312 () Bool)

(assert (=> b!7114845 m!7834312))

(assert (=> b!7114733 d!2220907))

(declare-fun d!2220909 () Bool)

(assert (=> d!2220909 (= ($colon$colon!2806 lt!2560418 (regTwo!36420 r!11554)) (Cons!68791 (regTwo!36420 r!11554) lt!2560418))))

(assert (=> b!7114733 d!2220909))

(declare-fun b!7114874 () Bool)

(declare-fun res!2903082 () Bool)

(declare-fun e!4275520 () Bool)

(assert (=> b!7114874 (=> (not res!2903082) (not e!4275520))))

(declare-fun call!649598 () Bool)

(assert (=> b!7114874 (= res!2903082 call!649598)))

(declare-fun e!4275521 () Bool)

(assert (=> b!7114874 (= e!4275521 e!4275520)))

(declare-fun b!7114875 () Bool)

(declare-fun e!4275519 () Bool)

(declare-fun e!4275522 () Bool)

(assert (=> b!7114875 (= e!4275519 e!4275522)))

(declare-fun c!1327801 () Bool)

(assert (=> b!7114875 (= c!1327801 (is-Star!17954 (regTwo!36420 r!11554)))))

(declare-fun bm!649592 () Bool)

(declare-fun call!649597 () Bool)

(declare-fun call!649599 () Bool)

(assert (=> bm!649592 (= call!649597 call!649599)))

(declare-fun bm!649593 () Bool)

(declare-fun c!1327802 () Bool)

(assert (=> bm!649593 (= call!649598 (validRegex!9227 (ite c!1327802 (regOne!36421 (regTwo!36420 r!11554)) (regTwo!36420 (regTwo!36420 r!11554)))))))

(declare-fun b!7114876 () Bool)

(declare-fun e!4275517 () Bool)

(assert (=> b!7114876 (= e!4275517 call!649599)))

(declare-fun b!7114877 () Bool)

(declare-fun e!4275516 () Bool)

(declare-fun e!4275518 () Bool)

(assert (=> b!7114877 (= e!4275516 e!4275518)))

(declare-fun res!2903080 () Bool)

(assert (=> b!7114877 (=> (not res!2903080) (not e!4275518))))

(assert (=> b!7114877 (= res!2903080 call!649597)))

(declare-fun bm!649594 () Bool)

(assert (=> bm!649594 (= call!649599 (validRegex!9227 (ite c!1327801 (reg!18283 (regTwo!36420 r!11554)) (ite c!1327802 (regTwo!36421 (regTwo!36420 r!11554)) (regOne!36420 (regTwo!36420 r!11554))))))))

(declare-fun b!7114878 () Bool)

(assert (=> b!7114878 (= e!4275518 call!649598)))

(declare-fun d!2220911 () Bool)

(declare-fun res!2903079 () Bool)

(assert (=> d!2220911 (=> res!2903079 e!4275519)))

(assert (=> d!2220911 (= res!2903079 (is-ElementMatch!17954 (regTwo!36420 r!11554)))))

(assert (=> d!2220911 (= (validRegex!9227 (regTwo!36420 r!11554)) e!4275519)))

(declare-fun b!7114879 () Bool)

(assert (=> b!7114879 (= e!4275522 e!4275517)))

(declare-fun res!2903078 () Bool)

(assert (=> b!7114879 (= res!2903078 (not (nullable!7591 (reg!18283 (regTwo!36420 r!11554)))))))

(assert (=> b!7114879 (=> (not res!2903078) (not e!4275517))))

(declare-fun b!7114880 () Bool)

(declare-fun res!2903081 () Bool)

(assert (=> b!7114880 (=> res!2903081 e!4275516)))

(assert (=> b!7114880 (= res!2903081 (not (is-Concat!26799 (regTwo!36420 r!11554))))))

(assert (=> b!7114880 (= e!4275521 e!4275516)))

(declare-fun b!7114881 () Bool)

(assert (=> b!7114881 (= e!4275520 call!649597)))

(declare-fun b!7114882 () Bool)

(assert (=> b!7114882 (= e!4275522 e!4275521)))

(assert (=> b!7114882 (= c!1327802 (is-Union!17954 (regTwo!36420 r!11554)))))

(assert (= (and d!2220911 (not res!2903079)) b!7114875))

(assert (= (and b!7114875 c!1327801) b!7114879))

(assert (= (and b!7114875 (not c!1327801)) b!7114882))

(assert (= (and b!7114879 res!2903078) b!7114876))

(assert (= (and b!7114882 c!1327802) b!7114874))

(assert (= (and b!7114882 (not c!1327802)) b!7114880))

(assert (= (and b!7114874 res!2903082) b!7114881))

(assert (= (and b!7114880 (not res!2903081)) b!7114877))

(assert (= (and b!7114877 res!2903080) b!7114878))

(assert (= (or b!7114874 b!7114878) bm!649593))

(assert (= (or b!7114881 b!7114877) bm!649592))

(assert (= (or b!7114876 bm!649592) bm!649594))

(declare-fun m!7834320 () Bool)

(assert (=> bm!649593 m!7834320))

(declare-fun m!7834322 () Bool)

(assert (=> bm!649594 m!7834322))

(declare-fun m!7834324 () Bool)

(assert (=> b!7114879 m!7834324))

(assert (=> b!7114744 d!2220911))

(declare-fun b!7114898 () Bool)

(declare-fun e!4275532 () List!68915)

(assert (=> b!7114898 (= e!4275532 (Cons!68791 (h!75239 (exprs!7448 c!9994)) (++!16106 (t!382758 (exprs!7448 c!9994)) (exprs!7448 auxCtx!45))))))

(declare-fun b!7114897 () Bool)

(assert (=> b!7114897 (= e!4275532 (exprs!7448 auxCtx!45))))

(declare-fun d!2220915 () Bool)

(declare-fun e!4275531 () Bool)

(assert (=> d!2220915 e!4275531))

(declare-fun res!2903090 () Bool)

(assert (=> d!2220915 (=> (not res!2903090) (not e!4275531))))

(declare-fun lt!2560451 () List!68915)

(declare-fun content!14034 (List!68915) (Set Regex!17954))

(assert (=> d!2220915 (= res!2903090 (= (content!14034 lt!2560451) (set.union (content!14034 (exprs!7448 c!9994)) (content!14034 (exprs!7448 auxCtx!45)))))))

(assert (=> d!2220915 (= lt!2560451 e!4275532)))

(declare-fun c!1327807 () Bool)

(assert (=> d!2220915 (= c!1327807 (is-Nil!68791 (exprs!7448 c!9994)))))

(assert (=> d!2220915 (= (++!16106 (exprs!7448 c!9994) (exprs!7448 auxCtx!45)) lt!2560451)))

(declare-fun b!7114899 () Bool)

(declare-fun res!2903089 () Bool)

(assert (=> b!7114899 (=> (not res!2903089) (not e!4275531))))

(declare-fun size!41409 (List!68915) Int)

(assert (=> b!7114899 (= res!2903089 (= (size!41409 lt!2560451) (+ (size!41409 (exprs!7448 c!9994)) (size!41409 (exprs!7448 auxCtx!45)))))))

(declare-fun b!7114900 () Bool)

(assert (=> b!7114900 (= e!4275531 (or (not (= (exprs!7448 auxCtx!45) Nil!68791)) (= lt!2560451 (exprs!7448 c!9994))))))

(assert (= (and d!2220915 c!1327807) b!7114897))

(assert (= (and d!2220915 (not c!1327807)) b!7114898))

(assert (= (and d!2220915 res!2903090) b!7114899))

(assert (= (and b!7114899 res!2903089) b!7114900))

(declare-fun m!7834326 () Bool)

(assert (=> b!7114898 m!7834326))

(declare-fun m!7834328 () Bool)

(assert (=> d!2220915 m!7834328))

(declare-fun m!7834330 () Bool)

(assert (=> d!2220915 m!7834330))

(declare-fun m!7834332 () Bool)

(assert (=> d!2220915 m!7834332))

(declare-fun m!7834334 () Bool)

(assert (=> b!7114899 m!7834334))

(declare-fun m!7834336 () Bool)

(assert (=> b!7114899 m!7834336))

(declare-fun m!7834338 () Bool)

(assert (=> b!7114899 m!7834338))

(assert (=> b!7114744 d!2220915))

(declare-fun d!2220917 () Bool)

(declare-fun forall!16849 (List!68915 Int) Bool)

(assert (=> d!2220917 (forall!16849 (++!16106 (exprs!7448 c!9994) (exprs!7448 auxCtx!45)) lambda!432234)))

(declare-fun lt!2560454 () Unit!162579)

(declare-fun choose!54878 (List!68915 List!68915 Int) Unit!162579)

(assert (=> d!2220917 (= lt!2560454 (choose!54878 (exprs!7448 c!9994) (exprs!7448 auxCtx!45) lambda!432234))))

(assert (=> d!2220917 (forall!16849 (exprs!7448 c!9994) lambda!432234)))

(assert (=> d!2220917 (= (lemmaConcatPreservesForall!1239 (exprs!7448 c!9994) (exprs!7448 auxCtx!45) lambda!432234) lt!2560454)))

(declare-fun bs!1885423 () Bool)

(assert (= bs!1885423 d!2220917))

(assert (=> bs!1885423 m!7834250))

(assert (=> bs!1885423 m!7834250))

(declare-fun m!7834340 () Bool)

(assert (=> bs!1885423 m!7834340))

(declare-fun m!7834342 () Bool)

(assert (=> bs!1885423 m!7834342))

(declare-fun m!7834344 () Bool)

(assert (=> bs!1885423 m!7834344))

(assert (=> b!7114744 d!2220917))

(declare-fun d!2220919 () Bool)

(declare-fun nullableFct!2941 (Regex!17954) Bool)

(assert (=> d!2220919 (= (nullable!7591 (regOne!36420 r!11554)) (nullableFct!2941 (regOne!36420 r!11554)))))

(declare-fun bs!1885424 () Bool)

(assert (= bs!1885424 d!2220919))

(declare-fun m!7834346 () Bool)

(assert (=> bs!1885424 m!7834346))

(assert (=> b!7114745 d!2220919))

(declare-fun b!7114907 () Bool)

(declare-fun res!2903099 () Bool)

(declare-fun e!4275539 () Bool)

(assert (=> b!7114907 (=> (not res!2903099) (not e!4275539))))

(declare-fun call!649601 () Bool)

(assert (=> b!7114907 (= res!2903099 call!649601)))

(declare-fun e!4275540 () Bool)

(assert (=> b!7114907 (= e!4275540 e!4275539)))

(declare-fun b!7114908 () Bool)

(declare-fun e!4275538 () Bool)

(declare-fun e!4275541 () Bool)

(assert (=> b!7114908 (= e!4275538 e!4275541)))

(declare-fun c!1327809 () Bool)

(assert (=> b!7114908 (= c!1327809 (is-Star!17954 r!11554))))

(declare-fun bm!649595 () Bool)

(declare-fun call!649600 () Bool)

(declare-fun call!649602 () Bool)

(assert (=> bm!649595 (= call!649600 call!649602)))

(declare-fun bm!649596 () Bool)

(declare-fun c!1327810 () Bool)

(assert (=> bm!649596 (= call!649601 (validRegex!9227 (ite c!1327810 (regOne!36421 r!11554) (regTwo!36420 r!11554))))))

(declare-fun b!7114909 () Bool)

(declare-fun e!4275536 () Bool)

(assert (=> b!7114909 (= e!4275536 call!649602)))

(declare-fun b!7114910 () Bool)

(declare-fun e!4275535 () Bool)

(declare-fun e!4275537 () Bool)

(assert (=> b!7114910 (= e!4275535 e!4275537)))

(declare-fun res!2903097 () Bool)

(assert (=> b!7114910 (=> (not res!2903097) (not e!4275537))))

(assert (=> b!7114910 (= res!2903097 call!649600)))

(declare-fun bm!649597 () Bool)

(assert (=> bm!649597 (= call!649602 (validRegex!9227 (ite c!1327809 (reg!18283 r!11554) (ite c!1327810 (regTwo!36421 r!11554) (regOne!36420 r!11554)))))))

(declare-fun b!7114911 () Bool)

(assert (=> b!7114911 (= e!4275537 call!649601)))

(declare-fun d!2220921 () Bool)

(declare-fun res!2903096 () Bool)

(assert (=> d!2220921 (=> res!2903096 e!4275538)))

(assert (=> d!2220921 (= res!2903096 (is-ElementMatch!17954 r!11554))))

(assert (=> d!2220921 (= (validRegex!9227 r!11554) e!4275538)))

(declare-fun b!7114912 () Bool)

(assert (=> b!7114912 (= e!4275541 e!4275536)))

(declare-fun res!2903095 () Bool)

(assert (=> b!7114912 (= res!2903095 (not (nullable!7591 (reg!18283 r!11554))))))

(assert (=> b!7114912 (=> (not res!2903095) (not e!4275536))))

(declare-fun b!7114913 () Bool)

(declare-fun res!2903098 () Bool)

(assert (=> b!7114913 (=> res!2903098 e!4275535)))

(assert (=> b!7114913 (= res!2903098 (not (is-Concat!26799 r!11554)))))

(assert (=> b!7114913 (= e!4275540 e!4275535)))

(declare-fun b!7114914 () Bool)

(assert (=> b!7114914 (= e!4275539 call!649600)))

(declare-fun b!7114915 () Bool)

(assert (=> b!7114915 (= e!4275541 e!4275540)))

(assert (=> b!7114915 (= c!1327810 (is-Union!17954 r!11554))))

(assert (= (and d!2220921 (not res!2903096)) b!7114908))

(assert (= (and b!7114908 c!1327809) b!7114912))

(assert (= (and b!7114908 (not c!1327809)) b!7114915))

(assert (= (and b!7114912 res!2903095) b!7114909))

(assert (= (and b!7114915 c!1327810) b!7114907))

(assert (= (and b!7114915 (not c!1327810)) b!7114913))

(assert (= (and b!7114907 res!2903099) b!7114914))

(assert (= (and b!7114913 (not res!2903098)) b!7114910))

(assert (= (and b!7114910 res!2903097) b!7114911))

(assert (= (or b!7114907 b!7114911) bm!649596))

(assert (= (or b!7114914 b!7114910) bm!649595))

(assert (= (or b!7114909 bm!649595) bm!649597))

(declare-fun m!7834348 () Bool)

(assert (=> bm!649596 m!7834348))

(declare-fun m!7834350 () Bool)

(assert (=> bm!649597 m!7834350))

(declare-fun m!7834352 () Bool)

(assert (=> b!7114912 m!7834352))

(assert (=> start!692482 d!2220921))

(declare-fun bs!1885425 () Bool)

(declare-fun d!2220923 () Bool)

(assert (= bs!1885425 (and d!2220923 b!7114744)))

(declare-fun lambda!432246 () Int)

(assert (=> bs!1885425 (= lambda!432246 lambda!432234)))

(assert (=> d!2220923 (= (inv!87749 c!9994) (forall!16849 (exprs!7448 c!9994) lambda!432246))))

(declare-fun bs!1885426 () Bool)

(assert (= bs!1885426 d!2220923))

(declare-fun m!7834368 () Bool)

(assert (=> bs!1885426 m!7834368))

(assert (=> start!692482 d!2220923))

(declare-fun bs!1885427 () Bool)

(declare-fun d!2220927 () Bool)

(assert (= bs!1885427 (and d!2220927 b!7114744)))

(declare-fun lambda!432247 () Int)

(assert (=> bs!1885427 (= lambda!432247 lambda!432234)))

(declare-fun bs!1885428 () Bool)

(assert (= bs!1885428 (and d!2220927 d!2220923)))

(assert (=> bs!1885428 (= lambda!432247 lambda!432246)))

(assert (=> d!2220927 (= (inv!87749 auxCtx!45) (forall!16849 (exprs!7448 auxCtx!45) lambda!432247))))

(declare-fun bs!1885429 () Bool)

(assert (= bs!1885429 d!2220927))

(declare-fun m!7834370 () Bool)

(assert (=> bs!1885429 m!7834370))

(assert (=> start!692482 d!2220927))

(declare-fun d!2220929 () Bool)

(assert (=> d!2220929 true))

(declare-fun lambda!432252 () Int)

(declare-fun map!16290 ((Set Context!13896) Int) (Set Context!13896))

(assert (=> d!2220929 (= (appendTo!937 (derivationStepZipperDown!2461 (regOne!36420 r!11554) lt!2560416 a!1901) auxCtx!45) (map!16290 (derivationStepZipperDown!2461 (regOne!36420 r!11554) lt!2560416 a!1901) lambda!432252))))

(declare-fun bs!1885431 () Bool)

(assert (= bs!1885431 d!2220929))

(assert (=> bs!1885431 m!7834230))

(declare-fun m!7834378 () Bool)

(assert (=> bs!1885431 m!7834378))

(assert (=> b!7114737 d!2220929))

(assert (=> b!7114737 d!2220917))

(declare-fun d!2220933 () Bool)

(assert (=> d!2220933 (forall!16849 (++!16106 lt!2560414 (exprs!7448 auxCtx!45)) lambda!432234)))

(declare-fun lt!2560461 () Unit!162579)

(assert (=> d!2220933 (= lt!2560461 (choose!54878 lt!2560414 (exprs!7448 auxCtx!45) lambda!432234))))

(assert (=> d!2220933 (forall!16849 lt!2560414 lambda!432234)))

(assert (=> d!2220933 (= (lemmaConcatPreservesForall!1239 lt!2560414 (exprs!7448 auxCtx!45) lambda!432234) lt!2560461)))

(declare-fun bs!1885432 () Bool)

(assert (= bs!1885432 d!2220933))

(assert (=> bs!1885432 m!7834238))

(assert (=> bs!1885432 m!7834238))

(declare-fun m!7834380 () Bool)

(assert (=> bs!1885432 m!7834380))

(declare-fun m!7834382 () Bool)

(assert (=> bs!1885432 m!7834382))

(declare-fun m!7834384 () Bool)

(assert (=> bs!1885432 m!7834384))

(assert (=> b!7114737 d!2220933))

(declare-fun bm!649598 () Bool)

(declare-fun call!649604 () (Set Context!13896))

(declare-fun call!649603 () (Set Context!13896))

(assert (=> bm!649598 (= call!649604 call!649603)))

(declare-fun b!7114918 () Bool)

(declare-fun e!4275543 () (Set Context!13896))

(declare-fun call!649605 () (Set Context!13896))

(assert (=> b!7114918 (= e!4275543 call!649605)))

(declare-fun b!7114919 () Bool)

(declare-fun e!4275545 () (Set Context!13896))

(declare-fun call!649608 () (Set Context!13896))

(assert (=> b!7114919 (= e!4275545 (set.union call!649608 call!649604))))

(declare-fun b!7114920 () Bool)

(declare-fun e!4275542 () Bool)

(assert (=> b!7114920 (= e!4275542 (nullable!7591 (regOne!36420 (regOne!36420 r!11554))))))

(declare-fun c!1327816 () Bool)

(declare-fun bm!649599 () Bool)

(declare-fun call!649606 () List!68915)

(declare-fun c!1327813 () Bool)

(declare-fun c!1327814 () Bool)

(assert (=> bm!649599 (= call!649603 (derivationStepZipperDown!2461 (ite c!1327816 (regOne!36421 (regOne!36420 r!11554)) (ite c!1327813 (regTwo!36420 (regOne!36420 r!11554)) (ite c!1327814 (regOne!36420 (regOne!36420 r!11554)) (reg!18283 (regOne!36420 r!11554))))) (ite (or c!1327816 c!1327813) (Context!13897 (++!16106 lt!2560414 (exprs!7448 auxCtx!45))) (Context!13897 call!649606)) a!1901))))

(declare-fun call!649607 () List!68915)

(declare-fun bm!649600 () Bool)

(assert (=> bm!649600 (= call!649608 (derivationStepZipperDown!2461 (ite c!1327816 (regTwo!36421 (regOne!36420 r!11554)) (regOne!36420 (regOne!36420 r!11554))) (ite c!1327816 (Context!13897 (++!16106 lt!2560414 (exprs!7448 auxCtx!45))) (Context!13897 call!649607)) a!1901))))

(declare-fun b!7114921 () Bool)

(declare-fun e!4275544 () (Set Context!13896))

(assert (=> b!7114921 (= e!4275544 (set.union call!649603 call!649608))))

(declare-fun d!2220935 () Bool)

(declare-fun c!1327815 () Bool)

(assert (=> d!2220935 (= c!1327815 (and (is-ElementMatch!17954 (regOne!36420 r!11554)) (= (c!1327769 (regOne!36420 r!11554)) a!1901)))))

(declare-fun e!4275546 () (Set Context!13896))

(assert (=> d!2220935 (= (derivationStepZipperDown!2461 (regOne!36420 r!11554) (Context!13897 (++!16106 lt!2560414 (exprs!7448 auxCtx!45))) a!1901) e!4275546)))

(declare-fun b!7114922 () Bool)

(declare-fun e!4275547 () (Set Context!13896))

(assert (=> b!7114922 (= e!4275547 call!649605)))

(declare-fun b!7114923 () Bool)

(assert (=> b!7114923 (= c!1327813 e!4275542)))

(declare-fun res!2903100 () Bool)

(assert (=> b!7114923 (=> (not res!2903100) (not e!4275542))))

(assert (=> b!7114923 (= res!2903100 (is-Concat!26799 (regOne!36420 r!11554)))))

(assert (=> b!7114923 (= e!4275544 e!4275545)))

(declare-fun b!7114924 () Bool)

(assert (=> b!7114924 (= e!4275545 e!4275543)))

(assert (=> b!7114924 (= c!1327814 (is-Concat!26799 (regOne!36420 r!11554)))))

(declare-fun b!7114925 () Bool)

(declare-fun c!1327812 () Bool)

(assert (=> b!7114925 (= c!1327812 (is-Star!17954 (regOne!36420 r!11554)))))

(assert (=> b!7114925 (= e!4275543 e!4275547)))

(declare-fun b!7114926 () Bool)

(assert (=> b!7114926 (= e!4275547 (as set.empty (Set Context!13896)))))

(declare-fun bm!649601 () Bool)

(assert (=> bm!649601 (= call!649607 ($colon$colon!2806 (exprs!7448 (Context!13897 (++!16106 lt!2560414 (exprs!7448 auxCtx!45)))) (ite (or c!1327813 c!1327814) (regTwo!36420 (regOne!36420 r!11554)) (regOne!36420 r!11554))))))

(declare-fun bm!649602 () Bool)

(assert (=> bm!649602 (= call!649606 call!649607)))

(declare-fun b!7114927 () Bool)

(assert (=> b!7114927 (= e!4275546 (set.insert (Context!13897 (++!16106 lt!2560414 (exprs!7448 auxCtx!45))) (as set.empty (Set Context!13896))))))

(declare-fun bm!649603 () Bool)

(assert (=> bm!649603 (= call!649605 call!649604)))

(declare-fun b!7114928 () Bool)

(assert (=> b!7114928 (= e!4275546 e!4275544)))

(assert (=> b!7114928 (= c!1327816 (is-Union!17954 (regOne!36420 r!11554)))))

(assert (= (and d!2220935 c!1327815) b!7114927))

(assert (= (and d!2220935 (not c!1327815)) b!7114928))

(assert (= (and b!7114928 c!1327816) b!7114921))

(assert (= (and b!7114928 (not c!1327816)) b!7114923))

(assert (= (and b!7114923 res!2903100) b!7114920))

(assert (= (and b!7114923 c!1327813) b!7114919))

(assert (= (and b!7114923 (not c!1327813)) b!7114924))

(assert (= (and b!7114924 c!1327814) b!7114918))

(assert (= (and b!7114924 (not c!1327814)) b!7114925))

(assert (= (and b!7114925 c!1327812) b!7114922))

(assert (= (and b!7114925 (not c!1327812)) b!7114926))

(assert (= (or b!7114918 b!7114922) bm!649602))

(assert (= (or b!7114918 b!7114922) bm!649603))

(assert (= (or b!7114919 bm!649603) bm!649598))

(assert (= (or b!7114919 bm!649602) bm!649601))

(assert (= (or b!7114921 b!7114919) bm!649600))

(assert (= (or b!7114921 bm!649598) bm!649599))

(declare-fun m!7834386 () Bool)

(assert (=> bm!649601 m!7834386))

(declare-fun m!7834388 () Bool)

(assert (=> bm!649600 m!7834388))

(assert (=> b!7114920 m!7834308))

(declare-fun m!7834390 () Bool)

(assert (=> bm!649599 m!7834390))

(declare-fun m!7834392 () Bool)

(assert (=> b!7114927 m!7834392))

(assert (=> b!7114737 d!2220935))

(declare-fun b!7114930 () Bool)

(declare-fun e!4275549 () List!68915)

(assert (=> b!7114930 (= e!4275549 (Cons!68791 (h!75239 lt!2560414) (++!16106 (t!382758 lt!2560414) (exprs!7448 auxCtx!45))))))

(declare-fun b!7114929 () Bool)

(assert (=> b!7114929 (= e!4275549 (exprs!7448 auxCtx!45))))

(declare-fun d!2220937 () Bool)

(declare-fun e!4275548 () Bool)

(assert (=> d!2220937 e!4275548))

(declare-fun res!2903102 () Bool)

(assert (=> d!2220937 (=> (not res!2903102) (not e!4275548))))

(declare-fun lt!2560462 () List!68915)

(assert (=> d!2220937 (= res!2903102 (= (content!14034 lt!2560462) (set.union (content!14034 lt!2560414) (content!14034 (exprs!7448 auxCtx!45)))))))

(assert (=> d!2220937 (= lt!2560462 e!4275549)))

(declare-fun c!1327817 () Bool)

(assert (=> d!2220937 (= c!1327817 (is-Nil!68791 lt!2560414))))

(assert (=> d!2220937 (= (++!16106 lt!2560414 (exprs!7448 auxCtx!45)) lt!2560462)))

(declare-fun b!7114931 () Bool)

(declare-fun res!2903101 () Bool)

(assert (=> b!7114931 (=> (not res!2903101) (not e!4275548))))

(assert (=> b!7114931 (= res!2903101 (= (size!41409 lt!2560462) (+ (size!41409 lt!2560414) (size!41409 (exprs!7448 auxCtx!45)))))))

(declare-fun b!7114932 () Bool)

(assert (=> b!7114932 (= e!4275548 (or (not (= (exprs!7448 auxCtx!45) Nil!68791)) (= lt!2560462 lt!2560414)))))

(assert (= (and d!2220937 c!1327817) b!7114929))

(assert (= (and d!2220937 (not c!1327817)) b!7114930))

(assert (= (and d!2220937 res!2903102) b!7114931))

(assert (= (and b!7114931 res!2903101) b!7114932))

(declare-fun m!7834394 () Bool)

(assert (=> b!7114930 m!7834394))

(declare-fun m!7834396 () Bool)

(assert (=> d!2220937 m!7834396))

(declare-fun m!7834398 () Bool)

(assert (=> d!2220937 m!7834398))

(assert (=> d!2220937 m!7834332))

(declare-fun m!7834400 () Bool)

(assert (=> b!7114931 m!7834400))

(declare-fun m!7834402 () Bool)

(assert (=> b!7114931 m!7834402))

(assert (=> b!7114931 m!7834338))

(assert (=> b!7114737 d!2220937))

(declare-fun bs!1885433 () Bool)

(declare-fun d!2220939 () Bool)

(assert (= bs!1885433 (and d!2220939 b!7114744)))

(declare-fun lambda!432253 () Int)

(assert (=> bs!1885433 (= lambda!432253 lambda!432234)))

(declare-fun bs!1885434 () Bool)

(assert (= bs!1885434 (and d!2220939 d!2220923)))

(assert (=> bs!1885434 (= lambda!432253 lambda!432246)))

(declare-fun bs!1885435 () Bool)

(assert (= bs!1885435 (and d!2220939 d!2220927)))

(assert (=> bs!1885435 (= lambda!432253 lambda!432247)))

(assert (=> d!2220939 (= (inv!87749 lt!2560419) (forall!16849 (exprs!7448 lt!2560419) lambda!432253))))

(declare-fun bs!1885436 () Bool)

(assert (= bs!1885436 d!2220939))

(declare-fun m!7834404 () Bool)

(assert (=> bs!1885436 m!7834404))

(assert (=> b!7114737 d!2220939))

(declare-fun d!2220941 () Bool)

(assert (=> d!2220941 (= ($colon$colon!2806 (exprs!7448 c!9994) (regTwo!36420 r!11554)) (Cons!68791 (regTwo!36420 r!11554) (exprs!7448 c!9994)))))

(assert (=> b!7114737 d!2220941))

(declare-fun bs!1885437 () Bool)

(declare-fun d!2220943 () Bool)

(assert (= bs!1885437 (and d!2220943 b!7114744)))

(declare-fun lambda!432256 () Int)

(assert (=> bs!1885437 (= lambda!432256 lambda!432234)))

(declare-fun bs!1885438 () Bool)

(assert (= bs!1885438 (and d!2220943 d!2220923)))

(assert (=> bs!1885438 (= lambda!432256 lambda!432246)))

(declare-fun bs!1885439 () Bool)

(assert (= bs!1885439 (and d!2220943 d!2220927)))

(assert (=> bs!1885439 (= lambda!432256 lambda!432247)))

(declare-fun bs!1885440 () Bool)

(assert (= bs!1885440 (and d!2220943 d!2220939)))

(assert (=> bs!1885440 (= lambda!432256 lambda!432253)))

(assert (=> d!2220943 (= (derivationStepZipperDown!2461 (regOne!36420 r!11554) (Context!13897 (++!16106 (exprs!7448 lt!2560416) (exprs!7448 auxCtx!45))) a!1901) (appendTo!937 (derivationStepZipperDown!2461 (regOne!36420 r!11554) lt!2560416 a!1901) auxCtx!45))))

(declare-fun lt!2560468 () Unit!162579)

(assert (=> d!2220943 (= lt!2560468 (lemmaConcatPreservesForall!1239 (exprs!7448 lt!2560416) (exprs!7448 auxCtx!45) lambda!432256))))

(declare-fun lt!2560467 () Unit!162579)

(declare-fun choose!54879 (Context!13896 Regex!17954 C!36178 Context!13896) Unit!162579)

(assert (=> d!2220943 (= lt!2560467 (choose!54879 lt!2560416 (regOne!36420 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2220943 (validRegex!9227 (regOne!36420 r!11554))))

(assert (=> d!2220943 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!235 lt!2560416 (regOne!36420 r!11554) a!1901 auxCtx!45) lt!2560467)))

(declare-fun bs!1885441 () Bool)

(assert (= bs!1885441 d!2220943))

(declare-fun m!7834406 () Bool)

(assert (=> bs!1885441 m!7834406))

(assert (=> bs!1885441 m!7834230))

(assert (=> bs!1885441 m!7834230))

(assert (=> bs!1885441 m!7834236))

(declare-fun m!7834408 () Bool)

(assert (=> bs!1885441 m!7834408))

(declare-fun m!7834410 () Bool)

(assert (=> bs!1885441 m!7834410))

(declare-fun m!7834412 () Bool)

(assert (=> bs!1885441 m!7834412))

(declare-fun m!7834414 () Bool)

(assert (=> bs!1885441 m!7834414))

(assert (=> b!7114737 d!2220943))

(declare-fun bm!649604 () Bool)

(declare-fun call!649610 () (Set Context!13896))

(declare-fun call!649609 () (Set Context!13896))

(assert (=> bm!649604 (= call!649610 call!649609)))

(declare-fun b!7114955 () Bool)

(declare-fun e!4275563 () (Set Context!13896))

(declare-fun call!649611 () (Set Context!13896))

(assert (=> b!7114955 (= e!4275563 call!649611)))

(declare-fun b!7114956 () Bool)

(declare-fun e!4275565 () (Set Context!13896))

(declare-fun call!649614 () (Set Context!13896))

(assert (=> b!7114956 (= e!4275565 (set.union call!649614 call!649610))))

(declare-fun b!7114957 () Bool)

(declare-fun e!4275562 () Bool)

(assert (=> b!7114957 (= e!4275562 (nullable!7591 (regOne!36420 (regOne!36420 r!11554))))))

(declare-fun bm!649605 () Bool)

(declare-fun call!649612 () List!68915)

(declare-fun c!1327831 () Bool)

(declare-fun c!1327830 () Bool)

(declare-fun c!1327833 () Bool)

(assert (=> bm!649605 (= call!649609 (derivationStepZipperDown!2461 (ite c!1327833 (regOne!36421 (regOne!36420 r!11554)) (ite c!1327830 (regTwo!36420 (regOne!36420 r!11554)) (ite c!1327831 (regOne!36420 (regOne!36420 r!11554)) (reg!18283 (regOne!36420 r!11554))))) (ite (or c!1327833 c!1327830) lt!2560416 (Context!13897 call!649612)) a!1901))))

(declare-fun call!649613 () List!68915)

(declare-fun bm!649606 () Bool)

(assert (=> bm!649606 (= call!649614 (derivationStepZipperDown!2461 (ite c!1327833 (regTwo!36421 (regOne!36420 r!11554)) (regOne!36420 (regOne!36420 r!11554))) (ite c!1327833 lt!2560416 (Context!13897 call!649613)) a!1901))))

(declare-fun b!7114958 () Bool)

(declare-fun e!4275564 () (Set Context!13896))

(assert (=> b!7114958 (= e!4275564 (set.union call!649609 call!649614))))

(declare-fun d!2220945 () Bool)

(declare-fun c!1327832 () Bool)

(assert (=> d!2220945 (= c!1327832 (and (is-ElementMatch!17954 (regOne!36420 r!11554)) (= (c!1327769 (regOne!36420 r!11554)) a!1901)))))

(declare-fun e!4275566 () (Set Context!13896))

(assert (=> d!2220945 (= (derivationStepZipperDown!2461 (regOne!36420 r!11554) lt!2560416 a!1901) e!4275566)))

(declare-fun b!7114959 () Bool)

(declare-fun e!4275567 () (Set Context!13896))

(assert (=> b!7114959 (= e!4275567 call!649611)))

(declare-fun b!7114960 () Bool)

(assert (=> b!7114960 (= c!1327830 e!4275562)))

(declare-fun res!2903105 () Bool)

(assert (=> b!7114960 (=> (not res!2903105) (not e!4275562))))

(assert (=> b!7114960 (= res!2903105 (is-Concat!26799 (regOne!36420 r!11554)))))

(assert (=> b!7114960 (= e!4275564 e!4275565)))

(declare-fun b!7114961 () Bool)

(assert (=> b!7114961 (= e!4275565 e!4275563)))

(assert (=> b!7114961 (= c!1327831 (is-Concat!26799 (regOne!36420 r!11554)))))

(declare-fun b!7114962 () Bool)

(declare-fun c!1327829 () Bool)

(assert (=> b!7114962 (= c!1327829 (is-Star!17954 (regOne!36420 r!11554)))))

(assert (=> b!7114962 (= e!4275563 e!4275567)))

(declare-fun b!7114963 () Bool)

(assert (=> b!7114963 (= e!4275567 (as set.empty (Set Context!13896)))))

(declare-fun bm!649607 () Bool)

(assert (=> bm!649607 (= call!649613 ($colon$colon!2806 (exprs!7448 lt!2560416) (ite (or c!1327830 c!1327831) (regTwo!36420 (regOne!36420 r!11554)) (regOne!36420 r!11554))))))

(declare-fun bm!649608 () Bool)

(assert (=> bm!649608 (= call!649612 call!649613)))

(declare-fun b!7114964 () Bool)

(assert (=> b!7114964 (= e!4275566 (set.insert lt!2560416 (as set.empty (Set Context!13896))))))

(declare-fun bm!649609 () Bool)

(assert (=> bm!649609 (= call!649611 call!649610)))

(declare-fun b!7114965 () Bool)

(assert (=> b!7114965 (= e!4275566 e!4275564)))

(assert (=> b!7114965 (= c!1327833 (is-Union!17954 (regOne!36420 r!11554)))))

(assert (= (and d!2220945 c!1327832) b!7114964))

(assert (= (and d!2220945 (not c!1327832)) b!7114965))

(assert (= (and b!7114965 c!1327833) b!7114958))

(assert (= (and b!7114965 (not c!1327833)) b!7114960))

(assert (= (and b!7114960 res!2903105) b!7114957))

(assert (= (and b!7114960 c!1327830) b!7114956))

(assert (= (and b!7114960 (not c!1327830)) b!7114961))

(assert (= (and b!7114961 c!1327831) b!7114955))

(assert (= (and b!7114961 (not c!1327831)) b!7114962))

(assert (= (and b!7114962 c!1327829) b!7114959))

(assert (= (and b!7114962 (not c!1327829)) b!7114963))

(assert (= (or b!7114955 b!7114959) bm!649608))

(assert (= (or b!7114955 b!7114959) bm!649609))

(assert (= (or b!7114956 bm!649609) bm!649604))

(assert (= (or b!7114956 bm!649608) bm!649607))

(assert (= (or b!7114958 b!7114956) bm!649606))

(assert (= (or b!7114958 bm!649604) bm!649605))

(declare-fun m!7834416 () Bool)

(assert (=> bm!649607 m!7834416))

(declare-fun m!7834418 () Bool)

(assert (=> bm!649606 m!7834418))

(assert (=> b!7114957 m!7834308))

(declare-fun m!7834420 () Bool)

(assert (=> bm!649605 m!7834420))

(declare-fun m!7834422 () Bool)

(assert (=> b!7114964 m!7834422))

(assert (=> b!7114737 d!2220945))

(declare-fun b!7114970 () Bool)

(declare-fun e!4275570 () Bool)

(declare-fun tp!1957869 () Bool)

(declare-fun tp!1957870 () Bool)

(assert (=> b!7114970 (= e!4275570 (and tp!1957869 tp!1957870))))

(assert (=> b!7114743 (= tp!1957838 e!4275570)))

(assert (= (and b!7114743 (is-Cons!68791 (exprs!7448 c!9994))) b!7114970))

(declare-fun b!7114971 () Bool)

(declare-fun e!4275571 () Bool)

(declare-fun tp!1957871 () Bool)

(declare-fun tp!1957872 () Bool)

(assert (=> b!7114971 (= e!4275571 (and tp!1957871 tp!1957872))))

(assert (=> b!7114739 (= tp!1957840 e!4275571)))

(assert (= (and b!7114739 (is-Cons!68791 (exprs!7448 auxCtx!45))) b!7114971))

(declare-fun b!7114985 () Bool)

(declare-fun e!4275574 () Bool)

(declare-fun tp!1957884 () Bool)

(declare-fun tp!1957885 () Bool)

(assert (=> b!7114985 (= e!4275574 (and tp!1957884 tp!1957885))))

(declare-fun b!7114983 () Bool)

(declare-fun tp!1957883 () Bool)

(declare-fun tp!1957887 () Bool)

(assert (=> b!7114983 (= e!4275574 (and tp!1957883 tp!1957887))))

(declare-fun b!7114982 () Bool)

(assert (=> b!7114982 (= e!4275574 tp_is_empty!45141)))

(declare-fun b!7114984 () Bool)

(declare-fun tp!1957886 () Bool)

(assert (=> b!7114984 (= e!4275574 tp!1957886)))

(assert (=> b!7114740 (= tp!1957843 e!4275574)))

(assert (= (and b!7114740 (is-ElementMatch!17954 (regOne!36420 r!11554))) b!7114982))

(assert (= (and b!7114740 (is-Concat!26799 (regOne!36420 r!11554))) b!7114983))

(assert (= (and b!7114740 (is-Star!17954 (regOne!36420 r!11554))) b!7114984))

(assert (= (and b!7114740 (is-Union!17954 (regOne!36420 r!11554))) b!7114985))

(declare-fun b!7114989 () Bool)

(declare-fun e!4275575 () Bool)

(declare-fun tp!1957889 () Bool)

(declare-fun tp!1957890 () Bool)

(assert (=> b!7114989 (= e!4275575 (and tp!1957889 tp!1957890))))

(declare-fun b!7114987 () Bool)

(declare-fun tp!1957888 () Bool)

(declare-fun tp!1957892 () Bool)

(assert (=> b!7114987 (= e!4275575 (and tp!1957888 tp!1957892))))

(declare-fun b!7114986 () Bool)

(assert (=> b!7114986 (= e!4275575 tp_is_empty!45141)))

(declare-fun b!7114988 () Bool)

(declare-fun tp!1957891 () Bool)

(assert (=> b!7114988 (= e!4275575 tp!1957891)))

(assert (=> b!7114740 (= tp!1957837 e!4275575)))

(assert (= (and b!7114740 (is-ElementMatch!17954 (regTwo!36420 r!11554))) b!7114986))

(assert (= (and b!7114740 (is-Concat!26799 (regTwo!36420 r!11554))) b!7114987))

(assert (= (and b!7114740 (is-Star!17954 (regTwo!36420 r!11554))) b!7114988))

(assert (= (and b!7114740 (is-Union!17954 (regTwo!36420 r!11554))) b!7114989))

(declare-fun b!7114993 () Bool)

(declare-fun e!4275576 () Bool)

(declare-fun tp!1957894 () Bool)

(declare-fun tp!1957895 () Bool)

(assert (=> b!7114993 (= e!4275576 (and tp!1957894 tp!1957895))))

(declare-fun b!7114991 () Bool)

(declare-fun tp!1957893 () Bool)

(declare-fun tp!1957897 () Bool)

(assert (=> b!7114991 (= e!4275576 (and tp!1957893 tp!1957897))))

(declare-fun b!7114990 () Bool)

(assert (=> b!7114990 (= e!4275576 tp_is_empty!45141)))

(declare-fun b!7114992 () Bool)

(declare-fun tp!1957896 () Bool)

(assert (=> b!7114992 (= e!4275576 tp!1957896)))

(assert (=> b!7114736 (= tp!1957839 e!4275576)))

(assert (= (and b!7114736 (is-ElementMatch!17954 (reg!18283 r!11554))) b!7114990))

(assert (= (and b!7114736 (is-Concat!26799 (reg!18283 r!11554))) b!7114991))

(assert (= (and b!7114736 (is-Star!17954 (reg!18283 r!11554))) b!7114992))

(assert (= (and b!7114736 (is-Union!17954 (reg!18283 r!11554))) b!7114993))

(declare-fun b!7114997 () Bool)

(declare-fun e!4275577 () Bool)

(declare-fun tp!1957899 () Bool)

(declare-fun tp!1957900 () Bool)

(assert (=> b!7114997 (= e!4275577 (and tp!1957899 tp!1957900))))

(declare-fun b!7114995 () Bool)

(declare-fun tp!1957898 () Bool)

(declare-fun tp!1957902 () Bool)

(assert (=> b!7114995 (= e!4275577 (and tp!1957898 tp!1957902))))

(declare-fun b!7114994 () Bool)

(assert (=> b!7114994 (= e!4275577 tp_is_empty!45141)))

(declare-fun b!7114996 () Bool)

(declare-fun tp!1957901 () Bool)

(assert (=> b!7114996 (= e!4275577 tp!1957901)))

(assert (=> b!7114742 (= tp!1957842 e!4275577)))

(assert (= (and b!7114742 (is-ElementMatch!17954 (regOne!36421 r!11554))) b!7114994))

(assert (= (and b!7114742 (is-Concat!26799 (regOne!36421 r!11554))) b!7114995))

(assert (= (and b!7114742 (is-Star!17954 (regOne!36421 r!11554))) b!7114996))

(assert (= (and b!7114742 (is-Union!17954 (regOne!36421 r!11554))) b!7114997))

(declare-fun b!7115001 () Bool)

(declare-fun e!4275578 () Bool)

(declare-fun tp!1957904 () Bool)

(declare-fun tp!1957905 () Bool)

(assert (=> b!7115001 (= e!4275578 (and tp!1957904 tp!1957905))))

(declare-fun b!7114999 () Bool)

(declare-fun tp!1957903 () Bool)

(declare-fun tp!1957907 () Bool)

(assert (=> b!7114999 (= e!4275578 (and tp!1957903 tp!1957907))))

(declare-fun b!7114998 () Bool)

(assert (=> b!7114998 (= e!4275578 tp_is_empty!45141)))

(declare-fun b!7115000 () Bool)

(declare-fun tp!1957906 () Bool)

(assert (=> b!7115000 (= e!4275578 tp!1957906)))

(assert (=> b!7114742 (= tp!1957841 e!4275578)))

(assert (= (and b!7114742 (is-ElementMatch!17954 (regTwo!36421 r!11554))) b!7114998))

(assert (= (and b!7114742 (is-Concat!26799 (regTwo!36421 r!11554))) b!7114999))

(assert (= (and b!7114742 (is-Star!17954 (regTwo!36421 r!11554))) b!7115000))

(assert (= (and b!7114742 (is-Union!17954 (regTwo!36421 r!11554))) b!7115001))

(push 1)

(assert (not bm!649596))

(assert (not b!7114931))

(assert (not b!7114899))

(assert (not bm!649607))

(assert (not d!2220943))

(assert (not b!7114985))

(assert (not b!7114997))

(assert (not d!2220919))

(assert (not d!2220939))

(assert (not bm!649573))

(assert (not b!7114912))

(assert (not b!7114987))

(assert (not bm!649578))

(assert (not d!2220933))

(assert (not b!7114920))

(assert (not b!7114970))

(assert (not bm!649594))

(assert (not b!7114991))

(assert (not b!7114898))

(assert (not b!7114992))

(assert (not b!7114989))

(assert (not bm!649600))

(assert (not bm!649606))

(assert (not b!7114930))

(assert (not bm!649599))

(assert (not b!7114957))

(assert (not b!7115001))

(assert (not bm!649580))

(assert (not b!7114827))

(assert (not b!7114879))

(assert (not bm!649597))

(assert (not b!7114999))

(assert (not bm!649572))

(assert (not bm!649579))

(assert (not b!7114995))

(assert (not b!7114993))

(assert (not bm!649593))

(assert (not b!7115000))

(assert (not b!7114984))

(assert (not d!2220915))

(assert (not d!2220917))

(assert (not bm!649605))

(assert (not b!7114983))

(assert (not d!2220923))

(assert (not b!7114838))

(assert (not b!7114988))

(assert (not bm!649601))

(assert (not d!2220927))

(assert (not bm!649574))

(assert (not d!2220929))

(assert (not b!7114971))

(assert (not b!7114996))

(assert (not d!2220937))

(assert tp_is_empty!45141)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

