; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!543720 () Bool)

(assert start!543720)

(declare-fun b!5136032 () Bool)

(declare-fun e!3203540 () Bool)

(declare-fun e!3203539 () Bool)

(assert (=> b!5136032 (= e!3203540 (not e!3203539))))

(declare-fun res!2187582 () Bool)

(assert (=> b!5136032 (=> res!2187582 e!3203539)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!29084 0))(
  ( (C!29085 (val!24194 Int)) )
))
(declare-datatypes ((Regex!14409 0))(
  ( (ElementMatch!14409 (c!884235 C!29084)) (Concat!23254 (regOne!29330 Regex!14409) (regTwo!29330 Regex!14409)) (EmptyExpr!14409) (Star!14409 (reg!14738 Regex!14409)) (EmptyLang!14409) (Union!14409 (regOne!29331 Regex!14409) (regTwo!29331 Regex!14409)) )
))
(declare-datatypes ((List!59757 0))(
  ( (Nil!59633) (Cons!59633 (h!66081 Regex!14409) (t!372786 List!59757)) )
))
(declare-datatypes ((Context!7586 0))(
  ( (Context!7587 (exprs!4293 List!59757)) )
))
(declare-fun lt!2119493 () (InoxSet Context!7586))

(declare-fun lambda!255938 () Int)

(declare-fun forall!13874 ((InoxSet Context!7586) Int) Bool)

(assert (=> b!5136032 (= res!2187582 (not (forall!13874 lt!2119493 lambda!255938)))))

(declare-fun lostCauseZipper!1237 ((InoxSet Context!7586)) Bool)

(assert (=> b!5136032 (lostCauseZipper!1237 lt!2119493)))

(declare-fun a!1252 () C!29084)

(declare-fun ctx!74 () Context!7586)

(declare-fun lt!2119492 () Context!7586)

(declare-fun derivationStepZipperDown!118 (Regex!14409 Context!7586 C!29084) (InoxSet Context!7586))

(assert (=> b!5136032 (= lt!2119493 (derivationStepZipperDown!118 (h!66081 (exprs!4293 ctx!74)) lt!2119492 a!1252))))

(declare-datatypes ((Unit!150989 0))(
  ( (Unit!150990) )
))
(declare-fun lt!2119488 () Unit!150989)

(declare-fun lemmaLostCauseFixPointDerivDown!12 (Regex!14409 Context!7586 C!29084) Unit!150989)

(assert (=> b!5136032 (= lt!2119488 (lemmaLostCauseFixPointDerivDown!12 (h!66081 (exprs!4293 ctx!74)) lt!2119492 a!1252))))

(declare-fun lt!2119494 () (InoxSet Context!7586))

(assert (=> b!5136032 (lostCauseZipper!1237 lt!2119494)))

(declare-fun derivationStepZipperUp!95 (Context!7586 C!29084) (InoxSet Context!7586))

(assert (=> b!5136032 (= lt!2119494 (derivationStepZipperUp!95 lt!2119492 a!1252))))

(declare-fun lt!2119490 () Unit!150989)

(declare-fun lemmaLostCauseFixPointDerivUp!28 (Context!7586 C!29084) Unit!150989)

(assert (=> b!5136032 (= lt!2119490 (lemmaLostCauseFixPointDerivUp!28 lt!2119492 a!1252))))

(assert (=> b!5136032 (= lt!2119492 (Context!7587 (t!372786 (exprs!4293 ctx!74))))))

(declare-fun lostCause!1378 (Regex!14409) Bool)

(assert (=> b!5136032 (not (lostCause!1378 (h!66081 (exprs!4293 ctx!74))))))

(declare-fun lt!2119489 () Unit!150989)

(declare-fun lemmaNullableThenNotLostCause!60 (Regex!14409) Unit!150989)

(assert (=> b!5136032 (= lt!2119489 (lemmaNullableThenNotLostCause!60 (h!66081 (exprs!4293 ctx!74))))))

(declare-fun b!5136033 () Bool)

(assert (=> b!5136033 (= e!3203539 (lostCauseZipper!1237 (derivationStepZipperUp!95 ctx!74 a!1252)))))

(assert (=> b!5136033 (forall!13874 ((_ map or) lt!2119493 lt!2119494) lambda!255938)))

(declare-fun lt!2119491 () Unit!150989)

(declare-fun lemmaConcatPreservesForall!132 ((InoxSet Context!7586) (InoxSet Context!7586) Int) Unit!150989)

(assert (=> b!5136033 (= lt!2119491 (lemmaConcatPreservesForall!132 lt!2119493 lt!2119494 lambda!255938))))

(declare-fun b!5136034 () Bool)

(declare-fun res!2187586 () Bool)

(assert (=> b!5136034 (=> (not res!2187586) (not e!3203540))))

(declare-fun nullable!4782 (Regex!14409) Bool)

(assert (=> b!5136034 (= res!2187586 (nullable!4782 (h!66081 (exprs!4293 ctx!74))))))

(declare-fun b!5136035 () Bool)

(declare-fun res!2187585 () Bool)

(assert (=> b!5136035 (=> (not res!2187585) (not e!3203540))))

(get-info :version)

(assert (=> b!5136035 (= res!2187585 ((_ is Cons!59633) (exprs!4293 ctx!74)))))

(declare-fun b!5136036 () Bool)

(declare-fun e!3203541 () Bool)

(declare-fun tp!1432443 () Bool)

(assert (=> b!5136036 (= e!3203541 tp!1432443)))

(declare-fun b!5136037 () Bool)

(declare-fun res!2187584 () Bool)

(assert (=> b!5136037 (=> res!2187584 e!3203539)))

(assert (=> b!5136037 (= res!2187584 (not (forall!13874 lt!2119494 lambda!255938)))))

(declare-fun res!2187583 () Bool)

(assert (=> start!543720 (=> (not res!2187583) (not e!3203540))))

(declare-fun lostCause!1379 (Context!7586) Bool)

(assert (=> start!543720 (= res!2187583 (lostCause!1379 ctx!74))))

(assert (=> start!543720 e!3203540))

(declare-fun inv!79203 (Context!7586) Bool)

(assert (=> start!543720 (and (inv!79203 ctx!74) e!3203541)))

(declare-fun tp_is_empty!37971 () Bool)

(assert (=> start!543720 tp_is_empty!37971))

(assert (= (and start!543720 res!2187583) b!5136035))

(assert (= (and b!5136035 res!2187585) b!5136034))

(assert (= (and b!5136034 res!2187586) b!5136032))

(assert (= (and b!5136032 (not res!2187582)) b!5136037))

(assert (= (and b!5136037 (not res!2187584)) b!5136033))

(assert (= start!543720 b!5136036))

(declare-fun m!6201684 () Bool)

(assert (=> b!5136037 m!6201684))

(declare-fun m!6201686 () Bool)

(assert (=> b!5136033 m!6201686))

(assert (=> b!5136033 m!6201686))

(declare-fun m!6201688 () Bool)

(assert (=> b!5136033 m!6201688))

(declare-fun m!6201690 () Bool)

(assert (=> b!5136033 m!6201690))

(declare-fun m!6201692 () Bool)

(assert (=> b!5136033 m!6201692))

(declare-fun m!6201694 () Bool)

(assert (=> b!5136032 m!6201694))

(declare-fun m!6201696 () Bool)

(assert (=> b!5136032 m!6201696))

(declare-fun m!6201698 () Bool)

(assert (=> b!5136032 m!6201698))

(declare-fun m!6201700 () Bool)

(assert (=> b!5136032 m!6201700))

(declare-fun m!6201702 () Bool)

(assert (=> b!5136032 m!6201702))

(declare-fun m!6201704 () Bool)

(assert (=> b!5136032 m!6201704))

(declare-fun m!6201706 () Bool)

(assert (=> b!5136032 m!6201706))

(declare-fun m!6201708 () Bool)

(assert (=> b!5136032 m!6201708))

(declare-fun m!6201710 () Bool)

(assert (=> b!5136032 m!6201710))

(declare-fun m!6201712 () Bool)

(assert (=> b!5136034 m!6201712))

(declare-fun m!6201714 () Bool)

(assert (=> start!543720 m!6201714))

(declare-fun m!6201716 () Bool)

(assert (=> start!543720 m!6201716))

(check-sat (not start!543720) (not b!5136032) (not b!5136036) (not b!5136033) (not b!5136037) tp_is_empty!37971 (not b!5136034))
(check-sat)
(get-model)

(declare-fun d!1661904 () Bool)

(declare-fun lambda!255941 () Int)

(declare-fun exists!1746 (List!59757 Int) Bool)

(assert (=> d!1661904 (= (lostCause!1379 ctx!74) (exists!1746 (exprs!4293 ctx!74) lambda!255941))))

(declare-fun bs!1200037 () Bool)

(assert (= bs!1200037 d!1661904))

(declare-fun m!6201734 () Bool)

(assert (=> bs!1200037 m!6201734))

(assert (=> start!543720 d!1661904))

(declare-fun bs!1200038 () Bool)

(declare-fun d!1661906 () Bool)

(assert (= bs!1200038 (and d!1661906 d!1661904)))

(declare-fun lambda!255944 () Int)

(assert (=> bs!1200038 (not (= lambda!255944 lambda!255941))))

(declare-fun forall!13877 (List!59757 Int) Bool)

(assert (=> d!1661906 (= (inv!79203 ctx!74) (forall!13877 (exprs!4293 ctx!74) lambda!255944))))

(declare-fun bs!1200039 () Bool)

(assert (= bs!1200039 d!1661906))

(declare-fun m!6201736 () Bool)

(assert (=> bs!1200039 m!6201736))

(assert (=> start!543720 d!1661906))

(declare-fun d!1661908 () Bool)

(declare-fun nullableFct!1303 (Regex!14409) Bool)

(assert (=> d!1661908 (= (nullable!4782 (h!66081 (exprs!4293 ctx!74))) (nullableFct!1303 (h!66081 (exprs!4293 ctx!74))))))

(declare-fun bs!1200040 () Bool)

(assert (= bs!1200040 d!1661908))

(declare-fun m!6201738 () Bool)

(assert (=> bs!1200040 m!6201738))

(assert (=> b!5136034 d!1661908))

(declare-fun bs!1200065 () Bool)

(declare-fun d!1661910 () Bool)

(assert (= bs!1200065 (and d!1661910 b!5136032)))

(declare-fun lambda!255975 () Int)

(assert (=> bs!1200065 (= lambda!255975 lambda!255938)))

(declare-fun bs!1200066 () Bool)

(declare-fun b!5136098 () Bool)

(assert (= bs!1200066 (and b!5136098 b!5136032)))

(declare-fun lambda!255976 () Int)

(assert (=> bs!1200066 (not (= lambda!255976 lambda!255938))))

(declare-fun bs!1200067 () Bool)

(assert (= bs!1200067 (and b!5136098 d!1661910)))

(assert (=> bs!1200067 (not (= lambda!255976 lambda!255975))))

(declare-fun bs!1200068 () Bool)

(declare-fun b!5136099 () Bool)

(assert (= bs!1200068 (and b!5136099 b!5136032)))

(declare-fun lambda!255977 () Int)

(assert (=> bs!1200068 (not (= lambda!255977 lambda!255938))))

(declare-fun bs!1200069 () Bool)

(assert (= bs!1200069 (and b!5136099 d!1661910)))

(assert (=> bs!1200069 (not (= lambda!255977 lambda!255975))))

(declare-fun bs!1200070 () Bool)

(assert (= bs!1200070 (and b!5136099 b!5136098)))

(assert (=> bs!1200070 (= lambda!255977 lambda!255976)))

(declare-fun lt!2119555 () Bool)

(declare-datatypes ((List!59760 0))(
  ( (Nil!59636) (Cons!59636 (h!66084 C!29084) (t!372789 List!59760)) )
))
(declare-datatypes ((Option!14767 0))(
  ( (None!14766) (Some!14766 (v!50795 List!59760)) )
))
(declare-fun isEmpty!32028 (Option!14767) Bool)

(declare-fun getLanguageWitness!912 ((InoxSet Context!7586)) Option!14767)

(assert (=> d!1661910 (= lt!2119555 (isEmpty!32028 (getLanguageWitness!912 (derivationStepZipperUp!95 ctx!74 a!1252))))))

(assert (=> d!1661910 (= lt!2119555 (forall!13874 (derivationStepZipperUp!95 ctx!74 a!1252) lambda!255975))))

(declare-fun lt!2119560 () Unit!150989)

(declare-fun e!3203583 () Unit!150989)

(assert (=> d!1661910 (= lt!2119560 e!3203583)))

(declare-fun c!884279 () Bool)

(assert (=> d!1661910 (= c!884279 (not (forall!13874 (derivationStepZipperUp!95 ctx!74 a!1252) lambda!255975)))))

(assert (=> d!1661910 (= (lostCauseZipper!1237 (derivationStepZipperUp!95 ctx!74 a!1252)) lt!2119555)))

(declare-fun bm!358002 () Bool)

(declare-datatypes ((List!59761 0))(
  ( (Nil!59637) (Cons!59637 (h!66085 Context!7586) (t!372790 List!59761)) )
))
(declare-fun call!358007 () List!59761)

(declare-fun toList!8371 ((InoxSet Context!7586)) List!59761)

(assert (=> bm!358002 (= call!358007 (toList!8371 (derivationStepZipperUp!95 ctx!74 a!1252)))))

(declare-fun bm!358003 () Bool)

(declare-fun lt!2119556 () List!59761)

(declare-fun lt!2119553 () List!59761)

(declare-fun call!358008 () Bool)

(declare-fun exists!1747 (List!59761 Int) Bool)

(assert (=> bm!358003 (= call!358008 (exists!1747 (ite c!884279 lt!2119556 lt!2119553) (ite c!884279 lambda!255976 lambda!255977)))))

(declare-fun Unit!150997 () Unit!150989)

(assert (=> b!5136098 (= e!3203583 Unit!150997)))

(assert (=> b!5136098 (= lt!2119556 call!358007)))

(declare-fun lt!2119559 () Unit!150989)

(declare-fun lemmaNotForallThenExists!418 (List!59761 Int) Unit!150989)

(assert (=> b!5136098 (= lt!2119559 (lemmaNotForallThenExists!418 lt!2119556 lambda!255975))))

(assert (=> b!5136098 call!358008))

(declare-fun lt!2119554 () Unit!150989)

(assert (=> b!5136098 (= lt!2119554 lt!2119559)))

(declare-fun Unit!150998 () Unit!150989)

(assert (=> b!5136099 (= e!3203583 Unit!150998)))

(assert (=> b!5136099 (= lt!2119553 call!358007)))

(declare-fun lt!2119557 () Unit!150989)

(declare-fun lemmaForallThenNotExists!385 (List!59761 Int) Unit!150989)

(assert (=> b!5136099 (= lt!2119557 (lemmaForallThenNotExists!385 lt!2119553 lambda!255975))))

(assert (=> b!5136099 (not call!358008)))

(declare-fun lt!2119558 () Unit!150989)

(assert (=> b!5136099 (= lt!2119558 lt!2119557)))

(assert (= (and d!1661910 c!884279) b!5136098))

(assert (= (and d!1661910 (not c!884279)) b!5136099))

(assert (= (or b!5136098 b!5136099) bm!358002))

(assert (= (or b!5136098 b!5136099) bm!358003))

(declare-fun m!6201790 () Bool)

(assert (=> b!5136098 m!6201790))

(declare-fun m!6201792 () Bool)

(assert (=> bm!358003 m!6201792))

(declare-fun m!6201794 () Bool)

(assert (=> b!5136099 m!6201794))

(assert (=> bm!358002 m!6201686))

(declare-fun m!6201796 () Bool)

(assert (=> bm!358002 m!6201796))

(assert (=> d!1661910 m!6201686))

(declare-fun m!6201798 () Bool)

(assert (=> d!1661910 m!6201798))

(assert (=> d!1661910 m!6201798))

(declare-fun m!6201800 () Bool)

(assert (=> d!1661910 m!6201800))

(assert (=> d!1661910 m!6201686))

(declare-fun m!6201802 () Bool)

(assert (=> d!1661910 m!6201802))

(assert (=> d!1661910 m!6201686))

(assert (=> d!1661910 m!6201802))

(assert (=> b!5136033 d!1661910))

(declare-fun b!5136117 () Bool)

(declare-fun e!3203596 () Bool)

(assert (=> b!5136117 (= e!3203596 (nullable!4782 (h!66081 (exprs!4293 ctx!74))))))

(declare-fun b!5136118 () Bool)

(declare-fun call!358014 () (InoxSet Context!7586))

(declare-fun e!3203595 () (InoxSet Context!7586))

(assert (=> b!5136118 (= e!3203595 ((_ map or) call!358014 (derivationStepZipperUp!95 (Context!7587 (t!372786 (exprs!4293 ctx!74))) a!1252)))))

(declare-fun bm!358009 () Bool)

(assert (=> bm!358009 (= call!358014 (derivationStepZipperDown!118 (h!66081 (exprs!4293 ctx!74)) (Context!7587 (t!372786 (exprs!4293 ctx!74))) a!1252))))

(declare-fun b!5136120 () Bool)

(declare-fun e!3203594 () (InoxSet Context!7586))

(assert (=> b!5136120 (= e!3203595 e!3203594)))

(declare-fun c!884287 () Bool)

(assert (=> b!5136120 (= c!884287 ((_ is Cons!59633) (exprs!4293 ctx!74)))))

(declare-fun b!5136121 () Bool)

(assert (=> b!5136121 (= e!3203594 call!358014)))

(declare-fun b!5136119 () Bool)

(assert (=> b!5136119 (= e!3203594 ((as const (Array Context!7586 Bool)) false))))

(declare-fun d!1661924 () Bool)

(declare-fun c!884288 () Bool)

(assert (=> d!1661924 (= c!884288 e!3203596)))

(declare-fun res!2187596 () Bool)

(assert (=> d!1661924 (=> (not res!2187596) (not e!3203596))))

(assert (=> d!1661924 (= res!2187596 ((_ is Cons!59633) (exprs!4293 ctx!74)))))

(assert (=> d!1661924 (= (derivationStepZipperUp!95 ctx!74 a!1252) e!3203595)))

(assert (= (and d!1661924 res!2187596) b!5136117))

(assert (= (and d!1661924 c!884288) b!5136118))

(assert (= (and d!1661924 (not c!884288)) b!5136120))

(assert (= (and b!5136120 c!884287) b!5136121))

(assert (= (and b!5136120 (not c!884287)) b!5136119))

(assert (= (or b!5136118 b!5136121) bm!358009))

(assert (=> b!5136117 m!6201712))

(declare-fun m!6201836 () Bool)

(assert (=> b!5136118 m!6201836))

(declare-fun m!6201838 () Bool)

(assert (=> bm!358009 m!6201838))

(assert (=> b!5136033 d!1661924))

(declare-fun d!1661938 () Bool)

(declare-fun lt!2119578 () Bool)

(declare-fun forall!13878 (List!59761 Int) Bool)

(assert (=> d!1661938 (= lt!2119578 (forall!13878 (toList!8371 ((_ map or) lt!2119493 lt!2119494)) lambda!255938))))

(declare-fun choose!38014 ((InoxSet Context!7586) Int) Bool)

(assert (=> d!1661938 (= lt!2119578 (choose!38014 ((_ map or) lt!2119493 lt!2119494) lambda!255938))))

(assert (=> d!1661938 (= (forall!13874 ((_ map or) lt!2119493 lt!2119494) lambda!255938) lt!2119578)))

(declare-fun bs!1200101 () Bool)

(assert (= bs!1200101 d!1661938))

(declare-fun m!6201842 () Bool)

(assert (=> bs!1200101 m!6201842))

(assert (=> bs!1200101 m!6201842))

(declare-fun m!6201844 () Bool)

(assert (=> bs!1200101 m!6201844))

(declare-fun m!6201846 () Bool)

(assert (=> bs!1200101 m!6201846))

(assert (=> b!5136033 d!1661938))

(declare-fun d!1661940 () Bool)

(assert (=> d!1661940 (forall!13874 ((_ map or) lt!2119493 lt!2119494) lambda!255938)))

(declare-fun lt!2119581 () Unit!150989)

(declare-fun choose!38015 ((InoxSet Context!7586) (InoxSet Context!7586) Int) Unit!150989)

(assert (=> d!1661940 (= lt!2119581 (choose!38015 lt!2119493 lt!2119494 lambda!255938))))

(assert (=> d!1661940 (forall!13874 lt!2119493 lambda!255938)))

(assert (=> d!1661940 (= (lemmaConcatPreservesForall!132 lt!2119493 lt!2119494 lambda!255938) lt!2119581)))

(declare-fun bs!1200102 () Bool)

(assert (= bs!1200102 d!1661940))

(assert (=> bs!1200102 m!6201690))

(declare-fun m!6201848 () Bool)

(assert (=> bs!1200102 m!6201848))

(assert (=> bs!1200102 m!6201700))

(assert (=> b!5136033 d!1661940))

(declare-fun d!1661942 () Bool)

(declare-fun lostCauseFct!334 (Regex!14409) Bool)

(assert (=> d!1661942 (= (lostCause!1378 (h!66081 (exprs!4293 ctx!74))) (lostCauseFct!334 (h!66081 (exprs!4293 ctx!74))))))

(declare-fun bs!1200103 () Bool)

(assert (= bs!1200103 d!1661942))

(declare-fun m!6201850 () Bool)

(assert (=> bs!1200103 m!6201850))

(assert (=> b!5136032 d!1661942))

(declare-fun b!5136127 () Bool)

(declare-fun e!3203602 () Bool)

(assert (=> b!5136127 (= e!3203602 (nullable!4782 (h!66081 (exprs!4293 lt!2119492))))))

(declare-fun b!5136128 () Bool)

(declare-fun call!358015 () (InoxSet Context!7586))

(declare-fun e!3203601 () (InoxSet Context!7586))

(assert (=> b!5136128 (= e!3203601 ((_ map or) call!358015 (derivationStepZipperUp!95 (Context!7587 (t!372786 (exprs!4293 lt!2119492))) a!1252)))))

(declare-fun bm!358010 () Bool)

(assert (=> bm!358010 (= call!358015 (derivationStepZipperDown!118 (h!66081 (exprs!4293 lt!2119492)) (Context!7587 (t!372786 (exprs!4293 lt!2119492))) a!1252))))

(declare-fun b!5136130 () Bool)

(declare-fun e!3203600 () (InoxSet Context!7586))

(assert (=> b!5136130 (= e!3203601 e!3203600)))

(declare-fun c!884289 () Bool)

(assert (=> b!5136130 (= c!884289 ((_ is Cons!59633) (exprs!4293 lt!2119492)))))

(declare-fun b!5136131 () Bool)

(assert (=> b!5136131 (= e!3203600 call!358015)))

(declare-fun b!5136129 () Bool)

(assert (=> b!5136129 (= e!3203600 ((as const (Array Context!7586 Bool)) false))))

(declare-fun d!1661944 () Bool)

(declare-fun c!884290 () Bool)

(assert (=> d!1661944 (= c!884290 e!3203602)))

(declare-fun res!2187597 () Bool)

(assert (=> d!1661944 (=> (not res!2187597) (not e!3203602))))

(assert (=> d!1661944 (= res!2187597 ((_ is Cons!59633) (exprs!4293 lt!2119492)))))

(assert (=> d!1661944 (= (derivationStepZipperUp!95 lt!2119492 a!1252) e!3203601)))

(assert (= (and d!1661944 res!2187597) b!5136127))

(assert (= (and d!1661944 c!884290) b!5136128))

(assert (= (and d!1661944 (not c!884290)) b!5136130))

(assert (= (and b!5136130 c!884289) b!5136131))

(assert (= (and b!5136130 (not c!884289)) b!5136129))

(assert (= (or b!5136128 b!5136131) bm!358010))

(declare-fun m!6201852 () Bool)

(assert (=> b!5136127 m!6201852))

(declare-fun m!6201854 () Bool)

(assert (=> b!5136128 m!6201854))

(declare-fun m!6201856 () Bool)

(assert (=> bm!358010 m!6201856))

(assert (=> b!5136032 d!1661944))

(declare-fun d!1661946 () Bool)

(assert (=> d!1661946 (lostCauseZipper!1237 (derivationStepZipperUp!95 lt!2119492 a!1252))))

(declare-fun lt!2119584 () Unit!150989)

(declare-fun choose!38016 (Context!7586 C!29084) Unit!150989)

(assert (=> d!1661946 (= lt!2119584 (choose!38016 lt!2119492 a!1252))))

(assert (=> d!1661946 (lostCause!1379 lt!2119492)))

(assert (=> d!1661946 (= (lemmaLostCauseFixPointDerivUp!28 lt!2119492 a!1252) lt!2119584)))

(declare-fun bs!1200104 () Bool)

(assert (= bs!1200104 d!1661946))

(assert (=> bs!1200104 m!6201710))

(assert (=> bs!1200104 m!6201710))

(declare-fun m!6201858 () Bool)

(assert (=> bs!1200104 m!6201858))

(declare-fun m!6201860 () Bool)

(assert (=> bs!1200104 m!6201860))

(declare-fun m!6201862 () Bool)

(assert (=> bs!1200104 m!6201862))

(assert (=> b!5136032 d!1661946))

(declare-fun d!1661948 () Bool)

(declare-fun lt!2119585 () Bool)

(assert (=> d!1661948 (= lt!2119585 (forall!13878 (toList!8371 lt!2119493) lambda!255938))))

(assert (=> d!1661948 (= lt!2119585 (choose!38014 lt!2119493 lambda!255938))))

(assert (=> d!1661948 (= (forall!13874 lt!2119493 lambda!255938) lt!2119585)))

(declare-fun bs!1200105 () Bool)

(assert (= bs!1200105 d!1661948))

(declare-fun m!6201864 () Bool)

(assert (=> bs!1200105 m!6201864))

(assert (=> bs!1200105 m!6201864))

(declare-fun m!6201866 () Bool)

(assert (=> bs!1200105 m!6201866))

(declare-fun m!6201868 () Bool)

(assert (=> bs!1200105 m!6201868))

(assert (=> b!5136032 d!1661948))

(declare-fun d!1661950 () Bool)

(assert (=> d!1661950 (lostCauseZipper!1237 (derivationStepZipperDown!118 (h!66081 (exprs!4293 ctx!74)) lt!2119492 a!1252))))

(declare-fun lt!2119588 () Unit!150989)

(declare-fun choose!38017 (Regex!14409 Context!7586 C!29084) Unit!150989)

(assert (=> d!1661950 (= lt!2119588 (choose!38017 (h!66081 (exprs!4293 ctx!74)) lt!2119492 a!1252))))

(declare-fun validRegex!6267 (Regex!14409) Bool)

(assert (=> d!1661950 (validRegex!6267 (h!66081 (exprs!4293 ctx!74)))))

(assert (=> d!1661950 (= (lemmaLostCauseFixPointDerivDown!12 (h!66081 (exprs!4293 ctx!74)) lt!2119492 a!1252) lt!2119588)))

(declare-fun bs!1200106 () Bool)

(assert (= bs!1200106 d!1661950))

(assert (=> bs!1200106 m!6201698))

(assert (=> bs!1200106 m!6201698))

(declare-fun m!6201870 () Bool)

(assert (=> bs!1200106 m!6201870))

(declare-fun m!6201872 () Bool)

(assert (=> bs!1200106 m!6201872))

(declare-fun m!6201874 () Bool)

(assert (=> bs!1200106 m!6201874))

(assert (=> b!5136032 d!1661950))

(declare-fun bs!1200107 () Bool)

(declare-fun d!1661952 () Bool)

(assert (= bs!1200107 (and d!1661952 b!5136032)))

(declare-fun lambda!255987 () Int)

(assert (=> bs!1200107 (= lambda!255987 lambda!255938)))

(declare-fun bs!1200108 () Bool)

(assert (= bs!1200108 (and d!1661952 d!1661910)))

(assert (=> bs!1200108 (= lambda!255987 lambda!255975)))

(declare-fun bs!1200109 () Bool)

(assert (= bs!1200109 (and d!1661952 b!5136098)))

(assert (=> bs!1200109 (not (= lambda!255987 lambda!255976))))

(declare-fun bs!1200110 () Bool)

(assert (= bs!1200110 (and d!1661952 b!5136099)))

(assert (=> bs!1200110 (not (= lambda!255987 lambda!255977))))

(declare-fun bs!1200111 () Bool)

(declare-fun b!5136132 () Bool)

(assert (= bs!1200111 (and b!5136132 d!1661910)))

(declare-fun lambda!255988 () Int)

(assert (=> bs!1200111 (not (= lambda!255988 lambda!255975))))

(declare-fun bs!1200112 () Bool)

(assert (= bs!1200112 (and b!5136132 b!5136098)))

(assert (=> bs!1200112 (= lambda!255988 lambda!255976)))

(declare-fun bs!1200113 () Bool)

(assert (= bs!1200113 (and b!5136132 b!5136099)))

(assert (=> bs!1200113 (= lambda!255988 lambda!255977)))

(declare-fun bs!1200114 () Bool)

(assert (= bs!1200114 (and b!5136132 b!5136032)))

(assert (=> bs!1200114 (not (= lambda!255988 lambda!255938))))

(declare-fun bs!1200115 () Bool)

(assert (= bs!1200115 (and b!5136132 d!1661952)))

(assert (=> bs!1200115 (not (= lambda!255988 lambda!255987))))

(declare-fun bs!1200116 () Bool)

(declare-fun b!5136133 () Bool)

(assert (= bs!1200116 (and b!5136133 d!1661910)))

(declare-fun lambda!255989 () Int)

(assert (=> bs!1200116 (not (= lambda!255989 lambda!255975))))

(declare-fun bs!1200117 () Bool)

(assert (= bs!1200117 (and b!5136133 b!5136098)))

(assert (=> bs!1200117 (= lambda!255989 lambda!255976)))

(declare-fun bs!1200118 () Bool)

(assert (= bs!1200118 (and b!5136133 b!5136099)))

(assert (=> bs!1200118 (= lambda!255989 lambda!255977)))

(declare-fun bs!1200119 () Bool)

(assert (= bs!1200119 (and b!5136133 b!5136132)))

(assert (=> bs!1200119 (= lambda!255989 lambda!255988)))

(declare-fun bs!1200120 () Bool)

(assert (= bs!1200120 (and b!5136133 b!5136032)))

(assert (=> bs!1200120 (not (= lambda!255989 lambda!255938))))

(declare-fun bs!1200121 () Bool)

(assert (= bs!1200121 (and b!5136133 d!1661952)))

(assert (=> bs!1200121 (not (= lambda!255989 lambda!255987))))

(declare-fun lt!2119591 () Bool)

(assert (=> d!1661952 (= lt!2119591 (isEmpty!32028 (getLanguageWitness!912 lt!2119493)))))

(assert (=> d!1661952 (= lt!2119591 (forall!13874 lt!2119493 lambda!255987))))

(declare-fun lt!2119596 () Unit!150989)

(declare-fun e!3203603 () Unit!150989)

(assert (=> d!1661952 (= lt!2119596 e!3203603)))

(declare-fun c!884291 () Bool)

(assert (=> d!1661952 (= c!884291 (not (forall!13874 lt!2119493 lambda!255987)))))

(assert (=> d!1661952 (= (lostCauseZipper!1237 lt!2119493) lt!2119591)))

(declare-fun bm!358011 () Bool)

(declare-fun call!358016 () List!59761)

(assert (=> bm!358011 (= call!358016 (toList!8371 lt!2119493))))

(declare-fun bm!358012 () Bool)

(declare-fun lt!2119592 () List!59761)

(declare-fun lt!2119589 () List!59761)

(declare-fun call!358017 () Bool)

(assert (=> bm!358012 (= call!358017 (exists!1747 (ite c!884291 lt!2119592 lt!2119589) (ite c!884291 lambda!255988 lambda!255989)))))

(declare-fun Unit!150999 () Unit!150989)

(assert (=> b!5136132 (= e!3203603 Unit!150999)))

(assert (=> b!5136132 (= lt!2119592 call!358016)))

(declare-fun lt!2119595 () Unit!150989)

(assert (=> b!5136132 (= lt!2119595 (lemmaNotForallThenExists!418 lt!2119592 lambda!255987))))

(assert (=> b!5136132 call!358017))

(declare-fun lt!2119590 () Unit!150989)

(assert (=> b!5136132 (= lt!2119590 lt!2119595)))

(declare-fun Unit!151000 () Unit!150989)

(assert (=> b!5136133 (= e!3203603 Unit!151000)))

(assert (=> b!5136133 (= lt!2119589 call!358016)))

(declare-fun lt!2119593 () Unit!150989)

(assert (=> b!5136133 (= lt!2119593 (lemmaForallThenNotExists!385 lt!2119589 lambda!255987))))

(assert (=> b!5136133 (not call!358017)))

(declare-fun lt!2119594 () Unit!150989)

(assert (=> b!5136133 (= lt!2119594 lt!2119593)))

(assert (= (and d!1661952 c!884291) b!5136132))

(assert (= (and d!1661952 (not c!884291)) b!5136133))

(assert (= (or b!5136132 b!5136133) bm!358011))

(assert (= (or b!5136132 b!5136133) bm!358012))

(declare-fun m!6201876 () Bool)

(assert (=> b!5136132 m!6201876))

(declare-fun m!6201878 () Bool)

(assert (=> bm!358012 m!6201878))

(declare-fun m!6201880 () Bool)

(assert (=> b!5136133 m!6201880))

(assert (=> bm!358011 m!6201864))

(declare-fun m!6201882 () Bool)

(assert (=> d!1661952 m!6201882))

(assert (=> d!1661952 m!6201882))

(declare-fun m!6201884 () Bool)

(assert (=> d!1661952 m!6201884))

(declare-fun m!6201886 () Bool)

(assert (=> d!1661952 m!6201886))

(assert (=> d!1661952 m!6201886))

(assert (=> b!5136032 d!1661952))

(declare-fun d!1661954 () Bool)

(assert (=> d!1661954 (not (lostCause!1378 (h!66081 (exprs!4293 ctx!74))))))

(declare-fun lt!2119599 () Unit!150989)

(declare-fun choose!38018 (Regex!14409) Unit!150989)

(assert (=> d!1661954 (= lt!2119599 (choose!38018 (h!66081 (exprs!4293 ctx!74))))))

(assert (=> d!1661954 (validRegex!6267 (h!66081 (exprs!4293 ctx!74)))))

(assert (=> d!1661954 (= (lemmaNullableThenNotLostCause!60 (h!66081 (exprs!4293 ctx!74))) lt!2119599)))

(declare-fun bs!1200122 () Bool)

(assert (= bs!1200122 d!1661954))

(assert (=> bs!1200122 m!6201708))

(declare-fun m!6201888 () Bool)

(assert (=> bs!1200122 m!6201888))

(assert (=> bs!1200122 m!6201874))

(assert (=> b!5136032 d!1661954))

(declare-fun bm!358025 () Bool)

(declare-fun call!358033 () (InoxSet Context!7586))

(declare-fun call!358032 () (InoxSet Context!7586))

(assert (=> bm!358025 (= call!358033 call!358032)))

(declare-fun b!5136156 () Bool)

(declare-fun e!3203616 () (InoxSet Context!7586))

(assert (=> b!5136156 (= e!3203616 ((as const (Array Context!7586 Bool)) false))))

(declare-fun b!5136157 () Bool)

(declare-fun e!3203621 () (InoxSet Context!7586))

(assert (=> b!5136157 (= e!3203621 call!358033)))

(declare-fun bm!358026 () Bool)

(declare-fun call!358031 () (InoxSet Context!7586))

(declare-fun c!884304 () Bool)

(declare-fun call!358030 () List!59757)

(assert (=> bm!358026 (= call!358031 (derivationStepZipperDown!118 (ite c!884304 (regOne!29331 (h!66081 (exprs!4293 ctx!74))) (regOne!29330 (h!66081 (exprs!4293 ctx!74)))) (ite c!884304 lt!2119492 (Context!7587 call!358030)) a!1252))))

(declare-fun d!1661956 () Bool)

(declare-fun c!884305 () Bool)

(assert (=> d!1661956 (= c!884305 (and ((_ is ElementMatch!14409) (h!66081 (exprs!4293 ctx!74))) (= (c!884235 (h!66081 (exprs!4293 ctx!74))) a!1252)))))

(declare-fun e!3203617 () (InoxSet Context!7586))

(assert (=> d!1661956 (= (derivationStepZipperDown!118 (h!66081 (exprs!4293 ctx!74)) lt!2119492 a!1252) e!3203617)))

(declare-fun b!5136158 () Bool)

(declare-fun e!3203619 () Bool)

(assert (=> b!5136158 (= e!3203619 (nullable!4782 (regOne!29330 (h!66081 (exprs!4293 ctx!74)))))))

(declare-fun b!5136159 () Bool)

(assert (=> b!5136159 (= e!3203616 call!358033)))

(declare-fun bm!358027 () Bool)

(declare-fun call!358034 () (InoxSet Context!7586))

(assert (=> bm!358027 (= call!358032 call!358034)))

(declare-fun b!5136160 () Bool)

(declare-fun e!3203620 () (InoxSet Context!7586))

(assert (=> b!5136160 (= e!3203617 e!3203620)))

(assert (=> b!5136160 (= c!884304 ((_ is Union!14409) (h!66081 (exprs!4293 ctx!74))))))

(declare-fun b!5136161 () Bool)

(declare-fun e!3203618 () (InoxSet Context!7586))

(assert (=> b!5136161 (= e!3203618 ((_ map or) call!358031 call!358032))))

(declare-fun bm!358028 () Bool)

(declare-fun call!358035 () List!59757)

(assert (=> bm!358028 (= call!358035 call!358030)))

(declare-fun c!884302 () Bool)

(declare-fun bm!358029 () Bool)

(declare-fun c!884303 () Bool)

(assert (=> bm!358029 (= call!358034 (derivationStepZipperDown!118 (ite c!884304 (regTwo!29331 (h!66081 (exprs!4293 ctx!74))) (ite c!884302 (regTwo!29330 (h!66081 (exprs!4293 ctx!74))) (ite c!884303 (regOne!29330 (h!66081 (exprs!4293 ctx!74))) (reg!14738 (h!66081 (exprs!4293 ctx!74)))))) (ite (or c!884304 c!884302) lt!2119492 (Context!7587 call!358035)) a!1252))))

(declare-fun bm!358030 () Bool)

(declare-fun $colon$colon!1168 (List!59757 Regex!14409) List!59757)

(assert (=> bm!358030 (= call!358030 ($colon$colon!1168 (exprs!4293 lt!2119492) (ite (or c!884302 c!884303) (regTwo!29330 (h!66081 (exprs!4293 ctx!74))) (h!66081 (exprs!4293 ctx!74)))))))

(declare-fun b!5136162 () Bool)

(assert (=> b!5136162 (= c!884302 e!3203619)))

(declare-fun res!2187600 () Bool)

(assert (=> b!5136162 (=> (not res!2187600) (not e!3203619))))

(assert (=> b!5136162 (= res!2187600 ((_ is Concat!23254) (h!66081 (exprs!4293 ctx!74))))))

(assert (=> b!5136162 (= e!3203620 e!3203618)))

(declare-fun b!5136163 () Bool)

(assert (=> b!5136163 (= e!3203618 e!3203621)))

(assert (=> b!5136163 (= c!884303 ((_ is Concat!23254) (h!66081 (exprs!4293 ctx!74))))))

(declare-fun b!5136164 () Bool)

(assert (=> b!5136164 (= e!3203617 (store ((as const (Array Context!7586 Bool)) false) lt!2119492 true))))

(declare-fun b!5136165 () Bool)

(assert (=> b!5136165 (= e!3203620 ((_ map or) call!358031 call!358034))))

(declare-fun b!5136166 () Bool)

(declare-fun c!884306 () Bool)

(assert (=> b!5136166 (= c!884306 ((_ is Star!14409) (h!66081 (exprs!4293 ctx!74))))))

(assert (=> b!5136166 (= e!3203621 e!3203616)))

(assert (= (and d!1661956 c!884305) b!5136164))

(assert (= (and d!1661956 (not c!884305)) b!5136160))

(assert (= (and b!5136160 c!884304) b!5136165))

(assert (= (and b!5136160 (not c!884304)) b!5136162))

(assert (= (and b!5136162 res!2187600) b!5136158))

(assert (= (and b!5136162 c!884302) b!5136161))

(assert (= (and b!5136162 (not c!884302)) b!5136163))

(assert (= (and b!5136163 c!884303) b!5136157))

(assert (= (and b!5136163 (not c!884303)) b!5136166))

(assert (= (and b!5136166 c!884306) b!5136159))

(assert (= (and b!5136166 (not c!884306)) b!5136156))

(assert (= (or b!5136157 b!5136159) bm!358028))

(assert (= (or b!5136157 b!5136159) bm!358025))

(assert (= (or b!5136161 bm!358028) bm!358030))

(assert (= (or b!5136161 bm!358025) bm!358027))

(assert (= (or b!5136165 b!5136161) bm!358026))

(assert (= (or b!5136165 bm!358027) bm!358029))

(declare-fun m!6201890 () Bool)

(assert (=> bm!358029 m!6201890))

(declare-fun m!6201892 () Bool)

(assert (=> b!5136158 m!6201892))

(declare-fun m!6201894 () Bool)

(assert (=> bm!358026 m!6201894))

(declare-fun m!6201896 () Bool)

(assert (=> bm!358030 m!6201896))

(declare-fun m!6201898 () Bool)

(assert (=> b!5136164 m!6201898))

(assert (=> b!5136032 d!1661956))

(declare-fun bs!1200123 () Bool)

(declare-fun d!1661958 () Bool)

(assert (= bs!1200123 (and d!1661958 d!1661910)))

(declare-fun lambda!255990 () Int)

(assert (=> bs!1200123 (= lambda!255990 lambda!255975)))

(declare-fun bs!1200124 () Bool)

(assert (= bs!1200124 (and d!1661958 b!5136098)))

(assert (=> bs!1200124 (not (= lambda!255990 lambda!255976))))

(declare-fun bs!1200125 () Bool)

(assert (= bs!1200125 (and d!1661958 b!5136099)))

(assert (=> bs!1200125 (not (= lambda!255990 lambda!255977))))

(declare-fun bs!1200126 () Bool)

(assert (= bs!1200126 (and d!1661958 b!5136133)))

(assert (=> bs!1200126 (not (= lambda!255990 lambda!255989))))

(declare-fun bs!1200127 () Bool)

(assert (= bs!1200127 (and d!1661958 b!5136132)))

(assert (=> bs!1200127 (not (= lambda!255990 lambda!255988))))

(declare-fun bs!1200128 () Bool)

(assert (= bs!1200128 (and d!1661958 b!5136032)))

(assert (=> bs!1200128 (= lambda!255990 lambda!255938)))

(declare-fun bs!1200129 () Bool)

(assert (= bs!1200129 (and d!1661958 d!1661952)))

(assert (=> bs!1200129 (= lambda!255990 lambda!255987)))

(declare-fun bs!1200130 () Bool)

(declare-fun b!5136167 () Bool)

(assert (= bs!1200130 (and b!5136167 d!1661910)))

(declare-fun lambda!255991 () Int)

(assert (=> bs!1200130 (not (= lambda!255991 lambda!255975))))

(declare-fun bs!1200131 () Bool)

(assert (= bs!1200131 (and b!5136167 b!5136098)))

(assert (=> bs!1200131 (= lambda!255991 lambda!255976)))

(declare-fun bs!1200132 () Bool)

(assert (= bs!1200132 (and b!5136167 b!5136099)))

(assert (=> bs!1200132 (= lambda!255991 lambda!255977)))

(declare-fun bs!1200133 () Bool)

(assert (= bs!1200133 (and b!5136167 d!1661958)))

(assert (=> bs!1200133 (not (= lambda!255991 lambda!255990))))

(declare-fun bs!1200134 () Bool)

(assert (= bs!1200134 (and b!5136167 b!5136133)))

(assert (=> bs!1200134 (= lambda!255991 lambda!255989)))

(declare-fun bs!1200135 () Bool)

(assert (= bs!1200135 (and b!5136167 b!5136132)))

(assert (=> bs!1200135 (= lambda!255991 lambda!255988)))

(declare-fun bs!1200136 () Bool)

(assert (= bs!1200136 (and b!5136167 b!5136032)))

(assert (=> bs!1200136 (not (= lambda!255991 lambda!255938))))

(declare-fun bs!1200137 () Bool)

(assert (= bs!1200137 (and b!5136167 d!1661952)))

(assert (=> bs!1200137 (not (= lambda!255991 lambda!255987))))

(declare-fun bs!1200138 () Bool)

(declare-fun b!5136168 () Bool)

(assert (= bs!1200138 (and b!5136168 b!5136167)))

(declare-fun lambda!255992 () Int)

(assert (=> bs!1200138 (= lambda!255992 lambda!255991)))

(declare-fun bs!1200139 () Bool)

(assert (= bs!1200139 (and b!5136168 d!1661910)))

(assert (=> bs!1200139 (not (= lambda!255992 lambda!255975))))

(declare-fun bs!1200140 () Bool)

(assert (= bs!1200140 (and b!5136168 b!5136098)))

(assert (=> bs!1200140 (= lambda!255992 lambda!255976)))

(declare-fun bs!1200141 () Bool)

(assert (= bs!1200141 (and b!5136168 b!5136099)))

(assert (=> bs!1200141 (= lambda!255992 lambda!255977)))

(declare-fun bs!1200142 () Bool)

(assert (= bs!1200142 (and b!5136168 d!1661958)))

(assert (=> bs!1200142 (not (= lambda!255992 lambda!255990))))

(declare-fun bs!1200143 () Bool)

(assert (= bs!1200143 (and b!5136168 b!5136133)))

(assert (=> bs!1200143 (= lambda!255992 lambda!255989)))

(declare-fun bs!1200144 () Bool)

(assert (= bs!1200144 (and b!5136168 b!5136132)))

(assert (=> bs!1200144 (= lambda!255992 lambda!255988)))

(declare-fun bs!1200145 () Bool)

(assert (= bs!1200145 (and b!5136168 b!5136032)))

(assert (=> bs!1200145 (not (= lambda!255992 lambda!255938))))

(declare-fun bs!1200146 () Bool)

(assert (= bs!1200146 (and b!5136168 d!1661952)))

(assert (=> bs!1200146 (not (= lambda!255992 lambda!255987))))

(declare-fun lt!2119602 () Bool)

(assert (=> d!1661958 (= lt!2119602 (isEmpty!32028 (getLanguageWitness!912 lt!2119494)))))

(assert (=> d!1661958 (= lt!2119602 (forall!13874 lt!2119494 lambda!255990))))

(declare-fun lt!2119607 () Unit!150989)

(declare-fun e!3203622 () Unit!150989)

(assert (=> d!1661958 (= lt!2119607 e!3203622)))

(declare-fun c!884307 () Bool)

(assert (=> d!1661958 (= c!884307 (not (forall!13874 lt!2119494 lambda!255990)))))

(assert (=> d!1661958 (= (lostCauseZipper!1237 lt!2119494) lt!2119602)))

(declare-fun bm!358031 () Bool)

(declare-fun call!358036 () List!59761)

(assert (=> bm!358031 (= call!358036 (toList!8371 lt!2119494))))

(declare-fun bm!358032 () Bool)

(declare-fun call!358037 () Bool)

(declare-fun lt!2119603 () List!59761)

(declare-fun lt!2119600 () List!59761)

(assert (=> bm!358032 (= call!358037 (exists!1747 (ite c!884307 lt!2119603 lt!2119600) (ite c!884307 lambda!255991 lambda!255992)))))

(declare-fun Unit!151001 () Unit!150989)

(assert (=> b!5136167 (= e!3203622 Unit!151001)))

(assert (=> b!5136167 (= lt!2119603 call!358036)))

(declare-fun lt!2119606 () Unit!150989)

(assert (=> b!5136167 (= lt!2119606 (lemmaNotForallThenExists!418 lt!2119603 lambda!255990))))

(assert (=> b!5136167 call!358037))

(declare-fun lt!2119601 () Unit!150989)

(assert (=> b!5136167 (= lt!2119601 lt!2119606)))

(declare-fun Unit!151002 () Unit!150989)

(assert (=> b!5136168 (= e!3203622 Unit!151002)))

(assert (=> b!5136168 (= lt!2119600 call!358036)))

(declare-fun lt!2119604 () Unit!150989)

(assert (=> b!5136168 (= lt!2119604 (lemmaForallThenNotExists!385 lt!2119600 lambda!255990))))

(assert (=> b!5136168 (not call!358037)))

(declare-fun lt!2119605 () Unit!150989)

(assert (=> b!5136168 (= lt!2119605 lt!2119604)))

(assert (= (and d!1661958 c!884307) b!5136167))

(assert (= (and d!1661958 (not c!884307)) b!5136168))

(assert (= (or b!5136167 b!5136168) bm!358031))

(assert (= (or b!5136167 b!5136168) bm!358032))

(declare-fun m!6201900 () Bool)

(assert (=> b!5136167 m!6201900))

(declare-fun m!6201902 () Bool)

(assert (=> bm!358032 m!6201902))

(declare-fun m!6201904 () Bool)

(assert (=> b!5136168 m!6201904))

(declare-fun m!6201906 () Bool)

(assert (=> bm!358031 m!6201906))

(declare-fun m!6201908 () Bool)

(assert (=> d!1661958 m!6201908))

(assert (=> d!1661958 m!6201908))

(declare-fun m!6201910 () Bool)

(assert (=> d!1661958 m!6201910))

(declare-fun m!6201912 () Bool)

(assert (=> d!1661958 m!6201912))

(assert (=> d!1661958 m!6201912))

(assert (=> b!5136032 d!1661958))

(declare-fun d!1661960 () Bool)

(declare-fun lt!2119608 () Bool)

(assert (=> d!1661960 (= lt!2119608 (forall!13878 (toList!8371 lt!2119494) lambda!255938))))

(assert (=> d!1661960 (= lt!2119608 (choose!38014 lt!2119494 lambda!255938))))

(assert (=> d!1661960 (= (forall!13874 lt!2119494 lambda!255938) lt!2119608)))

(declare-fun bs!1200147 () Bool)

(assert (= bs!1200147 d!1661960))

(assert (=> bs!1200147 m!6201906))

(assert (=> bs!1200147 m!6201906))

(declare-fun m!6201914 () Bool)

(assert (=> bs!1200147 m!6201914))

(declare-fun m!6201916 () Bool)

(assert (=> bs!1200147 m!6201916))

(assert (=> b!5136037 d!1661960))

(declare-fun b!5136173 () Bool)

(declare-fun e!3203625 () Bool)

(declare-fun tp!1432454 () Bool)

(declare-fun tp!1432455 () Bool)

(assert (=> b!5136173 (= e!3203625 (and tp!1432454 tp!1432455))))

(assert (=> b!5136036 (= tp!1432443 e!3203625)))

(assert (= (and b!5136036 ((_ is Cons!59633) (exprs!4293 ctx!74))) b!5136173))

(check-sat (not d!1661910) (not d!1661958) (not b!5136173) (not bm!358032) (not b!5136167) (not d!1661940) (not d!1661954) (not d!1661906) (not bm!358002) (not d!1661908) (not b!5136127) (not b!5136168) (not b!5136118) (not b!5136158) (not bm!358026) (not d!1661942) (not b!5136117) (not bm!358003) (not d!1661960) (not b!5136098) (not bm!358030) (not b!5136128) (not d!1661952) (not bm!358009) (not d!1661946) (not d!1661948) (not bm!358010) (not d!1661950) (not b!5136099) (not bm!358011) (not bm!358012) (not bm!358029) tp_is_empty!37971 (not b!5136133) (not b!5136132) (not bm!358031) (not d!1661938) (not d!1661904))
(check-sat)
