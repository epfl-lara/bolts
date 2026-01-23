; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!691688 () Bool)

(assert start!691688)

(declare-fun b!7105513 () Bool)

(assert (=> b!7105513 true))

(declare-fun b!7105512 () Bool)

(declare-fun e!4270587 () Bool)

(declare-fun tp!1953976 () Bool)

(assert (=> b!7105512 (= e!4270587 tp!1953976)))

(declare-fun e!4270588 () Bool)

(declare-fun e!4270586 () Bool)

(assert (=> b!7105513 (= e!4270588 e!4270586)))

(declare-fun res!2900530 () Bool)

(assert (=> b!7105513 (=> (not res!2900530) (not e!4270586))))

(declare-datatypes ((C!36088 0))(
  ( (C!36089 (val!27750 Int)) )
))
(declare-datatypes ((Regex!17909 0))(
  ( (ElementMatch!17909 (c!1325940 C!36088)) (Concat!26754 (regOne!36330 Regex!17909) (regTwo!36330 Regex!17909)) (EmptyExpr!17909) (Star!17909 (reg!18238 Regex!17909)) (EmptyLang!17909) (Union!17909 (regOne!36331 Regex!17909) (regTwo!36331 Regex!17909)) )
))
(declare-fun r!11554 () Regex!17909)

(declare-fun a!1901 () C!36088)

(get-info :version)

(assert (=> b!7105513 (= res!2900530 (and (or (not ((_ is ElementMatch!17909) r!11554)) (not (= (c!1325940 r!11554) a!1901))) ((_ is Union!17909) r!11554)))))

(declare-fun b!7105514 () Bool)

(declare-fun e!4270585 () Bool)

(declare-fun tp!1953975 () Bool)

(assert (=> b!7105514 (= e!4270585 tp!1953975)))

(declare-fun b!7105515 () Bool)

(declare-fun e!4270589 () Bool)

(declare-fun tp!1953977 () Bool)

(assert (=> b!7105515 (= e!4270589 tp!1953977)))

(declare-fun b!7105516 () Bool)

(declare-fun tp!1953974 () Bool)

(declare-fun tp!1953979 () Bool)

(assert (=> b!7105516 (= e!4270587 (and tp!1953974 tp!1953979))))

(declare-fun b!7105517 () Bool)

(declare-fun tp_is_empty!45051 () Bool)

(assert (=> b!7105517 (= e!4270587 tp_is_empty!45051)))

(declare-fun b!7105518 () Bool)

(declare-fun tp!1953978 () Bool)

(declare-fun tp!1953980 () Bool)

(assert (=> b!7105518 (= e!4270587 (and tp!1953978 tp!1953980))))

(declare-fun res!2900532 () Bool)

(assert (=> start!691688 (=> (not res!2900532) (not e!4270588))))

(declare-fun validRegex!9182 (Regex!17909) Bool)

(assert (=> start!691688 (= res!2900532 (validRegex!9182 r!11554))))

(assert (=> start!691688 e!4270588))

(assert (=> start!691688 e!4270587))

(declare-datatypes ((List!68870 0))(
  ( (Nil!68746) (Cons!68746 (h!75194 Regex!17909) (t!382687 List!68870)) )
))
(declare-datatypes ((Context!13806 0))(
  ( (Context!13807 (exprs!7403 List!68870)) )
))
(declare-fun c!9994 () Context!13806)

(declare-fun inv!87635 (Context!13806) Bool)

(assert (=> start!691688 (and (inv!87635 c!9994) e!4270589)))

(assert (=> start!691688 tp_is_empty!45051))

(declare-fun auxCtx!45 () Context!13806)

(assert (=> start!691688 (and (inv!87635 auxCtx!45) e!4270585)))

(declare-fun b!7105519 () Bool)

(declare-fun e!4270590 () Bool)

(assert (=> b!7105519 (= e!4270586 e!4270590)))

(declare-fun res!2900531 () Bool)

(assert (=> b!7105519 (=> (not res!2900531) (not e!4270590))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2558915 () (InoxSet Context!13806))

(declare-fun lt!2558923 () (InoxSet Context!13806))

(declare-fun lt!2558910 () (InoxSet Context!13806))

(assert (=> b!7105519 (= res!2900531 (= lt!2558910 ((_ map or) lt!2558915 lt!2558923)))))

(declare-fun lt!2558921 () Context!13806)

(declare-fun derivationStepZipperDown!2432 (Regex!17909 Context!13806 C!36088) (InoxSet Context!13806))

(assert (=> b!7105519 (= lt!2558910 (derivationStepZipperDown!2432 r!11554 lt!2558921 a!1901))))

(assert (=> b!7105519 (= lt!2558923 (derivationStepZipperDown!2432 (regTwo!36331 r!11554) lt!2558921 a!1901))))

(assert (=> b!7105519 (= lt!2558915 (derivationStepZipperDown!2432 (regOne!36331 r!11554) lt!2558921 a!1901))))

(declare-fun ++!16061 (List!68870 List!68870) List!68870)

(assert (=> b!7105519 (= lt!2558921 (Context!13807 (++!16061 (exprs!7403 c!9994) (exprs!7403 auxCtx!45))))))

(declare-datatypes ((Unit!162489 0))(
  ( (Unit!162490) )
))
(declare-fun lt!2558924 () Unit!162489)

(declare-fun lambda!431509 () Int)

(declare-fun lemmaConcatPreservesForall!1194 (List!68870 List!68870 Int) Unit!162489)

(assert (=> b!7105519 (= lt!2558924 (lemmaConcatPreservesForall!1194 (exprs!7403 c!9994) (exprs!7403 auxCtx!45) lambda!431509))))

(declare-fun lt!2558919 () Unit!162489)

(assert (=> b!7105519 (= lt!2558919 (lemmaConcatPreservesForall!1194 (exprs!7403 c!9994) (exprs!7403 auxCtx!45) lambda!431509))))

(declare-fun lt!2558912 () Unit!162489)

(assert (=> b!7105519 (= lt!2558912 (lemmaConcatPreservesForall!1194 (exprs!7403 c!9994) (exprs!7403 auxCtx!45) lambda!431509))))

(declare-fun b!7105520 () Bool)

(declare-fun appendTo!924 ((InoxSet Context!13806) Context!13806) (InoxSet Context!13806))

(assert (=> b!7105520 (= e!4270590 (not (= lt!2558910 (appendTo!924 (derivationStepZipperDown!2432 r!11554 c!9994 a!1901) auxCtx!45))))))

(declare-fun lt!2558916 () Unit!162489)

(assert (=> b!7105520 (= lt!2558916 (lemmaConcatPreservesForall!1194 (exprs!7403 c!9994) (exprs!7403 auxCtx!45) lambda!431509))))

(declare-fun lt!2558911 () (InoxSet Context!13806))

(declare-fun lambda!431508 () Int)

(declare-fun lt!2558922 () (InoxSet Context!13806))

(declare-fun map!16254 ((InoxSet Context!13806) Int) (InoxSet Context!13806))

(assert (=> b!7105520 (= ((_ map or) (map!16254 lt!2558911 lambda!431508) (map!16254 lt!2558922 lambda!431508)) (map!16254 ((_ map or) lt!2558911 lt!2558922) lambda!431508))))

(declare-fun lt!2558914 () Unit!162489)

(declare-fun lemmaMapAssociative!28 ((InoxSet Context!13806) (InoxSet Context!13806) Int) Unit!162489)

(assert (=> b!7105520 (= lt!2558914 (lemmaMapAssociative!28 lt!2558911 lt!2558922 lambda!431508))))

(assert (=> b!7105520 (= lt!2558923 (appendTo!924 lt!2558922 auxCtx!45))))

(assert (=> b!7105520 (= lt!2558922 (derivationStepZipperDown!2432 (regTwo!36331 r!11554) c!9994 a!1901))))

(declare-fun lt!2558913 () Unit!162489)

(assert (=> b!7105520 (= lt!2558913 (lemmaConcatPreservesForall!1194 (exprs!7403 c!9994) (exprs!7403 auxCtx!45) lambda!431509))))

(declare-fun lt!2558920 () Unit!162489)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!222 (Context!13806 Regex!17909 C!36088 Context!13806) Unit!162489)

(assert (=> b!7105520 (= lt!2558920 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!222 c!9994 (regTwo!36331 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7105520 (= lt!2558915 (appendTo!924 lt!2558911 auxCtx!45))))

(assert (=> b!7105520 (= lt!2558911 (derivationStepZipperDown!2432 (regOne!36331 r!11554) c!9994 a!1901))))

(declare-fun lt!2558918 () Unit!162489)

(assert (=> b!7105520 (= lt!2558918 (lemmaConcatPreservesForall!1194 (exprs!7403 c!9994) (exprs!7403 auxCtx!45) lambda!431509))))

(declare-fun lt!2558917 () Unit!162489)

(assert (=> b!7105520 (= lt!2558917 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!222 c!9994 (regOne!36331 r!11554) a!1901 auxCtx!45))))

(assert (= (and start!691688 res!2900532) b!7105513))

(assert (= (and b!7105513 res!2900530) b!7105519))

(assert (= (and b!7105519 res!2900531) b!7105520))

(assert (= (and start!691688 ((_ is ElementMatch!17909) r!11554)) b!7105517))

(assert (= (and start!691688 ((_ is Concat!26754) r!11554)) b!7105518))

(assert (= (and start!691688 ((_ is Star!17909) r!11554)) b!7105512))

(assert (= (and start!691688 ((_ is Union!17909) r!11554)) b!7105516))

(assert (= start!691688 b!7105515))

(assert (= start!691688 b!7105514))

(declare-fun m!7828820 () Bool)

(assert (=> start!691688 m!7828820))

(declare-fun m!7828822 () Bool)

(assert (=> start!691688 m!7828822))

(declare-fun m!7828824 () Bool)

(assert (=> start!691688 m!7828824))

(declare-fun m!7828826 () Bool)

(assert (=> b!7105519 m!7828826))

(declare-fun m!7828828 () Bool)

(assert (=> b!7105519 m!7828828))

(declare-fun m!7828830 () Bool)

(assert (=> b!7105519 m!7828830))

(assert (=> b!7105519 m!7828826))

(declare-fun m!7828832 () Bool)

(assert (=> b!7105519 m!7828832))

(assert (=> b!7105519 m!7828826))

(declare-fun m!7828834 () Bool)

(assert (=> b!7105519 m!7828834))

(declare-fun m!7828836 () Bool)

(assert (=> b!7105520 m!7828836))

(declare-fun m!7828838 () Bool)

(assert (=> b!7105520 m!7828838))

(declare-fun m!7828840 () Bool)

(assert (=> b!7105520 m!7828840))

(assert (=> b!7105520 m!7828826))

(declare-fun m!7828842 () Bool)

(assert (=> b!7105520 m!7828842))

(declare-fun m!7828844 () Bool)

(assert (=> b!7105520 m!7828844))

(declare-fun m!7828846 () Bool)

(assert (=> b!7105520 m!7828846))

(declare-fun m!7828848 () Bool)

(assert (=> b!7105520 m!7828848))

(declare-fun m!7828850 () Bool)

(assert (=> b!7105520 m!7828850))

(assert (=> b!7105520 m!7828838))

(assert (=> b!7105520 m!7828826))

(declare-fun m!7828852 () Bool)

(assert (=> b!7105520 m!7828852))

(assert (=> b!7105520 m!7828826))

(declare-fun m!7828854 () Bool)

(assert (=> b!7105520 m!7828854))

(declare-fun m!7828856 () Bool)

(assert (=> b!7105520 m!7828856))

(declare-fun m!7828858 () Bool)

(assert (=> b!7105520 m!7828858))

(check-sat tp_is_empty!45051 (not b!7105514) (not b!7105519) (not b!7105516) (not b!7105515) (not b!7105512) (not start!691688) (not b!7105518) (not b!7105520))
(check-sat)
(get-model)

(declare-fun b!7105638 () Bool)

(declare-fun e!4270661 () Bool)

(declare-fun nullable!7546 (Regex!17909) Bool)

(assert (=> b!7105638 (= e!4270661 (nullable!7546 (regOne!36330 (regTwo!36331 r!11554))))))

(declare-fun b!7105639 () Bool)

(declare-fun e!4270665 () (InoxSet Context!13806))

(declare-fun call!647676 () (InoxSet Context!13806))

(assert (=> b!7105639 (= e!4270665 call!647676)))

(declare-fun b!7105640 () Bool)

(declare-fun e!4270662 () (InoxSet Context!13806))

(assert (=> b!7105640 (= e!4270662 (store ((as const (Array Context!13806 Bool)) false) lt!2558921 true))))

(declare-fun b!7105641 () Bool)

(assert (=> b!7105641 (= e!4270665 ((as const (Array Context!13806 Bool)) false))))

(declare-fun b!7105642 () Bool)

(declare-fun c!1325992 () Bool)

(assert (=> b!7105642 (= c!1325992 ((_ is Star!17909) (regTwo!36331 r!11554)))))

(declare-fun e!4270663 () (InoxSet Context!13806))

(assert (=> b!7105642 (= e!4270663 e!4270665)))

(declare-fun b!7105643 () Bool)

(declare-fun e!4270660 () (InoxSet Context!13806))

(assert (=> b!7105643 (= e!4270662 e!4270660)))

(declare-fun c!1325993 () Bool)

(assert (=> b!7105643 (= c!1325993 ((_ is Union!17909) (regTwo!36331 r!11554)))))

(declare-fun call!647674 () (InoxSet Context!13806))

(declare-fun bm!647666 () Bool)

(declare-fun c!1325990 () Bool)

(declare-fun call!647673 () List!68870)

(declare-fun c!1325991 () Bool)

(assert (=> bm!647666 (= call!647674 (derivationStepZipperDown!2432 (ite c!1325993 (regOne!36331 (regTwo!36331 r!11554)) (ite c!1325990 (regTwo!36330 (regTwo!36331 r!11554)) (ite c!1325991 (regOne!36330 (regTwo!36331 r!11554)) (reg!18238 (regTwo!36331 r!11554))))) (ite (or c!1325993 c!1325990) lt!2558921 (Context!13807 call!647673)) a!1901))))

(declare-fun b!7105644 () Bool)

(declare-fun e!4270664 () (InoxSet Context!13806))

(assert (=> b!7105644 (= e!4270664 e!4270663)))

(assert (=> b!7105644 (= c!1325991 ((_ is Concat!26754) (regTwo!36331 r!11554)))))

(declare-fun bm!647667 () Bool)

(declare-fun call!647675 () (InoxSet Context!13806))

(assert (=> bm!647667 (= call!647675 call!647674)))

(declare-fun bm!647668 () Bool)

(assert (=> bm!647668 (= call!647676 call!647675)))

(declare-fun b!7105645 () Bool)

(declare-fun call!647672 () (InoxSet Context!13806))

(assert (=> b!7105645 (= e!4270660 ((_ map or) call!647674 call!647672))))

(declare-fun b!7105646 () Bool)

(assert (=> b!7105646 (= e!4270664 ((_ map or) call!647672 call!647675))))

(declare-fun call!647671 () List!68870)

(declare-fun bm!647669 () Bool)

(assert (=> bm!647669 (= call!647672 (derivationStepZipperDown!2432 (ite c!1325993 (regTwo!36331 (regTwo!36331 r!11554)) (regOne!36330 (regTwo!36331 r!11554))) (ite c!1325993 lt!2558921 (Context!13807 call!647671)) a!1901))))

(declare-fun d!2219212 () Bool)

(declare-fun c!1325989 () Bool)

(assert (=> d!2219212 (= c!1325989 (and ((_ is ElementMatch!17909) (regTwo!36331 r!11554)) (= (c!1325940 (regTwo!36331 r!11554)) a!1901)))))

(assert (=> d!2219212 (= (derivationStepZipperDown!2432 (regTwo!36331 r!11554) lt!2558921 a!1901) e!4270662)))

(declare-fun bm!647670 () Bool)

(assert (=> bm!647670 (= call!647673 call!647671)))

(declare-fun b!7105647 () Bool)

(assert (=> b!7105647 (= c!1325990 e!4270661)))

(declare-fun res!2900558 () Bool)

(assert (=> b!7105647 (=> (not res!2900558) (not e!4270661))))

(assert (=> b!7105647 (= res!2900558 ((_ is Concat!26754) (regTwo!36331 r!11554)))))

(assert (=> b!7105647 (= e!4270660 e!4270664)))

(declare-fun b!7105648 () Bool)

(assert (=> b!7105648 (= e!4270663 call!647676)))

(declare-fun bm!647671 () Bool)

(declare-fun $colon$colon!2773 (List!68870 Regex!17909) List!68870)

(assert (=> bm!647671 (= call!647671 ($colon$colon!2773 (exprs!7403 lt!2558921) (ite (or c!1325990 c!1325991) (regTwo!36330 (regTwo!36331 r!11554)) (regTwo!36331 r!11554))))))

(assert (= (and d!2219212 c!1325989) b!7105640))

(assert (= (and d!2219212 (not c!1325989)) b!7105643))

(assert (= (and b!7105643 c!1325993) b!7105645))

(assert (= (and b!7105643 (not c!1325993)) b!7105647))

(assert (= (and b!7105647 res!2900558) b!7105638))

(assert (= (and b!7105647 c!1325990) b!7105646))

(assert (= (and b!7105647 (not c!1325990)) b!7105644))

(assert (= (and b!7105644 c!1325991) b!7105648))

(assert (= (and b!7105644 (not c!1325991)) b!7105642))

(assert (= (and b!7105642 c!1325992) b!7105639))

(assert (= (and b!7105642 (not c!1325992)) b!7105641))

(assert (= (or b!7105648 b!7105639) bm!647670))

(assert (= (or b!7105648 b!7105639) bm!647668))

(assert (= (or b!7105646 bm!647668) bm!647667))

(assert (= (or b!7105646 bm!647670) bm!647671))

(assert (= (or b!7105645 b!7105646) bm!647669))

(assert (= (or b!7105645 bm!647667) bm!647666))

(declare-fun m!7828956 () Bool)

(assert (=> b!7105640 m!7828956))

(declare-fun m!7828958 () Bool)

(assert (=> bm!647666 m!7828958))

(declare-fun m!7828960 () Bool)

(assert (=> bm!647671 m!7828960))

(declare-fun m!7828962 () Bool)

(assert (=> bm!647669 m!7828962))

(declare-fun m!7828964 () Bool)

(assert (=> b!7105638 m!7828964))

(assert (=> b!7105519 d!2219212))

(declare-fun b!7105671 () Bool)

(declare-fun e!4270679 () Bool)

(assert (=> b!7105671 (= e!4270679 (nullable!7546 (regOne!36330 (regOne!36331 r!11554))))))

(declare-fun b!7105672 () Bool)

(declare-fun e!4270683 () (InoxSet Context!13806))

(declare-fun call!647694 () (InoxSet Context!13806))

(assert (=> b!7105672 (= e!4270683 call!647694)))

(declare-fun b!7105673 () Bool)

(declare-fun e!4270680 () (InoxSet Context!13806))

(assert (=> b!7105673 (= e!4270680 (store ((as const (Array Context!13806 Bool)) false) lt!2558921 true))))

(declare-fun b!7105674 () Bool)

(assert (=> b!7105674 (= e!4270683 ((as const (Array Context!13806 Bool)) false))))

(declare-fun b!7105675 () Bool)

(declare-fun c!1326007 () Bool)

(assert (=> b!7105675 (= c!1326007 ((_ is Star!17909) (regOne!36331 r!11554)))))

(declare-fun e!4270681 () (InoxSet Context!13806))

(assert (=> b!7105675 (= e!4270681 e!4270683)))

(declare-fun b!7105676 () Bool)

(declare-fun e!4270678 () (InoxSet Context!13806))

(assert (=> b!7105676 (= e!4270680 e!4270678)))

(declare-fun c!1326008 () Bool)

(assert (=> b!7105676 (= c!1326008 ((_ is Union!17909) (regOne!36331 r!11554)))))

(declare-fun call!647692 () (InoxSet Context!13806))

(declare-fun call!647691 () List!68870)

(declare-fun c!1326006 () Bool)

(declare-fun c!1326005 () Bool)

(declare-fun bm!647684 () Bool)

(assert (=> bm!647684 (= call!647692 (derivationStepZipperDown!2432 (ite c!1326008 (regOne!36331 (regOne!36331 r!11554)) (ite c!1326005 (regTwo!36330 (regOne!36331 r!11554)) (ite c!1326006 (regOne!36330 (regOne!36331 r!11554)) (reg!18238 (regOne!36331 r!11554))))) (ite (or c!1326008 c!1326005) lt!2558921 (Context!13807 call!647691)) a!1901))))

(declare-fun b!7105677 () Bool)

(declare-fun e!4270682 () (InoxSet Context!13806))

(assert (=> b!7105677 (= e!4270682 e!4270681)))

(assert (=> b!7105677 (= c!1326006 ((_ is Concat!26754) (regOne!36331 r!11554)))))

(declare-fun bm!647685 () Bool)

(declare-fun call!647693 () (InoxSet Context!13806))

(assert (=> bm!647685 (= call!647693 call!647692)))

(declare-fun bm!647686 () Bool)

(assert (=> bm!647686 (= call!647694 call!647693)))

(declare-fun b!7105678 () Bool)

(declare-fun call!647690 () (InoxSet Context!13806))

(assert (=> b!7105678 (= e!4270678 ((_ map or) call!647692 call!647690))))

(declare-fun b!7105679 () Bool)

(assert (=> b!7105679 (= e!4270682 ((_ map or) call!647690 call!647693))))

(declare-fun call!647689 () List!68870)

(declare-fun bm!647687 () Bool)

(assert (=> bm!647687 (= call!647690 (derivationStepZipperDown!2432 (ite c!1326008 (regTwo!36331 (regOne!36331 r!11554)) (regOne!36330 (regOne!36331 r!11554))) (ite c!1326008 lt!2558921 (Context!13807 call!647689)) a!1901))))

(declare-fun d!2219246 () Bool)

(declare-fun c!1326004 () Bool)

(assert (=> d!2219246 (= c!1326004 (and ((_ is ElementMatch!17909) (regOne!36331 r!11554)) (= (c!1325940 (regOne!36331 r!11554)) a!1901)))))

(assert (=> d!2219246 (= (derivationStepZipperDown!2432 (regOne!36331 r!11554) lt!2558921 a!1901) e!4270680)))

(declare-fun bm!647688 () Bool)

(assert (=> bm!647688 (= call!647691 call!647689)))

(declare-fun b!7105680 () Bool)

(assert (=> b!7105680 (= c!1326005 e!4270679)))

(declare-fun res!2900561 () Bool)

(assert (=> b!7105680 (=> (not res!2900561) (not e!4270679))))

(assert (=> b!7105680 (= res!2900561 ((_ is Concat!26754) (regOne!36331 r!11554)))))

(assert (=> b!7105680 (= e!4270678 e!4270682)))

(declare-fun b!7105681 () Bool)

(assert (=> b!7105681 (= e!4270681 call!647694)))

(declare-fun bm!647689 () Bool)

(assert (=> bm!647689 (= call!647689 ($colon$colon!2773 (exprs!7403 lt!2558921) (ite (or c!1326005 c!1326006) (regTwo!36330 (regOne!36331 r!11554)) (regOne!36331 r!11554))))))

(assert (= (and d!2219246 c!1326004) b!7105673))

(assert (= (and d!2219246 (not c!1326004)) b!7105676))

(assert (= (and b!7105676 c!1326008) b!7105678))

(assert (= (and b!7105676 (not c!1326008)) b!7105680))

(assert (= (and b!7105680 res!2900561) b!7105671))

(assert (= (and b!7105680 c!1326005) b!7105679))

(assert (= (and b!7105680 (not c!1326005)) b!7105677))

(assert (= (and b!7105677 c!1326006) b!7105681))

(assert (= (and b!7105677 (not c!1326006)) b!7105675))

(assert (= (and b!7105675 c!1326007) b!7105672))

(assert (= (and b!7105675 (not c!1326007)) b!7105674))

(assert (= (or b!7105681 b!7105672) bm!647688))

(assert (= (or b!7105681 b!7105672) bm!647686))

(assert (= (or b!7105679 bm!647686) bm!647685))

(assert (= (or b!7105679 bm!647688) bm!647689))

(assert (= (or b!7105678 b!7105679) bm!647687))

(assert (= (or b!7105678 bm!647685) bm!647684))

(assert (=> b!7105673 m!7828956))

(declare-fun m!7828966 () Bool)

(assert (=> bm!647684 m!7828966))

(declare-fun m!7828968 () Bool)

(assert (=> bm!647689 m!7828968))

(declare-fun m!7828970 () Bool)

(assert (=> bm!647687 m!7828970))

(declare-fun m!7828972 () Bool)

(assert (=> b!7105671 m!7828972))

(assert (=> b!7105519 d!2219246))

(declare-fun b!7105738 () Bool)

(declare-fun e!4270705 () List!68870)

(assert (=> b!7105738 (= e!4270705 (exprs!7403 auxCtx!45))))

(declare-fun lt!2558946 () List!68870)

(declare-fun e!4270706 () Bool)

(declare-fun b!7105741 () Bool)

(assert (=> b!7105741 (= e!4270706 (or (not (= (exprs!7403 auxCtx!45) Nil!68746)) (= lt!2558946 (exprs!7403 c!9994))))))

(declare-fun b!7105739 () Bool)

(assert (=> b!7105739 (= e!4270705 (Cons!68746 (h!75194 (exprs!7403 c!9994)) (++!16061 (t!382687 (exprs!7403 c!9994)) (exprs!7403 auxCtx!45))))))

(declare-fun b!7105740 () Bool)

(declare-fun res!2900573 () Bool)

(assert (=> b!7105740 (=> (not res!2900573) (not e!4270706))))

(declare-fun size!41373 (List!68870) Int)

(assert (=> b!7105740 (= res!2900573 (= (size!41373 lt!2558946) (+ (size!41373 (exprs!7403 c!9994)) (size!41373 (exprs!7403 auxCtx!45)))))))

(declare-fun d!2219248 () Bool)

(assert (=> d!2219248 e!4270706))

(declare-fun res!2900572 () Bool)

(assert (=> d!2219248 (=> (not res!2900572) (not e!4270706))))

(declare-fun content!13998 (List!68870) (InoxSet Regex!17909))

(assert (=> d!2219248 (= res!2900572 (= (content!13998 lt!2558946) ((_ map or) (content!13998 (exprs!7403 c!9994)) (content!13998 (exprs!7403 auxCtx!45)))))))

(assert (=> d!2219248 (= lt!2558946 e!4270705)))

(declare-fun c!1326014 () Bool)

(assert (=> d!2219248 (= c!1326014 ((_ is Nil!68746) (exprs!7403 c!9994)))))

(assert (=> d!2219248 (= (++!16061 (exprs!7403 c!9994) (exprs!7403 auxCtx!45)) lt!2558946)))

(assert (= (and d!2219248 c!1326014) b!7105738))

(assert (= (and d!2219248 (not c!1326014)) b!7105739))

(assert (= (and d!2219248 res!2900572) b!7105740))

(assert (= (and b!7105740 res!2900573) b!7105741))

(declare-fun m!7828988 () Bool)

(assert (=> b!7105739 m!7828988))

(declare-fun m!7828990 () Bool)

(assert (=> b!7105740 m!7828990))

(declare-fun m!7828992 () Bool)

(assert (=> b!7105740 m!7828992))

(declare-fun m!7828994 () Bool)

(assert (=> b!7105740 m!7828994))

(declare-fun m!7828996 () Bool)

(assert (=> d!2219248 m!7828996))

(declare-fun m!7828998 () Bool)

(assert (=> d!2219248 m!7828998))

(declare-fun m!7829000 () Bool)

(assert (=> d!2219248 m!7829000))

(assert (=> b!7105519 d!2219248))

(declare-fun b!7105742 () Bool)

(declare-fun e!4270708 () Bool)

(assert (=> b!7105742 (= e!4270708 (nullable!7546 (regOne!36330 r!11554)))))

(declare-fun b!7105743 () Bool)

(declare-fun e!4270712 () (InoxSet Context!13806))

(declare-fun call!647700 () (InoxSet Context!13806))

(assert (=> b!7105743 (= e!4270712 call!647700)))

(declare-fun b!7105744 () Bool)

(declare-fun e!4270709 () (InoxSet Context!13806))

(assert (=> b!7105744 (= e!4270709 (store ((as const (Array Context!13806 Bool)) false) lt!2558921 true))))

(declare-fun b!7105745 () Bool)

(assert (=> b!7105745 (= e!4270712 ((as const (Array Context!13806 Bool)) false))))

(declare-fun b!7105746 () Bool)

(declare-fun c!1326018 () Bool)

(assert (=> b!7105746 (= c!1326018 ((_ is Star!17909) r!11554))))

(declare-fun e!4270710 () (InoxSet Context!13806))

(assert (=> b!7105746 (= e!4270710 e!4270712)))

(declare-fun b!7105747 () Bool)

(declare-fun e!4270707 () (InoxSet Context!13806))

(assert (=> b!7105747 (= e!4270709 e!4270707)))

(declare-fun c!1326019 () Bool)

(assert (=> b!7105747 (= c!1326019 ((_ is Union!17909) r!11554))))

(declare-fun call!647697 () List!68870)

(declare-fun call!647698 () (InoxSet Context!13806))

(declare-fun c!1326017 () Bool)

(declare-fun bm!647690 () Bool)

(declare-fun c!1326016 () Bool)

(assert (=> bm!647690 (= call!647698 (derivationStepZipperDown!2432 (ite c!1326019 (regOne!36331 r!11554) (ite c!1326016 (regTwo!36330 r!11554) (ite c!1326017 (regOne!36330 r!11554) (reg!18238 r!11554)))) (ite (or c!1326019 c!1326016) lt!2558921 (Context!13807 call!647697)) a!1901))))

(declare-fun b!7105748 () Bool)

(declare-fun e!4270711 () (InoxSet Context!13806))

(assert (=> b!7105748 (= e!4270711 e!4270710)))

(assert (=> b!7105748 (= c!1326017 ((_ is Concat!26754) r!11554))))

(declare-fun bm!647691 () Bool)

(declare-fun call!647699 () (InoxSet Context!13806))

(assert (=> bm!647691 (= call!647699 call!647698)))

(declare-fun bm!647692 () Bool)

(assert (=> bm!647692 (= call!647700 call!647699)))

(declare-fun b!7105749 () Bool)

(declare-fun call!647696 () (InoxSet Context!13806))

(assert (=> b!7105749 (= e!4270707 ((_ map or) call!647698 call!647696))))

(declare-fun b!7105750 () Bool)

(assert (=> b!7105750 (= e!4270711 ((_ map or) call!647696 call!647699))))

(declare-fun call!647695 () List!68870)

(declare-fun bm!647693 () Bool)

(assert (=> bm!647693 (= call!647696 (derivationStepZipperDown!2432 (ite c!1326019 (regTwo!36331 r!11554) (regOne!36330 r!11554)) (ite c!1326019 lt!2558921 (Context!13807 call!647695)) a!1901))))

(declare-fun d!2219250 () Bool)

(declare-fun c!1326015 () Bool)

(assert (=> d!2219250 (= c!1326015 (and ((_ is ElementMatch!17909) r!11554) (= (c!1325940 r!11554) a!1901)))))

(assert (=> d!2219250 (= (derivationStepZipperDown!2432 r!11554 lt!2558921 a!1901) e!4270709)))

(declare-fun bm!647694 () Bool)

(assert (=> bm!647694 (= call!647697 call!647695)))

(declare-fun b!7105751 () Bool)

(assert (=> b!7105751 (= c!1326016 e!4270708)))

(declare-fun res!2900574 () Bool)

(assert (=> b!7105751 (=> (not res!2900574) (not e!4270708))))

(assert (=> b!7105751 (= res!2900574 ((_ is Concat!26754) r!11554))))

(assert (=> b!7105751 (= e!4270707 e!4270711)))

(declare-fun b!7105752 () Bool)

(assert (=> b!7105752 (= e!4270710 call!647700)))

(declare-fun bm!647695 () Bool)

(assert (=> bm!647695 (= call!647695 ($colon$colon!2773 (exprs!7403 lt!2558921) (ite (or c!1326016 c!1326017) (regTwo!36330 r!11554) r!11554)))))

(assert (= (and d!2219250 c!1326015) b!7105744))

(assert (= (and d!2219250 (not c!1326015)) b!7105747))

(assert (= (and b!7105747 c!1326019) b!7105749))

(assert (= (and b!7105747 (not c!1326019)) b!7105751))

(assert (= (and b!7105751 res!2900574) b!7105742))

(assert (= (and b!7105751 c!1326016) b!7105750))

(assert (= (and b!7105751 (not c!1326016)) b!7105748))

(assert (= (and b!7105748 c!1326017) b!7105752))

(assert (= (and b!7105748 (not c!1326017)) b!7105746))

(assert (= (and b!7105746 c!1326018) b!7105743))

(assert (= (and b!7105746 (not c!1326018)) b!7105745))

(assert (= (or b!7105752 b!7105743) bm!647694))

(assert (= (or b!7105752 b!7105743) bm!647692))

(assert (= (or b!7105750 bm!647692) bm!647691))

(assert (= (or b!7105750 bm!647694) bm!647695))

(assert (= (or b!7105749 b!7105750) bm!647693))

(assert (= (or b!7105749 bm!647691) bm!647690))

(assert (=> b!7105744 m!7828956))

(declare-fun m!7829002 () Bool)

(assert (=> bm!647690 m!7829002))

(declare-fun m!7829004 () Bool)

(assert (=> bm!647695 m!7829004))

(declare-fun m!7829006 () Bool)

(assert (=> bm!647693 m!7829006))

(declare-fun m!7829008 () Bool)

(assert (=> b!7105742 m!7829008))

(assert (=> b!7105519 d!2219250))

(declare-fun d!2219252 () Bool)

(declare-fun forall!16812 (List!68870 Int) Bool)

(assert (=> d!2219252 (forall!16812 (++!16061 (exprs!7403 c!9994) (exprs!7403 auxCtx!45)) lambda!431509)))

(declare-fun lt!2558949 () Unit!162489)

(declare-fun choose!54812 (List!68870 List!68870 Int) Unit!162489)

(assert (=> d!2219252 (= lt!2558949 (choose!54812 (exprs!7403 c!9994) (exprs!7403 auxCtx!45) lambda!431509))))

(assert (=> d!2219252 (forall!16812 (exprs!7403 c!9994) lambda!431509)))

(assert (=> d!2219252 (= (lemmaConcatPreservesForall!1194 (exprs!7403 c!9994) (exprs!7403 auxCtx!45) lambda!431509) lt!2558949)))

(declare-fun bs!1884677 () Bool)

(assert (= bs!1884677 d!2219252))

(assert (=> bs!1884677 m!7828832))

(assert (=> bs!1884677 m!7828832))

(declare-fun m!7829010 () Bool)

(assert (=> bs!1884677 m!7829010))

(declare-fun m!7829012 () Bool)

(assert (=> bs!1884677 m!7829012))

(declare-fun m!7829014 () Bool)

(assert (=> bs!1884677 m!7829014))

(assert (=> b!7105519 d!2219252))

(declare-fun bs!1884678 () Bool)

(declare-fun d!2219254 () Bool)

(assert (= bs!1884678 (and d!2219254 b!7105513)))

(declare-fun lambda!431529 () Int)

(assert (=> bs!1884678 (= lambda!431529 lambda!431508)))

(assert (=> d!2219254 true))

(assert (=> d!2219254 (= (appendTo!924 lt!2558922 auxCtx!45) (map!16254 lt!2558922 lambda!431529))))

(declare-fun bs!1884679 () Bool)

(assert (= bs!1884679 d!2219254))

(declare-fun m!7829016 () Bool)

(assert (=> bs!1884679 m!7829016))

(assert (=> b!7105520 d!2219254))

(declare-fun d!2219256 () Bool)

(declare-fun choose!54813 ((InoxSet Context!13806) Int) (InoxSet Context!13806))

(assert (=> d!2219256 (= (map!16254 lt!2558922 lambda!431508) (choose!54813 lt!2558922 lambda!431508))))

(declare-fun bs!1884680 () Bool)

(assert (= bs!1884680 d!2219256))

(declare-fun m!7829018 () Bool)

(assert (=> bs!1884680 m!7829018))

(assert (=> b!7105520 d!2219256))

(declare-fun d!2219258 () Bool)

(assert (=> d!2219258 (= (map!16254 ((_ map or) lt!2558911 lt!2558922) lambda!431508) (choose!54813 ((_ map or) lt!2558911 lt!2558922) lambda!431508))))

(declare-fun bs!1884681 () Bool)

(assert (= bs!1884681 d!2219258))

(declare-fun m!7829020 () Bool)

(assert (=> bs!1884681 m!7829020))

(assert (=> b!7105520 d!2219258))

(declare-fun b!7105753 () Bool)

(declare-fun e!4270714 () Bool)

(assert (=> b!7105753 (= e!4270714 (nullable!7546 (regOne!36330 r!11554)))))

(declare-fun b!7105754 () Bool)

(declare-fun e!4270718 () (InoxSet Context!13806))

(declare-fun call!647706 () (InoxSet Context!13806))

(assert (=> b!7105754 (= e!4270718 call!647706)))

(declare-fun b!7105755 () Bool)

(declare-fun e!4270715 () (InoxSet Context!13806))

(assert (=> b!7105755 (= e!4270715 (store ((as const (Array Context!13806 Bool)) false) c!9994 true))))

(declare-fun b!7105756 () Bool)

(assert (=> b!7105756 (= e!4270718 ((as const (Array Context!13806 Bool)) false))))

(declare-fun b!7105757 () Bool)

(declare-fun c!1326024 () Bool)

(assert (=> b!7105757 (= c!1326024 ((_ is Star!17909) r!11554))))

(declare-fun e!4270716 () (InoxSet Context!13806))

(assert (=> b!7105757 (= e!4270716 e!4270718)))

(declare-fun b!7105758 () Bool)

(declare-fun e!4270713 () (InoxSet Context!13806))

(assert (=> b!7105758 (= e!4270715 e!4270713)))

(declare-fun c!1326025 () Bool)

(assert (=> b!7105758 (= c!1326025 ((_ is Union!17909) r!11554))))

(declare-fun call!647703 () List!68870)

(declare-fun call!647704 () (InoxSet Context!13806))

(declare-fun c!1326023 () Bool)

(declare-fun c!1326022 () Bool)

(declare-fun bm!647696 () Bool)

(assert (=> bm!647696 (= call!647704 (derivationStepZipperDown!2432 (ite c!1326025 (regOne!36331 r!11554) (ite c!1326022 (regTwo!36330 r!11554) (ite c!1326023 (regOne!36330 r!11554) (reg!18238 r!11554)))) (ite (or c!1326025 c!1326022) c!9994 (Context!13807 call!647703)) a!1901))))

(declare-fun b!7105759 () Bool)

(declare-fun e!4270717 () (InoxSet Context!13806))

(assert (=> b!7105759 (= e!4270717 e!4270716)))

(assert (=> b!7105759 (= c!1326023 ((_ is Concat!26754) r!11554))))

(declare-fun bm!647697 () Bool)

(declare-fun call!647705 () (InoxSet Context!13806))

(assert (=> bm!647697 (= call!647705 call!647704)))

(declare-fun bm!647698 () Bool)

(assert (=> bm!647698 (= call!647706 call!647705)))

(declare-fun b!7105760 () Bool)

(declare-fun call!647702 () (InoxSet Context!13806))

(assert (=> b!7105760 (= e!4270713 ((_ map or) call!647704 call!647702))))

(declare-fun b!7105761 () Bool)

(assert (=> b!7105761 (= e!4270717 ((_ map or) call!647702 call!647705))))

(declare-fun call!647701 () List!68870)

(declare-fun bm!647699 () Bool)

(assert (=> bm!647699 (= call!647702 (derivationStepZipperDown!2432 (ite c!1326025 (regTwo!36331 r!11554) (regOne!36330 r!11554)) (ite c!1326025 c!9994 (Context!13807 call!647701)) a!1901))))

(declare-fun d!2219260 () Bool)

(declare-fun c!1326021 () Bool)

(assert (=> d!2219260 (= c!1326021 (and ((_ is ElementMatch!17909) r!11554) (= (c!1325940 r!11554) a!1901)))))

(assert (=> d!2219260 (= (derivationStepZipperDown!2432 r!11554 c!9994 a!1901) e!4270715)))

(declare-fun bm!647700 () Bool)

(assert (=> bm!647700 (= call!647703 call!647701)))

(declare-fun b!7105762 () Bool)

(assert (=> b!7105762 (= c!1326022 e!4270714)))

(declare-fun res!2900575 () Bool)

(assert (=> b!7105762 (=> (not res!2900575) (not e!4270714))))

(assert (=> b!7105762 (= res!2900575 ((_ is Concat!26754) r!11554))))

(assert (=> b!7105762 (= e!4270713 e!4270717)))

(declare-fun b!7105763 () Bool)

(assert (=> b!7105763 (= e!4270716 call!647706)))

(declare-fun bm!647701 () Bool)

(assert (=> bm!647701 (= call!647701 ($colon$colon!2773 (exprs!7403 c!9994) (ite (or c!1326022 c!1326023) (regTwo!36330 r!11554) r!11554)))))

(assert (= (and d!2219260 c!1326021) b!7105755))

(assert (= (and d!2219260 (not c!1326021)) b!7105758))

(assert (= (and b!7105758 c!1326025) b!7105760))

(assert (= (and b!7105758 (not c!1326025)) b!7105762))

(assert (= (and b!7105762 res!2900575) b!7105753))

(assert (= (and b!7105762 c!1326022) b!7105761))

(assert (= (and b!7105762 (not c!1326022)) b!7105759))

(assert (= (and b!7105759 c!1326023) b!7105763))

(assert (= (and b!7105759 (not c!1326023)) b!7105757))

(assert (= (and b!7105757 c!1326024) b!7105754))

(assert (= (and b!7105757 (not c!1326024)) b!7105756))

(assert (= (or b!7105763 b!7105754) bm!647700))

(assert (= (or b!7105763 b!7105754) bm!647698))

(assert (= (or b!7105761 bm!647698) bm!647697))

(assert (= (or b!7105761 bm!647700) bm!647701))

(assert (= (or b!7105760 b!7105761) bm!647699))

(assert (= (or b!7105760 bm!647697) bm!647696))

(declare-fun m!7829022 () Bool)

(assert (=> b!7105755 m!7829022))

(declare-fun m!7829024 () Bool)

(assert (=> bm!647696 m!7829024))

(declare-fun m!7829026 () Bool)

(assert (=> bm!647701 m!7829026))

(declare-fun m!7829028 () Bool)

(assert (=> bm!647699 m!7829028))

(assert (=> b!7105753 m!7829008))

(assert (=> b!7105520 d!2219260))

(declare-fun d!2219262 () Bool)

(assert (=> d!2219262 (= (map!16254 lt!2558911 lambda!431508) (choose!54813 lt!2558911 lambda!431508))))

(declare-fun bs!1884682 () Bool)

(assert (= bs!1884682 d!2219262))

(declare-fun m!7829030 () Bool)

(assert (=> bs!1884682 m!7829030))

(assert (=> b!7105520 d!2219262))

(declare-fun bs!1884683 () Bool)

(declare-fun d!2219264 () Bool)

(assert (= bs!1884683 (and d!2219264 b!7105519)))

(declare-fun lambda!431532 () Int)

(assert (=> bs!1884683 (= lambda!431532 lambda!431509)))

(assert (=> d!2219264 (= (derivationStepZipperDown!2432 (regTwo!36331 r!11554) (Context!13807 (++!16061 (exprs!7403 c!9994) (exprs!7403 auxCtx!45))) a!1901) (appendTo!924 (derivationStepZipperDown!2432 (regTwo!36331 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-fun lt!2558957 () Unit!162489)

(assert (=> d!2219264 (= lt!2558957 (lemmaConcatPreservesForall!1194 (exprs!7403 c!9994) (exprs!7403 auxCtx!45) lambda!431532))))

(declare-fun lt!2558956 () Unit!162489)

(declare-fun choose!54814 (Context!13806 Regex!17909 C!36088 Context!13806) Unit!162489)

(assert (=> d!2219264 (= lt!2558956 (choose!54814 c!9994 (regTwo!36331 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2219264 (validRegex!9182 (regTwo!36331 r!11554))))

(assert (=> d!2219264 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!222 c!9994 (regTwo!36331 r!11554) a!1901 auxCtx!45) lt!2558956)))

(declare-fun bs!1884684 () Bool)

(assert (= bs!1884684 d!2219264))

(assert (=> bs!1884684 m!7828854))

(assert (=> bs!1884684 m!7828854))

(declare-fun m!7829032 () Bool)

(assert (=> bs!1884684 m!7829032))

(declare-fun m!7829034 () Bool)

(assert (=> bs!1884684 m!7829034))

(declare-fun m!7829036 () Bool)

(assert (=> bs!1884684 m!7829036))

(declare-fun m!7829038 () Bool)

(assert (=> bs!1884684 m!7829038))

(assert (=> bs!1884684 m!7828832))

(declare-fun m!7829040 () Bool)

(assert (=> bs!1884684 m!7829040))

(assert (=> b!7105520 d!2219264))

(declare-fun d!2219266 () Bool)

(assert (=> d!2219266 (= ((_ map or) (map!16254 lt!2558911 lambda!431508) (map!16254 lt!2558922 lambda!431508)) (map!16254 ((_ map or) lt!2558911 lt!2558922) lambda!431508))))

(declare-fun lt!2558960 () Unit!162489)

(declare-fun choose!54815 ((InoxSet Context!13806) (InoxSet Context!13806) Int) Unit!162489)

(assert (=> d!2219266 (= lt!2558960 (choose!54815 lt!2558911 lt!2558922 lambda!431508))))

(assert (=> d!2219266 (= (lemmaMapAssociative!28 lt!2558911 lt!2558922 lambda!431508) lt!2558960)))

(declare-fun bs!1884685 () Bool)

(assert (= bs!1884685 d!2219266))

(assert (=> bs!1884685 m!7828848))

(assert (=> bs!1884685 m!7828844))

(assert (=> bs!1884685 m!7828856))

(declare-fun m!7829042 () Bool)

(assert (=> bs!1884685 m!7829042))

(assert (=> b!7105520 d!2219266))

(declare-fun b!7105764 () Bool)

(declare-fun e!4270720 () Bool)

(assert (=> b!7105764 (= e!4270720 (nullable!7546 (regOne!36330 (regOne!36331 r!11554))))))

(declare-fun b!7105765 () Bool)

(declare-fun e!4270724 () (InoxSet Context!13806))

(declare-fun call!647712 () (InoxSet Context!13806))

(assert (=> b!7105765 (= e!4270724 call!647712)))

(declare-fun b!7105766 () Bool)

(declare-fun e!4270721 () (InoxSet Context!13806))

(assert (=> b!7105766 (= e!4270721 (store ((as const (Array Context!13806 Bool)) false) c!9994 true))))

(declare-fun b!7105767 () Bool)

(assert (=> b!7105767 (= e!4270724 ((as const (Array Context!13806 Bool)) false))))

(declare-fun b!7105768 () Bool)

(declare-fun c!1326030 () Bool)

(assert (=> b!7105768 (= c!1326030 ((_ is Star!17909) (regOne!36331 r!11554)))))

(declare-fun e!4270722 () (InoxSet Context!13806))

(assert (=> b!7105768 (= e!4270722 e!4270724)))

(declare-fun b!7105769 () Bool)

(declare-fun e!4270719 () (InoxSet Context!13806))

(assert (=> b!7105769 (= e!4270721 e!4270719)))

(declare-fun c!1326031 () Bool)

(assert (=> b!7105769 (= c!1326031 ((_ is Union!17909) (regOne!36331 r!11554)))))

(declare-fun c!1326028 () Bool)

(declare-fun bm!647702 () Bool)

(declare-fun call!647710 () (InoxSet Context!13806))

(declare-fun c!1326029 () Bool)

(declare-fun call!647709 () List!68870)

(assert (=> bm!647702 (= call!647710 (derivationStepZipperDown!2432 (ite c!1326031 (regOne!36331 (regOne!36331 r!11554)) (ite c!1326028 (regTwo!36330 (regOne!36331 r!11554)) (ite c!1326029 (regOne!36330 (regOne!36331 r!11554)) (reg!18238 (regOne!36331 r!11554))))) (ite (or c!1326031 c!1326028) c!9994 (Context!13807 call!647709)) a!1901))))

(declare-fun b!7105770 () Bool)

(declare-fun e!4270723 () (InoxSet Context!13806))

(assert (=> b!7105770 (= e!4270723 e!4270722)))

(assert (=> b!7105770 (= c!1326029 ((_ is Concat!26754) (regOne!36331 r!11554)))))

(declare-fun bm!647703 () Bool)

(declare-fun call!647711 () (InoxSet Context!13806))

(assert (=> bm!647703 (= call!647711 call!647710)))

(declare-fun bm!647704 () Bool)

(assert (=> bm!647704 (= call!647712 call!647711)))

(declare-fun b!7105771 () Bool)

(declare-fun call!647708 () (InoxSet Context!13806))

(assert (=> b!7105771 (= e!4270719 ((_ map or) call!647710 call!647708))))

(declare-fun b!7105772 () Bool)

(assert (=> b!7105772 (= e!4270723 ((_ map or) call!647708 call!647711))))

(declare-fun call!647707 () List!68870)

(declare-fun bm!647705 () Bool)

(assert (=> bm!647705 (= call!647708 (derivationStepZipperDown!2432 (ite c!1326031 (regTwo!36331 (regOne!36331 r!11554)) (regOne!36330 (regOne!36331 r!11554))) (ite c!1326031 c!9994 (Context!13807 call!647707)) a!1901))))

(declare-fun d!2219268 () Bool)

(declare-fun c!1326027 () Bool)

(assert (=> d!2219268 (= c!1326027 (and ((_ is ElementMatch!17909) (regOne!36331 r!11554)) (= (c!1325940 (regOne!36331 r!11554)) a!1901)))))

(assert (=> d!2219268 (= (derivationStepZipperDown!2432 (regOne!36331 r!11554) c!9994 a!1901) e!4270721)))

(declare-fun bm!647706 () Bool)

(assert (=> bm!647706 (= call!647709 call!647707)))

(declare-fun b!7105773 () Bool)

(assert (=> b!7105773 (= c!1326028 e!4270720)))

(declare-fun res!2900576 () Bool)

(assert (=> b!7105773 (=> (not res!2900576) (not e!4270720))))

(assert (=> b!7105773 (= res!2900576 ((_ is Concat!26754) (regOne!36331 r!11554)))))

(assert (=> b!7105773 (= e!4270719 e!4270723)))

(declare-fun b!7105774 () Bool)

(assert (=> b!7105774 (= e!4270722 call!647712)))

(declare-fun bm!647707 () Bool)

(assert (=> bm!647707 (= call!647707 ($colon$colon!2773 (exprs!7403 c!9994) (ite (or c!1326028 c!1326029) (regTwo!36330 (regOne!36331 r!11554)) (regOne!36331 r!11554))))))

(assert (= (and d!2219268 c!1326027) b!7105766))

(assert (= (and d!2219268 (not c!1326027)) b!7105769))

(assert (= (and b!7105769 c!1326031) b!7105771))

(assert (= (and b!7105769 (not c!1326031)) b!7105773))

(assert (= (and b!7105773 res!2900576) b!7105764))

(assert (= (and b!7105773 c!1326028) b!7105772))

(assert (= (and b!7105773 (not c!1326028)) b!7105770))

(assert (= (and b!7105770 c!1326029) b!7105774))

(assert (= (and b!7105770 (not c!1326029)) b!7105768))

(assert (= (and b!7105768 c!1326030) b!7105765))

(assert (= (and b!7105768 (not c!1326030)) b!7105767))

(assert (= (or b!7105774 b!7105765) bm!647706))

(assert (= (or b!7105774 b!7105765) bm!647704))

(assert (= (or b!7105772 bm!647704) bm!647703))

(assert (= (or b!7105772 bm!647706) bm!647707))

(assert (= (or b!7105771 b!7105772) bm!647705))

(assert (= (or b!7105771 bm!647703) bm!647702))

(assert (=> b!7105766 m!7829022))

(declare-fun m!7829044 () Bool)

(assert (=> bm!647702 m!7829044))

(declare-fun m!7829046 () Bool)

(assert (=> bm!647707 m!7829046))

(declare-fun m!7829048 () Bool)

(assert (=> bm!647705 m!7829048))

(assert (=> b!7105764 m!7828972))

(assert (=> b!7105520 d!2219268))

(assert (=> b!7105520 d!2219252))

(declare-fun bs!1884686 () Bool)

(declare-fun d!2219270 () Bool)

(assert (= bs!1884686 (and d!2219270 b!7105513)))

(declare-fun lambda!431533 () Int)

(assert (=> bs!1884686 (= lambda!431533 lambda!431508)))

(declare-fun bs!1884687 () Bool)

(assert (= bs!1884687 (and d!2219270 d!2219254)))

(assert (=> bs!1884687 (= lambda!431533 lambda!431529)))

(assert (=> d!2219270 true))

(assert (=> d!2219270 (= (appendTo!924 lt!2558911 auxCtx!45) (map!16254 lt!2558911 lambda!431533))))

(declare-fun bs!1884688 () Bool)

(assert (= bs!1884688 d!2219270))

(declare-fun m!7829050 () Bool)

(assert (=> bs!1884688 m!7829050))

(assert (=> b!7105520 d!2219270))

(declare-fun bs!1884689 () Bool)

(declare-fun d!2219272 () Bool)

(assert (= bs!1884689 (and d!2219272 b!7105519)))

(declare-fun lambda!431534 () Int)

(assert (=> bs!1884689 (= lambda!431534 lambda!431509)))

(declare-fun bs!1884690 () Bool)

(assert (= bs!1884690 (and d!2219272 d!2219264)))

(assert (=> bs!1884690 (= lambda!431534 lambda!431532)))

(assert (=> d!2219272 (= (derivationStepZipperDown!2432 (regOne!36331 r!11554) (Context!13807 (++!16061 (exprs!7403 c!9994) (exprs!7403 auxCtx!45))) a!1901) (appendTo!924 (derivationStepZipperDown!2432 (regOne!36331 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-fun lt!2558962 () Unit!162489)

(assert (=> d!2219272 (= lt!2558962 (lemmaConcatPreservesForall!1194 (exprs!7403 c!9994) (exprs!7403 auxCtx!45) lambda!431534))))

(declare-fun lt!2558961 () Unit!162489)

(assert (=> d!2219272 (= lt!2558961 (choose!54814 c!9994 (regOne!36331 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2219272 (validRegex!9182 (regOne!36331 r!11554))))

(assert (=> d!2219272 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!222 c!9994 (regOne!36331 r!11554) a!1901 auxCtx!45) lt!2558961)))

(declare-fun bs!1884691 () Bool)

(assert (= bs!1884691 d!2219272))

(assert (=> bs!1884691 m!7828846))

(assert (=> bs!1884691 m!7828846))

(declare-fun m!7829052 () Bool)

(assert (=> bs!1884691 m!7829052))

(declare-fun m!7829054 () Bool)

(assert (=> bs!1884691 m!7829054))

(declare-fun m!7829056 () Bool)

(assert (=> bs!1884691 m!7829056))

(declare-fun m!7829058 () Bool)

(assert (=> bs!1884691 m!7829058))

(assert (=> bs!1884691 m!7828832))

(declare-fun m!7829060 () Bool)

(assert (=> bs!1884691 m!7829060))

(assert (=> b!7105520 d!2219272))

(declare-fun bs!1884692 () Bool)

(declare-fun d!2219274 () Bool)

(assert (= bs!1884692 (and d!2219274 b!7105513)))

(declare-fun lambda!431535 () Int)

(assert (=> bs!1884692 (= lambda!431535 lambda!431508)))

(declare-fun bs!1884693 () Bool)

(assert (= bs!1884693 (and d!2219274 d!2219254)))

(assert (=> bs!1884693 (= lambda!431535 lambda!431529)))

(declare-fun bs!1884694 () Bool)

(assert (= bs!1884694 (and d!2219274 d!2219270)))

(assert (=> bs!1884694 (= lambda!431535 lambda!431533)))

(assert (=> d!2219274 true))

(assert (=> d!2219274 (= (appendTo!924 (derivationStepZipperDown!2432 r!11554 c!9994 a!1901) auxCtx!45) (map!16254 (derivationStepZipperDown!2432 r!11554 c!9994 a!1901) lambda!431535))))

(declare-fun bs!1884695 () Bool)

(assert (= bs!1884695 d!2219274))

(assert (=> bs!1884695 m!7828838))

(declare-fun m!7829062 () Bool)

(assert (=> bs!1884695 m!7829062))

(assert (=> b!7105520 d!2219274))

(declare-fun b!7105775 () Bool)

(declare-fun e!4270726 () Bool)

(assert (=> b!7105775 (= e!4270726 (nullable!7546 (regOne!36330 (regTwo!36331 r!11554))))))

(declare-fun b!7105776 () Bool)

(declare-fun e!4270730 () (InoxSet Context!13806))

(declare-fun call!647718 () (InoxSet Context!13806))

(assert (=> b!7105776 (= e!4270730 call!647718)))

(declare-fun b!7105777 () Bool)

(declare-fun e!4270727 () (InoxSet Context!13806))

(assert (=> b!7105777 (= e!4270727 (store ((as const (Array Context!13806 Bool)) false) c!9994 true))))

(declare-fun b!7105778 () Bool)

(assert (=> b!7105778 (= e!4270730 ((as const (Array Context!13806 Bool)) false))))

(declare-fun b!7105779 () Bool)

(declare-fun c!1326035 () Bool)

(assert (=> b!7105779 (= c!1326035 ((_ is Star!17909) (regTwo!36331 r!11554)))))

(declare-fun e!4270728 () (InoxSet Context!13806))

(assert (=> b!7105779 (= e!4270728 e!4270730)))

(declare-fun b!7105780 () Bool)

(declare-fun e!4270725 () (InoxSet Context!13806))

(assert (=> b!7105780 (= e!4270727 e!4270725)))

(declare-fun c!1326036 () Bool)

(assert (=> b!7105780 (= c!1326036 ((_ is Union!17909) (regTwo!36331 r!11554)))))

(declare-fun bm!647708 () Bool)

(declare-fun call!647716 () (InoxSet Context!13806))

(declare-fun c!1326034 () Bool)

(declare-fun c!1326033 () Bool)

(declare-fun call!647715 () List!68870)

(assert (=> bm!647708 (= call!647716 (derivationStepZipperDown!2432 (ite c!1326036 (regOne!36331 (regTwo!36331 r!11554)) (ite c!1326033 (regTwo!36330 (regTwo!36331 r!11554)) (ite c!1326034 (regOne!36330 (regTwo!36331 r!11554)) (reg!18238 (regTwo!36331 r!11554))))) (ite (or c!1326036 c!1326033) c!9994 (Context!13807 call!647715)) a!1901))))

(declare-fun b!7105781 () Bool)

(declare-fun e!4270729 () (InoxSet Context!13806))

(assert (=> b!7105781 (= e!4270729 e!4270728)))

(assert (=> b!7105781 (= c!1326034 ((_ is Concat!26754) (regTwo!36331 r!11554)))))

(declare-fun bm!647709 () Bool)

(declare-fun call!647717 () (InoxSet Context!13806))

(assert (=> bm!647709 (= call!647717 call!647716)))

(declare-fun bm!647710 () Bool)

(assert (=> bm!647710 (= call!647718 call!647717)))

(declare-fun b!7105782 () Bool)

(declare-fun call!647714 () (InoxSet Context!13806))

(assert (=> b!7105782 (= e!4270725 ((_ map or) call!647716 call!647714))))

(declare-fun b!7105783 () Bool)

(assert (=> b!7105783 (= e!4270729 ((_ map or) call!647714 call!647717))))

(declare-fun bm!647711 () Bool)

(declare-fun call!647713 () List!68870)

(assert (=> bm!647711 (= call!647714 (derivationStepZipperDown!2432 (ite c!1326036 (regTwo!36331 (regTwo!36331 r!11554)) (regOne!36330 (regTwo!36331 r!11554))) (ite c!1326036 c!9994 (Context!13807 call!647713)) a!1901))))

(declare-fun d!2219276 () Bool)

(declare-fun c!1326032 () Bool)

(assert (=> d!2219276 (= c!1326032 (and ((_ is ElementMatch!17909) (regTwo!36331 r!11554)) (= (c!1325940 (regTwo!36331 r!11554)) a!1901)))))

(assert (=> d!2219276 (= (derivationStepZipperDown!2432 (regTwo!36331 r!11554) c!9994 a!1901) e!4270727)))

(declare-fun bm!647712 () Bool)

(assert (=> bm!647712 (= call!647715 call!647713)))

(declare-fun b!7105784 () Bool)

(assert (=> b!7105784 (= c!1326033 e!4270726)))

(declare-fun res!2900577 () Bool)

(assert (=> b!7105784 (=> (not res!2900577) (not e!4270726))))

(assert (=> b!7105784 (= res!2900577 ((_ is Concat!26754) (regTwo!36331 r!11554)))))

(assert (=> b!7105784 (= e!4270725 e!4270729)))

(declare-fun b!7105785 () Bool)

(assert (=> b!7105785 (= e!4270728 call!647718)))

(declare-fun bm!647713 () Bool)

(assert (=> bm!647713 (= call!647713 ($colon$colon!2773 (exprs!7403 c!9994) (ite (or c!1326033 c!1326034) (regTwo!36330 (regTwo!36331 r!11554)) (regTwo!36331 r!11554))))))

(assert (= (and d!2219276 c!1326032) b!7105777))

(assert (= (and d!2219276 (not c!1326032)) b!7105780))

(assert (= (and b!7105780 c!1326036) b!7105782))

(assert (= (and b!7105780 (not c!1326036)) b!7105784))

(assert (= (and b!7105784 res!2900577) b!7105775))

(assert (= (and b!7105784 c!1326033) b!7105783))

(assert (= (and b!7105784 (not c!1326033)) b!7105781))

(assert (= (and b!7105781 c!1326034) b!7105785))

(assert (= (and b!7105781 (not c!1326034)) b!7105779))

(assert (= (and b!7105779 c!1326035) b!7105776))

(assert (= (and b!7105779 (not c!1326035)) b!7105778))

(assert (= (or b!7105785 b!7105776) bm!647712))

(assert (= (or b!7105785 b!7105776) bm!647710))

(assert (= (or b!7105783 bm!647710) bm!647709))

(assert (= (or b!7105783 bm!647712) bm!647713))

(assert (= (or b!7105782 b!7105783) bm!647711))

(assert (= (or b!7105782 bm!647709) bm!647708))

(assert (=> b!7105777 m!7829022))

(declare-fun m!7829064 () Bool)

(assert (=> bm!647708 m!7829064))

(declare-fun m!7829066 () Bool)

(assert (=> bm!647713 m!7829066))

(declare-fun m!7829068 () Bool)

(assert (=> bm!647711 m!7829068))

(assert (=> b!7105775 m!7828964))

(assert (=> b!7105520 d!2219276))

(declare-fun b!7105804 () Bool)

(declare-fun e!4270748 () Bool)

(declare-fun e!4270750 () Bool)

(assert (=> b!7105804 (= e!4270748 e!4270750)))

(declare-fun c!1326041 () Bool)

(assert (=> b!7105804 (= c!1326041 ((_ is Union!17909) r!11554))))

(declare-fun b!7105805 () Bool)

(declare-fun e!4270747 () Bool)

(assert (=> b!7105805 (= e!4270747 e!4270748)))

(declare-fun c!1326042 () Bool)

(assert (=> b!7105805 (= c!1326042 ((_ is Star!17909) r!11554))))

(declare-fun call!647727 () Bool)

(declare-fun bm!647720 () Bool)

(assert (=> bm!647720 (= call!647727 (validRegex!9182 (ite c!1326042 (reg!18238 r!11554) (ite c!1326041 (regOne!36331 r!11554) (regTwo!36330 r!11554)))))))

(declare-fun b!7105806 () Bool)

(declare-fun e!4270751 () Bool)

(declare-fun call!647726 () Bool)

(assert (=> b!7105806 (= e!4270751 call!647726)))

(declare-fun b!7105807 () Bool)

(declare-fun e!4270749 () Bool)

(assert (=> b!7105807 (= e!4270748 e!4270749)))

(declare-fun res!2900590 () Bool)

(assert (=> b!7105807 (= res!2900590 (not (nullable!7546 (reg!18238 r!11554))))))

(assert (=> b!7105807 (=> (not res!2900590) (not e!4270749))))

(declare-fun b!7105808 () Bool)

(declare-fun res!2900589 () Bool)

(assert (=> b!7105808 (=> (not res!2900589) (not e!4270751))))

(declare-fun call!647725 () Bool)

(assert (=> b!7105808 (= res!2900589 call!647725)))

(assert (=> b!7105808 (= e!4270750 e!4270751)))

(declare-fun bm!647721 () Bool)

(assert (=> bm!647721 (= call!647726 (validRegex!9182 (ite c!1326041 (regTwo!36331 r!11554) (regOne!36330 r!11554))))))

(declare-fun b!7105809 () Bool)

(declare-fun e!4270746 () Bool)

(declare-fun e!4270745 () Bool)

(assert (=> b!7105809 (= e!4270746 e!4270745)))

(declare-fun res!2900591 () Bool)

(assert (=> b!7105809 (=> (not res!2900591) (not e!4270745))))

(assert (=> b!7105809 (= res!2900591 call!647726)))

(declare-fun b!7105810 () Bool)

(assert (=> b!7105810 (= e!4270745 call!647725)))

(declare-fun b!7105811 () Bool)

(assert (=> b!7105811 (= e!4270749 call!647727)))

(declare-fun d!2219278 () Bool)

(declare-fun res!2900588 () Bool)

(assert (=> d!2219278 (=> res!2900588 e!4270747)))

(assert (=> d!2219278 (= res!2900588 ((_ is ElementMatch!17909) r!11554))))

(assert (=> d!2219278 (= (validRegex!9182 r!11554) e!4270747)))

(declare-fun b!7105812 () Bool)

(declare-fun res!2900592 () Bool)

(assert (=> b!7105812 (=> res!2900592 e!4270746)))

(assert (=> b!7105812 (= res!2900592 (not ((_ is Concat!26754) r!11554)))))

(assert (=> b!7105812 (= e!4270750 e!4270746)))

(declare-fun bm!647722 () Bool)

(assert (=> bm!647722 (= call!647725 call!647727)))

(assert (= (and d!2219278 (not res!2900588)) b!7105805))

(assert (= (and b!7105805 c!1326042) b!7105807))

(assert (= (and b!7105805 (not c!1326042)) b!7105804))

(assert (= (and b!7105807 res!2900590) b!7105811))

(assert (= (and b!7105804 c!1326041) b!7105808))

(assert (= (and b!7105804 (not c!1326041)) b!7105812))

(assert (= (and b!7105808 res!2900589) b!7105806))

(assert (= (and b!7105812 (not res!2900592)) b!7105809))

(assert (= (and b!7105809 res!2900591) b!7105810))

(assert (= (or b!7105808 b!7105810) bm!647722))

(assert (= (or b!7105806 b!7105809) bm!647721))

(assert (= (or b!7105811 bm!647722) bm!647720))

(declare-fun m!7829070 () Bool)

(assert (=> bm!647720 m!7829070))

(declare-fun m!7829072 () Bool)

(assert (=> b!7105807 m!7829072))

(declare-fun m!7829074 () Bool)

(assert (=> bm!647721 m!7829074))

(assert (=> start!691688 d!2219278))

(declare-fun bs!1884696 () Bool)

(declare-fun d!2219280 () Bool)

(assert (= bs!1884696 (and d!2219280 b!7105519)))

(declare-fun lambda!431538 () Int)

(assert (=> bs!1884696 (= lambda!431538 lambda!431509)))

(declare-fun bs!1884697 () Bool)

(assert (= bs!1884697 (and d!2219280 d!2219264)))

(assert (=> bs!1884697 (= lambda!431538 lambda!431532)))

(declare-fun bs!1884698 () Bool)

(assert (= bs!1884698 (and d!2219280 d!2219272)))

(assert (=> bs!1884698 (= lambda!431538 lambda!431534)))

(assert (=> d!2219280 (= (inv!87635 c!9994) (forall!16812 (exprs!7403 c!9994) lambda!431538))))

(declare-fun bs!1884699 () Bool)

(assert (= bs!1884699 d!2219280))

(declare-fun m!7829076 () Bool)

(assert (=> bs!1884699 m!7829076))

(assert (=> start!691688 d!2219280))

(declare-fun bs!1884700 () Bool)

(declare-fun d!2219282 () Bool)

(assert (= bs!1884700 (and d!2219282 b!7105519)))

(declare-fun lambda!431539 () Int)

(assert (=> bs!1884700 (= lambda!431539 lambda!431509)))

(declare-fun bs!1884701 () Bool)

(assert (= bs!1884701 (and d!2219282 d!2219264)))

(assert (=> bs!1884701 (= lambda!431539 lambda!431532)))

(declare-fun bs!1884702 () Bool)

(assert (= bs!1884702 (and d!2219282 d!2219272)))

(assert (=> bs!1884702 (= lambda!431539 lambda!431534)))

(declare-fun bs!1884703 () Bool)

(assert (= bs!1884703 (and d!2219282 d!2219280)))

(assert (=> bs!1884703 (= lambda!431539 lambda!431538)))

(assert (=> d!2219282 (= (inv!87635 auxCtx!45) (forall!16812 (exprs!7403 auxCtx!45) lambda!431539))))

(declare-fun bs!1884704 () Bool)

(assert (= bs!1884704 d!2219282))

(declare-fun m!7829078 () Bool)

(assert (=> bs!1884704 m!7829078))

(assert (=> start!691688 d!2219282))

(declare-fun b!7105817 () Bool)

(declare-fun e!4270754 () Bool)

(declare-fun tp!1954028 () Bool)

(declare-fun tp!1954029 () Bool)

(assert (=> b!7105817 (= e!4270754 (and tp!1954028 tp!1954029))))

(assert (=> b!7105514 (= tp!1953975 e!4270754)))

(assert (= (and b!7105514 ((_ is Cons!68746) (exprs!7403 auxCtx!45))) b!7105817))

(declare-fun b!7105818 () Bool)

(declare-fun e!4270755 () Bool)

(declare-fun tp!1954030 () Bool)

(declare-fun tp!1954031 () Bool)

(assert (=> b!7105818 (= e!4270755 (and tp!1954030 tp!1954031))))

(assert (=> b!7105515 (= tp!1953977 e!4270755)))

(assert (= (and b!7105515 ((_ is Cons!68746) (exprs!7403 c!9994))) b!7105818))

(declare-fun b!7105829 () Bool)

(declare-fun e!4270758 () Bool)

(assert (=> b!7105829 (= e!4270758 tp_is_empty!45051)))

(declare-fun b!7105832 () Bool)

(declare-fun tp!1954046 () Bool)

(declare-fun tp!1954042 () Bool)

(assert (=> b!7105832 (= e!4270758 (and tp!1954046 tp!1954042))))

(assert (=> b!7105516 (= tp!1953974 e!4270758)))

(declare-fun b!7105831 () Bool)

(declare-fun tp!1954045 () Bool)

(assert (=> b!7105831 (= e!4270758 tp!1954045)))

(declare-fun b!7105830 () Bool)

(declare-fun tp!1954043 () Bool)

(declare-fun tp!1954044 () Bool)

(assert (=> b!7105830 (= e!4270758 (and tp!1954043 tp!1954044))))

(assert (= (and b!7105516 ((_ is ElementMatch!17909) (regOne!36331 r!11554))) b!7105829))

(assert (= (and b!7105516 ((_ is Concat!26754) (regOne!36331 r!11554))) b!7105830))

(assert (= (and b!7105516 ((_ is Star!17909) (regOne!36331 r!11554))) b!7105831))

(assert (= (and b!7105516 ((_ is Union!17909) (regOne!36331 r!11554))) b!7105832))

(declare-fun b!7105833 () Bool)

(declare-fun e!4270759 () Bool)

(assert (=> b!7105833 (= e!4270759 tp_is_empty!45051)))

(declare-fun b!7105836 () Bool)

(declare-fun tp!1954051 () Bool)

(declare-fun tp!1954047 () Bool)

(assert (=> b!7105836 (= e!4270759 (and tp!1954051 tp!1954047))))

(assert (=> b!7105516 (= tp!1953979 e!4270759)))

(declare-fun b!7105835 () Bool)

(declare-fun tp!1954050 () Bool)

(assert (=> b!7105835 (= e!4270759 tp!1954050)))

(declare-fun b!7105834 () Bool)

(declare-fun tp!1954048 () Bool)

(declare-fun tp!1954049 () Bool)

(assert (=> b!7105834 (= e!4270759 (and tp!1954048 tp!1954049))))

(assert (= (and b!7105516 ((_ is ElementMatch!17909) (regTwo!36331 r!11554))) b!7105833))

(assert (= (and b!7105516 ((_ is Concat!26754) (regTwo!36331 r!11554))) b!7105834))

(assert (= (and b!7105516 ((_ is Star!17909) (regTwo!36331 r!11554))) b!7105835))

(assert (= (and b!7105516 ((_ is Union!17909) (regTwo!36331 r!11554))) b!7105836))

(declare-fun b!7105837 () Bool)

(declare-fun e!4270760 () Bool)

(assert (=> b!7105837 (= e!4270760 tp_is_empty!45051)))

(declare-fun b!7105840 () Bool)

(declare-fun tp!1954056 () Bool)

(declare-fun tp!1954052 () Bool)

(assert (=> b!7105840 (= e!4270760 (and tp!1954056 tp!1954052))))

(assert (=> b!7105512 (= tp!1953976 e!4270760)))

(declare-fun b!7105839 () Bool)

(declare-fun tp!1954055 () Bool)

(assert (=> b!7105839 (= e!4270760 tp!1954055)))

(declare-fun b!7105838 () Bool)

(declare-fun tp!1954053 () Bool)

(declare-fun tp!1954054 () Bool)

(assert (=> b!7105838 (= e!4270760 (and tp!1954053 tp!1954054))))

(assert (= (and b!7105512 ((_ is ElementMatch!17909) (reg!18238 r!11554))) b!7105837))

(assert (= (and b!7105512 ((_ is Concat!26754) (reg!18238 r!11554))) b!7105838))

(assert (= (and b!7105512 ((_ is Star!17909) (reg!18238 r!11554))) b!7105839))

(assert (= (and b!7105512 ((_ is Union!17909) (reg!18238 r!11554))) b!7105840))

(declare-fun b!7105841 () Bool)

(declare-fun e!4270761 () Bool)

(assert (=> b!7105841 (= e!4270761 tp_is_empty!45051)))

(declare-fun b!7105844 () Bool)

(declare-fun tp!1954061 () Bool)

(declare-fun tp!1954057 () Bool)

(assert (=> b!7105844 (= e!4270761 (and tp!1954061 tp!1954057))))

(assert (=> b!7105518 (= tp!1953978 e!4270761)))

(declare-fun b!7105843 () Bool)

(declare-fun tp!1954060 () Bool)

(assert (=> b!7105843 (= e!4270761 tp!1954060)))

(declare-fun b!7105842 () Bool)

(declare-fun tp!1954058 () Bool)

(declare-fun tp!1954059 () Bool)

(assert (=> b!7105842 (= e!4270761 (and tp!1954058 tp!1954059))))

(assert (= (and b!7105518 ((_ is ElementMatch!17909) (regOne!36330 r!11554))) b!7105841))

(assert (= (and b!7105518 ((_ is Concat!26754) (regOne!36330 r!11554))) b!7105842))

(assert (= (and b!7105518 ((_ is Star!17909) (regOne!36330 r!11554))) b!7105843))

(assert (= (and b!7105518 ((_ is Union!17909) (regOne!36330 r!11554))) b!7105844))

(declare-fun b!7105845 () Bool)

(declare-fun e!4270762 () Bool)

(assert (=> b!7105845 (= e!4270762 tp_is_empty!45051)))

(declare-fun b!7105848 () Bool)

(declare-fun tp!1954066 () Bool)

(declare-fun tp!1954062 () Bool)

(assert (=> b!7105848 (= e!4270762 (and tp!1954066 tp!1954062))))

(assert (=> b!7105518 (= tp!1953980 e!4270762)))

(declare-fun b!7105847 () Bool)

(declare-fun tp!1954065 () Bool)

(assert (=> b!7105847 (= e!4270762 tp!1954065)))

(declare-fun b!7105846 () Bool)

(declare-fun tp!1954063 () Bool)

(declare-fun tp!1954064 () Bool)

(assert (=> b!7105846 (= e!4270762 (and tp!1954063 tp!1954064))))

(assert (= (and b!7105518 ((_ is ElementMatch!17909) (regTwo!36330 r!11554))) b!7105845))

(assert (= (and b!7105518 ((_ is Concat!26754) (regTwo!36330 r!11554))) b!7105846))

(assert (= (and b!7105518 ((_ is Star!17909) (regTwo!36330 r!11554))) b!7105847))

(assert (= (and b!7105518 ((_ is Union!17909) (regTwo!36330 r!11554))) b!7105848))

(check-sat (not bm!647711) (not d!2219262) (not b!7105847) (not d!2219252) (not bm!647695) (not bm!647693) (not b!7105832) (not d!2219258) (not bm!647696) (not bm!647702) (not b!7105834) tp_is_empty!45051 (not bm!647690) (not b!7105831) (not d!2219280) (not b!7105817) (not b!7105638) (not b!7105740) (not b!7105842) (not b!7105835) (not b!7105753) (not bm!647708) (not b!7105840) (not bm!647684) (not b!7105807) (not bm!647669) (not b!7105742) (not b!7105846) (not b!7105839) (not d!2219254) (not d!2219256) (not bm!647705) (not bm!647666) (not d!2219264) (not d!2219274) (not bm!647687) (not bm!647720) (not b!7105844) (not b!7105739) (not bm!647699) (not b!7105775) (not d!2219266) (not d!2219270) (not bm!647713) (not bm!647707) (not b!7105671) (not b!7105848) (not d!2219272) (not bm!647701) (not d!2219282) (not b!7105838) (not b!7105843) (not bm!647671) (not b!7105830) (not b!7105836) (not b!7105818) (not b!7105764) (not d!2219248) (not bm!647721) (not bm!647689))
(check-sat)
