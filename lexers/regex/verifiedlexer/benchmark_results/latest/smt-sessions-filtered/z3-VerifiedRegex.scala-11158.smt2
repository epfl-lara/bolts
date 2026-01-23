; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!579562 () Bool)

(assert start!579562)

(declare-fun b!5579318 () Bool)

(assert (=> b!5579318 true))

(assert (=> b!5579318 true))

(declare-fun lambda!299169 () Int)

(declare-fun lambda!299168 () Int)

(assert (=> b!5579318 (not (= lambda!299169 lambda!299168))))

(assert (=> b!5579318 true))

(assert (=> b!5579318 true))

(declare-fun b!5579326 () Bool)

(assert (=> b!5579326 true))

(declare-fun b!5579306 () Bool)

(declare-fun e!3442736 () Bool)

(declare-fun e!3442724 () Bool)

(assert (=> b!5579306 (= e!3442736 e!3442724)))

(declare-fun res!2367921 () Bool)

(assert (=> b!5579306 (=> res!2367921 e!3442724)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!31396 0))(
  ( (C!31397 (val!25400 Int)) )
))
(declare-datatypes ((Regex!15563 0))(
  ( (ElementMatch!15563 (c!976846 C!31396)) (Concat!24408 (regOne!31638 Regex!15563) (regTwo!31638 Regex!15563)) (EmptyExpr!15563) (Star!15563 (reg!15892 Regex!15563)) (EmptyLang!15563) (Union!15563 (regOne!31639 Regex!15563) (regTwo!31639 Regex!15563)) )
))
(declare-datatypes ((List!62988 0))(
  ( (Nil!62864) (Cons!62864 (h!69312 Regex!15563) (t!376259 List!62988)) )
))
(declare-datatypes ((Context!9894 0))(
  ( (Context!9895 (exprs!5447 List!62988)) )
))
(declare-fun lt!2253337 () (InoxSet Context!9894))

(declare-fun lt!2253324 () (InoxSet Context!9894))

(assert (=> b!5579306 (= res!2367921 (not (= lt!2253337 lt!2253324)))))

(declare-fun lt!2253319 () (InoxSet Context!9894))

(declare-fun lt!2253321 () (InoxSet Context!9894))

(assert (=> b!5579306 (= lt!2253324 ((_ map or) lt!2253319 lt!2253321))))

(declare-fun r!7292 () Regex!15563)

(declare-datatypes ((List!62989 0))(
  ( (Nil!62865) (Cons!62865 (h!69313 C!31396) (t!376260 List!62989)) )
))
(declare-fun s!2326 () List!62989)

(declare-fun lt!2253334 () Context!9894)

(declare-fun derivationStepZipperDown!905 (Regex!15563 Context!9894 C!31396) (InoxSet Context!9894))

(assert (=> b!5579306 (= lt!2253321 (derivationStepZipperDown!905 (regTwo!31639 (regOne!31638 r!7292)) lt!2253334 (h!69313 s!2326)))))

(assert (=> b!5579306 (= lt!2253319 (derivationStepZipperDown!905 (regOne!31639 (regOne!31638 r!7292)) lt!2253334 (h!69313 s!2326)))))

(declare-fun b!5579307 () Bool)

(declare-fun e!3442732 () Bool)

(declare-fun tp_is_empty!40379 () Bool)

(declare-fun tp!1543891 () Bool)

(assert (=> b!5579307 (= e!3442732 (and tp_is_empty!40379 tp!1543891))))

(declare-fun b!5579308 () Bool)

(declare-fun e!3442729 () Bool)

(declare-fun tp!1543887 () Bool)

(assert (=> b!5579308 (= e!3442729 tp!1543887)))

(declare-fun b!5579309 () Bool)

(declare-fun e!3442728 () Bool)

(declare-fun tp!1543895 () Bool)

(assert (=> b!5579309 (= e!3442728 tp!1543895)))

(declare-fun b!5579310 () Bool)

(declare-fun res!2367938 () Bool)

(declare-fun e!3442733 () Bool)

(assert (=> b!5579310 (=> (not res!2367938) (not e!3442733))))

(declare-fun z!1189 () (InoxSet Context!9894))

(declare-datatypes ((List!62990 0))(
  ( (Nil!62866) (Cons!62866 (h!69314 Context!9894) (t!376261 List!62990)) )
))
(declare-fun zl!343 () List!62990)

(declare-fun toList!9347 ((InoxSet Context!9894)) List!62990)

(assert (=> b!5579310 (= res!2367938 (= (toList!9347 z!1189) zl!343))))

(declare-fun b!5579311 () Bool)

(declare-fun res!2367925 () Bool)

(declare-fun e!3442737 () Bool)

(assert (=> b!5579311 (=> res!2367925 e!3442737)))

(declare-fun generalisedUnion!1426 (List!62988) Regex!15563)

(declare-fun unfocusZipperList!991 (List!62990) List!62988)

(assert (=> b!5579311 (= res!2367925 (not (= r!7292 (generalisedUnion!1426 (unfocusZipperList!991 zl!343)))))))

(declare-fun b!5579312 () Bool)

(declare-fun res!2367931 () Bool)

(declare-fun e!3442723 () Bool)

(assert (=> b!5579312 (=> res!2367931 e!3442723)))

(declare-fun isEmpty!34671 (List!62988) Bool)

(assert (=> b!5579312 (= res!2367931 (isEmpty!34671 (t!376259 (exprs!5447 (h!69314 zl!343)))))))

(declare-fun b!5579313 () Bool)

(declare-fun e!3442734 () Bool)

(declare-fun matchZipper!1701 ((InoxSet Context!9894) List!62989) Bool)

(assert (=> b!5579313 (= e!3442734 (not (matchZipper!1701 lt!2253321 (t!376260 s!2326))))))

(declare-fun b!5579314 () Bool)

(declare-fun e!3442730 () Bool)

(assert (=> b!5579314 (= e!3442724 e!3442730)))

(declare-fun res!2367924 () Bool)

(assert (=> b!5579314 (=> res!2367924 e!3442730)))

(assert (=> b!5579314 (= res!2367924 e!3442734)))

(declare-fun res!2367927 () Bool)

(assert (=> b!5579314 (=> (not res!2367927) (not e!3442734))))

(declare-fun lt!2253318 () Bool)

(assert (=> b!5579314 (= res!2367927 (not (= (matchZipper!1701 lt!2253337 (t!376260 s!2326)) lt!2253318)))))

(declare-fun e!3442735 () Bool)

(assert (=> b!5579314 (= (matchZipper!1701 lt!2253324 (t!376260 s!2326)) e!3442735)))

(declare-fun res!2367934 () Bool)

(assert (=> b!5579314 (=> res!2367934 e!3442735)))

(assert (=> b!5579314 (= res!2367934 lt!2253318)))

(assert (=> b!5579314 (= lt!2253318 (matchZipper!1701 lt!2253319 (t!376260 s!2326)))))

(declare-datatypes ((Unit!155624 0))(
  ( (Unit!155625) )
))
(declare-fun lt!2253329 () Unit!155624)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!588 ((InoxSet Context!9894) (InoxSet Context!9894) List!62989) Unit!155624)

(assert (=> b!5579314 (= lt!2253329 (lemmaZipperConcatMatchesSameAsBothZippers!588 lt!2253319 lt!2253321 (t!376260 s!2326)))))

(declare-fun b!5579315 () Bool)

(declare-fun e!3442727 () Bool)

(declare-fun lt!2253325 () (InoxSet Context!9894))

(assert (=> b!5579315 (= e!3442727 (matchZipper!1701 lt!2253325 (t!376260 s!2326)))))

(declare-fun b!5579316 () Bool)

(declare-fun res!2367928 () Bool)

(assert (=> b!5579316 (=> res!2367928 e!3442737)))

(get-info :version)

(assert (=> b!5579316 (= res!2367928 (or ((_ is EmptyExpr!15563) r!7292) ((_ is EmptyLang!15563) r!7292) ((_ is ElementMatch!15563) r!7292) ((_ is Union!15563) r!7292) (not ((_ is Concat!24408) r!7292))))))

(declare-fun b!5579317 () Bool)

(assert (=> b!5579317 (= e!3442735 (matchZipper!1701 lt!2253321 (t!376260 s!2326)))))

(declare-fun setIsEmpty!37131 () Bool)

(declare-fun setRes!37131 () Bool)

(assert (=> setIsEmpty!37131 setRes!37131))

(assert (=> b!5579318 (= e!3442737 e!3442723)))

(declare-fun res!2367937 () Bool)

(assert (=> b!5579318 (=> res!2367937 e!3442723)))

(declare-fun lt!2253327 () Bool)

(declare-fun lt!2253336 () Bool)

(assert (=> b!5579318 (= res!2367937 (or (not (= lt!2253327 lt!2253336)) ((_ is Nil!62865) s!2326)))))

(declare-fun Exists!2663 (Int) Bool)

(assert (=> b!5579318 (= (Exists!2663 lambda!299168) (Exists!2663 lambda!299169))))

(declare-fun lt!2253332 () Unit!155624)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1292 (Regex!15563 Regex!15563 List!62989) Unit!155624)

(assert (=> b!5579318 (= lt!2253332 (lemmaExistCutMatchRandMatchRSpecEquivalent!1292 (regOne!31638 r!7292) (regTwo!31638 r!7292) s!2326))))

(assert (=> b!5579318 (= lt!2253336 (Exists!2663 lambda!299168))))

(declare-datatypes ((tuple2!65320 0))(
  ( (tuple2!65321 (_1!35963 List!62989) (_2!35963 List!62989)) )
))
(declare-datatypes ((Option!15572 0))(
  ( (None!15571) (Some!15571 (v!51612 tuple2!65320)) )
))
(declare-fun isDefined!12275 (Option!15572) Bool)

(declare-fun findConcatSeparation!1986 (Regex!15563 Regex!15563 List!62989 List!62989 List!62989) Option!15572)

(assert (=> b!5579318 (= lt!2253336 (isDefined!12275 (findConcatSeparation!1986 (regOne!31638 r!7292) (regTwo!31638 r!7292) Nil!62865 s!2326 s!2326)))))

(declare-fun lt!2253331 () Unit!155624)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1750 (Regex!15563 Regex!15563 List!62989) Unit!155624)

(assert (=> b!5579318 (= lt!2253331 (lemmaFindConcatSeparationEquivalentToExists!1750 (regOne!31638 r!7292) (regTwo!31638 r!7292) s!2326))))

(declare-fun setElem!37131 () Context!9894)

(declare-fun tp!1543886 () Bool)

(declare-fun setNonEmpty!37131 () Bool)

(declare-fun inv!82154 (Context!9894) Bool)

(assert (=> setNonEmpty!37131 (= setRes!37131 (and tp!1543886 (inv!82154 setElem!37131) e!3442729))))

(declare-fun setRest!37131 () (InoxSet Context!9894))

(assert (=> setNonEmpty!37131 (= z!1189 ((_ map or) (store ((as const (Array Context!9894 Bool)) false) setElem!37131 true) setRest!37131))))

(declare-fun res!2367920 () Bool)

(assert (=> start!579562 (=> (not res!2367920) (not e!3442733))))

(declare-fun validRegex!7299 (Regex!15563) Bool)

(assert (=> start!579562 (= res!2367920 (validRegex!7299 r!7292))))

(assert (=> start!579562 e!3442733))

(declare-fun e!3442731 () Bool)

(assert (=> start!579562 e!3442731))

(declare-fun condSetEmpty!37131 () Bool)

(assert (=> start!579562 (= condSetEmpty!37131 (= z!1189 ((as const (Array Context!9894 Bool)) false)))))

(assert (=> start!579562 setRes!37131))

(declare-fun e!3442725 () Bool)

(assert (=> start!579562 e!3442725))

(assert (=> start!579562 e!3442732))

(declare-fun b!5579319 () Bool)

(declare-fun res!2367923 () Bool)

(assert (=> b!5579319 (=> res!2367923 e!3442737)))

(assert (=> b!5579319 (= res!2367923 (not ((_ is Cons!62864) (exprs!5447 (h!69314 zl!343)))))))

(declare-fun b!5579320 () Bool)

(declare-fun tp!1543894 () Bool)

(declare-fun tp!1543893 () Bool)

(assert (=> b!5579320 (= e!3442731 (and tp!1543894 tp!1543893))))

(declare-fun b!5579321 () Bool)

(declare-fun res!2367926 () Bool)

(declare-fun e!3442726 () Bool)

(assert (=> b!5579321 (=> res!2367926 e!3442726)))

(declare-fun lt!2253323 () (InoxSet Context!9894))

(assert (=> b!5579321 (= res!2367926 (not (= lt!2253323 lt!2253319)))))

(declare-fun b!5579322 () Bool)

(assert (=> b!5579322 (= e!3442733 (not e!3442737))))

(declare-fun res!2367936 () Bool)

(assert (=> b!5579322 (=> res!2367936 e!3442737)))

(assert (=> b!5579322 (= res!2367936 (not ((_ is Cons!62866) zl!343)))))

(declare-fun matchRSpec!2666 (Regex!15563 List!62989) Bool)

(assert (=> b!5579322 (= lt!2253327 (matchRSpec!2666 r!7292 s!2326))))

(declare-fun matchR!7748 (Regex!15563 List!62989) Bool)

(assert (=> b!5579322 (= lt!2253327 (matchR!7748 r!7292 s!2326))))

(declare-fun lt!2253328 () Unit!155624)

(declare-fun mainMatchTheorem!2666 (Regex!15563 List!62989) Unit!155624)

(assert (=> b!5579322 (= lt!2253328 (mainMatchTheorem!2666 r!7292 s!2326))))

(declare-fun b!5579323 () Bool)

(assert (=> b!5579323 (= e!3442730 e!3442726)))

(declare-fun res!2367929 () Bool)

(assert (=> b!5579323 (=> res!2367929 e!3442726)))

(declare-fun nullable!5595 (Regex!15563) Bool)

(assert (=> b!5579323 (= res!2367929 (nullable!5595 (regOne!31639 (regOne!31638 r!7292))))))

(declare-fun lambda!299170 () Int)

(declare-fun lt!2253320 () (InoxSet Context!9894))

(declare-fun lt!2253322 () Context!9894)

(declare-fun flatMap!1176 ((InoxSet Context!9894) Int) (InoxSet Context!9894))

(declare-fun derivationStepZipperUp!831 (Context!9894 C!31396) (InoxSet Context!9894))

(assert (=> b!5579323 (= (flatMap!1176 lt!2253320 lambda!299170) (derivationStepZipperUp!831 lt!2253322 (h!69313 s!2326)))))

(declare-fun lt!2253330 () Unit!155624)

(declare-fun lemmaFlatMapOnSingletonSet!708 ((InoxSet Context!9894) Context!9894 Int) Unit!155624)

(assert (=> b!5579323 (= lt!2253330 (lemmaFlatMapOnSingletonSet!708 lt!2253320 lt!2253322 lambda!299170))))

(assert (=> b!5579323 (= lt!2253323 (derivationStepZipperUp!831 lt!2253322 (h!69313 s!2326)))))

(assert (=> b!5579323 (= lt!2253320 (store ((as const (Array Context!9894 Bool)) false) lt!2253322 true))))

(assert (=> b!5579323 (= lt!2253322 (Context!9895 (Cons!62864 (regOne!31639 (regOne!31638 r!7292)) (t!376259 (exprs!5447 (h!69314 zl!343))))))))

(declare-fun b!5579324 () Bool)

(declare-fun res!2367933 () Bool)

(assert (=> b!5579324 (=> res!2367933 e!3442737)))

(declare-fun isEmpty!34672 (List!62990) Bool)

(assert (=> b!5579324 (= res!2367933 (not (isEmpty!34672 (t!376261 zl!343))))))

(declare-fun b!5579325 () Bool)

(assert (=> b!5579325 (= e!3442726 (= (matchZipper!1701 lt!2253320 s!2326) lt!2253318))))

(assert (=> b!5579326 (= e!3442723 e!3442736)))

(declare-fun res!2367935 () Bool)

(assert (=> b!5579326 (=> res!2367935 e!3442736)))

(assert (=> b!5579326 (= res!2367935 (or (and ((_ is ElementMatch!15563) (regOne!31638 r!7292)) (= (c!976846 (regOne!31638 r!7292)) (h!69313 s!2326))) (not ((_ is Union!15563) (regOne!31638 r!7292)))))))

(declare-fun lt!2253338 () Unit!155624)

(declare-fun e!3442722 () Unit!155624)

(assert (=> b!5579326 (= lt!2253338 e!3442722)))

(declare-fun c!976845 () Bool)

(assert (=> b!5579326 (= c!976845 (nullable!5595 (h!69312 (exprs!5447 (h!69314 zl!343)))))))

(assert (=> b!5579326 (= (flatMap!1176 z!1189 lambda!299170) (derivationStepZipperUp!831 (h!69314 zl!343) (h!69313 s!2326)))))

(declare-fun lt!2253333 () Unit!155624)

(assert (=> b!5579326 (= lt!2253333 (lemmaFlatMapOnSingletonSet!708 z!1189 (h!69314 zl!343) lambda!299170))))

(assert (=> b!5579326 (= lt!2253325 (derivationStepZipperUp!831 lt!2253334 (h!69313 s!2326)))))

(assert (=> b!5579326 (= lt!2253337 (derivationStepZipperDown!905 (h!69312 (exprs!5447 (h!69314 zl!343))) lt!2253334 (h!69313 s!2326)))))

(assert (=> b!5579326 (= lt!2253334 (Context!9895 (t!376259 (exprs!5447 (h!69314 zl!343)))))))

(declare-fun lt!2253326 () (InoxSet Context!9894))

(assert (=> b!5579326 (= lt!2253326 (derivationStepZipperUp!831 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343))))) (h!69313 s!2326)))))

(declare-fun b!5579327 () Bool)

(declare-fun res!2367932 () Bool)

(assert (=> b!5579327 (=> res!2367932 e!3442737)))

(declare-fun generalisedConcat!1178 (List!62988) Regex!15563)

(assert (=> b!5579327 (= res!2367932 (not (= r!7292 (generalisedConcat!1178 (exprs!5447 (h!69314 zl!343))))))))

(declare-fun b!5579328 () Bool)

(assert (=> b!5579328 (= e!3442731 tp_is_empty!40379)))

(declare-fun tp!1543892 () Bool)

(declare-fun b!5579329 () Bool)

(assert (=> b!5579329 (= e!3442725 (and (inv!82154 (h!69314 zl!343)) e!3442728 tp!1543892))))

(declare-fun b!5579330 () Bool)

(declare-fun res!2367930 () Bool)

(assert (=> b!5579330 (=> (not res!2367930) (not e!3442733))))

(declare-fun unfocusZipper!1305 (List!62990) Regex!15563)

(assert (=> b!5579330 (= res!2367930 (= r!7292 (unfocusZipper!1305 zl!343)))))

(declare-fun b!5579331 () Bool)

(declare-fun Unit!155626 () Unit!155624)

(assert (=> b!5579331 (= e!3442722 Unit!155626)))

(declare-fun lt!2253335 () Unit!155624)

(assert (=> b!5579331 (= lt!2253335 (lemmaZipperConcatMatchesSameAsBothZippers!588 lt!2253337 lt!2253325 (t!376260 s!2326)))))

(declare-fun res!2367922 () Bool)

(assert (=> b!5579331 (= res!2367922 (matchZipper!1701 lt!2253337 (t!376260 s!2326)))))

(assert (=> b!5579331 (=> res!2367922 e!3442727)))

(assert (=> b!5579331 (= (matchZipper!1701 ((_ map or) lt!2253337 lt!2253325) (t!376260 s!2326)) e!3442727)))

(declare-fun b!5579332 () Bool)

(declare-fun Unit!155627 () Unit!155624)

(assert (=> b!5579332 (= e!3442722 Unit!155627)))

(declare-fun b!5579333 () Bool)

(declare-fun tp!1543890 () Bool)

(declare-fun tp!1543888 () Bool)

(assert (=> b!5579333 (= e!3442731 (and tp!1543890 tp!1543888))))

(declare-fun b!5579334 () Bool)

(declare-fun tp!1543889 () Bool)

(assert (=> b!5579334 (= e!3442731 tp!1543889)))

(assert (= (and start!579562 res!2367920) b!5579310))

(assert (= (and b!5579310 res!2367938) b!5579330))

(assert (= (and b!5579330 res!2367930) b!5579322))

(assert (= (and b!5579322 (not res!2367936)) b!5579324))

(assert (= (and b!5579324 (not res!2367933)) b!5579327))

(assert (= (and b!5579327 (not res!2367932)) b!5579319))

(assert (= (and b!5579319 (not res!2367923)) b!5579311))

(assert (= (and b!5579311 (not res!2367925)) b!5579316))

(assert (= (and b!5579316 (not res!2367928)) b!5579318))

(assert (= (and b!5579318 (not res!2367937)) b!5579312))

(assert (= (and b!5579312 (not res!2367931)) b!5579326))

(assert (= (and b!5579326 c!976845) b!5579331))

(assert (= (and b!5579326 (not c!976845)) b!5579332))

(assert (= (and b!5579331 (not res!2367922)) b!5579315))

(assert (= (and b!5579326 (not res!2367935)) b!5579306))

(assert (= (and b!5579306 (not res!2367921)) b!5579314))

(assert (= (and b!5579314 (not res!2367934)) b!5579317))

(assert (= (and b!5579314 res!2367927) b!5579313))

(assert (= (and b!5579314 (not res!2367924)) b!5579323))

(assert (= (and b!5579323 (not res!2367929)) b!5579321))

(assert (= (and b!5579321 (not res!2367926)) b!5579325))

(assert (= (and start!579562 ((_ is ElementMatch!15563) r!7292)) b!5579328))

(assert (= (and start!579562 ((_ is Concat!24408) r!7292)) b!5579320))

(assert (= (and start!579562 ((_ is Star!15563) r!7292)) b!5579334))

(assert (= (and start!579562 ((_ is Union!15563) r!7292)) b!5579333))

(assert (= (and start!579562 condSetEmpty!37131) setIsEmpty!37131))

(assert (= (and start!579562 (not condSetEmpty!37131)) setNonEmpty!37131))

(assert (= setNonEmpty!37131 b!5579308))

(assert (= b!5579329 b!5579309))

(assert (= (and start!579562 ((_ is Cons!62866) zl!343)) b!5579329))

(assert (= (and start!579562 ((_ is Cons!62865) s!2326)) b!5579307))

(declare-fun m!6561650 () Bool)

(assert (=> b!5579330 m!6561650))

(declare-fun m!6561652 () Bool)

(assert (=> b!5579323 m!6561652))

(declare-fun m!6561654 () Bool)

(assert (=> b!5579323 m!6561654))

(declare-fun m!6561656 () Bool)

(assert (=> b!5579323 m!6561656))

(declare-fun m!6561658 () Bool)

(assert (=> b!5579323 m!6561658))

(declare-fun m!6561660 () Bool)

(assert (=> b!5579323 m!6561660))

(declare-fun m!6561662 () Bool)

(assert (=> b!5579318 m!6561662))

(declare-fun m!6561664 () Bool)

(assert (=> b!5579318 m!6561664))

(declare-fun m!6561666 () Bool)

(assert (=> b!5579318 m!6561666))

(declare-fun m!6561668 () Bool)

(assert (=> b!5579318 m!6561668))

(assert (=> b!5579318 m!6561662))

(declare-fun m!6561670 () Bool)

(assert (=> b!5579318 m!6561670))

(assert (=> b!5579318 m!6561666))

(declare-fun m!6561672 () Bool)

(assert (=> b!5579318 m!6561672))

(declare-fun m!6561674 () Bool)

(assert (=> b!5579314 m!6561674))

(declare-fun m!6561676 () Bool)

(assert (=> b!5579314 m!6561676))

(declare-fun m!6561678 () Bool)

(assert (=> b!5579314 m!6561678))

(declare-fun m!6561680 () Bool)

(assert (=> b!5579314 m!6561680))

(declare-fun m!6561682 () Bool)

(assert (=> b!5579310 m!6561682))

(declare-fun m!6561684 () Bool)

(assert (=> b!5579315 m!6561684))

(declare-fun m!6561686 () Bool)

(assert (=> b!5579325 m!6561686))

(declare-fun m!6561688 () Bool)

(assert (=> b!5579317 m!6561688))

(declare-fun m!6561690 () Bool)

(assert (=> b!5579329 m!6561690))

(declare-fun m!6561692 () Bool)

(assert (=> b!5579331 m!6561692))

(assert (=> b!5579331 m!6561674))

(declare-fun m!6561694 () Bool)

(assert (=> b!5579331 m!6561694))

(declare-fun m!6561696 () Bool)

(assert (=> b!5579312 m!6561696))

(declare-fun m!6561698 () Bool)

(assert (=> start!579562 m!6561698))

(assert (=> b!5579313 m!6561688))

(declare-fun m!6561700 () Bool)

(assert (=> b!5579326 m!6561700))

(declare-fun m!6561702 () Bool)

(assert (=> b!5579326 m!6561702))

(declare-fun m!6561704 () Bool)

(assert (=> b!5579326 m!6561704))

(declare-fun m!6561706 () Bool)

(assert (=> b!5579326 m!6561706))

(declare-fun m!6561708 () Bool)

(assert (=> b!5579326 m!6561708))

(declare-fun m!6561710 () Bool)

(assert (=> b!5579326 m!6561710))

(declare-fun m!6561712 () Bool)

(assert (=> b!5579326 m!6561712))

(declare-fun m!6561714 () Bool)

(assert (=> b!5579322 m!6561714))

(declare-fun m!6561716 () Bool)

(assert (=> b!5579322 m!6561716))

(declare-fun m!6561718 () Bool)

(assert (=> b!5579322 m!6561718))

(declare-fun m!6561720 () Bool)

(assert (=> b!5579311 m!6561720))

(assert (=> b!5579311 m!6561720))

(declare-fun m!6561722 () Bool)

(assert (=> b!5579311 m!6561722))

(declare-fun m!6561724 () Bool)

(assert (=> b!5579306 m!6561724))

(declare-fun m!6561726 () Bool)

(assert (=> b!5579306 m!6561726))

(declare-fun m!6561728 () Bool)

(assert (=> b!5579327 m!6561728))

(declare-fun m!6561730 () Bool)

(assert (=> b!5579324 m!6561730))

(declare-fun m!6561732 () Bool)

(assert (=> setNonEmpty!37131 m!6561732))

(check-sat (not b!5579330) (not b!5579322) (not b!5579317) (not b!5579320) (not setNonEmpty!37131) (not b!5579331) (not b!5579308) (not start!579562) (not b!5579315) (not b!5579324) (not b!5579318) (not b!5579323) (not b!5579309) (not b!5579327) (not b!5579313) (not b!5579325) (not b!5579333) (not b!5579310) (not b!5579329) (not b!5579314) (not b!5579312) (not b!5579326) (not b!5579311) tp_is_empty!40379 (not b!5579334) (not b!5579306) (not b!5579307))
(check-sat)
(get-model)

(declare-fun d!1763869 () Bool)

(declare-fun c!976955 () Bool)

(declare-fun isEmpty!34675 (List!62989) Bool)

(assert (=> d!1763869 (= c!976955 (isEmpty!34675 (t!376260 s!2326)))))

(declare-fun e!3442954 () Bool)

(assert (=> d!1763869 (= (matchZipper!1701 lt!2253337 (t!376260 s!2326)) e!3442954)))

(declare-fun b!5579726 () Bool)

(declare-fun nullableZipper!1560 ((InoxSet Context!9894)) Bool)

(assert (=> b!5579726 (= e!3442954 (nullableZipper!1560 lt!2253337))))

(declare-fun b!5579727 () Bool)

(declare-fun derivationStepZipper!1662 ((InoxSet Context!9894) C!31396) (InoxSet Context!9894))

(declare-fun head!11900 (List!62989) C!31396)

(declare-fun tail!10995 (List!62989) List!62989)

(assert (=> b!5579727 (= e!3442954 (matchZipper!1701 (derivationStepZipper!1662 lt!2253337 (head!11900 (t!376260 s!2326))) (tail!10995 (t!376260 s!2326))))))

(assert (= (and d!1763869 c!976955) b!5579726))

(assert (= (and d!1763869 (not c!976955)) b!5579727))

(declare-fun m!6561980 () Bool)

(assert (=> d!1763869 m!6561980))

(declare-fun m!6561982 () Bool)

(assert (=> b!5579726 m!6561982))

(declare-fun m!6561984 () Bool)

(assert (=> b!5579727 m!6561984))

(assert (=> b!5579727 m!6561984))

(declare-fun m!6561986 () Bool)

(assert (=> b!5579727 m!6561986))

(declare-fun m!6561988 () Bool)

(assert (=> b!5579727 m!6561988))

(assert (=> b!5579727 m!6561986))

(assert (=> b!5579727 m!6561988))

(declare-fun m!6561990 () Bool)

(assert (=> b!5579727 m!6561990))

(assert (=> b!5579314 d!1763869))

(declare-fun d!1763871 () Bool)

(declare-fun c!976956 () Bool)

(assert (=> d!1763871 (= c!976956 (isEmpty!34675 (t!376260 s!2326)))))

(declare-fun e!3442955 () Bool)

(assert (=> d!1763871 (= (matchZipper!1701 lt!2253324 (t!376260 s!2326)) e!3442955)))

(declare-fun b!5579728 () Bool)

(assert (=> b!5579728 (= e!3442955 (nullableZipper!1560 lt!2253324))))

(declare-fun b!5579729 () Bool)

(assert (=> b!5579729 (= e!3442955 (matchZipper!1701 (derivationStepZipper!1662 lt!2253324 (head!11900 (t!376260 s!2326))) (tail!10995 (t!376260 s!2326))))))

(assert (= (and d!1763871 c!976956) b!5579728))

(assert (= (and d!1763871 (not c!976956)) b!5579729))

(assert (=> d!1763871 m!6561980))

(declare-fun m!6561992 () Bool)

(assert (=> b!5579728 m!6561992))

(assert (=> b!5579729 m!6561984))

(assert (=> b!5579729 m!6561984))

(declare-fun m!6561994 () Bool)

(assert (=> b!5579729 m!6561994))

(assert (=> b!5579729 m!6561988))

(assert (=> b!5579729 m!6561994))

(assert (=> b!5579729 m!6561988))

(declare-fun m!6561996 () Bool)

(assert (=> b!5579729 m!6561996))

(assert (=> b!5579314 d!1763871))

(declare-fun d!1763873 () Bool)

(declare-fun c!976957 () Bool)

(assert (=> d!1763873 (= c!976957 (isEmpty!34675 (t!376260 s!2326)))))

(declare-fun e!3442956 () Bool)

(assert (=> d!1763873 (= (matchZipper!1701 lt!2253319 (t!376260 s!2326)) e!3442956)))

(declare-fun b!5579730 () Bool)

(assert (=> b!5579730 (= e!3442956 (nullableZipper!1560 lt!2253319))))

(declare-fun b!5579731 () Bool)

(assert (=> b!5579731 (= e!3442956 (matchZipper!1701 (derivationStepZipper!1662 lt!2253319 (head!11900 (t!376260 s!2326))) (tail!10995 (t!376260 s!2326))))))

(assert (= (and d!1763873 c!976957) b!5579730))

(assert (= (and d!1763873 (not c!976957)) b!5579731))

(assert (=> d!1763873 m!6561980))

(declare-fun m!6561998 () Bool)

(assert (=> b!5579730 m!6561998))

(assert (=> b!5579731 m!6561984))

(assert (=> b!5579731 m!6561984))

(declare-fun m!6562000 () Bool)

(assert (=> b!5579731 m!6562000))

(assert (=> b!5579731 m!6561988))

(assert (=> b!5579731 m!6562000))

(assert (=> b!5579731 m!6561988))

(declare-fun m!6562002 () Bool)

(assert (=> b!5579731 m!6562002))

(assert (=> b!5579314 d!1763873))

(declare-fun e!3442959 () Bool)

(declare-fun d!1763875 () Bool)

(assert (=> d!1763875 (= (matchZipper!1701 ((_ map or) lt!2253319 lt!2253321) (t!376260 s!2326)) e!3442959)))

(declare-fun res!2368056 () Bool)

(assert (=> d!1763875 (=> res!2368056 e!3442959)))

(assert (=> d!1763875 (= res!2368056 (matchZipper!1701 lt!2253319 (t!376260 s!2326)))))

(declare-fun lt!2253385 () Unit!155624)

(declare-fun choose!42287 ((InoxSet Context!9894) (InoxSet Context!9894) List!62989) Unit!155624)

(assert (=> d!1763875 (= lt!2253385 (choose!42287 lt!2253319 lt!2253321 (t!376260 s!2326)))))

(assert (=> d!1763875 (= (lemmaZipperConcatMatchesSameAsBothZippers!588 lt!2253319 lt!2253321 (t!376260 s!2326)) lt!2253385)))

(declare-fun b!5579734 () Bool)

(assert (=> b!5579734 (= e!3442959 (matchZipper!1701 lt!2253321 (t!376260 s!2326)))))

(assert (= (and d!1763875 (not res!2368056)) b!5579734))

(declare-fun m!6562004 () Bool)

(assert (=> d!1763875 m!6562004))

(assert (=> d!1763875 m!6561678))

(declare-fun m!6562006 () Bool)

(assert (=> d!1763875 m!6562006))

(assert (=> b!5579734 m!6561688))

(assert (=> b!5579314 d!1763875))

(declare-fun d!1763877 () Bool)

(declare-fun nullableFct!1707 (Regex!15563) Bool)

(assert (=> d!1763877 (= (nullable!5595 (regOne!31639 (regOne!31638 r!7292))) (nullableFct!1707 (regOne!31639 (regOne!31638 r!7292))))))

(declare-fun bs!1290849 () Bool)

(assert (= bs!1290849 d!1763877))

(declare-fun m!6562008 () Bool)

(assert (=> bs!1290849 m!6562008))

(assert (=> b!5579323 d!1763877))

(declare-fun d!1763879 () Bool)

(declare-fun choose!42288 ((InoxSet Context!9894) Int) (InoxSet Context!9894))

(assert (=> d!1763879 (= (flatMap!1176 lt!2253320 lambda!299170) (choose!42288 lt!2253320 lambda!299170))))

(declare-fun bs!1290850 () Bool)

(assert (= bs!1290850 d!1763879))

(declare-fun m!6562010 () Bool)

(assert (=> bs!1290850 m!6562010))

(assert (=> b!5579323 d!1763879))

(declare-fun b!5579745 () Bool)

(declare-fun e!3442968 () Bool)

(assert (=> b!5579745 (= e!3442968 (nullable!5595 (h!69312 (exprs!5447 lt!2253322))))))

(declare-fun b!5579746 () Bool)

(declare-fun e!3442966 () (InoxSet Context!9894))

(declare-fun call!417211 () (InoxSet Context!9894))

(assert (=> b!5579746 (= e!3442966 call!417211)))

(declare-fun b!5579747 () Bool)

(declare-fun e!3442967 () (InoxSet Context!9894))

(assert (=> b!5579747 (= e!3442967 e!3442966)))

(declare-fun c!976963 () Bool)

(assert (=> b!5579747 (= c!976963 ((_ is Cons!62864) (exprs!5447 lt!2253322)))))

(declare-fun d!1763881 () Bool)

(declare-fun c!976962 () Bool)

(assert (=> d!1763881 (= c!976962 e!3442968)))

(declare-fun res!2368059 () Bool)

(assert (=> d!1763881 (=> (not res!2368059) (not e!3442968))))

(assert (=> d!1763881 (= res!2368059 ((_ is Cons!62864) (exprs!5447 lt!2253322)))))

(assert (=> d!1763881 (= (derivationStepZipperUp!831 lt!2253322 (h!69313 s!2326)) e!3442967)))

(declare-fun b!5579748 () Bool)

(assert (=> b!5579748 (= e!3442966 ((as const (Array Context!9894 Bool)) false))))

(declare-fun b!5579749 () Bool)

(assert (=> b!5579749 (= e!3442967 ((_ map or) call!417211 (derivationStepZipperUp!831 (Context!9895 (t!376259 (exprs!5447 lt!2253322))) (h!69313 s!2326))))))

(declare-fun bm!417206 () Bool)

(assert (=> bm!417206 (= call!417211 (derivationStepZipperDown!905 (h!69312 (exprs!5447 lt!2253322)) (Context!9895 (t!376259 (exprs!5447 lt!2253322))) (h!69313 s!2326)))))

(assert (= (and d!1763881 res!2368059) b!5579745))

(assert (= (and d!1763881 c!976962) b!5579749))

(assert (= (and d!1763881 (not c!976962)) b!5579747))

(assert (= (and b!5579747 c!976963) b!5579746))

(assert (= (and b!5579747 (not c!976963)) b!5579748))

(assert (= (or b!5579749 b!5579746) bm!417206))

(declare-fun m!6562012 () Bool)

(assert (=> b!5579745 m!6562012))

(declare-fun m!6562014 () Bool)

(assert (=> b!5579749 m!6562014))

(declare-fun m!6562016 () Bool)

(assert (=> bm!417206 m!6562016))

(assert (=> b!5579323 d!1763881))

(declare-fun d!1763883 () Bool)

(declare-fun dynLambda!24585 (Int Context!9894) (InoxSet Context!9894))

(assert (=> d!1763883 (= (flatMap!1176 lt!2253320 lambda!299170) (dynLambda!24585 lambda!299170 lt!2253322))))

(declare-fun lt!2253388 () Unit!155624)

(declare-fun choose!42289 ((InoxSet Context!9894) Context!9894 Int) Unit!155624)

(assert (=> d!1763883 (= lt!2253388 (choose!42289 lt!2253320 lt!2253322 lambda!299170))))

(assert (=> d!1763883 (= lt!2253320 (store ((as const (Array Context!9894 Bool)) false) lt!2253322 true))))

(assert (=> d!1763883 (= (lemmaFlatMapOnSingletonSet!708 lt!2253320 lt!2253322 lambda!299170) lt!2253388)))

(declare-fun b_lambda!211483 () Bool)

(assert (=> (not b_lambda!211483) (not d!1763883)))

(declare-fun bs!1290851 () Bool)

(assert (= bs!1290851 d!1763883))

(assert (=> bs!1290851 m!6561660))

(declare-fun m!6562018 () Bool)

(assert (=> bs!1290851 m!6562018))

(declare-fun m!6562020 () Bool)

(assert (=> bs!1290851 m!6562020))

(assert (=> bs!1290851 m!6561654))

(assert (=> b!5579323 d!1763883))

(declare-fun bs!1290852 () Bool)

(declare-fun b!5579789 () Bool)

(assert (= bs!1290852 (and b!5579789 b!5579318)))

(declare-fun lambda!299203 () Int)

(assert (=> bs!1290852 (not (= lambda!299203 lambda!299168))))

(assert (=> bs!1290852 (not (= lambda!299203 lambda!299169))))

(assert (=> b!5579789 true))

(assert (=> b!5579789 true))

(declare-fun bs!1290853 () Bool)

(declare-fun b!5579787 () Bool)

(assert (= bs!1290853 (and b!5579787 b!5579318)))

(declare-fun lambda!299204 () Int)

(assert (=> bs!1290853 (not (= lambda!299204 lambda!299168))))

(assert (=> bs!1290853 (= lambda!299204 lambda!299169)))

(declare-fun bs!1290854 () Bool)

(assert (= bs!1290854 (and b!5579787 b!5579789)))

(assert (=> bs!1290854 (not (= lambda!299204 lambda!299203))))

(assert (=> b!5579787 true))

(assert (=> b!5579787 true))

(declare-fun d!1763885 () Bool)

(declare-fun c!976974 () Bool)

(assert (=> d!1763885 (= c!976974 ((_ is EmptyExpr!15563) r!7292))))

(declare-fun e!3442993 () Bool)

(assert (=> d!1763885 (= (matchRSpec!2666 r!7292 s!2326) e!3442993)))

(declare-fun b!5579782 () Bool)

(declare-fun e!3442990 () Bool)

(assert (=> b!5579782 (= e!3442990 (= s!2326 (Cons!62865 (c!976846 r!7292) Nil!62865)))))

(declare-fun b!5579783 () Bool)

(declare-fun e!3442989 () Bool)

(declare-fun e!3442988 () Bool)

(assert (=> b!5579783 (= e!3442989 e!3442988)))

(declare-fun res!2368076 () Bool)

(assert (=> b!5579783 (= res!2368076 (matchRSpec!2666 (regOne!31639 r!7292) s!2326))))

(assert (=> b!5579783 (=> res!2368076 e!3442988)))

(declare-fun b!5579784 () Bool)

(assert (=> b!5579784 (= e!3442988 (matchRSpec!2666 (regTwo!31639 r!7292) s!2326))))

(declare-fun c!976973 () Bool)

(declare-fun call!417216 () Bool)

(declare-fun bm!417211 () Bool)

(assert (=> bm!417211 (= call!417216 (Exists!2663 (ite c!976973 lambda!299203 lambda!299204)))))

(declare-fun b!5579785 () Bool)

(declare-fun c!976975 () Bool)

(assert (=> b!5579785 (= c!976975 ((_ is Union!15563) r!7292))))

(assert (=> b!5579785 (= e!3442990 e!3442989)))

(declare-fun b!5579786 () Bool)

(declare-fun call!417217 () Bool)

(assert (=> b!5579786 (= e!3442993 call!417217)))

(declare-fun e!3442991 () Bool)

(assert (=> b!5579787 (= e!3442991 call!417216)))

(declare-fun b!5579788 () Bool)

(declare-fun c!976972 () Bool)

(assert (=> b!5579788 (= c!976972 ((_ is ElementMatch!15563) r!7292))))

(declare-fun e!3442987 () Bool)

(assert (=> b!5579788 (= e!3442987 e!3442990)))

(declare-fun bm!417212 () Bool)

(assert (=> bm!417212 (= call!417217 (isEmpty!34675 s!2326))))

(declare-fun e!3442992 () Bool)

(assert (=> b!5579789 (= e!3442992 call!417216)))

(declare-fun b!5579790 () Bool)

(declare-fun res!2368077 () Bool)

(assert (=> b!5579790 (=> res!2368077 e!3442992)))

(assert (=> b!5579790 (= res!2368077 call!417217)))

(assert (=> b!5579790 (= e!3442991 e!3442992)))

(declare-fun b!5579791 () Bool)

(assert (=> b!5579791 (= e!3442989 e!3442991)))

(assert (=> b!5579791 (= c!976973 ((_ is Star!15563) r!7292))))

(declare-fun b!5579792 () Bool)

(assert (=> b!5579792 (= e!3442993 e!3442987)))

(declare-fun res!2368078 () Bool)

(assert (=> b!5579792 (= res!2368078 (not ((_ is EmptyLang!15563) r!7292)))))

(assert (=> b!5579792 (=> (not res!2368078) (not e!3442987))))

(assert (= (and d!1763885 c!976974) b!5579786))

(assert (= (and d!1763885 (not c!976974)) b!5579792))

(assert (= (and b!5579792 res!2368078) b!5579788))

(assert (= (and b!5579788 c!976972) b!5579782))

(assert (= (and b!5579788 (not c!976972)) b!5579785))

(assert (= (and b!5579785 c!976975) b!5579783))

(assert (= (and b!5579785 (not c!976975)) b!5579791))

(assert (= (and b!5579783 (not res!2368076)) b!5579784))

(assert (= (and b!5579791 c!976973) b!5579790))

(assert (= (and b!5579791 (not c!976973)) b!5579787))

(assert (= (and b!5579790 (not res!2368077)) b!5579789))

(assert (= (or b!5579789 b!5579787) bm!417211))

(assert (= (or b!5579786 b!5579790) bm!417212))

(declare-fun m!6562022 () Bool)

(assert (=> b!5579783 m!6562022))

(declare-fun m!6562024 () Bool)

(assert (=> b!5579784 m!6562024))

(declare-fun m!6562026 () Bool)

(assert (=> bm!417211 m!6562026))

(declare-fun m!6562028 () Bool)

(assert (=> bm!417212 m!6562028))

(assert (=> b!5579322 d!1763885))

(declare-fun b!5579821 () Bool)

(declare-fun res!2368100 () Bool)

(declare-fun e!3443011 () Bool)

(assert (=> b!5579821 (=> res!2368100 e!3443011)))

(assert (=> b!5579821 (= res!2368100 (not (isEmpty!34675 (tail!10995 s!2326))))))

(declare-fun b!5579822 () Bool)

(declare-fun res!2368101 () Bool)

(declare-fun e!3443010 () Bool)

(assert (=> b!5579822 (=> (not res!2368101) (not e!3443010))))

(assert (=> b!5579822 (= res!2368101 (isEmpty!34675 (tail!10995 s!2326)))))

(declare-fun b!5579823 () Bool)

(declare-fun e!3443012 () Bool)

(declare-fun lt!2253391 () Bool)

(declare-fun call!417220 () Bool)

(assert (=> b!5579823 (= e!3443012 (= lt!2253391 call!417220))))

(declare-fun b!5579824 () Bool)

(declare-fun e!3443008 () Bool)

(assert (=> b!5579824 (= e!3443008 (not lt!2253391))))

(declare-fun b!5579825 () Bool)

(declare-fun res!2368097 () Bool)

(assert (=> b!5579825 (=> (not res!2368097) (not e!3443010))))

(assert (=> b!5579825 (= res!2368097 (not call!417220))))

(declare-fun b!5579826 () Bool)

(declare-fun e!3443009 () Bool)

(declare-fun derivativeStep!4414 (Regex!15563 C!31396) Regex!15563)

(assert (=> b!5579826 (= e!3443009 (matchR!7748 (derivativeStep!4414 r!7292 (head!11900 s!2326)) (tail!10995 s!2326)))))

(declare-fun b!5579827 () Bool)

(assert (=> b!5579827 (= e!3443011 (not (= (head!11900 s!2326) (c!976846 r!7292))))))

(declare-fun bm!417215 () Bool)

(assert (=> bm!417215 (= call!417220 (isEmpty!34675 s!2326))))

(declare-fun b!5579828 () Bool)

(declare-fun e!3443014 () Bool)

(assert (=> b!5579828 (= e!3443014 e!3443011)))

(declare-fun res!2368096 () Bool)

(assert (=> b!5579828 (=> res!2368096 e!3443011)))

(assert (=> b!5579828 (= res!2368096 call!417220)))

(declare-fun b!5579829 () Bool)

(assert (=> b!5579829 (= e!3443010 (= (head!11900 s!2326) (c!976846 r!7292)))))

(declare-fun b!5579830 () Bool)

(declare-fun res!2368099 () Bool)

(declare-fun e!3443013 () Bool)

(assert (=> b!5579830 (=> res!2368099 e!3443013)))

(assert (=> b!5579830 (= res!2368099 (not ((_ is ElementMatch!15563) r!7292)))))

(assert (=> b!5579830 (= e!3443008 e!3443013)))

(declare-fun b!5579831 () Bool)

(assert (=> b!5579831 (= e!3443009 (nullable!5595 r!7292))))

(declare-fun d!1763887 () Bool)

(assert (=> d!1763887 e!3443012))

(declare-fun c!976984 () Bool)

(assert (=> d!1763887 (= c!976984 ((_ is EmptyExpr!15563) r!7292))))

(assert (=> d!1763887 (= lt!2253391 e!3443009)))

(declare-fun c!976983 () Bool)

(assert (=> d!1763887 (= c!976983 (isEmpty!34675 s!2326))))

(assert (=> d!1763887 (validRegex!7299 r!7292)))

(assert (=> d!1763887 (= (matchR!7748 r!7292 s!2326) lt!2253391)))

(declare-fun b!5579832 () Bool)

(assert (=> b!5579832 (= e!3443012 e!3443008)))

(declare-fun c!976982 () Bool)

(assert (=> b!5579832 (= c!976982 ((_ is EmptyLang!15563) r!7292))))

(declare-fun b!5579833 () Bool)

(assert (=> b!5579833 (= e!3443013 e!3443014)))

(declare-fun res!2368098 () Bool)

(assert (=> b!5579833 (=> (not res!2368098) (not e!3443014))))

(assert (=> b!5579833 (= res!2368098 (not lt!2253391))))

(declare-fun b!5579834 () Bool)

(declare-fun res!2368095 () Bool)

(assert (=> b!5579834 (=> res!2368095 e!3443013)))

(assert (=> b!5579834 (= res!2368095 e!3443010)))

(declare-fun res!2368102 () Bool)

(assert (=> b!5579834 (=> (not res!2368102) (not e!3443010))))

(assert (=> b!5579834 (= res!2368102 lt!2253391)))

(assert (= (and d!1763887 c!976983) b!5579831))

(assert (= (and d!1763887 (not c!976983)) b!5579826))

(assert (= (and d!1763887 c!976984) b!5579823))

(assert (= (and d!1763887 (not c!976984)) b!5579832))

(assert (= (and b!5579832 c!976982) b!5579824))

(assert (= (and b!5579832 (not c!976982)) b!5579830))

(assert (= (and b!5579830 (not res!2368099)) b!5579834))

(assert (= (and b!5579834 res!2368102) b!5579825))

(assert (= (and b!5579825 res!2368097) b!5579822))

(assert (= (and b!5579822 res!2368101) b!5579829))

(assert (= (and b!5579834 (not res!2368095)) b!5579833))

(assert (= (and b!5579833 res!2368098) b!5579828))

(assert (= (and b!5579828 (not res!2368096)) b!5579821))

(assert (= (and b!5579821 (not res!2368100)) b!5579827))

(assert (= (or b!5579823 b!5579825 b!5579828) bm!417215))

(declare-fun m!6562030 () Bool)

(assert (=> b!5579827 m!6562030))

(declare-fun m!6562032 () Bool)

(assert (=> b!5579831 m!6562032))

(declare-fun m!6562034 () Bool)

(assert (=> b!5579821 m!6562034))

(assert (=> b!5579821 m!6562034))

(declare-fun m!6562036 () Bool)

(assert (=> b!5579821 m!6562036))

(assert (=> d!1763887 m!6562028))

(assert (=> d!1763887 m!6561698))

(assert (=> bm!417215 m!6562028))

(assert (=> b!5579829 m!6562030))

(assert (=> b!5579826 m!6562030))

(assert (=> b!5579826 m!6562030))

(declare-fun m!6562038 () Bool)

(assert (=> b!5579826 m!6562038))

(assert (=> b!5579826 m!6562034))

(assert (=> b!5579826 m!6562038))

(assert (=> b!5579826 m!6562034))

(declare-fun m!6562040 () Bool)

(assert (=> b!5579826 m!6562040))

(assert (=> b!5579822 m!6562034))

(assert (=> b!5579822 m!6562034))

(assert (=> b!5579822 m!6562036))

(assert (=> b!5579322 d!1763887))

(declare-fun d!1763889 () Bool)

(assert (=> d!1763889 (= (matchR!7748 r!7292 s!2326) (matchRSpec!2666 r!7292 s!2326))))

(declare-fun lt!2253394 () Unit!155624)

(declare-fun choose!42290 (Regex!15563 List!62989) Unit!155624)

(assert (=> d!1763889 (= lt!2253394 (choose!42290 r!7292 s!2326))))

(assert (=> d!1763889 (validRegex!7299 r!7292)))

(assert (=> d!1763889 (= (mainMatchTheorem!2666 r!7292 s!2326) lt!2253394)))

(declare-fun bs!1290855 () Bool)

(assert (= bs!1290855 d!1763889))

(assert (=> bs!1290855 m!6561716))

(assert (=> bs!1290855 m!6561714))

(declare-fun m!6562042 () Bool)

(assert (=> bs!1290855 m!6562042))

(assert (=> bs!1290855 m!6561698))

(assert (=> b!5579322 d!1763889))

(declare-fun d!1763891 () Bool)

(assert (=> d!1763891 (= (isEmpty!34672 (t!376261 zl!343)) ((_ is Nil!62866) (t!376261 zl!343)))))

(assert (=> b!5579324 d!1763891))

(declare-fun d!1763893 () Bool)

(declare-fun c!976985 () Bool)

(assert (=> d!1763893 (= c!976985 (isEmpty!34675 (t!376260 s!2326)))))

(declare-fun e!3443015 () Bool)

(assert (=> d!1763893 (= (matchZipper!1701 lt!2253325 (t!376260 s!2326)) e!3443015)))

(declare-fun b!5579835 () Bool)

(assert (=> b!5579835 (= e!3443015 (nullableZipper!1560 lt!2253325))))

(declare-fun b!5579836 () Bool)

(assert (=> b!5579836 (= e!3443015 (matchZipper!1701 (derivationStepZipper!1662 lt!2253325 (head!11900 (t!376260 s!2326))) (tail!10995 (t!376260 s!2326))))))

(assert (= (and d!1763893 c!976985) b!5579835))

(assert (= (and d!1763893 (not c!976985)) b!5579836))

(assert (=> d!1763893 m!6561980))

(declare-fun m!6562044 () Bool)

(assert (=> b!5579835 m!6562044))

(assert (=> b!5579836 m!6561984))

(assert (=> b!5579836 m!6561984))

(declare-fun m!6562046 () Bool)

(assert (=> b!5579836 m!6562046))

(assert (=> b!5579836 m!6561988))

(assert (=> b!5579836 m!6562046))

(assert (=> b!5579836 m!6561988))

(declare-fun m!6562048 () Bool)

(assert (=> b!5579836 m!6562048))

(assert (=> b!5579315 d!1763893))

(declare-fun b!5579859 () Bool)

(declare-fun e!3443032 () (InoxSet Context!9894))

(declare-fun call!417238 () (InoxSet Context!9894))

(declare-fun call!417235 () (InoxSet Context!9894))

(assert (=> b!5579859 (= e!3443032 ((_ map or) call!417238 call!417235))))

(declare-fun d!1763895 () Bool)

(declare-fun c!976999 () Bool)

(assert (=> d!1763895 (= c!976999 (and ((_ is ElementMatch!15563) (regTwo!31639 (regOne!31638 r!7292))) (= (c!976846 (regTwo!31639 (regOne!31638 r!7292))) (h!69313 s!2326))))))

(declare-fun e!3443031 () (InoxSet Context!9894))

(assert (=> d!1763895 (= (derivationStepZipperDown!905 (regTwo!31639 (regOne!31638 r!7292)) lt!2253334 (h!69313 s!2326)) e!3443031)))

(declare-fun bm!417228 () Bool)

(declare-fun call!417233 () (InoxSet Context!9894))

(declare-fun call!417236 () (InoxSet Context!9894))

(assert (=> bm!417228 (= call!417233 call!417236)))

(declare-fun call!417237 () List!62988)

(declare-fun c!976998 () Bool)

(declare-fun c!977000 () Bool)

(declare-fun bm!417229 () Bool)

(declare-fun $colon$colon!1628 (List!62988 Regex!15563) List!62988)

(assert (=> bm!417229 (= call!417237 ($colon$colon!1628 (exprs!5447 lt!2253334) (ite (or c!977000 c!976998) (regTwo!31638 (regTwo!31639 (regOne!31638 r!7292))) (regTwo!31639 (regOne!31638 r!7292)))))))

(declare-fun b!5579860 () Bool)

(declare-fun c!976997 () Bool)

(assert (=> b!5579860 (= c!976997 ((_ is Star!15563) (regTwo!31639 (regOne!31638 r!7292))))))

(declare-fun e!3443030 () (InoxSet Context!9894))

(declare-fun e!3443033 () (InoxSet Context!9894))

(assert (=> b!5579860 (= e!3443030 e!3443033)))

(declare-fun bm!417230 () Bool)

(assert (=> bm!417230 (= call!417236 call!417238)))

(declare-fun bm!417231 () Bool)

(declare-fun c!976996 () Bool)

(assert (=> bm!417231 (= call!417235 (derivationStepZipperDown!905 (ite c!976996 (regTwo!31639 (regTwo!31639 (regOne!31638 r!7292))) (regOne!31638 (regTwo!31639 (regOne!31638 r!7292)))) (ite c!976996 lt!2253334 (Context!9895 call!417237)) (h!69313 s!2326)))))

(declare-fun b!5579861 () Bool)

(declare-fun e!3443028 () Bool)

(assert (=> b!5579861 (= c!977000 e!3443028)))

(declare-fun res!2368105 () Bool)

(assert (=> b!5579861 (=> (not res!2368105) (not e!3443028))))

(assert (=> b!5579861 (= res!2368105 ((_ is Concat!24408) (regTwo!31639 (regOne!31638 r!7292))))))

(declare-fun e!3443029 () (InoxSet Context!9894))

(assert (=> b!5579861 (= e!3443032 e!3443029)))

(declare-fun b!5579862 () Bool)

(assert (=> b!5579862 (= e!3443029 e!3443030)))

(assert (=> b!5579862 (= c!976998 ((_ is Concat!24408) (regTwo!31639 (regOne!31638 r!7292))))))

(declare-fun b!5579863 () Bool)

(assert (=> b!5579863 (= e!3443031 (store ((as const (Array Context!9894 Bool)) false) lt!2253334 true))))

(declare-fun b!5579864 () Bool)

(assert (=> b!5579864 (= e!3443030 call!417233)))

(declare-fun b!5579865 () Bool)

(assert (=> b!5579865 (= e!3443028 (nullable!5595 (regOne!31638 (regTwo!31639 (regOne!31638 r!7292)))))))

(declare-fun b!5579866 () Bool)

(assert (=> b!5579866 (= e!3443031 e!3443032)))

(assert (=> b!5579866 (= c!976996 ((_ is Union!15563) (regTwo!31639 (regOne!31638 r!7292))))))

(declare-fun b!5579867 () Bool)

(assert (=> b!5579867 (= e!3443029 ((_ map or) call!417235 call!417236))))

(declare-fun bm!417232 () Bool)

(declare-fun call!417234 () List!62988)

(assert (=> bm!417232 (= call!417234 call!417237)))

(declare-fun bm!417233 () Bool)

(assert (=> bm!417233 (= call!417238 (derivationStepZipperDown!905 (ite c!976996 (regOne!31639 (regTwo!31639 (regOne!31638 r!7292))) (ite c!977000 (regTwo!31638 (regTwo!31639 (regOne!31638 r!7292))) (ite c!976998 (regOne!31638 (regTwo!31639 (regOne!31638 r!7292))) (reg!15892 (regTwo!31639 (regOne!31638 r!7292)))))) (ite (or c!976996 c!977000) lt!2253334 (Context!9895 call!417234)) (h!69313 s!2326)))))

(declare-fun b!5579868 () Bool)

(assert (=> b!5579868 (= e!3443033 call!417233)))

(declare-fun b!5579869 () Bool)

(assert (=> b!5579869 (= e!3443033 ((as const (Array Context!9894 Bool)) false))))

(assert (= (and d!1763895 c!976999) b!5579863))

(assert (= (and d!1763895 (not c!976999)) b!5579866))

(assert (= (and b!5579866 c!976996) b!5579859))

(assert (= (and b!5579866 (not c!976996)) b!5579861))

(assert (= (and b!5579861 res!2368105) b!5579865))

(assert (= (and b!5579861 c!977000) b!5579867))

(assert (= (and b!5579861 (not c!977000)) b!5579862))

(assert (= (and b!5579862 c!976998) b!5579864))

(assert (= (and b!5579862 (not c!976998)) b!5579860))

(assert (= (and b!5579860 c!976997) b!5579868))

(assert (= (and b!5579860 (not c!976997)) b!5579869))

(assert (= (or b!5579864 b!5579868) bm!417232))

(assert (= (or b!5579864 b!5579868) bm!417228))

(assert (= (or b!5579867 bm!417232) bm!417229))

(assert (= (or b!5579867 bm!417228) bm!417230))

(assert (= (or b!5579859 b!5579867) bm!417231))

(assert (= (or b!5579859 bm!417230) bm!417233))

(declare-fun m!6562050 () Bool)

(assert (=> b!5579865 m!6562050))

(declare-fun m!6562052 () Bool)

(assert (=> bm!417229 m!6562052))

(declare-fun m!6562054 () Bool)

(assert (=> b!5579863 m!6562054))

(declare-fun m!6562056 () Bool)

(assert (=> bm!417231 m!6562056))

(declare-fun m!6562058 () Bool)

(assert (=> bm!417233 m!6562058))

(assert (=> b!5579306 d!1763895))

(declare-fun b!5579870 () Bool)

(declare-fun e!3443038 () (InoxSet Context!9894))

(declare-fun call!417244 () (InoxSet Context!9894))

(declare-fun call!417241 () (InoxSet Context!9894))

(assert (=> b!5579870 (= e!3443038 ((_ map or) call!417244 call!417241))))

(declare-fun d!1763897 () Bool)

(declare-fun c!977004 () Bool)

(assert (=> d!1763897 (= c!977004 (and ((_ is ElementMatch!15563) (regOne!31639 (regOne!31638 r!7292))) (= (c!976846 (regOne!31639 (regOne!31638 r!7292))) (h!69313 s!2326))))))

(declare-fun e!3443037 () (InoxSet Context!9894))

(assert (=> d!1763897 (= (derivationStepZipperDown!905 (regOne!31639 (regOne!31638 r!7292)) lt!2253334 (h!69313 s!2326)) e!3443037)))

(declare-fun bm!417234 () Bool)

(declare-fun call!417239 () (InoxSet Context!9894))

(declare-fun call!417242 () (InoxSet Context!9894))

(assert (=> bm!417234 (= call!417239 call!417242)))

(declare-fun bm!417235 () Bool)

(declare-fun c!977005 () Bool)

(declare-fun call!417243 () List!62988)

(declare-fun c!977003 () Bool)

(assert (=> bm!417235 (= call!417243 ($colon$colon!1628 (exprs!5447 lt!2253334) (ite (or c!977005 c!977003) (regTwo!31638 (regOne!31639 (regOne!31638 r!7292))) (regOne!31639 (regOne!31638 r!7292)))))))

(declare-fun b!5579871 () Bool)

(declare-fun c!977002 () Bool)

(assert (=> b!5579871 (= c!977002 ((_ is Star!15563) (regOne!31639 (regOne!31638 r!7292))))))

(declare-fun e!3443036 () (InoxSet Context!9894))

(declare-fun e!3443039 () (InoxSet Context!9894))

(assert (=> b!5579871 (= e!3443036 e!3443039)))

(declare-fun bm!417236 () Bool)

(assert (=> bm!417236 (= call!417242 call!417244)))

(declare-fun bm!417237 () Bool)

(declare-fun c!977001 () Bool)

(assert (=> bm!417237 (= call!417241 (derivationStepZipperDown!905 (ite c!977001 (regTwo!31639 (regOne!31639 (regOne!31638 r!7292))) (regOne!31638 (regOne!31639 (regOne!31638 r!7292)))) (ite c!977001 lt!2253334 (Context!9895 call!417243)) (h!69313 s!2326)))))

(declare-fun b!5579872 () Bool)

(declare-fun e!3443034 () Bool)

(assert (=> b!5579872 (= c!977005 e!3443034)))

(declare-fun res!2368106 () Bool)

(assert (=> b!5579872 (=> (not res!2368106) (not e!3443034))))

(assert (=> b!5579872 (= res!2368106 ((_ is Concat!24408) (regOne!31639 (regOne!31638 r!7292))))))

(declare-fun e!3443035 () (InoxSet Context!9894))

(assert (=> b!5579872 (= e!3443038 e!3443035)))

(declare-fun b!5579873 () Bool)

(assert (=> b!5579873 (= e!3443035 e!3443036)))

(assert (=> b!5579873 (= c!977003 ((_ is Concat!24408) (regOne!31639 (regOne!31638 r!7292))))))

(declare-fun b!5579874 () Bool)

(assert (=> b!5579874 (= e!3443037 (store ((as const (Array Context!9894 Bool)) false) lt!2253334 true))))

(declare-fun b!5579875 () Bool)

(assert (=> b!5579875 (= e!3443036 call!417239)))

(declare-fun b!5579876 () Bool)

(assert (=> b!5579876 (= e!3443034 (nullable!5595 (regOne!31638 (regOne!31639 (regOne!31638 r!7292)))))))

(declare-fun b!5579877 () Bool)

(assert (=> b!5579877 (= e!3443037 e!3443038)))

(assert (=> b!5579877 (= c!977001 ((_ is Union!15563) (regOne!31639 (regOne!31638 r!7292))))))

(declare-fun b!5579878 () Bool)

(assert (=> b!5579878 (= e!3443035 ((_ map or) call!417241 call!417242))))

(declare-fun bm!417238 () Bool)

(declare-fun call!417240 () List!62988)

(assert (=> bm!417238 (= call!417240 call!417243)))

(declare-fun bm!417239 () Bool)

(assert (=> bm!417239 (= call!417244 (derivationStepZipperDown!905 (ite c!977001 (regOne!31639 (regOne!31639 (regOne!31638 r!7292))) (ite c!977005 (regTwo!31638 (regOne!31639 (regOne!31638 r!7292))) (ite c!977003 (regOne!31638 (regOne!31639 (regOne!31638 r!7292))) (reg!15892 (regOne!31639 (regOne!31638 r!7292)))))) (ite (or c!977001 c!977005) lt!2253334 (Context!9895 call!417240)) (h!69313 s!2326)))))

(declare-fun b!5579879 () Bool)

(assert (=> b!5579879 (= e!3443039 call!417239)))

(declare-fun b!5579880 () Bool)

(assert (=> b!5579880 (= e!3443039 ((as const (Array Context!9894 Bool)) false))))

(assert (= (and d!1763897 c!977004) b!5579874))

(assert (= (and d!1763897 (not c!977004)) b!5579877))

(assert (= (and b!5579877 c!977001) b!5579870))

(assert (= (and b!5579877 (not c!977001)) b!5579872))

(assert (= (and b!5579872 res!2368106) b!5579876))

(assert (= (and b!5579872 c!977005) b!5579878))

(assert (= (and b!5579872 (not c!977005)) b!5579873))

(assert (= (and b!5579873 c!977003) b!5579875))

(assert (= (and b!5579873 (not c!977003)) b!5579871))

(assert (= (and b!5579871 c!977002) b!5579879))

(assert (= (and b!5579871 (not c!977002)) b!5579880))

(assert (= (or b!5579875 b!5579879) bm!417238))

(assert (= (or b!5579875 b!5579879) bm!417234))

(assert (= (or b!5579878 bm!417238) bm!417235))

(assert (= (or b!5579878 bm!417234) bm!417236))

(assert (= (or b!5579870 b!5579878) bm!417237))

(assert (= (or b!5579870 bm!417236) bm!417239))

(declare-fun m!6562060 () Bool)

(assert (=> b!5579876 m!6562060))

(declare-fun m!6562062 () Bool)

(assert (=> bm!417235 m!6562062))

(assert (=> b!5579874 m!6562054))

(declare-fun m!6562064 () Bool)

(assert (=> bm!417237 m!6562064))

(declare-fun m!6562066 () Bool)

(assert (=> bm!417239 m!6562066))

(assert (=> b!5579306 d!1763897))

(declare-fun d!1763899 () Bool)

(declare-fun c!977006 () Bool)

(assert (=> d!1763899 (= c!977006 (isEmpty!34675 (t!376260 s!2326)))))

(declare-fun e!3443040 () Bool)

(assert (=> d!1763899 (= (matchZipper!1701 lt!2253321 (t!376260 s!2326)) e!3443040)))

(declare-fun b!5579881 () Bool)

(assert (=> b!5579881 (= e!3443040 (nullableZipper!1560 lt!2253321))))

(declare-fun b!5579882 () Bool)

(assert (=> b!5579882 (= e!3443040 (matchZipper!1701 (derivationStepZipper!1662 lt!2253321 (head!11900 (t!376260 s!2326))) (tail!10995 (t!376260 s!2326))))))

(assert (= (and d!1763899 c!977006) b!5579881))

(assert (= (and d!1763899 (not c!977006)) b!5579882))

(assert (=> d!1763899 m!6561980))

(declare-fun m!6562068 () Bool)

(assert (=> b!5579881 m!6562068))

(assert (=> b!5579882 m!6561984))

(assert (=> b!5579882 m!6561984))

(declare-fun m!6562070 () Bool)

(assert (=> b!5579882 m!6562070))

(assert (=> b!5579882 m!6561988))

(assert (=> b!5579882 m!6562070))

(assert (=> b!5579882 m!6561988))

(declare-fun m!6562072 () Bool)

(assert (=> b!5579882 m!6562072))

(assert (=> b!5579317 d!1763899))

(declare-fun d!1763901 () Bool)

(declare-fun c!977007 () Bool)

(assert (=> d!1763901 (= c!977007 (isEmpty!34675 s!2326))))

(declare-fun e!3443041 () Bool)

(assert (=> d!1763901 (= (matchZipper!1701 lt!2253320 s!2326) e!3443041)))

(declare-fun b!5579883 () Bool)

(assert (=> b!5579883 (= e!3443041 (nullableZipper!1560 lt!2253320))))

(declare-fun b!5579884 () Bool)

(assert (=> b!5579884 (= e!3443041 (matchZipper!1701 (derivationStepZipper!1662 lt!2253320 (head!11900 s!2326)) (tail!10995 s!2326)))))

(assert (= (and d!1763901 c!977007) b!5579883))

(assert (= (and d!1763901 (not c!977007)) b!5579884))

(assert (=> d!1763901 m!6562028))

(declare-fun m!6562074 () Bool)

(assert (=> b!5579883 m!6562074))

(assert (=> b!5579884 m!6562030))

(assert (=> b!5579884 m!6562030))

(declare-fun m!6562076 () Bool)

(assert (=> b!5579884 m!6562076))

(assert (=> b!5579884 m!6562034))

(assert (=> b!5579884 m!6562076))

(assert (=> b!5579884 m!6562034))

(declare-fun m!6562078 () Bool)

(assert (=> b!5579884 m!6562078))

(assert (=> b!5579325 d!1763901))

(declare-fun b!5579905 () Bool)

(declare-fun e!3443056 () Regex!15563)

(assert (=> b!5579905 (= e!3443056 EmptyExpr!15563)))

(declare-fun b!5579906 () Bool)

(declare-fun e!3443055 () Bool)

(declare-fun lt!2253397 () Regex!15563)

(declare-fun isConcat!643 (Regex!15563) Bool)

(assert (=> b!5579906 (= e!3443055 (isConcat!643 lt!2253397))))

(declare-fun b!5579907 () Bool)

(declare-fun e!3443054 () Regex!15563)

(assert (=> b!5579907 (= e!3443054 e!3443056)))

(declare-fun c!977017 () Bool)

(assert (=> b!5579907 (= c!977017 ((_ is Cons!62864) (exprs!5447 (h!69314 zl!343))))))

(declare-fun d!1763903 () Bool)

(declare-fun e!3443057 () Bool)

(assert (=> d!1763903 e!3443057))

(declare-fun res!2368112 () Bool)

(assert (=> d!1763903 (=> (not res!2368112) (not e!3443057))))

(assert (=> d!1763903 (= res!2368112 (validRegex!7299 lt!2253397))))

(assert (=> d!1763903 (= lt!2253397 e!3443054)))

(declare-fun c!977019 () Bool)

(declare-fun e!3443059 () Bool)

(assert (=> d!1763903 (= c!977019 e!3443059)))

(declare-fun res!2368111 () Bool)

(assert (=> d!1763903 (=> (not res!2368111) (not e!3443059))))

(assert (=> d!1763903 (= res!2368111 ((_ is Cons!62864) (exprs!5447 (h!69314 zl!343))))))

(declare-fun lambda!299207 () Int)

(declare-fun forall!14732 (List!62988 Int) Bool)

(assert (=> d!1763903 (forall!14732 (exprs!5447 (h!69314 zl!343)) lambda!299207)))

(assert (=> d!1763903 (= (generalisedConcat!1178 (exprs!5447 (h!69314 zl!343))) lt!2253397)))

(declare-fun b!5579908 () Bool)

(declare-fun e!3443058 () Bool)

(declare-fun isEmptyExpr!1120 (Regex!15563) Bool)

(assert (=> b!5579908 (= e!3443058 (isEmptyExpr!1120 lt!2253397))))

(declare-fun b!5579909 () Bool)

(assert (=> b!5579909 (= e!3443057 e!3443058)))

(declare-fun c!977018 () Bool)

(assert (=> b!5579909 (= c!977018 (isEmpty!34671 (exprs!5447 (h!69314 zl!343))))))

(declare-fun b!5579910 () Bool)

(assert (=> b!5579910 (= e!3443058 e!3443055)))

(declare-fun c!977016 () Bool)

(declare-fun tail!10996 (List!62988) List!62988)

(assert (=> b!5579910 (= c!977016 (isEmpty!34671 (tail!10996 (exprs!5447 (h!69314 zl!343)))))))

(declare-fun b!5579911 () Bool)

(declare-fun head!11901 (List!62988) Regex!15563)

(assert (=> b!5579911 (= e!3443055 (= lt!2253397 (head!11901 (exprs!5447 (h!69314 zl!343)))))))

(declare-fun b!5579912 () Bool)

(assert (=> b!5579912 (= e!3443059 (isEmpty!34671 (t!376259 (exprs!5447 (h!69314 zl!343)))))))

(declare-fun b!5579913 () Bool)

(assert (=> b!5579913 (= e!3443054 (h!69312 (exprs!5447 (h!69314 zl!343))))))

(declare-fun b!5579914 () Bool)

(assert (=> b!5579914 (= e!3443056 (Concat!24408 (h!69312 (exprs!5447 (h!69314 zl!343))) (generalisedConcat!1178 (t!376259 (exprs!5447 (h!69314 zl!343))))))))

(assert (= (and d!1763903 res!2368111) b!5579912))

(assert (= (and d!1763903 c!977019) b!5579913))

(assert (= (and d!1763903 (not c!977019)) b!5579907))

(assert (= (and b!5579907 c!977017) b!5579914))

(assert (= (and b!5579907 (not c!977017)) b!5579905))

(assert (= (and d!1763903 res!2368112) b!5579909))

(assert (= (and b!5579909 c!977018) b!5579908))

(assert (= (and b!5579909 (not c!977018)) b!5579910))

(assert (= (and b!5579910 c!977016) b!5579911))

(assert (= (and b!5579910 (not c!977016)) b!5579906))

(declare-fun m!6562080 () Bool)

(assert (=> d!1763903 m!6562080))

(declare-fun m!6562082 () Bool)

(assert (=> d!1763903 m!6562082))

(declare-fun m!6562084 () Bool)

(assert (=> b!5579906 m!6562084))

(declare-fun m!6562086 () Bool)

(assert (=> b!5579910 m!6562086))

(assert (=> b!5579910 m!6562086))

(declare-fun m!6562088 () Bool)

(assert (=> b!5579910 m!6562088))

(assert (=> b!5579912 m!6561696))

(declare-fun m!6562090 () Bool)

(assert (=> b!5579911 m!6562090))

(declare-fun m!6562092 () Bool)

(assert (=> b!5579914 m!6562092))

(declare-fun m!6562094 () Bool)

(assert (=> b!5579908 m!6562094))

(declare-fun m!6562096 () Bool)

(assert (=> b!5579909 m!6562096))

(assert (=> b!5579327 d!1763903))

(declare-fun b!5579915 () Bool)

(declare-fun e!3443064 () (InoxSet Context!9894))

(declare-fun call!417250 () (InoxSet Context!9894))

(declare-fun call!417247 () (InoxSet Context!9894))

(assert (=> b!5579915 (= e!3443064 ((_ map or) call!417250 call!417247))))

(declare-fun d!1763905 () Bool)

(declare-fun c!977023 () Bool)

(assert (=> d!1763905 (= c!977023 (and ((_ is ElementMatch!15563) (h!69312 (exprs!5447 (h!69314 zl!343)))) (= (c!976846 (h!69312 (exprs!5447 (h!69314 zl!343)))) (h!69313 s!2326))))))

(declare-fun e!3443063 () (InoxSet Context!9894))

(assert (=> d!1763905 (= (derivationStepZipperDown!905 (h!69312 (exprs!5447 (h!69314 zl!343))) lt!2253334 (h!69313 s!2326)) e!3443063)))

(declare-fun bm!417240 () Bool)

(declare-fun call!417245 () (InoxSet Context!9894))

(declare-fun call!417248 () (InoxSet Context!9894))

(assert (=> bm!417240 (= call!417245 call!417248)))

(declare-fun c!977022 () Bool)

(declare-fun bm!417241 () Bool)

(declare-fun call!417249 () List!62988)

(declare-fun c!977024 () Bool)

(assert (=> bm!417241 (= call!417249 ($colon$colon!1628 (exprs!5447 lt!2253334) (ite (or c!977024 c!977022) (regTwo!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (h!69312 (exprs!5447 (h!69314 zl!343))))))))

(declare-fun b!5579916 () Bool)

(declare-fun c!977021 () Bool)

(assert (=> b!5579916 (= c!977021 ((_ is Star!15563) (h!69312 (exprs!5447 (h!69314 zl!343)))))))

(declare-fun e!3443062 () (InoxSet Context!9894))

(declare-fun e!3443065 () (InoxSet Context!9894))

(assert (=> b!5579916 (= e!3443062 e!3443065)))

(declare-fun bm!417242 () Bool)

(assert (=> bm!417242 (= call!417248 call!417250)))

(declare-fun c!977020 () Bool)

(declare-fun bm!417243 () Bool)

(assert (=> bm!417243 (= call!417247 (derivationStepZipperDown!905 (ite c!977020 (regTwo!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343))))) (ite c!977020 lt!2253334 (Context!9895 call!417249)) (h!69313 s!2326)))))

(declare-fun b!5579917 () Bool)

(declare-fun e!3443060 () Bool)

(assert (=> b!5579917 (= c!977024 e!3443060)))

(declare-fun res!2368113 () Bool)

(assert (=> b!5579917 (=> (not res!2368113) (not e!3443060))))

(assert (=> b!5579917 (= res!2368113 ((_ is Concat!24408) (h!69312 (exprs!5447 (h!69314 zl!343)))))))

(declare-fun e!3443061 () (InoxSet Context!9894))

(assert (=> b!5579917 (= e!3443064 e!3443061)))

(declare-fun b!5579918 () Bool)

(assert (=> b!5579918 (= e!3443061 e!3443062)))

(assert (=> b!5579918 (= c!977022 ((_ is Concat!24408) (h!69312 (exprs!5447 (h!69314 zl!343)))))))

(declare-fun b!5579919 () Bool)

(assert (=> b!5579919 (= e!3443063 (store ((as const (Array Context!9894 Bool)) false) lt!2253334 true))))

(declare-fun b!5579920 () Bool)

(assert (=> b!5579920 (= e!3443062 call!417245)))

(declare-fun b!5579921 () Bool)

(assert (=> b!5579921 (= e!3443060 (nullable!5595 (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343))))))))

(declare-fun b!5579922 () Bool)

(assert (=> b!5579922 (= e!3443063 e!3443064)))

(assert (=> b!5579922 (= c!977020 ((_ is Union!15563) (h!69312 (exprs!5447 (h!69314 zl!343)))))))

(declare-fun b!5579923 () Bool)

(assert (=> b!5579923 (= e!3443061 ((_ map or) call!417247 call!417248))))

(declare-fun bm!417244 () Bool)

(declare-fun call!417246 () List!62988)

(assert (=> bm!417244 (= call!417246 call!417249)))

(declare-fun bm!417245 () Bool)

(assert (=> bm!417245 (= call!417250 (derivationStepZipperDown!905 (ite c!977020 (regOne!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (ite c!977024 (regTwo!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (ite c!977022 (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (reg!15892 (h!69312 (exprs!5447 (h!69314 zl!343))))))) (ite (or c!977020 c!977024) lt!2253334 (Context!9895 call!417246)) (h!69313 s!2326)))))

(declare-fun b!5579924 () Bool)

(assert (=> b!5579924 (= e!3443065 call!417245)))

(declare-fun b!5579925 () Bool)

(assert (=> b!5579925 (= e!3443065 ((as const (Array Context!9894 Bool)) false))))

(assert (= (and d!1763905 c!977023) b!5579919))

(assert (= (and d!1763905 (not c!977023)) b!5579922))

(assert (= (and b!5579922 c!977020) b!5579915))

(assert (= (and b!5579922 (not c!977020)) b!5579917))

(assert (= (and b!5579917 res!2368113) b!5579921))

(assert (= (and b!5579917 c!977024) b!5579923))

(assert (= (and b!5579917 (not c!977024)) b!5579918))

(assert (= (and b!5579918 c!977022) b!5579920))

(assert (= (and b!5579918 (not c!977022)) b!5579916))

(assert (= (and b!5579916 c!977021) b!5579924))

(assert (= (and b!5579916 (not c!977021)) b!5579925))

(assert (= (or b!5579920 b!5579924) bm!417244))

(assert (= (or b!5579920 b!5579924) bm!417240))

(assert (= (or b!5579923 bm!417244) bm!417241))

(assert (= (or b!5579923 bm!417240) bm!417242))

(assert (= (or b!5579915 b!5579923) bm!417243))

(assert (= (or b!5579915 bm!417242) bm!417245))

(declare-fun m!6562098 () Bool)

(assert (=> b!5579921 m!6562098))

(declare-fun m!6562100 () Bool)

(assert (=> bm!417241 m!6562100))

(assert (=> b!5579919 m!6562054))

(declare-fun m!6562102 () Bool)

(assert (=> bm!417243 m!6562102))

(declare-fun m!6562104 () Bool)

(assert (=> bm!417245 m!6562104))

(assert (=> b!5579326 d!1763905))

(declare-fun d!1763907 () Bool)

(assert (=> d!1763907 (= (nullable!5595 (h!69312 (exprs!5447 (h!69314 zl!343)))) (nullableFct!1707 (h!69312 (exprs!5447 (h!69314 zl!343)))))))

(declare-fun bs!1290856 () Bool)

(assert (= bs!1290856 d!1763907))

(declare-fun m!6562106 () Bool)

(assert (=> bs!1290856 m!6562106))

(assert (=> b!5579326 d!1763907))

(declare-fun b!5579926 () Bool)

(declare-fun e!3443068 () Bool)

(assert (=> b!5579926 (= e!3443068 (nullable!5595 (h!69312 (exprs!5447 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343)))))))))))

(declare-fun b!5579927 () Bool)

(declare-fun e!3443066 () (InoxSet Context!9894))

(declare-fun call!417251 () (InoxSet Context!9894))

(assert (=> b!5579927 (= e!3443066 call!417251)))

(declare-fun b!5579928 () Bool)

(declare-fun e!3443067 () (InoxSet Context!9894))

(assert (=> b!5579928 (= e!3443067 e!3443066)))

(declare-fun c!977026 () Bool)

(assert (=> b!5579928 (= c!977026 ((_ is Cons!62864) (exprs!5447 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343))))))))))

(declare-fun d!1763909 () Bool)

(declare-fun c!977025 () Bool)

(assert (=> d!1763909 (= c!977025 e!3443068)))

(declare-fun res!2368114 () Bool)

(assert (=> d!1763909 (=> (not res!2368114) (not e!3443068))))

(assert (=> d!1763909 (= res!2368114 ((_ is Cons!62864) (exprs!5447 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343))))))))))

(assert (=> d!1763909 (= (derivationStepZipperUp!831 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343))))) (h!69313 s!2326)) e!3443067)))

(declare-fun b!5579929 () Bool)

(assert (=> b!5579929 (= e!3443066 ((as const (Array Context!9894 Bool)) false))))

(declare-fun b!5579930 () Bool)

(assert (=> b!5579930 (= e!3443067 ((_ map or) call!417251 (derivationStepZipperUp!831 (Context!9895 (t!376259 (exprs!5447 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343)))))))) (h!69313 s!2326))))))

(declare-fun bm!417246 () Bool)

(assert (=> bm!417246 (= call!417251 (derivationStepZipperDown!905 (h!69312 (exprs!5447 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343))))))) (Context!9895 (t!376259 (exprs!5447 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343)))))))) (h!69313 s!2326)))))

(assert (= (and d!1763909 res!2368114) b!5579926))

(assert (= (and d!1763909 c!977025) b!5579930))

(assert (= (and d!1763909 (not c!977025)) b!5579928))

(assert (= (and b!5579928 c!977026) b!5579927))

(assert (= (and b!5579928 (not c!977026)) b!5579929))

(assert (= (or b!5579930 b!5579927) bm!417246))

(declare-fun m!6562108 () Bool)

(assert (=> b!5579926 m!6562108))

(declare-fun m!6562110 () Bool)

(assert (=> b!5579930 m!6562110))

(declare-fun m!6562112 () Bool)

(assert (=> bm!417246 m!6562112))

(assert (=> b!5579326 d!1763909))

(declare-fun b!5579931 () Bool)

(declare-fun e!3443071 () Bool)

(assert (=> b!5579931 (= e!3443071 (nullable!5595 (h!69312 (exprs!5447 lt!2253334))))))

(declare-fun b!5579932 () Bool)

(declare-fun e!3443069 () (InoxSet Context!9894))

(declare-fun call!417252 () (InoxSet Context!9894))

(assert (=> b!5579932 (= e!3443069 call!417252)))

(declare-fun b!5579933 () Bool)

(declare-fun e!3443070 () (InoxSet Context!9894))

(assert (=> b!5579933 (= e!3443070 e!3443069)))

(declare-fun c!977028 () Bool)

(assert (=> b!5579933 (= c!977028 ((_ is Cons!62864) (exprs!5447 lt!2253334)))))

(declare-fun d!1763911 () Bool)

(declare-fun c!977027 () Bool)

(assert (=> d!1763911 (= c!977027 e!3443071)))

(declare-fun res!2368115 () Bool)

(assert (=> d!1763911 (=> (not res!2368115) (not e!3443071))))

(assert (=> d!1763911 (= res!2368115 ((_ is Cons!62864) (exprs!5447 lt!2253334)))))

(assert (=> d!1763911 (= (derivationStepZipperUp!831 lt!2253334 (h!69313 s!2326)) e!3443070)))

(declare-fun b!5579934 () Bool)

(assert (=> b!5579934 (= e!3443069 ((as const (Array Context!9894 Bool)) false))))

(declare-fun b!5579935 () Bool)

(assert (=> b!5579935 (= e!3443070 ((_ map or) call!417252 (derivationStepZipperUp!831 (Context!9895 (t!376259 (exprs!5447 lt!2253334))) (h!69313 s!2326))))))

(declare-fun bm!417247 () Bool)

(assert (=> bm!417247 (= call!417252 (derivationStepZipperDown!905 (h!69312 (exprs!5447 lt!2253334)) (Context!9895 (t!376259 (exprs!5447 lt!2253334))) (h!69313 s!2326)))))

(assert (= (and d!1763911 res!2368115) b!5579931))

(assert (= (and d!1763911 c!977027) b!5579935))

(assert (= (and d!1763911 (not c!977027)) b!5579933))

(assert (= (and b!5579933 c!977028) b!5579932))

(assert (= (and b!5579933 (not c!977028)) b!5579934))

(assert (= (or b!5579935 b!5579932) bm!417247))

(declare-fun m!6562114 () Bool)

(assert (=> b!5579931 m!6562114))

(declare-fun m!6562116 () Bool)

(assert (=> b!5579935 m!6562116))

(declare-fun m!6562118 () Bool)

(assert (=> bm!417247 m!6562118))

(assert (=> b!5579326 d!1763911))

(declare-fun d!1763913 () Bool)

(assert (=> d!1763913 (= (flatMap!1176 z!1189 lambda!299170) (choose!42288 z!1189 lambda!299170))))

(declare-fun bs!1290857 () Bool)

(assert (= bs!1290857 d!1763913))

(declare-fun m!6562120 () Bool)

(assert (=> bs!1290857 m!6562120))

(assert (=> b!5579326 d!1763913))

(declare-fun b!5579936 () Bool)

(declare-fun e!3443074 () Bool)

(assert (=> b!5579936 (= e!3443074 (nullable!5595 (h!69312 (exprs!5447 (h!69314 zl!343)))))))

(declare-fun b!5579937 () Bool)

(declare-fun e!3443072 () (InoxSet Context!9894))

(declare-fun call!417253 () (InoxSet Context!9894))

(assert (=> b!5579937 (= e!3443072 call!417253)))

(declare-fun b!5579938 () Bool)

(declare-fun e!3443073 () (InoxSet Context!9894))

(assert (=> b!5579938 (= e!3443073 e!3443072)))

(declare-fun c!977030 () Bool)

(assert (=> b!5579938 (= c!977030 ((_ is Cons!62864) (exprs!5447 (h!69314 zl!343))))))

(declare-fun d!1763915 () Bool)

(declare-fun c!977029 () Bool)

(assert (=> d!1763915 (= c!977029 e!3443074)))

(declare-fun res!2368116 () Bool)

(assert (=> d!1763915 (=> (not res!2368116) (not e!3443074))))

(assert (=> d!1763915 (= res!2368116 ((_ is Cons!62864) (exprs!5447 (h!69314 zl!343))))))

(assert (=> d!1763915 (= (derivationStepZipperUp!831 (h!69314 zl!343) (h!69313 s!2326)) e!3443073)))

(declare-fun b!5579939 () Bool)

(assert (=> b!5579939 (= e!3443072 ((as const (Array Context!9894 Bool)) false))))

(declare-fun b!5579940 () Bool)

(assert (=> b!5579940 (= e!3443073 ((_ map or) call!417253 (derivationStepZipperUp!831 (Context!9895 (t!376259 (exprs!5447 (h!69314 zl!343)))) (h!69313 s!2326))))))

(declare-fun bm!417248 () Bool)

(assert (=> bm!417248 (= call!417253 (derivationStepZipperDown!905 (h!69312 (exprs!5447 (h!69314 zl!343))) (Context!9895 (t!376259 (exprs!5447 (h!69314 zl!343)))) (h!69313 s!2326)))))

(assert (= (and d!1763915 res!2368116) b!5579936))

(assert (= (and d!1763915 c!977029) b!5579940))

(assert (= (and d!1763915 (not c!977029)) b!5579938))

(assert (= (and b!5579938 c!977030) b!5579937))

(assert (= (and b!5579938 (not c!977030)) b!5579939))

(assert (= (or b!5579940 b!5579937) bm!417248))

(assert (=> b!5579936 m!6561708))

(declare-fun m!6562122 () Bool)

(assert (=> b!5579940 m!6562122))

(declare-fun m!6562124 () Bool)

(assert (=> bm!417248 m!6562124))

(assert (=> b!5579326 d!1763915))

(declare-fun d!1763917 () Bool)

(assert (=> d!1763917 (= (flatMap!1176 z!1189 lambda!299170) (dynLambda!24585 lambda!299170 (h!69314 zl!343)))))

(declare-fun lt!2253398 () Unit!155624)

(assert (=> d!1763917 (= lt!2253398 (choose!42289 z!1189 (h!69314 zl!343) lambda!299170))))

(assert (=> d!1763917 (= z!1189 (store ((as const (Array Context!9894 Bool)) false) (h!69314 zl!343) true))))

(assert (=> d!1763917 (= (lemmaFlatMapOnSingletonSet!708 z!1189 (h!69314 zl!343) lambda!299170) lt!2253398)))

(declare-fun b_lambda!211485 () Bool)

(assert (=> (not b_lambda!211485) (not d!1763917)))

(declare-fun bs!1290858 () Bool)

(assert (= bs!1290858 d!1763917))

(assert (=> bs!1290858 m!6561706))

(declare-fun m!6562126 () Bool)

(assert (=> bs!1290858 m!6562126))

(declare-fun m!6562128 () Bool)

(assert (=> bs!1290858 m!6562128))

(declare-fun m!6562130 () Bool)

(assert (=> bs!1290858 m!6562130))

(assert (=> b!5579326 d!1763917))

(declare-fun b!5579959 () Bool)

(declare-fun e!3443089 () Bool)

(declare-fun lt!2253406 () Option!15572)

(assert (=> b!5579959 (= e!3443089 (not (isDefined!12275 lt!2253406)))))

(declare-fun b!5579960 () Bool)

(declare-fun e!3443085 () Bool)

(assert (=> b!5579960 (= e!3443085 (matchR!7748 (regTwo!31638 r!7292) s!2326))))

(declare-fun b!5579961 () Bool)

(declare-fun res!2368130 () Bool)

(declare-fun e!3443088 () Bool)

(assert (=> b!5579961 (=> (not res!2368130) (not e!3443088))))

(declare-fun get!21644 (Option!15572) tuple2!65320)

(assert (=> b!5579961 (= res!2368130 (matchR!7748 (regTwo!31638 r!7292) (_2!35963 (get!21644 lt!2253406))))))

(declare-fun b!5579962 () Bool)

(declare-fun e!3443087 () Option!15572)

(assert (=> b!5579962 (= e!3443087 None!15571)))

(declare-fun b!5579963 () Bool)

(declare-fun ++!13795 (List!62989 List!62989) List!62989)

(assert (=> b!5579963 (= e!3443088 (= (++!13795 (_1!35963 (get!21644 lt!2253406)) (_2!35963 (get!21644 lt!2253406))) s!2326))))

(declare-fun b!5579964 () Bool)

(declare-fun e!3443086 () Option!15572)

(assert (=> b!5579964 (= e!3443086 e!3443087)))

(declare-fun c!977035 () Bool)

(assert (=> b!5579964 (= c!977035 ((_ is Nil!62865) s!2326))))

(declare-fun d!1763919 () Bool)

(assert (=> d!1763919 e!3443089))

(declare-fun res!2368128 () Bool)

(assert (=> d!1763919 (=> res!2368128 e!3443089)))

(assert (=> d!1763919 (= res!2368128 e!3443088)))

(declare-fun res!2368131 () Bool)

(assert (=> d!1763919 (=> (not res!2368131) (not e!3443088))))

(assert (=> d!1763919 (= res!2368131 (isDefined!12275 lt!2253406))))

(assert (=> d!1763919 (= lt!2253406 e!3443086)))

(declare-fun c!977036 () Bool)

(assert (=> d!1763919 (= c!977036 e!3443085)))

(declare-fun res!2368129 () Bool)

(assert (=> d!1763919 (=> (not res!2368129) (not e!3443085))))

(assert (=> d!1763919 (= res!2368129 (matchR!7748 (regOne!31638 r!7292) Nil!62865))))

(assert (=> d!1763919 (validRegex!7299 (regOne!31638 r!7292))))

(assert (=> d!1763919 (= (findConcatSeparation!1986 (regOne!31638 r!7292) (regTwo!31638 r!7292) Nil!62865 s!2326 s!2326) lt!2253406)))

(declare-fun b!5579965 () Bool)

(assert (=> b!5579965 (= e!3443086 (Some!15571 (tuple2!65321 Nil!62865 s!2326)))))

(declare-fun b!5579966 () Bool)

(declare-fun lt!2253407 () Unit!155624)

(declare-fun lt!2253405 () Unit!155624)

(assert (=> b!5579966 (= lt!2253407 lt!2253405)))

(assert (=> b!5579966 (= (++!13795 (++!13795 Nil!62865 (Cons!62865 (h!69313 s!2326) Nil!62865)) (t!376260 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1964 (List!62989 C!31396 List!62989 List!62989) Unit!155624)

(assert (=> b!5579966 (= lt!2253405 (lemmaMoveElementToOtherListKeepsConcatEq!1964 Nil!62865 (h!69313 s!2326) (t!376260 s!2326) s!2326))))

(assert (=> b!5579966 (= e!3443087 (findConcatSeparation!1986 (regOne!31638 r!7292) (regTwo!31638 r!7292) (++!13795 Nil!62865 (Cons!62865 (h!69313 s!2326) Nil!62865)) (t!376260 s!2326) s!2326))))

(declare-fun b!5579967 () Bool)

(declare-fun res!2368127 () Bool)

(assert (=> b!5579967 (=> (not res!2368127) (not e!3443088))))

(assert (=> b!5579967 (= res!2368127 (matchR!7748 (regOne!31638 r!7292) (_1!35963 (get!21644 lt!2253406))))))

(assert (= (and d!1763919 res!2368129) b!5579960))

(assert (= (and d!1763919 c!977036) b!5579965))

(assert (= (and d!1763919 (not c!977036)) b!5579964))

(assert (= (and b!5579964 c!977035) b!5579962))

(assert (= (and b!5579964 (not c!977035)) b!5579966))

(assert (= (and d!1763919 res!2368131) b!5579967))

(assert (= (and b!5579967 res!2368127) b!5579961))

(assert (= (and b!5579961 res!2368130) b!5579963))

(assert (= (and d!1763919 (not res!2368128)) b!5579959))

(declare-fun m!6562132 () Bool)

(assert (=> b!5579966 m!6562132))

(assert (=> b!5579966 m!6562132))

(declare-fun m!6562134 () Bool)

(assert (=> b!5579966 m!6562134))

(declare-fun m!6562136 () Bool)

(assert (=> b!5579966 m!6562136))

(assert (=> b!5579966 m!6562132))

(declare-fun m!6562138 () Bool)

(assert (=> b!5579966 m!6562138))

(declare-fun m!6562140 () Bool)

(assert (=> b!5579967 m!6562140))

(declare-fun m!6562142 () Bool)

(assert (=> b!5579967 m!6562142))

(declare-fun m!6562144 () Bool)

(assert (=> b!5579960 m!6562144))

(assert (=> b!5579963 m!6562140))

(declare-fun m!6562146 () Bool)

(assert (=> b!5579963 m!6562146))

(declare-fun m!6562148 () Bool)

(assert (=> b!5579959 m!6562148))

(assert (=> b!5579961 m!6562140))

(declare-fun m!6562150 () Bool)

(assert (=> b!5579961 m!6562150))

(assert (=> d!1763919 m!6562148))

(declare-fun m!6562152 () Bool)

(assert (=> d!1763919 m!6562152))

(declare-fun m!6562154 () Bool)

(assert (=> d!1763919 m!6562154))

(assert (=> b!5579318 d!1763919))

(declare-fun d!1763921 () Bool)

(declare-fun choose!42291 (Int) Bool)

(assert (=> d!1763921 (= (Exists!2663 lambda!299169) (choose!42291 lambda!299169))))

(declare-fun bs!1290859 () Bool)

(assert (= bs!1290859 d!1763921))

(declare-fun m!6562156 () Bool)

(assert (=> bs!1290859 m!6562156))

(assert (=> b!5579318 d!1763921))

(declare-fun bs!1290860 () Bool)

(declare-fun d!1763923 () Bool)

(assert (= bs!1290860 (and d!1763923 b!5579318)))

(declare-fun lambda!299210 () Int)

(assert (=> bs!1290860 (= lambda!299210 lambda!299168)))

(assert (=> bs!1290860 (not (= lambda!299210 lambda!299169))))

(declare-fun bs!1290861 () Bool)

(assert (= bs!1290861 (and d!1763923 b!5579789)))

(assert (=> bs!1290861 (not (= lambda!299210 lambda!299203))))

(declare-fun bs!1290862 () Bool)

(assert (= bs!1290862 (and d!1763923 b!5579787)))

(assert (=> bs!1290862 (not (= lambda!299210 lambda!299204))))

(assert (=> d!1763923 true))

(assert (=> d!1763923 true))

(assert (=> d!1763923 true))

(assert (=> d!1763923 (= (isDefined!12275 (findConcatSeparation!1986 (regOne!31638 r!7292) (regTwo!31638 r!7292) Nil!62865 s!2326 s!2326)) (Exists!2663 lambda!299210))))

(declare-fun lt!2253410 () Unit!155624)

(declare-fun choose!42292 (Regex!15563 Regex!15563 List!62989) Unit!155624)

(assert (=> d!1763923 (= lt!2253410 (choose!42292 (regOne!31638 r!7292) (regTwo!31638 r!7292) s!2326))))

(assert (=> d!1763923 (validRegex!7299 (regOne!31638 r!7292))))

(assert (=> d!1763923 (= (lemmaFindConcatSeparationEquivalentToExists!1750 (regOne!31638 r!7292) (regTwo!31638 r!7292) s!2326) lt!2253410)))

(declare-fun bs!1290863 () Bool)

(assert (= bs!1290863 d!1763923))

(declare-fun m!6562158 () Bool)

(assert (=> bs!1290863 m!6562158))

(declare-fun m!6562160 () Bool)

(assert (=> bs!1290863 m!6562160))

(assert (=> bs!1290863 m!6562154))

(assert (=> bs!1290863 m!6561666))

(assert (=> bs!1290863 m!6561666))

(assert (=> bs!1290863 m!6561668))

(assert (=> b!5579318 d!1763923))

(declare-fun d!1763925 () Bool)

(assert (=> d!1763925 (= (Exists!2663 lambda!299168) (choose!42291 lambda!299168))))

(declare-fun bs!1290864 () Bool)

(assert (= bs!1290864 d!1763925))

(declare-fun m!6562162 () Bool)

(assert (=> bs!1290864 m!6562162))

(assert (=> b!5579318 d!1763925))

(declare-fun bs!1290865 () Bool)

(declare-fun d!1763927 () Bool)

(assert (= bs!1290865 (and d!1763927 b!5579787)))

(declare-fun lambda!299215 () Int)

(assert (=> bs!1290865 (not (= lambda!299215 lambda!299204))))

(declare-fun bs!1290866 () Bool)

(assert (= bs!1290866 (and d!1763927 b!5579318)))

(assert (=> bs!1290866 (= lambda!299215 lambda!299168)))

(assert (=> bs!1290866 (not (= lambda!299215 lambda!299169))))

(declare-fun bs!1290867 () Bool)

(assert (= bs!1290867 (and d!1763927 d!1763923)))

(assert (=> bs!1290867 (= lambda!299215 lambda!299210)))

(declare-fun bs!1290868 () Bool)

(assert (= bs!1290868 (and d!1763927 b!5579789)))

(assert (=> bs!1290868 (not (= lambda!299215 lambda!299203))))

(assert (=> d!1763927 true))

(assert (=> d!1763927 true))

(assert (=> d!1763927 true))

(declare-fun bs!1290869 () Bool)

(assert (= bs!1290869 d!1763927))

(declare-fun lambda!299216 () Int)

(assert (=> bs!1290869 (not (= lambda!299216 lambda!299215))))

(assert (=> bs!1290865 (= lambda!299216 lambda!299204)))

(assert (=> bs!1290866 (not (= lambda!299216 lambda!299168))))

(assert (=> bs!1290866 (= lambda!299216 lambda!299169)))

(assert (=> bs!1290867 (not (= lambda!299216 lambda!299210))))

(assert (=> bs!1290868 (not (= lambda!299216 lambda!299203))))

(assert (=> d!1763927 true))

(assert (=> d!1763927 true))

(assert (=> d!1763927 true))

(assert (=> d!1763927 (= (Exists!2663 lambda!299215) (Exists!2663 lambda!299216))))

(declare-fun lt!2253413 () Unit!155624)

(declare-fun choose!42293 (Regex!15563 Regex!15563 List!62989) Unit!155624)

(assert (=> d!1763927 (= lt!2253413 (choose!42293 (regOne!31638 r!7292) (regTwo!31638 r!7292) s!2326))))

(assert (=> d!1763927 (validRegex!7299 (regOne!31638 r!7292))))

(assert (=> d!1763927 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1292 (regOne!31638 r!7292) (regTwo!31638 r!7292) s!2326) lt!2253413)))

(declare-fun m!6562164 () Bool)

(assert (=> bs!1290869 m!6562164))

(declare-fun m!6562166 () Bool)

(assert (=> bs!1290869 m!6562166))

(declare-fun m!6562168 () Bool)

(assert (=> bs!1290869 m!6562168))

(assert (=> bs!1290869 m!6562154))

(assert (=> b!5579318 d!1763927))

(declare-fun d!1763929 () Bool)

(declare-fun isEmpty!34676 (Option!15572) Bool)

(assert (=> d!1763929 (= (isDefined!12275 (findConcatSeparation!1986 (regOne!31638 r!7292) (regTwo!31638 r!7292) Nil!62865 s!2326 s!2326)) (not (isEmpty!34676 (findConcatSeparation!1986 (regOne!31638 r!7292) (regTwo!31638 r!7292) Nil!62865 s!2326 s!2326))))))

(declare-fun bs!1290870 () Bool)

(assert (= bs!1290870 d!1763929))

(assert (=> bs!1290870 m!6561666))

(declare-fun m!6562170 () Bool)

(assert (=> bs!1290870 m!6562170))

(assert (=> b!5579318 d!1763929))

(declare-fun d!1763931 () Bool)

(declare-fun e!3443098 () Bool)

(assert (=> d!1763931 e!3443098))

(declare-fun res!2368146 () Bool)

(assert (=> d!1763931 (=> (not res!2368146) (not e!3443098))))

(declare-fun lt!2253416 () List!62990)

(declare-fun noDuplicate!1541 (List!62990) Bool)

(assert (=> d!1763931 (= res!2368146 (noDuplicate!1541 lt!2253416))))

(declare-fun choose!42294 ((InoxSet Context!9894)) List!62990)

(assert (=> d!1763931 (= lt!2253416 (choose!42294 z!1189))))

(assert (=> d!1763931 (= (toList!9347 z!1189) lt!2253416)))

(declare-fun b!5579982 () Bool)

(declare-fun content!11331 (List!62990) (InoxSet Context!9894))

(assert (=> b!5579982 (= e!3443098 (= (content!11331 lt!2253416) z!1189))))

(assert (= (and d!1763931 res!2368146) b!5579982))

(declare-fun m!6562172 () Bool)

(assert (=> d!1763931 m!6562172))

(declare-fun m!6562174 () Bool)

(assert (=> d!1763931 m!6562174))

(declare-fun m!6562176 () Bool)

(assert (=> b!5579982 m!6562176))

(assert (=> b!5579310 d!1763931))

(declare-fun b!5580001 () Bool)

(declare-fun e!3443119 () Bool)

(declare-fun e!3443113 () Bool)

(assert (=> b!5580001 (= e!3443119 e!3443113)))

(declare-fun res!2368159 () Bool)

(assert (=> b!5580001 (= res!2368159 (not (nullable!5595 (reg!15892 r!7292))))))

(assert (=> b!5580001 (=> (not res!2368159) (not e!3443113))))

(declare-fun bm!417255 () Bool)

(declare-fun call!417262 () Bool)

(declare-fun call!417261 () Bool)

(assert (=> bm!417255 (= call!417262 call!417261)))

(declare-fun b!5580002 () Bool)

(declare-fun e!3443114 () Bool)

(declare-fun e!3443118 () Bool)

(assert (=> b!5580002 (= e!3443114 e!3443118)))

(declare-fun res!2368160 () Bool)

(assert (=> b!5580002 (=> (not res!2368160) (not e!3443118))))

(declare-fun call!417260 () Bool)

(assert (=> b!5580002 (= res!2368160 call!417260)))

(declare-fun b!5580003 () Bool)

(declare-fun res!2368157 () Bool)

(declare-fun e!3443117 () Bool)

(assert (=> b!5580003 (=> (not res!2368157) (not e!3443117))))

(assert (=> b!5580003 (= res!2368157 call!417260)))

(declare-fun e!3443115 () Bool)

(assert (=> b!5580003 (= e!3443115 e!3443117)))

(declare-fun b!5580004 () Bool)

(assert (=> b!5580004 (= e!3443119 e!3443115)))

(declare-fun c!977041 () Bool)

(assert (=> b!5580004 (= c!977041 ((_ is Union!15563) r!7292))))

(declare-fun b!5580005 () Bool)

(assert (=> b!5580005 (= e!3443118 call!417262)))

(declare-fun b!5580006 () Bool)

(assert (=> b!5580006 (= e!3443113 call!417261)))

(declare-fun b!5580007 () Bool)

(declare-fun e!3443116 () Bool)

(assert (=> b!5580007 (= e!3443116 e!3443119)))

(declare-fun c!977042 () Bool)

(assert (=> b!5580007 (= c!977042 ((_ is Star!15563) r!7292))))

(declare-fun bm!417257 () Bool)

(assert (=> bm!417257 (= call!417260 (validRegex!7299 (ite c!977041 (regOne!31639 r!7292) (regOne!31638 r!7292))))))

(declare-fun b!5580008 () Bool)

(assert (=> b!5580008 (= e!3443117 call!417262)))

(declare-fun b!5580009 () Bool)

(declare-fun res!2368158 () Bool)

(assert (=> b!5580009 (=> res!2368158 e!3443114)))

(assert (=> b!5580009 (= res!2368158 (not ((_ is Concat!24408) r!7292)))))

(assert (=> b!5580009 (= e!3443115 e!3443114)))

(declare-fun d!1763933 () Bool)

(declare-fun res!2368161 () Bool)

(assert (=> d!1763933 (=> res!2368161 e!3443116)))

(assert (=> d!1763933 (= res!2368161 ((_ is ElementMatch!15563) r!7292))))

(assert (=> d!1763933 (= (validRegex!7299 r!7292) e!3443116)))

(declare-fun bm!417256 () Bool)

(assert (=> bm!417256 (= call!417261 (validRegex!7299 (ite c!977042 (reg!15892 r!7292) (ite c!977041 (regTwo!31639 r!7292) (regTwo!31638 r!7292)))))))

(assert (= (and d!1763933 (not res!2368161)) b!5580007))

(assert (= (and b!5580007 c!977042) b!5580001))

(assert (= (and b!5580007 (not c!977042)) b!5580004))

(assert (= (and b!5580001 res!2368159) b!5580006))

(assert (= (and b!5580004 c!977041) b!5580003))

(assert (= (and b!5580004 (not c!977041)) b!5580009))

(assert (= (and b!5580003 res!2368157) b!5580008))

(assert (= (and b!5580009 (not res!2368158)) b!5580002))

(assert (= (and b!5580002 res!2368160) b!5580005))

(assert (= (or b!5580008 b!5580005) bm!417255))

(assert (= (or b!5580003 b!5580002) bm!417257))

(assert (= (or b!5580006 bm!417255) bm!417256))

(declare-fun m!6562178 () Bool)

(assert (=> b!5580001 m!6562178))

(declare-fun m!6562180 () Bool)

(assert (=> bm!417257 m!6562180))

(declare-fun m!6562182 () Bool)

(assert (=> bm!417256 m!6562182))

(assert (=> start!579562 d!1763933))

(declare-fun bs!1290871 () Bool)

(declare-fun d!1763935 () Bool)

(assert (= bs!1290871 (and d!1763935 d!1763903)))

(declare-fun lambda!299219 () Int)

(assert (=> bs!1290871 (= lambda!299219 lambda!299207)))

(assert (=> d!1763935 (= (inv!82154 setElem!37131) (forall!14732 (exprs!5447 setElem!37131) lambda!299219))))

(declare-fun bs!1290872 () Bool)

(assert (= bs!1290872 d!1763935))

(declare-fun m!6562184 () Bool)

(assert (=> bs!1290872 m!6562184))

(assert (=> setNonEmpty!37131 d!1763935))

(declare-fun bs!1290873 () Bool)

(declare-fun d!1763937 () Bool)

(assert (= bs!1290873 (and d!1763937 d!1763903)))

(declare-fun lambda!299220 () Int)

(assert (=> bs!1290873 (= lambda!299220 lambda!299207)))

(declare-fun bs!1290874 () Bool)

(assert (= bs!1290874 (and d!1763937 d!1763935)))

(assert (=> bs!1290874 (= lambda!299220 lambda!299219)))

(assert (=> d!1763937 (= (inv!82154 (h!69314 zl!343)) (forall!14732 (exprs!5447 (h!69314 zl!343)) lambda!299220))))

(declare-fun bs!1290875 () Bool)

(assert (= bs!1290875 d!1763937))

(declare-fun m!6562186 () Bool)

(assert (=> bs!1290875 m!6562186))

(assert (=> b!5579329 d!1763937))

(declare-fun e!3443120 () Bool)

(declare-fun d!1763939 () Bool)

(assert (=> d!1763939 (= (matchZipper!1701 ((_ map or) lt!2253337 lt!2253325) (t!376260 s!2326)) e!3443120)))

(declare-fun res!2368162 () Bool)

(assert (=> d!1763939 (=> res!2368162 e!3443120)))

(assert (=> d!1763939 (= res!2368162 (matchZipper!1701 lt!2253337 (t!376260 s!2326)))))

(declare-fun lt!2253417 () Unit!155624)

(assert (=> d!1763939 (= lt!2253417 (choose!42287 lt!2253337 lt!2253325 (t!376260 s!2326)))))

(assert (=> d!1763939 (= (lemmaZipperConcatMatchesSameAsBothZippers!588 lt!2253337 lt!2253325 (t!376260 s!2326)) lt!2253417)))

(declare-fun b!5580010 () Bool)

(assert (=> b!5580010 (= e!3443120 (matchZipper!1701 lt!2253325 (t!376260 s!2326)))))

(assert (= (and d!1763939 (not res!2368162)) b!5580010))

(assert (=> d!1763939 m!6561694))

(assert (=> d!1763939 m!6561674))

(declare-fun m!6562188 () Bool)

(assert (=> d!1763939 m!6562188))

(assert (=> b!5580010 m!6561684))

(assert (=> b!5579331 d!1763939))

(assert (=> b!5579331 d!1763869))

(declare-fun d!1763941 () Bool)

(declare-fun c!977043 () Bool)

(assert (=> d!1763941 (= c!977043 (isEmpty!34675 (t!376260 s!2326)))))

(declare-fun e!3443121 () Bool)

(assert (=> d!1763941 (= (matchZipper!1701 ((_ map or) lt!2253337 lt!2253325) (t!376260 s!2326)) e!3443121)))

(declare-fun b!5580011 () Bool)

(assert (=> b!5580011 (= e!3443121 (nullableZipper!1560 ((_ map or) lt!2253337 lt!2253325)))))

(declare-fun b!5580012 () Bool)

(assert (=> b!5580012 (= e!3443121 (matchZipper!1701 (derivationStepZipper!1662 ((_ map or) lt!2253337 lt!2253325) (head!11900 (t!376260 s!2326))) (tail!10995 (t!376260 s!2326))))))

(assert (= (and d!1763941 c!977043) b!5580011))

(assert (= (and d!1763941 (not c!977043)) b!5580012))

(assert (=> d!1763941 m!6561980))

(declare-fun m!6562190 () Bool)

(assert (=> b!5580011 m!6562190))

(assert (=> b!5580012 m!6561984))

(assert (=> b!5580012 m!6561984))

(declare-fun m!6562192 () Bool)

(assert (=> b!5580012 m!6562192))

(assert (=> b!5580012 m!6561988))

(assert (=> b!5580012 m!6562192))

(assert (=> b!5580012 m!6561988))

(declare-fun m!6562194 () Bool)

(assert (=> b!5580012 m!6562194))

(assert (=> b!5579331 d!1763941))

(declare-fun d!1763943 () Bool)

(declare-fun lt!2253420 () Regex!15563)

(assert (=> d!1763943 (validRegex!7299 lt!2253420)))

(assert (=> d!1763943 (= lt!2253420 (generalisedUnion!1426 (unfocusZipperList!991 zl!343)))))

(assert (=> d!1763943 (= (unfocusZipper!1305 zl!343) lt!2253420)))

(declare-fun bs!1290876 () Bool)

(assert (= bs!1290876 d!1763943))

(declare-fun m!6562196 () Bool)

(assert (=> bs!1290876 m!6562196))

(assert (=> bs!1290876 m!6561720))

(assert (=> bs!1290876 m!6561720))

(assert (=> bs!1290876 m!6561722))

(assert (=> b!5579330 d!1763943))

(declare-fun bs!1290877 () Bool)

(declare-fun d!1763945 () Bool)

(assert (= bs!1290877 (and d!1763945 d!1763903)))

(declare-fun lambda!299223 () Int)

(assert (=> bs!1290877 (= lambda!299223 lambda!299207)))

(declare-fun bs!1290878 () Bool)

(assert (= bs!1290878 (and d!1763945 d!1763935)))

(assert (=> bs!1290878 (= lambda!299223 lambda!299219)))

(declare-fun bs!1290879 () Bool)

(assert (= bs!1290879 (and d!1763945 d!1763937)))

(assert (=> bs!1290879 (= lambda!299223 lambda!299220)))

(declare-fun b!5580033 () Bool)

(declare-fun e!3443136 () Bool)

(declare-fun lt!2253423 () Regex!15563)

(declare-fun isUnion!560 (Regex!15563) Bool)

(assert (=> b!5580033 (= e!3443136 (isUnion!560 lt!2253423))))

(declare-fun b!5580034 () Bool)

(declare-fun e!3443137 () Bool)

(assert (=> b!5580034 (= e!3443137 e!3443136)))

(declare-fun c!977054 () Bool)

(assert (=> b!5580034 (= c!977054 (isEmpty!34671 (tail!10996 (unfocusZipperList!991 zl!343))))))

(declare-fun b!5580035 () Bool)

(declare-fun e!3443138 () Regex!15563)

(assert (=> b!5580035 (= e!3443138 EmptyLang!15563)))

(declare-fun b!5580036 () Bool)

(declare-fun e!3443135 () Bool)

(assert (=> b!5580036 (= e!3443135 (isEmpty!34671 (t!376259 (unfocusZipperList!991 zl!343))))))

(declare-fun e!3443139 () Bool)

(assert (=> d!1763945 e!3443139))

(declare-fun res!2368168 () Bool)

(assert (=> d!1763945 (=> (not res!2368168) (not e!3443139))))

(assert (=> d!1763945 (= res!2368168 (validRegex!7299 lt!2253423))))

(declare-fun e!3443134 () Regex!15563)

(assert (=> d!1763945 (= lt!2253423 e!3443134)))

(declare-fun c!977053 () Bool)

(assert (=> d!1763945 (= c!977053 e!3443135)))

(declare-fun res!2368167 () Bool)

(assert (=> d!1763945 (=> (not res!2368167) (not e!3443135))))

(assert (=> d!1763945 (= res!2368167 ((_ is Cons!62864) (unfocusZipperList!991 zl!343)))))

(assert (=> d!1763945 (forall!14732 (unfocusZipperList!991 zl!343) lambda!299223)))

(assert (=> d!1763945 (= (generalisedUnion!1426 (unfocusZipperList!991 zl!343)) lt!2253423)))

(declare-fun b!5580037 () Bool)

(assert (=> b!5580037 (= e!3443136 (= lt!2253423 (head!11901 (unfocusZipperList!991 zl!343))))))

(declare-fun b!5580038 () Bool)

(assert (=> b!5580038 (= e!3443134 e!3443138)))

(declare-fun c!977052 () Bool)

(assert (=> b!5580038 (= c!977052 ((_ is Cons!62864) (unfocusZipperList!991 zl!343)))))

(declare-fun b!5580039 () Bool)

(declare-fun isEmptyLang!1130 (Regex!15563) Bool)

(assert (=> b!5580039 (= e!3443137 (isEmptyLang!1130 lt!2253423))))

(declare-fun b!5580040 () Bool)

(assert (=> b!5580040 (= e!3443138 (Union!15563 (h!69312 (unfocusZipperList!991 zl!343)) (generalisedUnion!1426 (t!376259 (unfocusZipperList!991 zl!343)))))))

(declare-fun b!5580041 () Bool)

(assert (=> b!5580041 (= e!3443134 (h!69312 (unfocusZipperList!991 zl!343)))))

(declare-fun b!5580042 () Bool)

(assert (=> b!5580042 (= e!3443139 e!3443137)))

(declare-fun c!977055 () Bool)

(assert (=> b!5580042 (= c!977055 (isEmpty!34671 (unfocusZipperList!991 zl!343)))))

(assert (= (and d!1763945 res!2368167) b!5580036))

(assert (= (and d!1763945 c!977053) b!5580041))

(assert (= (and d!1763945 (not c!977053)) b!5580038))

(assert (= (and b!5580038 c!977052) b!5580040))

(assert (= (and b!5580038 (not c!977052)) b!5580035))

(assert (= (and d!1763945 res!2368168) b!5580042))

(assert (= (and b!5580042 c!977055) b!5580039))

(assert (= (and b!5580042 (not c!977055)) b!5580034))

(assert (= (and b!5580034 c!977054) b!5580037))

(assert (= (and b!5580034 (not c!977054)) b!5580033))

(declare-fun m!6562198 () Bool)

(assert (=> d!1763945 m!6562198))

(assert (=> d!1763945 m!6561720))

(declare-fun m!6562200 () Bool)

(assert (=> d!1763945 m!6562200))

(declare-fun m!6562202 () Bool)

(assert (=> b!5580039 m!6562202))

(declare-fun m!6562204 () Bool)

(assert (=> b!5580040 m!6562204))

(declare-fun m!6562206 () Bool)

(assert (=> b!5580033 m!6562206))

(assert (=> b!5580034 m!6561720))

(declare-fun m!6562208 () Bool)

(assert (=> b!5580034 m!6562208))

(assert (=> b!5580034 m!6562208))

(declare-fun m!6562210 () Bool)

(assert (=> b!5580034 m!6562210))

(declare-fun m!6562212 () Bool)

(assert (=> b!5580036 m!6562212))

(assert (=> b!5580037 m!6561720))

(declare-fun m!6562214 () Bool)

(assert (=> b!5580037 m!6562214))

(assert (=> b!5580042 m!6561720))

(declare-fun m!6562216 () Bool)

(assert (=> b!5580042 m!6562216))

(assert (=> b!5579311 d!1763945))

(declare-fun bs!1290880 () Bool)

(declare-fun d!1763947 () Bool)

(assert (= bs!1290880 (and d!1763947 d!1763903)))

(declare-fun lambda!299226 () Int)

(assert (=> bs!1290880 (= lambda!299226 lambda!299207)))

(declare-fun bs!1290881 () Bool)

(assert (= bs!1290881 (and d!1763947 d!1763935)))

(assert (=> bs!1290881 (= lambda!299226 lambda!299219)))

(declare-fun bs!1290882 () Bool)

(assert (= bs!1290882 (and d!1763947 d!1763937)))

(assert (=> bs!1290882 (= lambda!299226 lambda!299220)))

(declare-fun bs!1290883 () Bool)

(assert (= bs!1290883 (and d!1763947 d!1763945)))

(assert (=> bs!1290883 (= lambda!299226 lambda!299223)))

(declare-fun lt!2253426 () List!62988)

(assert (=> d!1763947 (forall!14732 lt!2253426 lambda!299226)))

(declare-fun e!3443142 () List!62988)

(assert (=> d!1763947 (= lt!2253426 e!3443142)))

(declare-fun c!977058 () Bool)

(assert (=> d!1763947 (= c!977058 ((_ is Cons!62866) zl!343))))

(assert (=> d!1763947 (= (unfocusZipperList!991 zl!343) lt!2253426)))

(declare-fun b!5580047 () Bool)

(assert (=> b!5580047 (= e!3443142 (Cons!62864 (generalisedConcat!1178 (exprs!5447 (h!69314 zl!343))) (unfocusZipperList!991 (t!376261 zl!343))))))

(declare-fun b!5580048 () Bool)

(assert (=> b!5580048 (= e!3443142 Nil!62864)))

(assert (= (and d!1763947 c!977058) b!5580047))

(assert (= (and d!1763947 (not c!977058)) b!5580048))

(declare-fun m!6562218 () Bool)

(assert (=> d!1763947 m!6562218))

(assert (=> b!5580047 m!6561728))

(declare-fun m!6562220 () Bool)

(assert (=> b!5580047 m!6562220))

(assert (=> b!5579311 d!1763947))

(assert (=> b!5579313 d!1763899))

(declare-fun d!1763949 () Bool)

(assert (=> d!1763949 (= (isEmpty!34671 (t!376259 (exprs!5447 (h!69314 zl!343)))) ((_ is Nil!62864) (t!376259 (exprs!5447 (h!69314 zl!343)))))))

(assert (=> b!5579312 d!1763949))

(declare-fun b!5580053 () Bool)

(declare-fun e!3443145 () Bool)

(declare-fun tp!1543958 () Bool)

(declare-fun tp!1543959 () Bool)

(assert (=> b!5580053 (= e!3443145 (and tp!1543958 tp!1543959))))

(assert (=> b!5579309 (= tp!1543895 e!3443145)))

(assert (= (and b!5579309 ((_ is Cons!62864) (exprs!5447 (h!69314 zl!343)))) b!5580053))

(declare-fun b!5580054 () Bool)

(declare-fun e!3443146 () Bool)

(declare-fun tp!1543960 () Bool)

(declare-fun tp!1543961 () Bool)

(assert (=> b!5580054 (= e!3443146 (and tp!1543960 tp!1543961))))

(assert (=> b!5579308 (= tp!1543887 e!3443146)))

(assert (= (and b!5579308 ((_ is Cons!62864) (exprs!5447 setElem!37131))) b!5580054))

(declare-fun b!5580066 () Bool)

(declare-fun e!3443149 () Bool)

(declare-fun tp!1543976 () Bool)

(declare-fun tp!1543973 () Bool)

(assert (=> b!5580066 (= e!3443149 (and tp!1543976 tp!1543973))))

(declare-fun b!5580065 () Bool)

(assert (=> b!5580065 (= e!3443149 tp_is_empty!40379)))

(declare-fun b!5580067 () Bool)

(declare-fun tp!1543972 () Bool)

(assert (=> b!5580067 (= e!3443149 tp!1543972)))

(declare-fun b!5580068 () Bool)

(declare-fun tp!1543974 () Bool)

(declare-fun tp!1543975 () Bool)

(assert (=> b!5580068 (= e!3443149 (and tp!1543974 tp!1543975))))

(assert (=> b!5579333 (= tp!1543890 e!3443149)))

(assert (= (and b!5579333 ((_ is ElementMatch!15563) (regOne!31639 r!7292))) b!5580065))

(assert (= (and b!5579333 ((_ is Concat!24408) (regOne!31639 r!7292))) b!5580066))

(assert (= (and b!5579333 ((_ is Star!15563) (regOne!31639 r!7292))) b!5580067))

(assert (= (and b!5579333 ((_ is Union!15563) (regOne!31639 r!7292))) b!5580068))

(declare-fun b!5580070 () Bool)

(declare-fun e!3443150 () Bool)

(declare-fun tp!1543981 () Bool)

(declare-fun tp!1543978 () Bool)

(assert (=> b!5580070 (= e!3443150 (and tp!1543981 tp!1543978))))

(declare-fun b!5580069 () Bool)

(assert (=> b!5580069 (= e!3443150 tp_is_empty!40379)))

(declare-fun b!5580071 () Bool)

(declare-fun tp!1543977 () Bool)

(assert (=> b!5580071 (= e!3443150 tp!1543977)))

(declare-fun b!5580072 () Bool)

(declare-fun tp!1543979 () Bool)

(declare-fun tp!1543980 () Bool)

(assert (=> b!5580072 (= e!3443150 (and tp!1543979 tp!1543980))))

(assert (=> b!5579333 (= tp!1543888 e!3443150)))

(assert (= (and b!5579333 ((_ is ElementMatch!15563) (regTwo!31639 r!7292))) b!5580069))

(assert (= (and b!5579333 ((_ is Concat!24408) (regTwo!31639 r!7292))) b!5580070))

(assert (= (and b!5579333 ((_ is Star!15563) (regTwo!31639 r!7292))) b!5580071))

(assert (= (and b!5579333 ((_ is Union!15563) (regTwo!31639 r!7292))) b!5580072))

(declare-fun b!5580074 () Bool)

(declare-fun e!3443151 () Bool)

(declare-fun tp!1543986 () Bool)

(declare-fun tp!1543983 () Bool)

(assert (=> b!5580074 (= e!3443151 (and tp!1543986 tp!1543983))))

(declare-fun b!5580073 () Bool)

(assert (=> b!5580073 (= e!3443151 tp_is_empty!40379)))

(declare-fun b!5580075 () Bool)

(declare-fun tp!1543982 () Bool)

(assert (=> b!5580075 (= e!3443151 tp!1543982)))

(declare-fun b!5580076 () Bool)

(declare-fun tp!1543984 () Bool)

(declare-fun tp!1543985 () Bool)

(assert (=> b!5580076 (= e!3443151 (and tp!1543984 tp!1543985))))

(assert (=> b!5579334 (= tp!1543889 e!3443151)))

(assert (= (and b!5579334 ((_ is ElementMatch!15563) (reg!15892 r!7292))) b!5580073))

(assert (= (and b!5579334 ((_ is Concat!24408) (reg!15892 r!7292))) b!5580074))

(assert (= (and b!5579334 ((_ is Star!15563) (reg!15892 r!7292))) b!5580075))

(assert (= (and b!5579334 ((_ is Union!15563) (reg!15892 r!7292))) b!5580076))

(declare-fun condSetEmpty!37137 () Bool)

(assert (=> setNonEmpty!37131 (= condSetEmpty!37137 (= setRest!37131 ((as const (Array Context!9894 Bool)) false)))))

(declare-fun setRes!37137 () Bool)

(assert (=> setNonEmpty!37131 (= tp!1543886 setRes!37137)))

(declare-fun setIsEmpty!37137 () Bool)

(assert (=> setIsEmpty!37137 setRes!37137))

(declare-fun setNonEmpty!37137 () Bool)

(declare-fun tp!1543991 () Bool)

(declare-fun e!3443154 () Bool)

(declare-fun setElem!37137 () Context!9894)

(assert (=> setNonEmpty!37137 (= setRes!37137 (and tp!1543991 (inv!82154 setElem!37137) e!3443154))))

(declare-fun setRest!37137 () (InoxSet Context!9894))

(assert (=> setNonEmpty!37137 (= setRest!37131 ((_ map or) (store ((as const (Array Context!9894 Bool)) false) setElem!37137 true) setRest!37137))))

(declare-fun b!5580081 () Bool)

(declare-fun tp!1543992 () Bool)

(assert (=> b!5580081 (= e!3443154 tp!1543992)))

(assert (= (and setNonEmpty!37131 condSetEmpty!37137) setIsEmpty!37137))

(assert (= (and setNonEmpty!37131 (not condSetEmpty!37137)) setNonEmpty!37137))

(assert (= setNonEmpty!37137 b!5580081))

(declare-fun m!6562222 () Bool)

(assert (=> setNonEmpty!37137 m!6562222))

(declare-fun b!5580089 () Bool)

(declare-fun e!3443160 () Bool)

(declare-fun tp!1543997 () Bool)

(assert (=> b!5580089 (= e!3443160 tp!1543997)))

(declare-fun b!5580088 () Bool)

(declare-fun e!3443159 () Bool)

(declare-fun tp!1543998 () Bool)

(assert (=> b!5580088 (= e!3443159 (and (inv!82154 (h!69314 (t!376261 zl!343))) e!3443160 tp!1543998))))

(assert (=> b!5579329 (= tp!1543892 e!3443159)))

(assert (= b!5580088 b!5580089))

(assert (= (and b!5579329 ((_ is Cons!62866) (t!376261 zl!343))) b!5580088))

(declare-fun m!6562224 () Bool)

(assert (=> b!5580088 m!6562224))

(declare-fun b!5580091 () Bool)

(declare-fun e!3443161 () Bool)

(declare-fun tp!1544003 () Bool)

(declare-fun tp!1544000 () Bool)

(assert (=> b!5580091 (= e!3443161 (and tp!1544003 tp!1544000))))

(declare-fun b!5580090 () Bool)

(assert (=> b!5580090 (= e!3443161 tp_is_empty!40379)))

(declare-fun b!5580092 () Bool)

(declare-fun tp!1543999 () Bool)

(assert (=> b!5580092 (= e!3443161 tp!1543999)))

(declare-fun b!5580093 () Bool)

(declare-fun tp!1544001 () Bool)

(declare-fun tp!1544002 () Bool)

(assert (=> b!5580093 (= e!3443161 (and tp!1544001 tp!1544002))))

(assert (=> b!5579320 (= tp!1543894 e!3443161)))

(assert (= (and b!5579320 ((_ is ElementMatch!15563) (regOne!31638 r!7292))) b!5580090))

(assert (= (and b!5579320 ((_ is Concat!24408) (regOne!31638 r!7292))) b!5580091))

(assert (= (and b!5579320 ((_ is Star!15563) (regOne!31638 r!7292))) b!5580092))

(assert (= (and b!5579320 ((_ is Union!15563) (regOne!31638 r!7292))) b!5580093))

(declare-fun b!5580095 () Bool)

(declare-fun e!3443162 () Bool)

(declare-fun tp!1544008 () Bool)

(declare-fun tp!1544005 () Bool)

(assert (=> b!5580095 (= e!3443162 (and tp!1544008 tp!1544005))))

(declare-fun b!5580094 () Bool)

(assert (=> b!5580094 (= e!3443162 tp_is_empty!40379)))

(declare-fun b!5580096 () Bool)

(declare-fun tp!1544004 () Bool)

(assert (=> b!5580096 (= e!3443162 tp!1544004)))

(declare-fun b!5580097 () Bool)

(declare-fun tp!1544006 () Bool)

(declare-fun tp!1544007 () Bool)

(assert (=> b!5580097 (= e!3443162 (and tp!1544006 tp!1544007))))

(assert (=> b!5579320 (= tp!1543893 e!3443162)))

(assert (= (and b!5579320 ((_ is ElementMatch!15563) (regTwo!31638 r!7292))) b!5580094))

(assert (= (and b!5579320 ((_ is Concat!24408) (regTwo!31638 r!7292))) b!5580095))

(assert (= (and b!5579320 ((_ is Star!15563) (regTwo!31638 r!7292))) b!5580096))

(assert (= (and b!5579320 ((_ is Union!15563) (regTwo!31638 r!7292))) b!5580097))

(declare-fun b!5580102 () Bool)

(declare-fun e!3443165 () Bool)

(declare-fun tp!1544011 () Bool)

(assert (=> b!5580102 (= e!3443165 (and tp_is_empty!40379 tp!1544011))))

(assert (=> b!5579307 (= tp!1543891 e!3443165)))

(assert (= (and b!5579307 ((_ is Cons!62865) (t!376260 s!2326))) b!5580102))

(declare-fun b_lambda!211487 () Bool)

(assert (= b_lambda!211485 (or b!5579326 b_lambda!211487)))

(declare-fun bs!1290884 () Bool)

(declare-fun d!1763951 () Bool)

(assert (= bs!1290884 (and d!1763951 b!5579326)))

(assert (=> bs!1290884 (= (dynLambda!24585 lambda!299170 (h!69314 zl!343)) (derivationStepZipperUp!831 (h!69314 zl!343) (h!69313 s!2326)))))

(assert (=> bs!1290884 m!6561704))

(assert (=> d!1763917 d!1763951))

(declare-fun b_lambda!211489 () Bool)

(assert (= b_lambda!211483 (or b!5579326 b_lambda!211489)))

(declare-fun bs!1290885 () Bool)

(declare-fun d!1763953 () Bool)

(assert (= bs!1290885 (and d!1763953 b!5579326)))

(assert (=> bs!1290885 (= (dynLambda!24585 lambda!299170 lt!2253322) (derivationStepZipperUp!831 lt!2253322 (h!69313 s!2326)))))

(assert (=> bs!1290885 m!6561656))

(assert (=> d!1763883 d!1763953))

(check-sat (not b!5579881) (not b!5580010) (not bm!417245) (not bm!417206) (not b!5580089) (not b!5579730) (not b!5580011) (not b!5580040) (not d!1763873) (not b!5579963) (not b!5579821) (not b!5579749) (not b!5580072) (not d!1763923) (not d!1763903) (not b!5580092) (not b!5580054) (not d!1763913) (not b!5579914) (not b!5579911) (not bm!417241) (not b!5579827) (not b!5580033) (not b!5580012) (not b!5579940) (not bm!417246) (not b!5579960) (not b!5579829) (not b!5579930) (not b!5580039) (not d!1763925) (not b!5579784) (not b!5579882) (not setNonEmpty!37137) (not b!5580066) (not b!5579910) (not b!5579836) (not b!5579783) (not b!5580074) (not b!5580091) (not b!5580076) (not b!5580097) (not b!5579731) (not b!5579745) (not d!1763901) (not d!1763927) (not b!5579727) (not b!5580053) (not b!5579967) (not d!1763869) (not bm!417243) tp_is_empty!40379 (not b_lambda!211489) (not d!1763935) (not b!5579908) (not d!1763899) (not b!5580068) (not b!5579865) (not b!5579728) (not bm!417248) (not bs!1290885) (not b!5580071) (not d!1763921) (not b!5579876) (not b!5579831) (not b!5580096) (not b!5580088) (not b!5580067) (not d!1763931) (not b!5579835) (not b!5580037) (not b!5579884) (not b!5579935) (not b!5579906) (not d!1763939) (not b!5579726) (not d!1763893) (not b!5579926) (not d!1763875) (not bm!417256) (not b!5579982) (not b!5580036) (not d!1763943) (not b!5579826) (not d!1763937) (not d!1763877) (not bm!417211) (not b!5580034) (not d!1763879) (not bm!417235) (not b!5579931) (not b!5579909) (not d!1763947) (not b!5579959) (not d!1763941) (not d!1763907) (not d!1763929) (not b!5579729) (not d!1763917) (not b!5579822) (not b!5580102) (not b!5580042) (not b!5579966) (not b!5579921) (not b!5580001) (not bm!417237) (not b!5580081) (not b!5579936) (not b!5580070) (not bm!417212) (not b!5580075) (not d!1763871) (not d!1763887) (not bm!417247) (not bm!417229) (not bm!417215) (not bm!417233) (not b!5580047) (not bm!417239) (not b!5580093) (not bs!1290884) (not d!1763889) (not b!5579883) (not b!5579961) (not d!1763945) (not b!5579734) (not bm!417231) (not b!5579912) (not bm!417257) (not b_lambda!211487) (not b!5580095) (not d!1763919) (not d!1763883))
(check-sat)
(get-model)

(declare-fun b!5580677 () Bool)

(declare-fun e!3443489 () (InoxSet Context!9894))

(declare-fun call!417379 () (InoxSet Context!9894))

(declare-fun call!417376 () (InoxSet Context!9894))

(assert (=> b!5580677 (= e!3443489 ((_ map or) call!417379 call!417376))))

(declare-fun c!977205 () Bool)

(declare-fun d!1764203 () Bool)

(assert (=> d!1764203 (= c!977205 (and ((_ is ElementMatch!15563) (ite c!976996 (regOne!31639 (regTwo!31639 (regOne!31638 r!7292))) (ite c!977000 (regTwo!31638 (regTwo!31639 (regOne!31638 r!7292))) (ite c!976998 (regOne!31638 (regTwo!31639 (regOne!31638 r!7292))) (reg!15892 (regTwo!31639 (regOne!31638 r!7292))))))) (= (c!976846 (ite c!976996 (regOne!31639 (regTwo!31639 (regOne!31638 r!7292))) (ite c!977000 (regTwo!31638 (regTwo!31639 (regOne!31638 r!7292))) (ite c!976998 (regOne!31638 (regTwo!31639 (regOne!31638 r!7292))) (reg!15892 (regTwo!31639 (regOne!31638 r!7292))))))) (h!69313 s!2326))))))

(declare-fun e!3443488 () (InoxSet Context!9894))

(assert (=> d!1764203 (= (derivationStepZipperDown!905 (ite c!976996 (regOne!31639 (regTwo!31639 (regOne!31638 r!7292))) (ite c!977000 (regTwo!31638 (regTwo!31639 (regOne!31638 r!7292))) (ite c!976998 (regOne!31638 (regTwo!31639 (regOne!31638 r!7292))) (reg!15892 (regTwo!31639 (regOne!31638 r!7292)))))) (ite (or c!976996 c!977000) lt!2253334 (Context!9895 call!417234)) (h!69313 s!2326)) e!3443488)))

(declare-fun bm!417369 () Bool)

(declare-fun call!417374 () (InoxSet Context!9894))

(declare-fun call!417377 () (InoxSet Context!9894))

(assert (=> bm!417369 (= call!417374 call!417377)))

(declare-fun call!417378 () List!62988)

(declare-fun bm!417370 () Bool)

(declare-fun c!977206 () Bool)

(declare-fun c!977204 () Bool)

(assert (=> bm!417370 (= call!417378 ($colon$colon!1628 (exprs!5447 (ite (or c!976996 c!977000) lt!2253334 (Context!9895 call!417234))) (ite (or c!977206 c!977204) (regTwo!31638 (ite c!976996 (regOne!31639 (regTwo!31639 (regOne!31638 r!7292))) (ite c!977000 (regTwo!31638 (regTwo!31639 (regOne!31638 r!7292))) (ite c!976998 (regOne!31638 (regTwo!31639 (regOne!31638 r!7292))) (reg!15892 (regTwo!31639 (regOne!31638 r!7292))))))) (ite c!976996 (regOne!31639 (regTwo!31639 (regOne!31638 r!7292))) (ite c!977000 (regTwo!31638 (regTwo!31639 (regOne!31638 r!7292))) (ite c!976998 (regOne!31638 (regTwo!31639 (regOne!31638 r!7292))) (reg!15892 (regTwo!31639 (regOne!31638 r!7292)))))))))))

(declare-fun c!977203 () Bool)

(declare-fun b!5580678 () Bool)

(assert (=> b!5580678 (= c!977203 ((_ is Star!15563) (ite c!976996 (regOne!31639 (regTwo!31639 (regOne!31638 r!7292))) (ite c!977000 (regTwo!31638 (regTwo!31639 (regOne!31638 r!7292))) (ite c!976998 (regOne!31638 (regTwo!31639 (regOne!31638 r!7292))) (reg!15892 (regTwo!31639 (regOne!31638 r!7292))))))))))

(declare-fun e!3443487 () (InoxSet Context!9894))

(declare-fun e!3443490 () (InoxSet Context!9894))

(assert (=> b!5580678 (= e!3443487 e!3443490)))

(declare-fun bm!417371 () Bool)

(assert (=> bm!417371 (= call!417377 call!417379)))

(declare-fun c!977202 () Bool)

(declare-fun bm!417372 () Bool)

(assert (=> bm!417372 (= call!417376 (derivationStepZipperDown!905 (ite c!977202 (regTwo!31639 (ite c!976996 (regOne!31639 (regTwo!31639 (regOne!31638 r!7292))) (ite c!977000 (regTwo!31638 (regTwo!31639 (regOne!31638 r!7292))) (ite c!976998 (regOne!31638 (regTwo!31639 (regOne!31638 r!7292))) (reg!15892 (regTwo!31639 (regOne!31638 r!7292))))))) (regOne!31638 (ite c!976996 (regOne!31639 (regTwo!31639 (regOne!31638 r!7292))) (ite c!977000 (regTwo!31638 (regTwo!31639 (regOne!31638 r!7292))) (ite c!976998 (regOne!31638 (regTwo!31639 (regOne!31638 r!7292))) (reg!15892 (regTwo!31639 (regOne!31638 r!7292)))))))) (ite c!977202 (ite (or c!976996 c!977000) lt!2253334 (Context!9895 call!417234)) (Context!9895 call!417378)) (h!69313 s!2326)))))

(declare-fun b!5580679 () Bool)

(declare-fun e!3443485 () Bool)

(assert (=> b!5580679 (= c!977206 e!3443485)))

(declare-fun res!2368348 () Bool)

(assert (=> b!5580679 (=> (not res!2368348) (not e!3443485))))

(assert (=> b!5580679 (= res!2368348 ((_ is Concat!24408) (ite c!976996 (regOne!31639 (regTwo!31639 (regOne!31638 r!7292))) (ite c!977000 (regTwo!31638 (regTwo!31639 (regOne!31638 r!7292))) (ite c!976998 (regOne!31638 (regTwo!31639 (regOne!31638 r!7292))) (reg!15892 (regTwo!31639 (regOne!31638 r!7292))))))))))

(declare-fun e!3443486 () (InoxSet Context!9894))

(assert (=> b!5580679 (= e!3443489 e!3443486)))

(declare-fun b!5580680 () Bool)

(assert (=> b!5580680 (= e!3443486 e!3443487)))

(assert (=> b!5580680 (= c!977204 ((_ is Concat!24408) (ite c!976996 (regOne!31639 (regTwo!31639 (regOne!31638 r!7292))) (ite c!977000 (regTwo!31638 (regTwo!31639 (regOne!31638 r!7292))) (ite c!976998 (regOne!31638 (regTwo!31639 (regOne!31638 r!7292))) (reg!15892 (regTwo!31639 (regOne!31638 r!7292))))))))))

(declare-fun b!5580681 () Bool)

(assert (=> b!5580681 (= e!3443488 (store ((as const (Array Context!9894 Bool)) false) (ite (or c!976996 c!977000) lt!2253334 (Context!9895 call!417234)) true))))

(declare-fun b!5580682 () Bool)

(assert (=> b!5580682 (= e!3443487 call!417374)))

(declare-fun b!5580683 () Bool)

(assert (=> b!5580683 (= e!3443485 (nullable!5595 (regOne!31638 (ite c!976996 (regOne!31639 (regTwo!31639 (regOne!31638 r!7292))) (ite c!977000 (regTwo!31638 (regTwo!31639 (regOne!31638 r!7292))) (ite c!976998 (regOne!31638 (regTwo!31639 (regOne!31638 r!7292))) (reg!15892 (regTwo!31639 (regOne!31638 r!7292)))))))))))

(declare-fun b!5580684 () Bool)

(assert (=> b!5580684 (= e!3443488 e!3443489)))

(assert (=> b!5580684 (= c!977202 ((_ is Union!15563) (ite c!976996 (regOne!31639 (regTwo!31639 (regOne!31638 r!7292))) (ite c!977000 (regTwo!31638 (regTwo!31639 (regOne!31638 r!7292))) (ite c!976998 (regOne!31638 (regTwo!31639 (regOne!31638 r!7292))) (reg!15892 (regTwo!31639 (regOne!31638 r!7292))))))))))

(declare-fun b!5580685 () Bool)

(assert (=> b!5580685 (= e!3443486 ((_ map or) call!417376 call!417377))))

(declare-fun bm!417373 () Bool)

(declare-fun call!417375 () List!62988)

(assert (=> bm!417373 (= call!417375 call!417378)))

(declare-fun bm!417374 () Bool)

(assert (=> bm!417374 (= call!417379 (derivationStepZipperDown!905 (ite c!977202 (regOne!31639 (ite c!976996 (regOne!31639 (regTwo!31639 (regOne!31638 r!7292))) (ite c!977000 (regTwo!31638 (regTwo!31639 (regOne!31638 r!7292))) (ite c!976998 (regOne!31638 (regTwo!31639 (regOne!31638 r!7292))) (reg!15892 (regTwo!31639 (regOne!31638 r!7292))))))) (ite c!977206 (regTwo!31638 (ite c!976996 (regOne!31639 (regTwo!31639 (regOne!31638 r!7292))) (ite c!977000 (regTwo!31638 (regTwo!31639 (regOne!31638 r!7292))) (ite c!976998 (regOne!31638 (regTwo!31639 (regOne!31638 r!7292))) (reg!15892 (regTwo!31639 (regOne!31638 r!7292))))))) (ite c!977204 (regOne!31638 (ite c!976996 (regOne!31639 (regTwo!31639 (regOne!31638 r!7292))) (ite c!977000 (regTwo!31638 (regTwo!31639 (regOne!31638 r!7292))) (ite c!976998 (regOne!31638 (regTwo!31639 (regOne!31638 r!7292))) (reg!15892 (regTwo!31639 (regOne!31638 r!7292))))))) (reg!15892 (ite c!976996 (regOne!31639 (regTwo!31639 (regOne!31638 r!7292))) (ite c!977000 (regTwo!31638 (regTwo!31639 (regOne!31638 r!7292))) (ite c!976998 (regOne!31638 (regTwo!31639 (regOne!31638 r!7292))) (reg!15892 (regTwo!31639 (regOne!31638 r!7292)))))))))) (ite (or c!977202 c!977206) (ite (or c!976996 c!977000) lt!2253334 (Context!9895 call!417234)) (Context!9895 call!417375)) (h!69313 s!2326)))))

(declare-fun b!5580686 () Bool)

(assert (=> b!5580686 (= e!3443490 call!417374)))

(declare-fun b!5580687 () Bool)

(assert (=> b!5580687 (= e!3443490 ((as const (Array Context!9894 Bool)) false))))

(assert (= (and d!1764203 c!977205) b!5580681))

(assert (= (and d!1764203 (not c!977205)) b!5580684))

(assert (= (and b!5580684 c!977202) b!5580677))

(assert (= (and b!5580684 (not c!977202)) b!5580679))

(assert (= (and b!5580679 res!2368348) b!5580683))

(assert (= (and b!5580679 c!977206) b!5580685))

(assert (= (and b!5580679 (not c!977206)) b!5580680))

(assert (= (and b!5580680 c!977204) b!5580682))

(assert (= (and b!5580680 (not c!977204)) b!5580678))

(assert (= (and b!5580678 c!977203) b!5580686))

(assert (= (and b!5580678 (not c!977203)) b!5580687))

(assert (= (or b!5580682 b!5580686) bm!417373))

(assert (= (or b!5580682 b!5580686) bm!417369))

(assert (= (or b!5580685 bm!417373) bm!417370))

(assert (= (or b!5580685 bm!417369) bm!417371))

(assert (= (or b!5580677 b!5580685) bm!417372))

(assert (= (or b!5580677 bm!417371) bm!417374))

(declare-fun m!6562748 () Bool)

(assert (=> b!5580683 m!6562748))

(declare-fun m!6562750 () Bool)

(assert (=> bm!417370 m!6562750))

(declare-fun m!6562752 () Bool)

(assert (=> b!5580681 m!6562752))

(declare-fun m!6562754 () Bool)

(assert (=> bm!417372 m!6562754))

(declare-fun m!6562756 () Bool)

(assert (=> bm!417374 m!6562756))

(assert (=> bm!417233 d!1764203))

(declare-fun d!1764205 () Bool)

(declare-fun res!2368353 () Bool)

(declare-fun e!3443495 () Bool)

(assert (=> d!1764205 (=> res!2368353 e!3443495)))

(assert (=> d!1764205 (= res!2368353 ((_ is Nil!62864) lt!2253426))))

(assert (=> d!1764205 (= (forall!14732 lt!2253426 lambda!299226) e!3443495)))

(declare-fun b!5580692 () Bool)

(declare-fun e!3443496 () Bool)

(assert (=> b!5580692 (= e!3443495 e!3443496)))

(declare-fun res!2368354 () Bool)

(assert (=> b!5580692 (=> (not res!2368354) (not e!3443496))))

(declare-fun dynLambda!24587 (Int Regex!15563) Bool)

(assert (=> b!5580692 (= res!2368354 (dynLambda!24587 lambda!299226 (h!69312 lt!2253426)))))

(declare-fun b!5580693 () Bool)

(assert (=> b!5580693 (= e!3443496 (forall!14732 (t!376259 lt!2253426) lambda!299226))))

(assert (= (and d!1764205 (not res!2368353)) b!5580692))

(assert (= (and b!5580692 res!2368354) b!5580693))

(declare-fun b_lambda!211519 () Bool)

(assert (=> (not b_lambda!211519) (not b!5580692)))

(declare-fun m!6562758 () Bool)

(assert (=> b!5580692 m!6562758))

(declare-fun m!6562760 () Bool)

(assert (=> b!5580693 m!6562760))

(assert (=> d!1763947 d!1764205))

(declare-fun d!1764207 () Bool)

(declare-fun c!977207 () Bool)

(assert (=> d!1764207 (= c!977207 (isEmpty!34675 (tail!10995 (t!376260 s!2326))))))

(declare-fun e!3443497 () Bool)

(assert (=> d!1764207 (= (matchZipper!1701 (derivationStepZipper!1662 lt!2253321 (head!11900 (t!376260 s!2326))) (tail!10995 (t!376260 s!2326))) e!3443497)))

(declare-fun b!5580694 () Bool)

(assert (=> b!5580694 (= e!3443497 (nullableZipper!1560 (derivationStepZipper!1662 lt!2253321 (head!11900 (t!376260 s!2326)))))))

(declare-fun b!5580695 () Bool)

(assert (=> b!5580695 (= e!3443497 (matchZipper!1701 (derivationStepZipper!1662 (derivationStepZipper!1662 lt!2253321 (head!11900 (t!376260 s!2326))) (head!11900 (tail!10995 (t!376260 s!2326)))) (tail!10995 (tail!10995 (t!376260 s!2326)))))))

(assert (= (and d!1764207 c!977207) b!5580694))

(assert (= (and d!1764207 (not c!977207)) b!5580695))

(assert (=> d!1764207 m!6561988))

(declare-fun m!6562762 () Bool)

(assert (=> d!1764207 m!6562762))

(assert (=> b!5580694 m!6562070))

(declare-fun m!6562764 () Bool)

(assert (=> b!5580694 m!6562764))

(assert (=> b!5580695 m!6561988))

(declare-fun m!6562766 () Bool)

(assert (=> b!5580695 m!6562766))

(assert (=> b!5580695 m!6562070))

(assert (=> b!5580695 m!6562766))

(declare-fun m!6562768 () Bool)

(assert (=> b!5580695 m!6562768))

(assert (=> b!5580695 m!6561988))

(declare-fun m!6562770 () Bool)

(assert (=> b!5580695 m!6562770))

(assert (=> b!5580695 m!6562768))

(assert (=> b!5580695 m!6562770))

(declare-fun m!6562772 () Bool)

(assert (=> b!5580695 m!6562772))

(assert (=> b!5579882 d!1764207))

(declare-fun bs!1291055 () Bool)

(declare-fun d!1764209 () Bool)

(assert (= bs!1291055 (and d!1764209 b!5579326)))

(declare-fun lambda!299265 () Int)

(assert (=> bs!1291055 (= (= (head!11900 (t!376260 s!2326)) (h!69313 s!2326)) (= lambda!299265 lambda!299170))))

(assert (=> d!1764209 true))

(assert (=> d!1764209 (= (derivationStepZipper!1662 lt!2253321 (head!11900 (t!376260 s!2326))) (flatMap!1176 lt!2253321 lambda!299265))))

(declare-fun bs!1291056 () Bool)

(assert (= bs!1291056 d!1764209))

(declare-fun m!6562774 () Bool)

(assert (=> bs!1291056 m!6562774))

(assert (=> b!5579882 d!1764209))

(declare-fun d!1764211 () Bool)

(assert (=> d!1764211 (= (head!11900 (t!376260 s!2326)) (h!69313 (t!376260 s!2326)))))

(assert (=> b!5579882 d!1764211))

(declare-fun d!1764213 () Bool)

(assert (=> d!1764213 (= (tail!10995 (t!376260 s!2326)) (t!376260 (t!376260 s!2326)))))

(assert (=> b!5579882 d!1764213))

(assert (=> b!5580047 d!1763903))

(declare-fun bs!1291057 () Bool)

(declare-fun d!1764215 () Bool)

(assert (= bs!1291057 (and d!1764215 d!1763945)))

(declare-fun lambda!299266 () Int)

(assert (=> bs!1291057 (= lambda!299266 lambda!299223)))

(declare-fun bs!1291058 () Bool)

(assert (= bs!1291058 (and d!1764215 d!1763935)))

(assert (=> bs!1291058 (= lambda!299266 lambda!299219)))

(declare-fun bs!1291059 () Bool)

(assert (= bs!1291059 (and d!1764215 d!1763947)))

(assert (=> bs!1291059 (= lambda!299266 lambda!299226)))

(declare-fun bs!1291060 () Bool)

(assert (= bs!1291060 (and d!1764215 d!1763903)))

(assert (=> bs!1291060 (= lambda!299266 lambda!299207)))

(declare-fun bs!1291061 () Bool)

(assert (= bs!1291061 (and d!1764215 d!1763937)))

(assert (=> bs!1291061 (= lambda!299266 lambda!299220)))

(declare-fun lt!2253449 () List!62988)

(assert (=> d!1764215 (forall!14732 lt!2253449 lambda!299266)))

(declare-fun e!3443498 () List!62988)

(assert (=> d!1764215 (= lt!2253449 e!3443498)))

(declare-fun c!977210 () Bool)

(assert (=> d!1764215 (= c!977210 ((_ is Cons!62866) (t!376261 zl!343)))))

(assert (=> d!1764215 (= (unfocusZipperList!991 (t!376261 zl!343)) lt!2253449)))

(declare-fun b!5580698 () Bool)

(assert (=> b!5580698 (= e!3443498 (Cons!62864 (generalisedConcat!1178 (exprs!5447 (h!69314 (t!376261 zl!343)))) (unfocusZipperList!991 (t!376261 (t!376261 zl!343)))))))

(declare-fun b!5580699 () Bool)

(assert (=> b!5580699 (= e!3443498 Nil!62864)))

(assert (= (and d!1764215 c!977210) b!5580698))

(assert (= (and d!1764215 (not c!977210)) b!5580699))

(declare-fun m!6562776 () Bool)

(assert (=> d!1764215 m!6562776))

(declare-fun m!6562778 () Bool)

(assert (=> b!5580698 m!6562778))

(declare-fun m!6562780 () Bool)

(assert (=> b!5580698 m!6562780))

(assert (=> b!5580047 d!1764215))

(declare-fun d!1764217 () Bool)

(assert (=> d!1764217 (= (nullable!5595 (regOne!31638 (regTwo!31639 (regOne!31638 r!7292)))) (nullableFct!1707 (regOne!31638 (regTwo!31639 (regOne!31638 r!7292)))))))

(declare-fun bs!1291062 () Bool)

(assert (= bs!1291062 d!1764217))

(declare-fun m!6562782 () Bool)

(assert (=> bs!1291062 m!6562782))

(assert (=> b!5579865 d!1764217))

(declare-fun d!1764219 () Bool)

(assert (=> d!1764219 (= (isEmpty!34675 (tail!10995 s!2326)) ((_ is Nil!62865) (tail!10995 s!2326)))))

(assert (=> b!5579822 d!1764219))

(declare-fun d!1764221 () Bool)

(assert (=> d!1764221 (= (tail!10995 s!2326) (t!376260 s!2326))))

(assert (=> b!5579822 d!1764221))

(declare-fun b!5580700 () Bool)

(declare-fun e!3443503 () (InoxSet Context!9894))

(declare-fun call!417385 () (InoxSet Context!9894))

(declare-fun call!417382 () (InoxSet Context!9894))

(assert (=> b!5580700 (= e!3443503 ((_ map or) call!417385 call!417382))))

(declare-fun d!1764223 () Bool)

(declare-fun c!977214 () Bool)

(assert (=> d!1764223 (= c!977214 (and ((_ is ElementMatch!15563) (ite c!977001 (regTwo!31639 (regOne!31639 (regOne!31638 r!7292))) (regOne!31638 (regOne!31639 (regOne!31638 r!7292))))) (= (c!976846 (ite c!977001 (regTwo!31639 (regOne!31639 (regOne!31638 r!7292))) (regOne!31638 (regOne!31639 (regOne!31638 r!7292))))) (h!69313 s!2326))))))

(declare-fun e!3443502 () (InoxSet Context!9894))

(assert (=> d!1764223 (= (derivationStepZipperDown!905 (ite c!977001 (regTwo!31639 (regOne!31639 (regOne!31638 r!7292))) (regOne!31638 (regOne!31639 (regOne!31638 r!7292)))) (ite c!977001 lt!2253334 (Context!9895 call!417243)) (h!69313 s!2326)) e!3443502)))

(declare-fun bm!417375 () Bool)

(declare-fun call!417380 () (InoxSet Context!9894))

(declare-fun call!417383 () (InoxSet Context!9894))

(assert (=> bm!417375 (= call!417380 call!417383)))

(declare-fun call!417384 () List!62988)

(declare-fun bm!417376 () Bool)

(declare-fun c!977213 () Bool)

(declare-fun c!977215 () Bool)

(assert (=> bm!417376 (= call!417384 ($colon$colon!1628 (exprs!5447 (ite c!977001 lt!2253334 (Context!9895 call!417243))) (ite (or c!977215 c!977213) (regTwo!31638 (ite c!977001 (regTwo!31639 (regOne!31639 (regOne!31638 r!7292))) (regOne!31638 (regOne!31639 (regOne!31638 r!7292))))) (ite c!977001 (regTwo!31639 (regOne!31639 (regOne!31638 r!7292))) (regOne!31638 (regOne!31639 (regOne!31638 r!7292)))))))))

(declare-fun b!5580701 () Bool)

(declare-fun c!977212 () Bool)

(assert (=> b!5580701 (= c!977212 ((_ is Star!15563) (ite c!977001 (regTwo!31639 (regOne!31639 (regOne!31638 r!7292))) (regOne!31638 (regOne!31639 (regOne!31638 r!7292))))))))

(declare-fun e!3443501 () (InoxSet Context!9894))

(declare-fun e!3443504 () (InoxSet Context!9894))

(assert (=> b!5580701 (= e!3443501 e!3443504)))

(declare-fun bm!417377 () Bool)

(assert (=> bm!417377 (= call!417383 call!417385)))

(declare-fun c!977211 () Bool)

(declare-fun bm!417378 () Bool)

(assert (=> bm!417378 (= call!417382 (derivationStepZipperDown!905 (ite c!977211 (regTwo!31639 (ite c!977001 (regTwo!31639 (regOne!31639 (regOne!31638 r!7292))) (regOne!31638 (regOne!31639 (regOne!31638 r!7292))))) (regOne!31638 (ite c!977001 (regTwo!31639 (regOne!31639 (regOne!31638 r!7292))) (regOne!31638 (regOne!31639 (regOne!31638 r!7292)))))) (ite c!977211 (ite c!977001 lt!2253334 (Context!9895 call!417243)) (Context!9895 call!417384)) (h!69313 s!2326)))))

(declare-fun b!5580702 () Bool)

(declare-fun e!3443499 () Bool)

(assert (=> b!5580702 (= c!977215 e!3443499)))

(declare-fun res!2368355 () Bool)

(assert (=> b!5580702 (=> (not res!2368355) (not e!3443499))))

(assert (=> b!5580702 (= res!2368355 ((_ is Concat!24408) (ite c!977001 (regTwo!31639 (regOne!31639 (regOne!31638 r!7292))) (regOne!31638 (regOne!31639 (regOne!31638 r!7292))))))))

(declare-fun e!3443500 () (InoxSet Context!9894))

(assert (=> b!5580702 (= e!3443503 e!3443500)))

(declare-fun b!5580703 () Bool)

(assert (=> b!5580703 (= e!3443500 e!3443501)))

(assert (=> b!5580703 (= c!977213 ((_ is Concat!24408) (ite c!977001 (regTwo!31639 (regOne!31639 (regOne!31638 r!7292))) (regOne!31638 (regOne!31639 (regOne!31638 r!7292))))))))

(declare-fun b!5580704 () Bool)

(assert (=> b!5580704 (= e!3443502 (store ((as const (Array Context!9894 Bool)) false) (ite c!977001 lt!2253334 (Context!9895 call!417243)) true))))

(declare-fun b!5580705 () Bool)

(assert (=> b!5580705 (= e!3443501 call!417380)))

(declare-fun b!5580706 () Bool)

(assert (=> b!5580706 (= e!3443499 (nullable!5595 (regOne!31638 (ite c!977001 (regTwo!31639 (regOne!31639 (regOne!31638 r!7292))) (regOne!31638 (regOne!31639 (regOne!31638 r!7292)))))))))

(declare-fun b!5580707 () Bool)

(assert (=> b!5580707 (= e!3443502 e!3443503)))

(assert (=> b!5580707 (= c!977211 ((_ is Union!15563) (ite c!977001 (regTwo!31639 (regOne!31639 (regOne!31638 r!7292))) (regOne!31638 (regOne!31639 (regOne!31638 r!7292))))))))

(declare-fun b!5580708 () Bool)

(assert (=> b!5580708 (= e!3443500 ((_ map or) call!417382 call!417383))))

(declare-fun bm!417379 () Bool)

(declare-fun call!417381 () List!62988)

(assert (=> bm!417379 (= call!417381 call!417384)))

(declare-fun bm!417380 () Bool)

(assert (=> bm!417380 (= call!417385 (derivationStepZipperDown!905 (ite c!977211 (regOne!31639 (ite c!977001 (regTwo!31639 (regOne!31639 (regOne!31638 r!7292))) (regOne!31638 (regOne!31639 (regOne!31638 r!7292))))) (ite c!977215 (regTwo!31638 (ite c!977001 (regTwo!31639 (regOne!31639 (regOne!31638 r!7292))) (regOne!31638 (regOne!31639 (regOne!31638 r!7292))))) (ite c!977213 (regOne!31638 (ite c!977001 (regTwo!31639 (regOne!31639 (regOne!31638 r!7292))) (regOne!31638 (regOne!31639 (regOne!31638 r!7292))))) (reg!15892 (ite c!977001 (regTwo!31639 (regOne!31639 (regOne!31638 r!7292))) (regOne!31638 (regOne!31639 (regOne!31638 r!7292)))))))) (ite (or c!977211 c!977215) (ite c!977001 lt!2253334 (Context!9895 call!417243)) (Context!9895 call!417381)) (h!69313 s!2326)))))

(declare-fun b!5580709 () Bool)

(assert (=> b!5580709 (= e!3443504 call!417380)))

(declare-fun b!5580710 () Bool)

(assert (=> b!5580710 (= e!3443504 ((as const (Array Context!9894 Bool)) false))))

(assert (= (and d!1764223 c!977214) b!5580704))

(assert (= (and d!1764223 (not c!977214)) b!5580707))

(assert (= (and b!5580707 c!977211) b!5580700))

(assert (= (and b!5580707 (not c!977211)) b!5580702))

(assert (= (and b!5580702 res!2368355) b!5580706))

(assert (= (and b!5580702 c!977215) b!5580708))

(assert (= (and b!5580702 (not c!977215)) b!5580703))

(assert (= (and b!5580703 c!977213) b!5580705))

(assert (= (and b!5580703 (not c!977213)) b!5580701))

(assert (= (and b!5580701 c!977212) b!5580709))

(assert (= (and b!5580701 (not c!977212)) b!5580710))

(assert (= (or b!5580705 b!5580709) bm!417379))

(assert (= (or b!5580705 b!5580709) bm!417375))

(assert (= (or b!5580708 bm!417379) bm!417376))

(assert (= (or b!5580708 bm!417375) bm!417377))

(assert (= (or b!5580700 b!5580708) bm!417378))

(assert (= (or b!5580700 bm!417377) bm!417380))

(declare-fun m!6562784 () Bool)

(assert (=> b!5580706 m!6562784))

(declare-fun m!6562786 () Bool)

(assert (=> bm!417376 m!6562786))

(declare-fun m!6562788 () Bool)

(assert (=> b!5580704 m!6562788))

(declare-fun m!6562790 () Bool)

(assert (=> bm!417378 m!6562790))

(declare-fun m!6562792 () Bool)

(assert (=> bm!417380 m!6562792))

(assert (=> bm!417237 d!1764223))

(declare-fun d!1764225 () Bool)

(assert (=> d!1764225 (= (isDefined!12275 lt!2253406) (not (isEmpty!34676 lt!2253406)))))

(declare-fun bs!1291063 () Bool)

(assert (= bs!1291063 d!1764225))

(declare-fun m!6562794 () Bool)

(assert (=> bs!1291063 m!6562794))

(assert (=> d!1763919 d!1764225))

(declare-fun b!5580711 () Bool)

(declare-fun res!2368361 () Bool)

(declare-fun e!3443508 () Bool)

(assert (=> b!5580711 (=> res!2368361 e!3443508)))

(assert (=> b!5580711 (= res!2368361 (not (isEmpty!34675 (tail!10995 Nil!62865))))))

(declare-fun b!5580712 () Bool)

(declare-fun res!2368362 () Bool)

(declare-fun e!3443507 () Bool)

(assert (=> b!5580712 (=> (not res!2368362) (not e!3443507))))

(assert (=> b!5580712 (= res!2368362 (isEmpty!34675 (tail!10995 Nil!62865)))))

(declare-fun b!5580713 () Bool)

(declare-fun e!3443509 () Bool)

(declare-fun lt!2253450 () Bool)

(declare-fun call!417386 () Bool)

(assert (=> b!5580713 (= e!3443509 (= lt!2253450 call!417386))))

(declare-fun b!5580714 () Bool)

(declare-fun e!3443505 () Bool)

(assert (=> b!5580714 (= e!3443505 (not lt!2253450))))

(declare-fun b!5580715 () Bool)

(declare-fun res!2368358 () Bool)

(assert (=> b!5580715 (=> (not res!2368358) (not e!3443507))))

(assert (=> b!5580715 (= res!2368358 (not call!417386))))

(declare-fun b!5580716 () Bool)

(declare-fun e!3443506 () Bool)

(assert (=> b!5580716 (= e!3443506 (matchR!7748 (derivativeStep!4414 (regOne!31638 r!7292) (head!11900 Nil!62865)) (tail!10995 Nil!62865)))))

(declare-fun b!5580717 () Bool)

(assert (=> b!5580717 (= e!3443508 (not (= (head!11900 Nil!62865) (c!976846 (regOne!31638 r!7292)))))))

(declare-fun bm!417381 () Bool)

(assert (=> bm!417381 (= call!417386 (isEmpty!34675 Nil!62865))))

(declare-fun b!5580718 () Bool)

(declare-fun e!3443511 () Bool)

(assert (=> b!5580718 (= e!3443511 e!3443508)))

(declare-fun res!2368357 () Bool)

(assert (=> b!5580718 (=> res!2368357 e!3443508)))

(assert (=> b!5580718 (= res!2368357 call!417386)))

(declare-fun b!5580719 () Bool)

(assert (=> b!5580719 (= e!3443507 (= (head!11900 Nil!62865) (c!976846 (regOne!31638 r!7292))))))

(declare-fun b!5580720 () Bool)

(declare-fun res!2368360 () Bool)

(declare-fun e!3443510 () Bool)

(assert (=> b!5580720 (=> res!2368360 e!3443510)))

(assert (=> b!5580720 (= res!2368360 (not ((_ is ElementMatch!15563) (regOne!31638 r!7292))))))

(assert (=> b!5580720 (= e!3443505 e!3443510)))

(declare-fun b!5580721 () Bool)

(assert (=> b!5580721 (= e!3443506 (nullable!5595 (regOne!31638 r!7292)))))

(declare-fun d!1764227 () Bool)

(assert (=> d!1764227 e!3443509))

(declare-fun c!977218 () Bool)

(assert (=> d!1764227 (= c!977218 ((_ is EmptyExpr!15563) (regOne!31638 r!7292)))))

(assert (=> d!1764227 (= lt!2253450 e!3443506)))

(declare-fun c!977217 () Bool)

(assert (=> d!1764227 (= c!977217 (isEmpty!34675 Nil!62865))))

(assert (=> d!1764227 (validRegex!7299 (regOne!31638 r!7292))))

(assert (=> d!1764227 (= (matchR!7748 (regOne!31638 r!7292) Nil!62865) lt!2253450)))

(declare-fun b!5580722 () Bool)

(assert (=> b!5580722 (= e!3443509 e!3443505)))

(declare-fun c!977216 () Bool)

(assert (=> b!5580722 (= c!977216 ((_ is EmptyLang!15563) (regOne!31638 r!7292)))))

(declare-fun b!5580723 () Bool)

(assert (=> b!5580723 (= e!3443510 e!3443511)))

(declare-fun res!2368359 () Bool)

(assert (=> b!5580723 (=> (not res!2368359) (not e!3443511))))

(assert (=> b!5580723 (= res!2368359 (not lt!2253450))))

(declare-fun b!5580724 () Bool)

(declare-fun res!2368356 () Bool)

(assert (=> b!5580724 (=> res!2368356 e!3443510)))

(assert (=> b!5580724 (= res!2368356 e!3443507)))

(declare-fun res!2368363 () Bool)

(assert (=> b!5580724 (=> (not res!2368363) (not e!3443507))))

(assert (=> b!5580724 (= res!2368363 lt!2253450)))

(assert (= (and d!1764227 c!977217) b!5580721))

(assert (= (and d!1764227 (not c!977217)) b!5580716))

(assert (= (and d!1764227 c!977218) b!5580713))

(assert (= (and d!1764227 (not c!977218)) b!5580722))

(assert (= (and b!5580722 c!977216) b!5580714))

(assert (= (and b!5580722 (not c!977216)) b!5580720))

(assert (= (and b!5580720 (not res!2368360)) b!5580724))

(assert (= (and b!5580724 res!2368363) b!5580715))

(assert (= (and b!5580715 res!2368358) b!5580712))

(assert (= (and b!5580712 res!2368362) b!5580719))

(assert (= (and b!5580724 (not res!2368356)) b!5580723))

(assert (= (and b!5580723 res!2368359) b!5580718))

(assert (= (and b!5580718 (not res!2368357)) b!5580711))

(assert (= (and b!5580711 (not res!2368361)) b!5580717))

(assert (= (or b!5580713 b!5580715 b!5580718) bm!417381))

(declare-fun m!6562796 () Bool)

(assert (=> b!5580717 m!6562796))

(declare-fun m!6562798 () Bool)

(assert (=> b!5580721 m!6562798))

(declare-fun m!6562800 () Bool)

(assert (=> b!5580711 m!6562800))

(assert (=> b!5580711 m!6562800))

(declare-fun m!6562802 () Bool)

(assert (=> b!5580711 m!6562802))

(declare-fun m!6562804 () Bool)

(assert (=> d!1764227 m!6562804))

(assert (=> d!1764227 m!6562154))

(assert (=> bm!417381 m!6562804))

(assert (=> b!5580719 m!6562796))

(assert (=> b!5580716 m!6562796))

(assert (=> b!5580716 m!6562796))

(declare-fun m!6562806 () Bool)

(assert (=> b!5580716 m!6562806))

(assert (=> b!5580716 m!6562800))

(assert (=> b!5580716 m!6562806))

(assert (=> b!5580716 m!6562800))

(declare-fun m!6562808 () Bool)

(assert (=> b!5580716 m!6562808))

(assert (=> b!5580712 m!6562800))

(assert (=> b!5580712 m!6562800))

(assert (=> b!5580712 m!6562802))

(assert (=> d!1763919 d!1764227))

(declare-fun b!5580725 () Bool)

(declare-fun e!3443518 () Bool)

(declare-fun e!3443512 () Bool)

(assert (=> b!5580725 (= e!3443518 e!3443512)))

(declare-fun res!2368366 () Bool)

(assert (=> b!5580725 (= res!2368366 (not (nullable!5595 (reg!15892 (regOne!31638 r!7292)))))))

(assert (=> b!5580725 (=> (not res!2368366) (not e!3443512))))

(declare-fun bm!417382 () Bool)

(declare-fun call!417389 () Bool)

(declare-fun call!417388 () Bool)

(assert (=> bm!417382 (= call!417389 call!417388)))

(declare-fun b!5580726 () Bool)

(declare-fun e!3443513 () Bool)

(declare-fun e!3443517 () Bool)

(assert (=> b!5580726 (= e!3443513 e!3443517)))

(declare-fun res!2368367 () Bool)

(assert (=> b!5580726 (=> (not res!2368367) (not e!3443517))))

(declare-fun call!417387 () Bool)

(assert (=> b!5580726 (= res!2368367 call!417387)))

(declare-fun b!5580727 () Bool)

(declare-fun res!2368364 () Bool)

(declare-fun e!3443516 () Bool)

(assert (=> b!5580727 (=> (not res!2368364) (not e!3443516))))

(assert (=> b!5580727 (= res!2368364 call!417387)))

(declare-fun e!3443514 () Bool)

(assert (=> b!5580727 (= e!3443514 e!3443516)))

(declare-fun b!5580728 () Bool)

(assert (=> b!5580728 (= e!3443518 e!3443514)))

(declare-fun c!977219 () Bool)

(assert (=> b!5580728 (= c!977219 ((_ is Union!15563) (regOne!31638 r!7292)))))

(declare-fun b!5580729 () Bool)

(assert (=> b!5580729 (= e!3443517 call!417389)))

(declare-fun b!5580730 () Bool)

(assert (=> b!5580730 (= e!3443512 call!417388)))

(declare-fun b!5580731 () Bool)

(declare-fun e!3443515 () Bool)

(assert (=> b!5580731 (= e!3443515 e!3443518)))

(declare-fun c!977220 () Bool)

(assert (=> b!5580731 (= c!977220 ((_ is Star!15563) (regOne!31638 r!7292)))))

(declare-fun bm!417384 () Bool)

(assert (=> bm!417384 (= call!417387 (validRegex!7299 (ite c!977219 (regOne!31639 (regOne!31638 r!7292)) (regOne!31638 (regOne!31638 r!7292)))))))

(declare-fun b!5580732 () Bool)

(assert (=> b!5580732 (= e!3443516 call!417389)))

(declare-fun b!5580733 () Bool)

(declare-fun res!2368365 () Bool)

(assert (=> b!5580733 (=> res!2368365 e!3443513)))

(assert (=> b!5580733 (= res!2368365 (not ((_ is Concat!24408) (regOne!31638 r!7292))))))

(assert (=> b!5580733 (= e!3443514 e!3443513)))

(declare-fun d!1764229 () Bool)

(declare-fun res!2368368 () Bool)

(assert (=> d!1764229 (=> res!2368368 e!3443515)))

(assert (=> d!1764229 (= res!2368368 ((_ is ElementMatch!15563) (regOne!31638 r!7292)))))

(assert (=> d!1764229 (= (validRegex!7299 (regOne!31638 r!7292)) e!3443515)))

(declare-fun bm!417383 () Bool)

(assert (=> bm!417383 (= call!417388 (validRegex!7299 (ite c!977220 (reg!15892 (regOne!31638 r!7292)) (ite c!977219 (regTwo!31639 (regOne!31638 r!7292)) (regTwo!31638 (regOne!31638 r!7292))))))))

(assert (= (and d!1764229 (not res!2368368)) b!5580731))

(assert (= (and b!5580731 c!977220) b!5580725))

(assert (= (and b!5580731 (not c!977220)) b!5580728))

(assert (= (and b!5580725 res!2368366) b!5580730))

(assert (= (and b!5580728 c!977219) b!5580727))

(assert (= (and b!5580728 (not c!977219)) b!5580733))

(assert (= (and b!5580727 res!2368364) b!5580732))

(assert (= (and b!5580733 (not res!2368365)) b!5580726))

(assert (= (and b!5580726 res!2368367) b!5580729))

(assert (= (or b!5580732 b!5580729) bm!417382))

(assert (= (or b!5580727 b!5580726) bm!417384))

(assert (= (or b!5580730 bm!417382) bm!417383))

(declare-fun m!6562810 () Bool)

(assert (=> b!5580725 m!6562810))

(declare-fun m!6562812 () Bool)

(assert (=> bm!417384 m!6562812))

(declare-fun m!6562814 () Bool)

(assert (=> bm!417383 m!6562814))

(assert (=> d!1763919 d!1764229))

(declare-fun d!1764231 () Bool)

(assert (=> d!1764231 (= (isEmpty!34675 (t!376260 s!2326)) ((_ is Nil!62865) (t!376260 s!2326)))))

(assert (=> d!1763899 d!1764231))

(assert (=> b!5579734 d!1763899))

(declare-fun d!1764233 () Bool)

(declare-fun res!2368369 () Bool)

(declare-fun e!3443519 () Bool)

(assert (=> d!1764233 (=> res!2368369 e!3443519)))

(assert (=> d!1764233 (= res!2368369 ((_ is Nil!62864) (exprs!5447 setElem!37131)))))

(assert (=> d!1764233 (= (forall!14732 (exprs!5447 setElem!37131) lambda!299219) e!3443519)))

(declare-fun b!5580734 () Bool)

(declare-fun e!3443520 () Bool)

(assert (=> b!5580734 (= e!3443519 e!3443520)))

(declare-fun res!2368370 () Bool)

(assert (=> b!5580734 (=> (not res!2368370) (not e!3443520))))

(assert (=> b!5580734 (= res!2368370 (dynLambda!24587 lambda!299219 (h!69312 (exprs!5447 setElem!37131))))))

(declare-fun b!5580735 () Bool)

(assert (=> b!5580735 (= e!3443520 (forall!14732 (t!376259 (exprs!5447 setElem!37131)) lambda!299219))))

(assert (= (and d!1764233 (not res!2368369)) b!5580734))

(assert (= (and b!5580734 res!2368370) b!5580735))

(declare-fun b_lambda!211521 () Bool)

(assert (=> (not b_lambda!211521) (not b!5580734)))

(declare-fun m!6562816 () Bool)

(assert (=> b!5580734 m!6562816))

(declare-fun m!6562818 () Bool)

(assert (=> b!5580735 m!6562818))

(assert (=> d!1763935 d!1764233))

(declare-fun d!1764235 () Bool)

(assert (=> d!1764235 true))

(assert (=> d!1764235 true))

(declare-fun res!2368373 () Bool)

(assert (=> d!1764235 (= (choose!42291 lambda!299169) res!2368373)))

(assert (=> d!1763921 d!1764235))

(declare-fun b!5580736 () Bool)

(declare-fun e!3443527 () Bool)

(declare-fun e!3443521 () Bool)

(assert (=> b!5580736 (= e!3443527 e!3443521)))

(declare-fun res!2368376 () Bool)

(assert (=> b!5580736 (= res!2368376 (not (nullable!5595 (reg!15892 lt!2253420))))))

(assert (=> b!5580736 (=> (not res!2368376) (not e!3443521))))

(declare-fun bm!417385 () Bool)

(declare-fun call!417392 () Bool)

(declare-fun call!417391 () Bool)

(assert (=> bm!417385 (= call!417392 call!417391)))

(declare-fun b!5580737 () Bool)

(declare-fun e!3443522 () Bool)

(declare-fun e!3443526 () Bool)

(assert (=> b!5580737 (= e!3443522 e!3443526)))

(declare-fun res!2368377 () Bool)

(assert (=> b!5580737 (=> (not res!2368377) (not e!3443526))))

(declare-fun call!417390 () Bool)

(assert (=> b!5580737 (= res!2368377 call!417390)))

(declare-fun b!5580738 () Bool)

(declare-fun res!2368374 () Bool)

(declare-fun e!3443525 () Bool)

(assert (=> b!5580738 (=> (not res!2368374) (not e!3443525))))

(assert (=> b!5580738 (= res!2368374 call!417390)))

(declare-fun e!3443523 () Bool)

(assert (=> b!5580738 (= e!3443523 e!3443525)))

(declare-fun b!5580739 () Bool)

(assert (=> b!5580739 (= e!3443527 e!3443523)))

(declare-fun c!977221 () Bool)

(assert (=> b!5580739 (= c!977221 ((_ is Union!15563) lt!2253420))))

(declare-fun b!5580740 () Bool)

(assert (=> b!5580740 (= e!3443526 call!417392)))

(declare-fun b!5580741 () Bool)

(assert (=> b!5580741 (= e!3443521 call!417391)))

(declare-fun b!5580742 () Bool)

(declare-fun e!3443524 () Bool)

(assert (=> b!5580742 (= e!3443524 e!3443527)))

(declare-fun c!977222 () Bool)

(assert (=> b!5580742 (= c!977222 ((_ is Star!15563) lt!2253420))))

(declare-fun bm!417387 () Bool)

(assert (=> bm!417387 (= call!417390 (validRegex!7299 (ite c!977221 (regOne!31639 lt!2253420) (regOne!31638 lt!2253420))))))

(declare-fun b!5580743 () Bool)

(assert (=> b!5580743 (= e!3443525 call!417392)))

(declare-fun b!5580744 () Bool)

(declare-fun res!2368375 () Bool)

(assert (=> b!5580744 (=> res!2368375 e!3443522)))

(assert (=> b!5580744 (= res!2368375 (not ((_ is Concat!24408) lt!2253420)))))

(assert (=> b!5580744 (= e!3443523 e!3443522)))

(declare-fun d!1764237 () Bool)

(declare-fun res!2368378 () Bool)

(assert (=> d!1764237 (=> res!2368378 e!3443524)))

(assert (=> d!1764237 (= res!2368378 ((_ is ElementMatch!15563) lt!2253420))))

(assert (=> d!1764237 (= (validRegex!7299 lt!2253420) e!3443524)))

(declare-fun bm!417386 () Bool)

(assert (=> bm!417386 (= call!417391 (validRegex!7299 (ite c!977222 (reg!15892 lt!2253420) (ite c!977221 (regTwo!31639 lt!2253420) (regTwo!31638 lt!2253420)))))))

(assert (= (and d!1764237 (not res!2368378)) b!5580742))

(assert (= (and b!5580742 c!977222) b!5580736))

(assert (= (and b!5580742 (not c!977222)) b!5580739))

(assert (= (and b!5580736 res!2368376) b!5580741))

(assert (= (and b!5580739 c!977221) b!5580738))

(assert (= (and b!5580739 (not c!977221)) b!5580744))

(assert (= (and b!5580738 res!2368374) b!5580743))

(assert (= (and b!5580744 (not res!2368375)) b!5580737))

(assert (= (and b!5580737 res!2368377) b!5580740))

(assert (= (or b!5580743 b!5580740) bm!417385))

(assert (= (or b!5580738 b!5580737) bm!417387))

(assert (= (or b!5580741 bm!417385) bm!417386))

(declare-fun m!6562820 () Bool)

(assert (=> b!5580736 m!6562820))

(declare-fun m!6562822 () Bool)

(assert (=> bm!417387 m!6562822))

(declare-fun m!6562824 () Bool)

(assert (=> bm!417386 m!6562824))

(assert (=> d!1763943 d!1764237))

(assert (=> d!1763943 d!1763945))

(assert (=> d!1763943 d!1763947))

(declare-fun b!5580745 () Bool)

(declare-fun res!2368384 () Bool)

(declare-fun e!3443531 () Bool)

(assert (=> b!5580745 (=> res!2368384 e!3443531)))

(assert (=> b!5580745 (= res!2368384 (not (isEmpty!34675 (tail!10995 (tail!10995 s!2326)))))))

(declare-fun b!5580746 () Bool)

(declare-fun res!2368385 () Bool)

(declare-fun e!3443530 () Bool)

(assert (=> b!5580746 (=> (not res!2368385) (not e!3443530))))

(assert (=> b!5580746 (= res!2368385 (isEmpty!34675 (tail!10995 (tail!10995 s!2326))))))

(declare-fun b!5580747 () Bool)

(declare-fun e!3443532 () Bool)

(declare-fun lt!2253451 () Bool)

(declare-fun call!417393 () Bool)

(assert (=> b!5580747 (= e!3443532 (= lt!2253451 call!417393))))

(declare-fun b!5580748 () Bool)

(declare-fun e!3443528 () Bool)

(assert (=> b!5580748 (= e!3443528 (not lt!2253451))))

(declare-fun b!5580749 () Bool)

(declare-fun res!2368381 () Bool)

(assert (=> b!5580749 (=> (not res!2368381) (not e!3443530))))

(assert (=> b!5580749 (= res!2368381 (not call!417393))))

(declare-fun b!5580750 () Bool)

(declare-fun e!3443529 () Bool)

(assert (=> b!5580750 (= e!3443529 (matchR!7748 (derivativeStep!4414 (derivativeStep!4414 r!7292 (head!11900 s!2326)) (head!11900 (tail!10995 s!2326))) (tail!10995 (tail!10995 s!2326))))))

(declare-fun b!5580751 () Bool)

(assert (=> b!5580751 (= e!3443531 (not (= (head!11900 (tail!10995 s!2326)) (c!976846 (derivativeStep!4414 r!7292 (head!11900 s!2326))))))))

(declare-fun bm!417388 () Bool)

(assert (=> bm!417388 (= call!417393 (isEmpty!34675 (tail!10995 s!2326)))))

(declare-fun b!5580752 () Bool)

(declare-fun e!3443534 () Bool)

(assert (=> b!5580752 (= e!3443534 e!3443531)))

(declare-fun res!2368380 () Bool)

(assert (=> b!5580752 (=> res!2368380 e!3443531)))

(assert (=> b!5580752 (= res!2368380 call!417393)))

(declare-fun b!5580753 () Bool)

(assert (=> b!5580753 (= e!3443530 (= (head!11900 (tail!10995 s!2326)) (c!976846 (derivativeStep!4414 r!7292 (head!11900 s!2326)))))))

(declare-fun b!5580754 () Bool)

(declare-fun res!2368383 () Bool)

(declare-fun e!3443533 () Bool)

(assert (=> b!5580754 (=> res!2368383 e!3443533)))

(assert (=> b!5580754 (= res!2368383 (not ((_ is ElementMatch!15563) (derivativeStep!4414 r!7292 (head!11900 s!2326)))))))

(assert (=> b!5580754 (= e!3443528 e!3443533)))

(declare-fun b!5580755 () Bool)

(assert (=> b!5580755 (= e!3443529 (nullable!5595 (derivativeStep!4414 r!7292 (head!11900 s!2326))))))

(declare-fun d!1764239 () Bool)

(assert (=> d!1764239 e!3443532))

(declare-fun c!977225 () Bool)

(assert (=> d!1764239 (= c!977225 ((_ is EmptyExpr!15563) (derivativeStep!4414 r!7292 (head!11900 s!2326))))))

(assert (=> d!1764239 (= lt!2253451 e!3443529)))

(declare-fun c!977224 () Bool)

(assert (=> d!1764239 (= c!977224 (isEmpty!34675 (tail!10995 s!2326)))))

(assert (=> d!1764239 (validRegex!7299 (derivativeStep!4414 r!7292 (head!11900 s!2326)))))

(assert (=> d!1764239 (= (matchR!7748 (derivativeStep!4414 r!7292 (head!11900 s!2326)) (tail!10995 s!2326)) lt!2253451)))

(declare-fun b!5580756 () Bool)

(assert (=> b!5580756 (= e!3443532 e!3443528)))

(declare-fun c!977223 () Bool)

(assert (=> b!5580756 (= c!977223 ((_ is EmptyLang!15563) (derivativeStep!4414 r!7292 (head!11900 s!2326))))))

(declare-fun b!5580757 () Bool)

(assert (=> b!5580757 (= e!3443533 e!3443534)))

(declare-fun res!2368382 () Bool)

(assert (=> b!5580757 (=> (not res!2368382) (not e!3443534))))

(assert (=> b!5580757 (= res!2368382 (not lt!2253451))))

(declare-fun b!5580758 () Bool)

(declare-fun res!2368379 () Bool)

(assert (=> b!5580758 (=> res!2368379 e!3443533)))

(assert (=> b!5580758 (= res!2368379 e!3443530)))

(declare-fun res!2368386 () Bool)

(assert (=> b!5580758 (=> (not res!2368386) (not e!3443530))))

(assert (=> b!5580758 (= res!2368386 lt!2253451)))

(assert (= (and d!1764239 c!977224) b!5580755))

(assert (= (and d!1764239 (not c!977224)) b!5580750))

(assert (= (and d!1764239 c!977225) b!5580747))

(assert (= (and d!1764239 (not c!977225)) b!5580756))

(assert (= (and b!5580756 c!977223) b!5580748))

(assert (= (and b!5580756 (not c!977223)) b!5580754))

(assert (= (and b!5580754 (not res!2368383)) b!5580758))

(assert (= (and b!5580758 res!2368386) b!5580749))

(assert (= (and b!5580749 res!2368381) b!5580746))

(assert (= (and b!5580746 res!2368385) b!5580753))

(assert (= (and b!5580758 (not res!2368379)) b!5580757))

(assert (= (and b!5580757 res!2368382) b!5580752))

(assert (= (and b!5580752 (not res!2368380)) b!5580745))

(assert (= (and b!5580745 (not res!2368384)) b!5580751))

(assert (= (or b!5580747 b!5580749 b!5580752) bm!417388))

(assert (=> b!5580751 m!6562034))

(declare-fun m!6562826 () Bool)

(assert (=> b!5580751 m!6562826))

(assert (=> b!5580755 m!6562038))

(declare-fun m!6562828 () Bool)

(assert (=> b!5580755 m!6562828))

(assert (=> b!5580745 m!6562034))

(declare-fun m!6562830 () Bool)

(assert (=> b!5580745 m!6562830))

(assert (=> b!5580745 m!6562830))

(declare-fun m!6562832 () Bool)

(assert (=> b!5580745 m!6562832))

(assert (=> d!1764239 m!6562034))

(assert (=> d!1764239 m!6562036))

(assert (=> d!1764239 m!6562038))

(declare-fun m!6562834 () Bool)

(assert (=> d!1764239 m!6562834))

(assert (=> bm!417388 m!6562034))

(assert (=> bm!417388 m!6562036))

(assert (=> b!5580753 m!6562034))

(assert (=> b!5580753 m!6562826))

(assert (=> b!5580750 m!6562034))

(assert (=> b!5580750 m!6562826))

(assert (=> b!5580750 m!6562038))

(assert (=> b!5580750 m!6562826))

(declare-fun m!6562836 () Bool)

(assert (=> b!5580750 m!6562836))

(assert (=> b!5580750 m!6562034))

(assert (=> b!5580750 m!6562830))

(assert (=> b!5580750 m!6562836))

(assert (=> b!5580750 m!6562830))

(declare-fun m!6562838 () Bool)

(assert (=> b!5580750 m!6562838))

(assert (=> b!5580746 m!6562034))

(assert (=> b!5580746 m!6562830))

(assert (=> b!5580746 m!6562830))

(assert (=> b!5580746 m!6562832))

(assert (=> b!5579826 d!1764239))

(declare-fun b!5580779 () Bool)

(declare-fun e!3443547 () Regex!15563)

(assert (=> b!5580779 (= e!3443547 EmptyLang!15563)))

(declare-fun b!5580780 () Bool)

(declare-fun c!977238 () Bool)

(assert (=> b!5580780 (= c!977238 (nullable!5595 (regOne!31638 r!7292)))))

(declare-fun e!3443549 () Regex!15563)

(declare-fun e!3443548 () Regex!15563)

(assert (=> b!5580780 (= e!3443549 e!3443548)))

(declare-fun b!5580781 () Bool)

(declare-fun e!3443546 () Regex!15563)

(assert (=> b!5580781 (= e!3443546 e!3443549)))

(declare-fun c!977236 () Bool)

(assert (=> b!5580781 (= c!977236 ((_ is Star!15563) r!7292))))

(declare-fun bm!417397 () Bool)

(declare-fun call!417402 () Regex!15563)

(declare-fun call!417405 () Regex!15563)

(assert (=> bm!417397 (= call!417402 call!417405)))

(declare-fun b!5580782 () Bool)

(assert (=> b!5580782 (= e!3443548 (Union!15563 (Concat!24408 call!417402 (regTwo!31638 r!7292)) EmptyLang!15563))))

(declare-fun bm!417398 () Bool)

(declare-fun call!417403 () Regex!15563)

(declare-fun call!417404 () Regex!15563)

(assert (=> bm!417398 (= call!417403 call!417404)))

(declare-fun b!5580783 () Bool)

(assert (=> b!5580783 (= e!3443546 (Union!15563 call!417405 call!417404))))

(declare-fun bm!417399 () Bool)

(declare-fun c!977237 () Bool)

(assert (=> bm!417399 (= call!417405 (derivativeStep!4414 (ite c!977237 (regOne!31639 r!7292) (ite c!977238 (regTwo!31638 r!7292) (regOne!31638 r!7292))) (head!11900 s!2326)))))

(declare-fun b!5580784 () Bool)

(assert (=> b!5580784 (= e!3443548 (Union!15563 (Concat!24408 call!417403 (regTwo!31638 r!7292)) call!417402))))

(declare-fun b!5580785 () Bool)

(assert (=> b!5580785 (= c!977237 ((_ is Union!15563) r!7292))))

(declare-fun e!3443545 () Regex!15563)

(assert (=> b!5580785 (= e!3443545 e!3443546)))

(declare-fun bm!417400 () Bool)

(assert (=> bm!417400 (= call!417404 (derivativeStep!4414 (ite c!977237 (regTwo!31639 r!7292) (ite c!977236 (reg!15892 r!7292) (regOne!31638 r!7292))) (head!11900 s!2326)))))

(declare-fun b!5580786 () Bool)

(assert (=> b!5580786 (= e!3443549 (Concat!24408 call!417403 r!7292))))

(declare-fun b!5580787 () Bool)

(assert (=> b!5580787 (= e!3443545 (ite (= (head!11900 s!2326) (c!976846 r!7292)) EmptyExpr!15563 EmptyLang!15563))))

(declare-fun b!5580788 () Bool)

(assert (=> b!5580788 (= e!3443547 e!3443545)))

(declare-fun c!977239 () Bool)

(assert (=> b!5580788 (= c!977239 ((_ is ElementMatch!15563) r!7292))))

(declare-fun d!1764241 () Bool)

(declare-fun lt!2253454 () Regex!15563)

(assert (=> d!1764241 (validRegex!7299 lt!2253454)))

(assert (=> d!1764241 (= lt!2253454 e!3443547)))

(declare-fun c!977240 () Bool)

(assert (=> d!1764241 (= c!977240 (or ((_ is EmptyExpr!15563) r!7292) ((_ is EmptyLang!15563) r!7292)))))

(assert (=> d!1764241 (validRegex!7299 r!7292)))

(assert (=> d!1764241 (= (derivativeStep!4414 r!7292 (head!11900 s!2326)) lt!2253454)))

(assert (= (and d!1764241 c!977240) b!5580779))

(assert (= (and d!1764241 (not c!977240)) b!5580788))

(assert (= (and b!5580788 c!977239) b!5580787))

(assert (= (and b!5580788 (not c!977239)) b!5580785))

(assert (= (and b!5580785 c!977237) b!5580783))

(assert (= (and b!5580785 (not c!977237)) b!5580781))

(assert (= (and b!5580781 c!977236) b!5580786))

(assert (= (and b!5580781 (not c!977236)) b!5580780))

(assert (= (and b!5580780 c!977238) b!5580784))

(assert (= (and b!5580780 (not c!977238)) b!5580782))

(assert (= (or b!5580784 b!5580782) bm!417397))

(assert (= (or b!5580786 b!5580784) bm!417398))

(assert (= (or b!5580783 bm!417398) bm!417400))

(assert (= (or b!5580783 bm!417397) bm!417399))

(assert (=> b!5580780 m!6562798))

(assert (=> bm!417399 m!6562030))

(declare-fun m!6562840 () Bool)

(assert (=> bm!417399 m!6562840))

(assert (=> bm!417400 m!6562030))

(declare-fun m!6562842 () Bool)

(assert (=> bm!417400 m!6562842))

(declare-fun m!6562844 () Bool)

(assert (=> d!1764241 m!6562844))

(assert (=> d!1764241 m!6561698))

(assert (=> b!5579826 d!1764241))

(declare-fun d!1764243 () Bool)

(assert (=> d!1764243 (= (head!11900 s!2326) (h!69313 s!2326))))

(assert (=> b!5579826 d!1764243))

(assert (=> b!5579826 d!1764221))

(declare-fun d!1764245 () Bool)

(assert (=> d!1764245 (= (isEmptyLang!1130 lt!2253423) ((_ is EmptyLang!15563) lt!2253423))))

(assert (=> b!5580039 d!1764245))

(declare-fun bs!1291064 () Bool)

(declare-fun b!5580796 () Bool)

(assert (= bs!1291064 (and b!5580796 d!1763927)))

(declare-fun lambda!299267 () Int)

(assert (=> bs!1291064 (not (= lambda!299267 lambda!299215))))

(assert (=> bs!1291064 (not (= lambda!299267 lambda!299216))))

(declare-fun bs!1291065 () Bool)

(assert (= bs!1291065 (and b!5580796 b!5579787)))

(assert (=> bs!1291065 (not (= lambda!299267 lambda!299204))))

(declare-fun bs!1291066 () Bool)

(assert (= bs!1291066 (and b!5580796 b!5579318)))

(assert (=> bs!1291066 (not (= lambda!299267 lambda!299168))))

(assert (=> bs!1291066 (not (= lambda!299267 lambda!299169))))

(declare-fun bs!1291067 () Bool)

(assert (= bs!1291067 (and b!5580796 d!1763923)))

(assert (=> bs!1291067 (not (= lambda!299267 lambda!299210))))

(declare-fun bs!1291068 () Bool)

(assert (= bs!1291068 (and b!5580796 b!5579789)))

(assert (=> bs!1291068 (= (and (= (reg!15892 (regTwo!31639 r!7292)) (reg!15892 r!7292)) (= (regTwo!31639 r!7292) r!7292)) (= lambda!299267 lambda!299203))))

(assert (=> b!5580796 true))

(assert (=> b!5580796 true))

(declare-fun bs!1291069 () Bool)

(declare-fun b!5580794 () Bool)

(assert (= bs!1291069 (and b!5580794 d!1763927)))

(declare-fun lambda!299268 () Int)

(assert (=> bs!1291069 (not (= lambda!299268 lambda!299215))))

(declare-fun bs!1291070 () Bool)

(assert (= bs!1291070 (and b!5580794 b!5579787)))

(assert (=> bs!1291070 (= (and (= (regOne!31638 (regTwo!31639 r!7292)) (regOne!31638 r!7292)) (= (regTwo!31638 (regTwo!31639 r!7292)) (regTwo!31638 r!7292))) (= lambda!299268 lambda!299204))))

(declare-fun bs!1291071 () Bool)

(assert (= bs!1291071 (and b!5580794 b!5579318)))

(assert (=> bs!1291071 (not (= lambda!299268 lambda!299168))))

(assert (=> bs!1291071 (= (and (= (regOne!31638 (regTwo!31639 r!7292)) (regOne!31638 r!7292)) (= (regTwo!31638 (regTwo!31639 r!7292)) (regTwo!31638 r!7292))) (= lambda!299268 lambda!299169))))

(declare-fun bs!1291072 () Bool)

(assert (= bs!1291072 (and b!5580794 d!1763923)))

(assert (=> bs!1291072 (not (= lambda!299268 lambda!299210))))

(declare-fun bs!1291073 () Bool)

(assert (= bs!1291073 (and b!5580794 b!5579789)))

(assert (=> bs!1291073 (not (= lambda!299268 lambda!299203))))

(assert (=> bs!1291069 (= (and (= (regOne!31638 (regTwo!31639 r!7292)) (regOne!31638 r!7292)) (= (regTwo!31638 (regTwo!31639 r!7292)) (regTwo!31638 r!7292))) (= lambda!299268 lambda!299216))))

(declare-fun bs!1291074 () Bool)

(assert (= bs!1291074 (and b!5580794 b!5580796)))

(assert (=> bs!1291074 (not (= lambda!299268 lambda!299267))))

(assert (=> b!5580794 true))

(assert (=> b!5580794 true))

(declare-fun d!1764247 () Bool)

(declare-fun c!977243 () Bool)

(assert (=> d!1764247 (= c!977243 ((_ is EmptyExpr!15563) (regTwo!31639 r!7292)))))

(declare-fun e!3443556 () Bool)

(assert (=> d!1764247 (= (matchRSpec!2666 (regTwo!31639 r!7292) s!2326) e!3443556)))

(declare-fun b!5580789 () Bool)

(declare-fun e!3443553 () Bool)

(assert (=> b!5580789 (= e!3443553 (= s!2326 (Cons!62865 (c!976846 (regTwo!31639 r!7292)) Nil!62865)))))

(declare-fun b!5580790 () Bool)

(declare-fun e!3443552 () Bool)

(declare-fun e!3443551 () Bool)

(assert (=> b!5580790 (= e!3443552 e!3443551)))

(declare-fun res!2368387 () Bool)

(assert (=> b!5580790 (= res!2368387 (matchRSpec!2666 (regOne!31639 (regTwo!31639 r!7292)) s!2326))))

(assert (=> b!5580790 (=> res!2368387 e!3443551)))

(declare-fun b!5580791 () Bool)

(assert (=> b!5580791 (= e!3443551 (matchRSpec!2666 (regTwo!31639 (regTwo!31639 r!7292)) s!2326))))

(declare-fun c!977242 () Bool)

(declare-fun call!417406 () Bool)

(declare-fun bm!417401 () Bool)

(assert (=> bm!417401 (= call!417406 (Exists!2663 (ite c!977242 lambda!299267 lambda!299268)))))

(declare-fun b!5580792 () Bool)

(declare-fun c!977244 () Bool)

(assert (=> b!5580792 (= c!977244 ((_ is Union!15563) (regTwo!31639 r!7292)))))

(assert (=> b!5580792 (= e!3443553 e!3443552)))

(declare-fun b!5580793 () Bool)

(declare-fun call!417407 () Bool)

(assert (=> b!5580793 (= e!3443556 call!417407)))

(declare-fun e!3443554 () Bool)

(assert (=> b!5580794 (= e!3443554 call!417406)))

(declare-fun b!5580795 () Bool)

(declare-fun c!977241 () Bool)

(assert (=> b!5580795 (= c!977241 ((_ is ElementMatch!15563) (regTwo!31639 r!7292)))))

(declare-fun e!3443550 () Bool)

(assert (=> b!5580795 (= e!3443550 e!3443553)))

(declare-fun bm!417402 () Bool)

(assert (=> bm!417402 (= call!417407 (isEmpty!34675 s!2326))))

(declare-fun e!3443555 () Bool)

(assert (=> b!5580796 (= e!3443555 call!417406)))

(declare-fun b!5580797 () Bool)

(declare-fun res!2368388 () Bool)

(assert (=> b!5580797 (=> res!2368388 e!3443555)))

(assert (=> b!5580797 (= res!2368388 call!417407)))

(assert (=> b!5580797 (= e!3443554 e!3443555)))

(declare-fun b!5580798 () Bool)

(assert (=> b!5580798 (= e!3443552 e!3443554)))

(assert (=> b!5580798 (= c!977242 ((_ is Star!15563) (regTwo!31639 r!7292)))))

(declare-fun b!5580799 () Bool)

(assert (=> b!5580799 (= e!3443556 e!3443550)))

(declare-fun res!2368389 () Bool)

(assert (=> b!5580799 (= res!2368389 (not ((_ is EmptyLang!15563) (regTwo!31639 r!7292))))))

(assert (=> b!5580799 (=> (not res!2368389) (not e!3443550))))

(assert (= (and d!1764247 c!977243) b!5580793))

(assert (= (and d!1764247 (not c!977243)) b!5580799))

(assert (= (and b!5580799 res!2368389) b!5580795))

(assert (= (and b!5580795 c!977241) b!5580789))

(assert (= (and b!5580795 (not c!977241)) b!5580792))

(assert (= (and b!5580792 c!977244) b!5580790))

(assert (= (and b!5580792 (not c!977244)) b!5580798))

(assert (= (and b!5580790 (not res!2368387)) b!5580791))

(assert (= (and b!5580798 c!977242) b!5580797))

(assert (= (and b!5580798 (not c!977242)) b!5580794))

(assert (= (and b!5580797 (not res!2368388)) b!5580796))

(assert (= (or b!5580796 b!5580794) bm!417401))

(assert (= (or b!5580793 b!5580797) bm!417402))

(declare-fun m!6562846 () Bool)

(assert (=> b!5580790 m!6562846))

(declare-fun m!6562848 () Bool)

(assert (=> b!5580791 m!6562848))

(declare-fun m!6562850 () Bool)

(assert (=> bm!417401 m!6562850))

(assert (=> bm!417402 m!6562028))

(assert (=> b!5579784 d!1764247))

(declare-fun d!1764249 () Bool)

(assert (=> d!1764249 (= (head!11901 (exprs!5447 (h!69314 zl!343))) (h!69312 (exprs!5447 (h!69314 zl!343))))))

(assert (=> b!5579911 d!1764249))

(declare-fun d!1764251 () Bool)

(assert (=> d!1764251 (= ($colon$colon!1628 (exprs!5447 lt!2253334) (ite (or c!977000 c!976998) (regTwo!31638 (regTwo!31639 (regOne!31638 r!7292))) (regTwo!31639 (regOne!31638 r!7292)))) (Cons!62864 (ite (or c!977000 c!976998) (regTwo!31638 (regTwo!31639 (regOne!31638 r!7292))) (regTwo!31639 (regOne!31638 r!7292))) (exprs!5447 lt!2253334)))))

(assert (=> bm!417229 d!1764251))

(assert (=> b!5579829 d!1764243))

(assert (=> bs!1290885 d!1763881))

(declare-fun d!1764253 () Bool)

(declare-fun c!977245 () Bool)

(assert (=> d!1764253 (= c!977245 (isEmpty!34675 (tail!10995 (t!376260 s!2326))))))

(declare-fun e!3443557 () Bool)

(assert (=> d!1764253 (= (matchZipper!1701 (derivationStepZipper!1662 ((_ map or) lt!2253337 lt!2253325) (head!11900 (t!376260 s!2326))) (tail!10995 (t!376260 s!2326))) e!3443557)))

(declare-fun b!5580800 () Bool)

(assert (=> b!5580800 (= e!3443557 (nullableZipper!1560 (derivationStepZipper!1662 ((_ map or) lt!2253337 lt!2253325) (head!11900 (t!376260 s!2326)))))))

(declare-fun b!5580801 () Bool)

(assert (=> b!5580801 (= e!3443557 (matchZipper!1701 (derivationStepZipper!1662 (derivationStepZipper!1662 ((_ map or) lt!2253337 lt!2253325) (head!11900 (t!376260 s!2326))) (head!11900 (tail!10995 (t!376260 s!2326)))) (tail!10995 (tail!10995 (t!376260 s!2326)))))))

(assert (= (and d!1764253 c!977245) b!5580800))

(assert (= (and d!1764253 (not c!977245)) b!5580801))

(assert (=> d!1764253 m!6561988))

(assert (=> d!1764253 m!6562762))

(assert (=> b!5580800 m!6562192))

(declare-fun m!6562852 () Bool)

(assert (=> b!5580800 m!6562852))

(assert (=> b!5580801 m!6561988))

(assert (=> b!5580801 m!6562766))

(assert (=> b!5580801 m!6562192))

(assert (=> b!5580801 m!6562766))

(declare-fun m!6562854 () Bool)

(assert (=> b!5580801 m!6562854))

(assert (=> b!5580801 m!6561988))

(assert (=> b!5580801 m!6562770))

(assert (=> b!5580801 m!6562854))

(assert (=> b!5580801 m!6562770))

(declare-fun m!6562856 () Bool)

(assert (=> b!5580801 m!6562856))

(assert (=> b!5580012 d!1764253))

(declare-fun bs!1291075 () Bool)

(declare-fun d!1764255 () Bool)

(assert (= bs!1291075 (and d!1764255 b!5579326)))

(declare-fun lambda!299269 () Int)

(assert (=> bs!1291075 (= (= (head!11900 (t!376260 s!2326)) (h!69313 s!2326)) (= lambda!299269 lambda!299170))))

(declare-fun bs!1291076 () Bool)

(assert (= bs!1291076 (and d!1764255 d!1764209)))

(assert (=> bs!1291076 (= lambda!299269 lambda!299265)))

(assert (=> d!1764255 true))

(assert (=> d!1764255 (= (derivationStepZipper!1662 ((_ map or) lt!2253337 lt!2253325) (head!11900 (t!376260 s!2326))) (flatMap!1176 ((_ map or) lt!2253337 lt!2253325) lambda!299269))))

(declare-fun bs!1291077 () Bool)

(assert (= bs!1291077 d!1764255))

(declare-fun m!6562858 () Bool)

(assert (=> bs!1291077 m!6562858))

(assert (=> b!5580012 d!1764255))

(assert (=> b!5580012 d!1764211))

(assert (=> b!5580012 d!1764213))

(assert (=> d!1763917 d!1763913))

(declare-fun d!1764257 () Bool)

(assert (=> d!1764257 (= (flatMap!1176 z!1189 lambda!299170) (dynLambda!24585 lambda!299170 (h!69314 zl!343)))))

(assert (=> d!1764257 true))

(declare-fun _$13!2157 () Unit!155624)

(assert (=> d!1764257 (= (choose!42289 z!1189 (h!69314 zl!343) lambda!299170) _$13!2157)))

(declare-fun b_lambda!211523 () Bool)

(assert (=> (not b_lambda!211523) (not d!1764257)))

(declare-fun bs!1291078 () Bool)

(assert (= bs!1291078 d!1764257))

(assert (=> bs!1291078 m!6561706))

(assert (=> bs!1291078 m!6562126))

(assert (=> d!1763917 d!1764257))

(declare-fun b!5580802 () Bool)

(declare-fun e!3443562 () (InoxSet Context!9894))

(declare-fun call!417413 () (InoxSet Context!9894))

(declare-fun call!417410 () (InoxSet Context!9894))

(assert (=> b!5580802 (= e!3443562 ((_ map or) call!417413 call!417410))))

(declare-fun d!1764259 () Bool)

(declare-fun c!977249 () Bool)

(assert (=> d!1764259 (= c!977249 (and ((_ is ElementMatch!15563) (ite c!977001 (regOne!31639 (regOne!31639 (regOne!31638 r!7292))) (ite c!977005 (regTwo!31638 (regOne!31639 (regOne!31638 r!7292))) (ite c!977003 (regOne!31638 (regOne!31639 (regOne!31638 r!7292))) (reg!15892 (regOne!31639 (regOne!31638 r!7292))))))) (= (c!976846 (ite c!977001 (regOne!31639 (regOne!31639 (regOne!31638 r!7292))) (ite c!977005 (regTwo!31638 (regOne!31639 (regOne!31638 r!7292))) (ite c!977003 (regOne!31638 (regOne!31639 (regOne!31638 r!7292))) (reg!15892 (regOne!31639 (regOne!31638 r!7292))))))) (h!69313 s!2326))))))

(declare-fun e!3443561 () (InoxSet Context!9894))

(assert (=> d!1764259 (= (derivationStepZipperDown!905 (ite c!977001 (regOne!31639 (regOne!31639 (regOne!31638 r!7292))) (ite c!977005 (regTwo!31638 (regOne!31639 (regOne!31638 r!7292))) (ite c!977003 (regOne!31638 (regOne!31639 (regOne!31638 r!7292))) (reg!15892 (regOne!31639 (regOne!31638 r!7292)))))) (ite (or c!977001 c!977005) lt!2253334 (Context!9895 call!417240)) (h!69313 s!2326)) e!3443561)))

(declare-fun bm!417403 () Bool)

(declare-fun call!417408 () (InoxSet Context!9894))

(declare-fun call!417411 () (InoxSet Context!9894))

(assert (=> bm!417403 (= call!417408 call!417411)))

(declare-fun c!977248 () Bool)

(declare-fun call!417412 () List!62988)

(declare-fun c!977250 () Bool)

(declare-fun bm!417404 () Bool)

(assert (=> bm!417404 (= call!417412 ($colon$colon!1628 (exprs!5447 (ite (or c!977001 c!977005) lt!2253334 (Context!9895 call!417240))) (ite (or c!977250 c!977248) (regTwo!31638 (ite c!977001 (regOne!31639 (regOne!31639 (regOne!31638 r!7292))) (ite c!977005 (regTwo!31638 (regOne!31639 (regOne!31638 r!7292))) (ite c!977003 (regOne!31638 (regOne!31639 (regOne!31638 r!7292))) (reg!15892 (regOne!31639 (regOne!31638 r!7292))))))) (ite c!977001 (regOne!31639 (regOne!31639 (regOne!31638 r!7292))) (ite c!977005 (regTwo!31638 (regOne!31639 (regOne!31638 r!7292))) (ite c!977003 (regOne!31638 (regOne!31639 (regOne!31638 r!7292))) (reg!15892 (regOne!31639 (regOne!31638 r!7292)))))))))))

(declare-fun c!977247 () Bool)

(declare-fun b!5580803 () Bool)

(assert (=> b!5580803 (= c!977247 ((_ is Star!15563) (ite c!977001 (regOne!31639 (regOne!31639 (regOne!31638 r!7292))) (ite c!977005 (regTwo!31638 (regOne!31639 (regOne!31638 r!7292))) (ite c!977003 (regOne!31638 (regOne!31639 (regOne!31638 r!7292))) (reg!15892 (regOne!31639 (regOne!31638 r!7292))))))))))

(declare-fun e!3443560 () (InoxSet Context!9894))

(declare-fun e!3443563 () (InoxSet Context!9894))

(assert (=> b!5580803 (= e!3443560 e!3443563)))

(declare-fun bm!417405 () Bool)

(assert (=> bm!417405 (= call!417411 call!417413)))

(declare-fun c!977246 () Bool)

(declare-fun bm!417406 () Bool)

(assert (=> bm!417406 (= call!417410 (derivationStepZipperDown!905 (ite c!977246 (regTwo!31639 (ite c!977001 (regOne!31639 (regOne!31639 (regOne!31638 r!7292))) (ite c!977005 (regTwo!31638 (regOne!31639 (regOne!31638 r!7292))) (ite c!977003 (regOne!31638 (regOne!31639 (regOne!31638 r!7292))) (reg!15892 (regOne!31639 (regOne!31638 r!7292))))))) (regOne!31638 (ite c!977001 (regOne!31639 (regOne!31639 (regOne!31638 r!7292))) (ite c!977005 (regTwo!31638 (regOne!31639 (regOne!31638 r!7292))) (ite c!977003 (regOne!31638 (regOne!31639 (regOne!31638 r!7292))) (reg!15892 (regOne!31639 (regOne!31638 r!7292)))))))) (ite c!977246 (ite (or c!977001 c!977005) lt!2253334 (Context!9895 call!417240)) (Context!9895 call!417412)) (h!69313 s!2326)))))

(declare-fun b!5580804 () Bool)

(declare-fun e!3443558 () Bool)

(assert (=> b!5580804 (= c!977250 e!3443558)))

(declare-fun res!2368390 () Bool)

(assert (=> b!5580804 (=> (not res!2368390) (not e!3443558))))

(assert (=> b!5580804 (= res!2368390 ((_ is Concat!24408) (ite c!977001 (regOne!31639 (regOne!31639 (regOne!31638 r!7292))) (ite c!977005 (regTwo!31638 (regOne!31639 (regOne!31638 r!7292))) (ite c!977003 (regOne!31638 (regOne!31639 (regOne!31638 r!7292))) (reg!15892 (regOne!31639 (regOne!31638 r!7292))))))))))

(declare-fun e!3443559 () (InoxSet Context!9894))

(assert (=> b!5580804 (= e!3443562 e!3443559)))

(declare-fun b!5580805 () Bool)

(assert (=> b!5580805 (= e!3443559 e!3443560)))

(assert (=> b!5580805 (= c!977248 ((_ is Concat!24408) (ite c!977001 (regOne!31639 (regOne!31639 (regOne!31638 r!7292))) (ite c!977005 (regTwo!31638 (regOne!31639 (regOne!31638 r!7292))) (ite c!977003 (regOne!31638 (regOne!31639 (regOne!31638 r!7292))) (reg!15892 (regOne!31639 (regOne!31638 r!7292))))))))))

(declare-fun b!5580806 () Bool)

(assert (=> b!5580806 (= e!3443561 (store ((as const (Array Context!9894 Bool)) false) (ite (or c!977001 c!977005) lt!2253334 (Context!9895 call!417240)) true))))

(declare-fun b!5580807 () Bool)

(assert (=> b!5580807 (= e!3443560 call!417408)))

(declare-fun b!5580808 () Bool)

(assert (=> b!5580808 (= e!3443558 (nullable!5595 (regOne!31638 (ite c!977001 (regOne!31639 (regOne!31639 (regOne!31638 r!7292))) (ite c!977005 (regTwo!31638 (regOne!31639 (regOne!31638 r!7292))) (ite c!977003 (regOne!31638 (regOne!31639 (regOne!31638 r!7292))) (reg!15892 (regOne!31639 (regOne!31638 r!7292)))))))))))

(declare-fun b!5580809 () Bool)

(assert (=> b!5580809 (= e!3443561 e!3443562)))

(assert (=> b!5580809 (= c!977246 ((_ is Union!15563) (ite c!977001 (regOne!31639 (regOne!31639 (regOne!31638 r!7292))) (ite c!977005 (regTwo!31638 (regOne!31639 (regOne!31638 r!7292))) (ite c!977003 (regOne!31638 (regOne!31639 (regOne!31638 r!7292))) (reg!15892 (regOne!31639 (regOne!31638 r!7292))))))))))

(declare-fun b!5580810 () Bool)

(assert (=> b!5580810 (= e!3443559 ((_ map or) call!417410 call!417411))))

(declare-fun bm!417407 () Bool)

(declare-fun call!417409 () List!62988)

(assert (=> bm!417407 (= call!417409 call!417412)))

(declare-fun bm!417408 () Bool)

(assert (=> bm!417408 (= call!417413 (derivationStepZipperDown!905 (ite c!977246 (regOne!31639 (ite c!977001 (regOne!31639 (regOne!31639 (regOne!31638 r!7292))) (ite c!977005 (regTwo!31638 (regOne!31639 (regOne!31638 r!7292))) (ite c!977003 (regOne!31638 (regOne!31639 (regOne!31638 r!7292))) (reg!15892 (regOne!31639 (regOne!31638 r!7292))))))) (ite c!977250 (regTwo!31638 (ite c!977001 (regOne!31639 (regOne!31639 (regOne!31638 r!7292))) (ite c!977005 (regTwo!31638 (regOne!31639 (regOne!31638 r!7292))) (ite c!977003 (regOne!31638 (regOne!31639 (regOne!31638 r!7292))) (reg!15892 (regOne!31639 (regOne!31638 r!7292))))))) (ite c!977248 (regOne!31638 (ite c!977001 (regOne!31639 (regOne!31639 (regOne!31638 r!7292))) (ite c!977005 (regTwo!31638 (regOne!31639 (regOne!31638 r!7292))) (ite c!977003 (regOne!31638 (regOne!31639 (regOne!31638 r!7292))) (reg!15892 (regOne!31639 (regOne!31638 r!7292))))))) (reg!15892 (ite c!977001 (regOne!31639 (regOne!31639 (regOne!31638 r!7292))) (ite c!977005 (regTwo!31638 (regOne!31639 (regOne!31638 r!7292))) (ite c!977003 (regOne!31638 (regOne!31639 (regOne!31638 r!7292))) (reg!15892 (regOne!31639 (regOne!31638 r!7292)))))))))) (ite (or c!977246 c!977250) (ite (or c!977001 c!977005) lt!2253334 (Context!9895 call!417240)) (Context!9895 call!417409)) (h!69313 s!2326)))))

(declare-fun b!5580811 () Bool)

(assert (=> b!5580811 (= e!3443563 call!417408)))

(declare-fun b!5580812 () Bool)

(assert (=> b!5580812 (= e!3443563 ((as const (Array Context!9894 Bool)) false))))

(assert (= (and d!1764259 c!977249) b!5580806))

(assert (= (and d!1764259 (not c!977249)) b!5580809))

(assert (= (and b!5580809 c!977246) b!5580802))

(assert (= (and b!5580809 (not c!977246)) b!5580804))

(assert (= (and b!5580804 res!2368390) b!5580808))

(assert (= (and b!5580804 c!977250) b!5580810))

(assert (= (and b!5580804 (not c!977250)) b!5580805))

(assert (= (and b!5580805 c!977248) b!5580807))

(assert (= (and b!5580805 (not c!977248)) b!5580803))

(assert (= (and b!5580803 c!977247) b!5580811))

(assert (= (and b!5580803 (not c!977247)) b!5580812))

(assert (= (or b!5580807 b!5580811) bm!417407))

(assert (= (or b!5580807 b!5580811) bm!417403))

(assert (= (or b!5580810 bm!417407) bm!417404))

(assert (= (or b!5580810 bm!417403) bm!417405))

(assert (= (or b!5580802 b!5580810) bm!417406))

(assert (= (or b!5580802 bm!417405) bm!417408))

(declare-fun m!6562860 () Bool)

(assert (=> b!5580808 m!6562860))

(declare-fun m!6562862 () Bool)

(assert (=> bm!417404 m!6562862))

(declare-fun m!6562864 () Bool)

(assert (=> b!5580806 m!6562864))

(declare-fun m!6562866 () Bool)

(assert (=> bm!417406 m!6562866))

(declare-fun m!6562868 () Bool)

(assert (=> bm!417408 m!6562868))

(assert (=> bm!417239 d!1764259))

(assert (=> d!1763873 d!1764231))

(declare-fun b!5580813 () Bool)

(declare-fun res!2368396 () Bool)

(declare-fun e!3443567 () Bool)

(assert (=> b!5580813 (=> res!2368396 e!3443567)))

(assert (=> b!5580813 (= res!2368396 (not (isEmpty!34675 (tail!10995 s!2326))))))

(declare-fun b!5580814 () Bool)

(declare-fun res!2368397 () Bool)

(declare-fun e!3443566 () Bool)

(assert (=> b!5580814 (=> (not res!2368397) (not e!3443566))))

(assert (=> b!5580814 (= res!2368397 (isEmpty!34675 (tail!10995 s!2326)))))

(declare-fun b!5580815 () Bool)

(declare-fun e!3443568 () Bool)

(declare-fun lt!2253455 () Bool)

(declare-fun call!417414 () Bool)

(assert (=> b!5580815 (= e!3443568 (= lt!2253455 call!417414))))

(declare-fun b!5580816 () Bool)

(declare-fun e!3443564 () Bool)

(assert (=> b!5580816 (= e!3443564 (not lt!2253455))))

(declare-fun b!5580817 () Bool)

(declare-fun res!2368393 () Bool)

(assert (=> b!5580817 (=> (not res!2368393) (not e!3443566))))

(assert (=> b!5580817 (= res!2368393 (not call!417414))))

(declare-fun b!5580818 () Bool)

(declare-fun e!3443565 () Bool)

(assert (=> b!5580818 (= e!3443565 (matchR!7748 (derivativeStep!4414 (regTwo!31638 r!7292) (head!11900 s!2326)) (tail!10995 s!2326)))))

(declare-fun b!5580819 () Bool)

(assert (=> b!5580819 (= e!3443567 (not (= (head!11900 s!2326) (c!976846 (regTwo!31638 r!7292)))))))

(declare-fun bm!417409 () Bool)

(assert (=> bm!417409 (= call!417414 (isEmpty!34675 s!2326))))

(declare-fun b!5580820 () Bool)

(declare-fun e!3443570 () Bool)

(assert (=> b!5580820 (= e!3443570 e!3443567)))

(declare-fun res!2368392 () Bool)

(assert (=> b!5580820 (=> res!2368392 e!3443567)))

(assert (=> b!5580820 (= res!2368392 call!417414)))

(declare-fun b!5580821 () Bool)

(assert (=> b!5580821 (= e!3443566 (= (head!11900 s!2326) (c!976846 (regTwo!31638 r!7292))))))

(declare-fun b!5580822 () Bool)

(declare-fun res!2368395 () Bool)

(declare-fun e!3443569 () Bool)

(assert (=> b!5580822 (=> res!2368395 e!3443569)))

(assert (=> b!5580822 (= res!2368395 (not ((_ is ElementMatch!15563) (regTwo!31638 r!7292))))))

(assert (=> b!5580822 (= e!3443564 e!3443569)))

(declare-fun b!5580823 () Bool)

(assert (=> b!5580823 (= e!3443565 (nullable!5595 (regTwo!31638 r!7292)))))

(declare-fun d!1764261 () Bool)

(assert (=> d!1764261 e!3443568))

(declare-fun c!977253 () Bool)

(assert (=> d!1764261 (= c!977253 ((_ is EmptyExpr!15563) (regTwo!31638 r!7292)))))

(assert (=> d!1764261 (= lt!2253455 e!3443565)))

(declare-fun c!977252 () Bool)

(assert (=> d!1764261 (= c!977252 (isEmpty!34675 s!2326))))

(assert (=> d!1764261 (validRegex!7299 (regTwo!31638 r!7292))))

(assert (=> d!1764261 (= (matchR!7748 (regTwo!31638 r!7292) s!2326) lt!2253455)))

(declare-fun b!5580824 () Bool)

(assert (=> b!5580824 (= e!3443568 e!3443564)))

(declare-fun c!977251 () Bool)

(assert (=> b!5580824 (= c!977251 ((_ is EmptyLang!15563) (regTwo!31638 r!7292)))))

(declare-fun b!5580825 () Bool)

(assert (=> b!5580825 (= e!3443569 e!3443570)))

(declare-fun res!2368394 () Bool)

(assert (=> b!5580825 (=> (not res!2368394) (not e!3443570))))

(assert (=> b!5580825 (= res!2368394 (not lt!2253455))))

(declare-fun b!5580826 () Bool)

(declare-fun res!2368391 () Bool)

(assert (=> b!5580826 (=> res!2368391 e!3443569)))

(assert (=> b!5580826 (= res!2368391 e!3443566)))

(declare-fun res!2368398 () Bool)

(assert (=> b!5580826 (=> (not res!2368398) (not e!3443566))))

(assert (=> b!5580826 (= res!2368398 lt!2253455)))

(assert (= (and d!1764261 c!977252) b!5580823))

(assert (= (and d!1764261 (not c!977252)) b!5580818))

(assert (= (and d!1764261 c!977253) b!5580815))

(assert (= (and d!1764261 (not c!977253)) b!5580824))

(assert (= (and b!5580824 c!977251) b!5580816))

(assert (= (and b!5580824 (not c!977251)) b!5580822))

(assert (= (and b!5580822 (not res!2368395)) b!5580826))

(assert (= (and b!5580826 res!2368398) b!5580817))

(assert (= (and b!5580817 res!2368393) b!5580814))

(assert (= (and b!5580814 res!2368397) b!5580821))

(assert (= (and b!5580826 (not res!2368391)) b!5580825))

(assert (= (and b!5580825 res!2368394) b!5580820))

(assert (= (and b!5580820 (not res!2368392)) b!5580813))

(assert (= (and b!5580813 (not res!2368396)) b!5580819))

(assert (= (or b!5580815 b!5580817 b!5580820) bm!417409))

(assert (=> b!5580819 m!6562030))

(declare-fun m!6562870 () Bool)

(assert (=> b!5580823 m!6562870))

(assert (=> b!5580813 m!6562034))

(assert (=> b!5580813 m!6562034))

(assert (=> b!5580813 m!6562036))

(assert (=> d!1764261 m!6562028))

(declare-fun m!6562872 () Bool)

(assert (=> d!1764261 m!6562872))

(assert (=> bm!417409 m!6562028))

(assert (=> b!5580821 m!6562030))

(assert (=> b!5580818 m!6562030))

(assert (=> b!5580818 m!6562030))

(declare-fun m!6562874 () Bool)

(assert (=> b!5580818 m!6562874))

(assert (=> b!5580818 m!6562034))

(assert (=> b!5580818 m!6562874))

(assert (=> b!5580818 m!6562034))

(declare-fun m!6562876 () Bool)

(assert (=> b!5580818 m!6562876))

(assert (=> b!5580814 m!6562034))

(assert (=> b!5580814 m!6562034))

(assert (=> b!5580814 m!6562036))

(assert (=> b!5579960 d!1764261))

(assert (=> d!1763941 d!1764231))

(assert (=> d!1763883 d!1763879))

(declare-fun d!1764263 () Bool)

(assert (=> d!1764263 (= (flatMap!1176 lt!2253320 lambda!299170) (dynLambda!24585 lambda!299170 lt!2253322))))

(assert (=> d!1764263 true))

(declare-fun _$13!2158 () Unit!155624)

(assert (=> d!1764263 (= (choose!42289 lt!2253320 lt!2253322 lambda!299170) _$13!2158)))

(declare-fun b_lambda!211525 () Bool)

(assert (=> (not b_lambda!211525) (not d!1764263)))

(declare-fun bs!1291079 () Bool)

(assert (= bs!1291079 d!1764263))

(assert (=> bs!1291079 m!6561660))

(assert (=> bs!1291079 m!6562018))

(assert (=> d!1763883 d!1764263))

(declare-fun d!1764265 () Bool)

(declare-fun res!2368403 () Bool)

(declare-fun e!3443575 () Bool)

(assert (=> d!1764265 (=> res!2368403 e!3443575)))

(assert (=> d!1764265 (= res!2368403 ((_ is Nil!62866) lt!2253416))))

(assert (=> d!1764265 (= (noDuplicate!1541 lt!2253416) e!3443575)))

(declare-fun b!5580831 () Bool)

(declare-fun e!3443576 () Bool)

(assert (=> b!5580831 (= e!3443575 e!3443576)))

(declare-fun res!2368404 () Bool)

(assert (=> b!5580831 (=> (not res!2368404) (not e!3443576))))

(declare-fun contains!19805 (List!62990 Context!9894) Bool)

(assert (=> b!5580831 (= res!2368404 (not (contains!19805 (t!376261 lt!2253416) (h!69314 lt!2253416))))))

(declare-fun b!5580832 () Bool)

(assert (=> b!5580832 (= e!3443576 (noDuplicate!1541 (t!376261 lt!2253416)))))

(assert (= (and d!1764265 (not res!2368403)) b!5580831))

(assert (= (and b!5580831 res!2368404) b!5580832))

(declare-fun m!6562878 () Bool)

(assert (=> b!5580831 m!6562878))

(declare-fun m!6562880 () Bool)

(assert (=> b!5580832 m!6562880))

(assert (=> d!1763931 d!1764265))

(declare-fun d!1764267 () Bool)

(declare-fun e!3443583 () Bool)

(assert (=> d!1764267 e!3443583))

(declare-fun res!2368409 () Bool)

(assert (=> d!1764267 (=> (not res!2368409) (not e!3443583))))

(declare-fun res!2368410 () List!62990)

(assert (=> d!1764267 (= res!2368409 (noDuplicate!1541 res!2368410))))

(declare-fun e!3443585 () Bool)

(assert (=> d!1764267 e!3443585))

(assert (=> d!1764267 (= (choose!42294 z!1189) res!2368410)))

(declare-fun b!5580840 () Bool)

(declare-fun e!3443584 () Bool)

(declare-fun tp!1544179 () Bool)

(assert (=> b!5580840 (= e!3443584 tp!1544179)))

(declare-fun b!5580839 () Bool)

(declare-fun tp!1544178 () Bool)

(assert (=> b!5580839 (= e!3443585 (and (inv!82154 (h!69314 res!2368410)) e!3443584 tp!1544178))))

(declare-fun b!5580841 () Bool)

(assert (=> b!5580841 (= e!3443583 (= (content!11331 res!2368410) z!1189))))

(assert (= b!5580839 b!5580840))

(assert (= (and d!1764267 ((_ is Cons!62866) res!2368410)) b!5580839))

(assert (= (and d!1764267 res!2368409) b!5580841))

(declare-fun m!6562882 () Bool)

(assert (=> d!1764267 m!6562882))

(declare-fun m!6562884 () Bool)

(assert (=> b!5580839 m!6562884))

(declare-fun m!6562886 () Bool)

(assert (=> b!5580841 m!6562886))

(assert (=> d!1763931 d!1764267))

(declare-fun d!1764269 () Bool)

(assert (=> d!1764269 (= (nullable!5595 (regOne!31638 (regOne!31639 (regOne!31638 r!7292)))) (nullableFct!1707 (regOne!31638 (regOne!31639 (regOne!31638 r!7292)))))))

(declare-fun bs!1291080 () Bool)

(assert (= bs!1291080 d!1764269))

(declare-fun m!6562888 () Bool)

(assert (=> bs!1291080 m!6562888))

(assert (=> b!5579876 d!1764269))

(declare-fun d!1764271 () Bool)

(declare-fun c!977254 () Bool)

(assert (=> d!1764271 (= c!977254 (isEmpty!34675 (tail!10995 (t!376260 s!2326))))))

(declare-fun e!3443586 () Bool)

(assert (=> d!1764271 (= (matchZipper!1701 (derivationStepZipper!1662 lt!2253319 (head!11900 (t!376260 s!2326))) (tail!10995 (t!376260 s!2326))) e!3443586)))

(declare-fun b!5580842 () Bool)

(assert (=> b!5580842 (= e!3443586 (nullableZipper!1560 (derivationStepZipper!1662 lt!2253319 (head!11900 (t!376260 s!2326)))))))

(declare-fun b!5580843 () Bool)

(assert (=> b!5580843 (= e!3443586 (matchZipper!1701 (derivationStepZipper!1662 (derivationStepZipper!1662 lt!2253319 (head!11900 (t!376260 s!2326))) (head!11900 (tail!10995 (t!376260 s!2326)))) (tail!10995 (tail!10995 (t!376260 s!2326)))))))

(assert (= (and d!1764271 c!977254) b!5580842))

(assert (= (and d!1764271 (not c!977254)) b!5580843))

(assert (=> d!1764271 m!6561988))

(assert (=> d!1764271 m!6562762))

(assert (=> b!5580842 m!6562000))

(declare-fun m!6562890 () Bool)

(assert (=> b!5580842 m!6562890))

(assert (=> b!5580843 m!6561988))

(assert (=> b!5580843 m!6562766))

(assert (=> b!5580843 m!6562000))

(assert (=> b!5580843 m!6562766))

(declare-fun m!6562892 () Bool)

(assert (=> b!5580843 m!6562892))

(assert (=> b!5580843 m!6561988))

(assert (=> b!5580843 m!6562770))

(assert (=> b!5580843 m!6562892))

(assert (=> b!5580843 m!6562770))

(declare-fun m!6562894 () Bool)

(assert (=> b!5580843 m!6562894))

(assert (=> b!5579731 d!1764271))

(declare-fun bs!1291081 () Bool)

(declare-fun d!1764273 () Bool)

(assert (= bs!1291081 (and d!1764273 b!5579326)))

(declare-fun lambda!299270 () Int)

(assert (=> bs!1291081 (= (= (head!11900 (t!376260 s!2326)) (h!69313 s!2326)) (= lambda!299270 lambda!299170))))

(declare-fun bs!1291082 () Bool)

(assert (= bs!1291082 (and d!1764273 d!1764209)))

(assert (=> bs!1291082 (= lambda!299270 lambda!299265)))

(declare-fun bs!1291083 () Bool)

(assert (= bs!1291083 (and d!1764273 d!1764255)))

(assert (=> bs!1291083 (= lambda!299270 lambda!299269)))

(assert (=> d!1764273 true))

(assert (=> d!1764273 (= (derivationStepZipper!1662 lt!2253319 (head!11900 (t!376260 s!2326))) (flatMap!1176 lt!2253319 lambda!299270))))

(declare-fun bs!1291084 () Bool)

(assert (= bs!1291084 d!1764273))

(declare-fun m!6562896 () Bool)

(assert (=> bs!1291084 m!6562896))

(assert (=> b!5579731 d!1764273))

(assert (=> b!5579731 d!1764211))

(assert (=> b!5579731 d!1764213))

(assert (=> b!5580010 d!1763893))

(declare-fun b!5580858 () Bool)

(declare-fun e!3443600 () Bool)

(declare-fun e!3443601 () Bool)

(assert (=> b!5580858 (= e!3443600 e!3443601)))

(declare-fun res!2368423 () Bool)

(declare-fun call!417419 () Bool)

(assert (=> b!5580858 (= res!2368423 call!417419)))

(assert (=> b!5580858 (=> (not res!2368423) (not e!3443601))))

(declare-fun b!5580859 () Bool)

(declare-fun e!3443602 () Bool)

(declare-fun e!3443603 () Bool)

(assert (=> b!5580859 (= e!3443602 e!3443603)))

(declare-fun res!2368421 () Bool)

(assert (=> b!5580859 (=> res!2368421 e!3443603)))

(assert (=> b!5580859 (= res!2368421 ((_ is Star!15563) (h!69312 (exprs!5447 (h!69314 zl!343)))))))

(declare-fun b!5580860 () Bool)

(declare-fun e!3443599 () Bool)

(assert (=> b!5580860 (= e!3443600 e!3443599)))

(declare-fun res!2368422 () Bool)

(assert (=> b!5580860 (= res!2368422 call!417419)))

(assert (=> b!5580860 (=> res!2368422 e!3443599)))

(declare-fun d!1764275 () Bool)

(declare-fun res!2368425 () Bool)

(declare-fun e!3443604 () Bool)

(assert (=> d!1764275 (=> res!2368425 e!3443604)))

(assert (=> d!1764275 (= res!2368425 ((_ is EmptyExpr!15563) (h!69312 (exprs!5447 (h!69314 zl!343)))))))

(assert (=> d!1764275 (= (nullableFct!1707 (h!69312 (exprs!5447 (h!69314 zl!343)))) e!3443604)))

(declare-fun b!5580861 () Bool)

(assert (=> b!5580861 (= e!3443604 e!3443602)))

(declare-fun res!2368424 () Bool)

(assert (=> b!5580861 (=> (not res!2368424) (not e!3443602))))

(assert (=> b!5580861 (= res!2368424 (and (not ((_ is EmptyLang!15563) (h!69312 (exprs!5447 (h!69314 zl!343))))) (not ((_ is ElementMatch!15563) (h!69312 (exprs!5447 (h!69314 zl!343)))))))))

(declare-fun bm!417414 () Bool)

(declare-fun c!977257 () Bool)

(assert (=> bm!417414 (= call!417419 (nullable!5595 (ite c!977257 (regOne!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))))))))

(declare-fun b!5580862 () Bool)

(declare-fun call!417420 () Bool)

(assert (=> b!5580862 (= e!3443601 call!417420)))

(declare-fun bm!417415 () Bool)

(assert (=> bm!417415 (= call!417420 (nullable!5595 (ite c!977257 (regTwo!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (regTwo!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))))))))

(declare-fun b!5580863 () Bool)

(assert (=> b!5580863 (= e!3443603 e!3443600)))

(assert (=> b!5580863 (= c!977257 ((_ is Union!15563) (h!69312 (exprs!5447 (h!69314 zl!343)))))))

(declare-fun b!5580864 () Bool)

(assert (=> b!5580864 (= e!3443599 call!417420)))

(assert (= (and d!1764275 (not res!2368425)) b!5580861))

(assert (= (and b!5580861 res!2368424) b!5580859))

(assert (= (and b!5580859 (not res!2368421)) b!5580863))

(assert (= (and b!5580863 c!977257) b!5580860))

(assert (= (and b!5580863 (not c!977257)) b!5580858))

(assert (= (and b!5580860 (not res!2368422)) b!5580864))

(assert (= (and b!5580858 res!2368423) b!5580862))

(assert (= (or b!5580864 b!5580862) bm!417415))

(assert (= (or b!5580860 b!5580858) bm!417414))

(declare-fun m!6562898 () Bool)

(assert (=> bm!417414 m!6562898))

(declare-fun m!6562900 () Bool)

(assert (=> bm!417415 m!6562900))

(assert (=> d!1763907 d!1764275))

(assert (=> b!5579821 d!1764219))

(assert (=> b!5579821 d!1764221))

(assert (=> d!1763871 d!1764231))

(assert (=> d!1763939 d!1763941))

(assert (=> d!1763939 d!1763869))

(declare-fun d!1764277 () Bool)

(declare-fun e!3443607 () Bool)

(assert (=> d!1764277 (= (matchZipper!1701 ((_ map or) lt!2253337 lt!2253325) (t!376260 s!2326)) e!3443607)))

(declare-fun res!2368428 () Bool)

(assert (=> d!1764277 (=> res!2368428 e!3443607)))

(assert (=> d!1764277 (= res!2368428 (matchZipper!1701 lt!2253337 (t!376260 s!2326)))))

(assert (=> d!1764277 true))

(declare-fun _$48!1135 () Unit!155624)

(assert (=> d!1764277 (= (choose!42287 lt!2253337 lt!2253325 (t!376260 s!2326)) _$48!1135)))

(declare-fun b!5580867 () Bool)

(assert (=> b!5580867 (= e!3443607 (matchZipper!1701 lt!2253325 (t!376260 s!2326)))))

(assert (= (and d!1764277 (not res!2368428)) b!5580867))

(assert (=> d!1764277 m!6561694))

(assert (=> d!1764277 m!6561674))

(assert (=> b!5580867 m!6561684))

(assert (=> d!1763939 d!1764277))

(declare-fun b!5580868 () Bool)

(declare-fun e!3443610 () Bool)

(assert (=> b!5580868 (= e!3443610 (nullable!5595 (h!69312 (exprs!5447 (Context!9895 (t!376259 (exprs!5447 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343))))))))))))))

(declare-fun b!5580869 () Bool)

(declare-fun e!3443608 () (InoxSet Context!9894))

(declare-fun call!417421 () (InoxSet Context!9894))

(assert (=> b!5580869 (= e!3443608 call!417421)))

(declare-fun b!5580870 () Bool)

(declare-fun e!3443609 () (InoxSet Context!9894))

(assert (=> b!5580870 (= e!3443609 e!3443608)))

(declare-fun c!977259 () Bool)

(assert (=> b!5580870 (= c!977259 ((_ is Cons!62864) (exprs!5447 (Context!9895 (t!376259 (exprs!5447 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343)))))))))))))

(declare-fun d!1764279 () Bool)

(declare-fun c!977258 () Bool)

(assert (=> d!1764279 (= c!977258 e!3443610)))

(declare-fun res!2368429 () Bool)

(assert (=> d!1764279 (=> (not res!2368429) (not e!3443610))))

(assert (=> d!1764279 (= res!2368429 ((_ is Cons!62864) (exprs!5447 (Context!9895 (t!376259 (exprs!5447 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343)))))))))))))

(assert (=> d!1764279 (= (derivationStepZipperUp!831 (Context!9895 (t!376259 (exprs!5447 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343)))))))) (h!69313 s!2326)) e!3443609)))

(declare-fun b!5580871 () Bool)

(assert (=> b!5580871 (= e!3443608 ((as const (Array Context!9894 Bool)) false))))

(declare-fun b!5580872 () Bool)

(assert (=> b!5580872 (= e!3443609 ((_ map or) call!417421 (derivationStepZipperUp!831 (Context!9895 (t!376259 (exprs!5447 (Context!9895 (t!376259 (exprs!5447 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343))))))))))) (h!69313 s!2326))))))

(declare-fun bm!417416 () Bool)

(assert (=> bm!417416 (= call!417421 (derivationStepZipperDown!905 (h!69312 (exprs!5447 (Context!9895 (t!376259 (exprs!5447 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343)))))))))) (Context!9895 (t!376259 (exprs!5447 (Context!9895 (t!376259 (exprs!5447 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343))))))))))) (h!69313 s!2326)))))

(assert (= (and d!1764279 res!2368429) b!5580868))

(assert (= (and d!1764279 c!977258) b!5580872))

(assert (= (and d!1764279 (not c!977258)) b!5580870))

(assert (= (and b!5580870 c!977259) b!5580869))

(assert (= (and b!5580870 (not c!977259)) b!5580871))

(assert (= (or b!5580872 b!5580869) bm!417416))

(declare-fun m!6562902 () Bool)

(assert (=> b!5580868 m!6562902))

(declare-fun m!6562904 () Bool)

(assert (=> b!5580872 m!6562904))

(declare-fun m!6562906 () Bool)

(assert (=> bm!417416 m!6562906))

(assert (=> b!5579930 d!1764279))

(declare-fun b!5580873 () Bool)

(declare-fun e!3443613 () Bool)

(assert (=> b!5580873 (= e!3443613 (nullable!5595 (h!69312 (exprs!5447 (Context!9895 (t!376259 (exprs!5447 lt!2253334)))))))))

(declare-fun b!5580874 () Bool)

(declare-fun e!3443611 () (InoxSet Context!9894))

(declare-fun call!417422 () (InoxSet Context!9894))

(assert (=> b!5580874 (= e!3443611 call!417422)))

(declare-fun b!5580875 () Bool)

(declare-fun e!3443612 () (InoxSet Context!9894))

(assert (=> b!5580875 (= e!3443612 e!3443611)))

(declare-fun c!977261 () Bool)

(assert (=> b!5580875 (= c!977261 ((_ is Cons!62864) (exprs!5447 (Context!9895 (t!376259 (exprs!5447 lt!2253334))))))))

(declare-fun d!1764281 () Bool)

(declare-fun c!977260 () Bool)

(assert (=> d!1764281 (= c!977260 e!3443613)))

(declare-fun res!2368430 () Bool)

(assert (=> d!1764281 (=> (not res!2368430) (not e!3443613))))

(assert (=> d!1764281 (= res!2368430 ((_ is Cons!62864) (exprs!5447 (Context!9895 (t!376259 (exprs!5447 lt!2253334))))))))

(assert (=> d!1764281 (= (derivationStepZipperUp!831 (Context!9895 (t!376259 (exprs!5447 lt!2253334))) (h!69313 s!2326)) e!3443612)))

(declare-fun b!5580876 () Bool)

(assert (=> b!5580876 (= e!3443611 ((as const (Array Context!9894 Bool)) false))))

(declare-fun b!5580877 () Bool)

(assert (=> b!5580877 (= e!3443612 ((_ map or) call!417422 (derivationStepZipperUp!831 (Context!9895 (t!376259 (exprs!5447 (Context!9895 (t!376259 (exprs!5447 lt!2253334)))))) (h!69313 s!2326))))))

(declare-fun bm!417417 () Bool)

(assert (=> bm!417417 (= call!417422 (derivationStepZipperDown!905 (h!69312 (exprs!5447 (Context!9895 (t!376259 (exprs!5447 lt!2253334))))) (Context!9895 (t!376259 (exprs!5447 (Context!9895 (t!376259 (exprs!5447 lt!2253334)))))) (h!69313 s!2326)))))

(assert (= (and d!1764281 res!2368430) b!5580873))

(assert (= (and d!1764281 c!977260) b!5580877))

(assert (= (and d!1764281 (not c!977260)) b!5580875))

(assert (= (and b!5580875 c!977261) b!5580874))

(assert (= (and b!5580875 (not c!977261)) b!5580876))

(assert (= (or b!5580877 b!5580874) bm!417417))

(declare-fun m!6562908 () Bool)

(assert (=> b!5580873 m!6562908))

(declare-fun m!6562910 () Bool)

(assert (=> b!5580877 m!6562910))

(declare-fun m!6562912 () Bool)

(assert (=> bm!417417 m!6562912))

(assert (=> b!5579935 d!1764281))

(declare-fun bs!1291085 () Bool)

(declare-fun d!1764283 () Bool)

(assert (= bs!1291085 (and d!1764283 d!1763945)))

(declare-fun lambda!299271 () Int)

(assert (=> bs!1291085 (= lambda!299271 lambda!299223)))

(declare-fun bs!1291086 () Bool)

(assert (= bs!1291086 (and d!1764283 d!1763935)))

(assert (=> bs!1291086 (= lambda!299271 lambda!299219)))

(declare-fun bs!1291087 () Bool)

(assert (= bs!1291087 (and d!1764283 d!1764215)))

(assert (=> bs!1291087 (= lambda!299271 lambda!299266)))

(declare-fun bs!1291088 () Bool)

(assert (= bs!1291088 (and d!1764283 d!1763947)))

(assert (=> bs!1291088 (= lambda!299271 lambda!299226)))

(declare-fun bs!1291089 () Bool)

(assert (= bs!1291089 (and d!1764283 d!1763903)))

(assert (=> bs!1291089 (= lambda!299271 lambda!299207)))

(declare-fun bs!1291090 () Bool)

(assert (= bs!1291090 (and d!1764283 d!1763937)))

(assert (=> bs!1291090 (= lambda!299271 lambda!299220)))

(declare-fun b!5580878 () Bool)

(declare-fun e!3443616 () Bool)

(declare-fun lt!2253456 () Regex!15563)

(assert (=> b!5580878 (= e!3443616 (isUnion!560 lt!2253456))))

(declare-fun b!5580879 () Bool)

(declare-fun e!3443617 () Bool)

(assert (=> b!5580879 (= e!3443617 e!3443616)))

(declare-fun c!977264 () Bool)

(assert (=> b!5580879 (= c!977264 (isEmpty!34671 (tail!10996 (t!376259 (unfocusZipperList!991 zl!343)))))))

(declare-fun b!5580880 () Bool)

(declare-fun e!3443618 () Regex!15563)

(assert (=> b!5580880 (= e!3443618 EmptyLang!15563)))

(declare-fun b!5580881 () Bool)

(declare-fun e!3443615 () Bool)

(assert (=> b!5580881 (= e!3443615 (isEmpty!34671 (t!376259 (t!376259 (unfocusZipperList!991 zl!343)))))))

(declare-fun e!3443619 () Bool)

(assert (=> d!1764283 e!3443619))

(declare-fun res!2368432 () Bool)

(assert (=> d!1764283 (=> (not res!2368432) (not e!3443619))))

(assert (=> d!1764283 (= res!2368432 (validRegex!7299 lt!2253456))))

(declare-fun e!3443614 () Regex!15563)

(assert (=> d!1764283 (= lt!2253456 e!3443614)))

(declare-fun c!977263 () Bool)

(assert (=> d!1764283 (= c!977263 e!3443615)))

(declare-fun res!2368431 () Bool)

(assert (=> d!1764283 (=> (not res!2368431) (not e!3443615))))

(assert (=> d!1764283 (= res!2368431 ((_ is Cons!62864) (t!376259 (unfocusZipperList!991 zl!343))))))

(assert (=> d!1764283 (forall!14732 (t!376259 (unfocusZipperList!991 zl!343)) lambda!299271)))

(assert (=> d!1764283 (= (generalisedUnion!1426 (t!376259 (unfocusZipperList!991 zl!343))) lt!2253456)))

(declare-fun b!5580882 () Bool)

(assert (=> b!5580882 (= e!3443616 (= lt!2253456 (head!11901 (t!376259 (unfocusZipperList!991 zl!343)))))))

(declare-fun b!5580883 () Bool)

(assert (=> b!5580883 (= e!3443614 e!3443618)))

(declare-fun c!977262 () Bool)

(assert (=> b!5580883 (= c!977262 ((_ is Cons!62864) (t!376259 (unfocusZipperList!991 zl!343))))))

(declare-fun b!5580884 () Bool)

(assert (=> b!5580884 (= e!3443617 (isEmptyLang!1130 lt!2253456))))

(declare-fun b!5580885 () Bool)

(assert (=> b!5580885 (= e!3443618 (Union!15563 (h!69312 (t!376259 (unfocusZipperList!991 zl!343))) (generalisedUnion!1426 (t!376259 (t!376259 (unfocusZipperList!991 zl!343))))))))

(declare-fun b!5580886 () Bool)

(assert (=> b!5580886 (= e!3443614 (h!69312 (t!376259 (unfocusZipperList!991 zl!343))))))

(declare-fun b!5580887 () Bool)

(assert (=> b!5580887 (= e!3443619 e!3443617)))

(declare-fun c!977265 () Bool)

(assert (=> b!5580887 (= c!977265 (isEmpty!34671 (t!376259 (unfocusZipperList!991 zl!343))))))

(assert (= (and d!1764283 res!2368431) b!5580881))

(assert (= (and d!1764283 c!977263) b!5580886))

(assert (= (and d!1764283 (not c!977263)) b!5580883))

(assert (= (and b!5580883 c!977262) b!5580885))

(assert (= (and b!5580883 (not c!977262)) b!5580880))

(assert (= (and d!1764283 res!2368432) b!5580887))

(assert (= (and b!5580887 c!977265) b!5580884))

(assert (= (and b!5580887 (not c!977265)) b!5580879))

(assert (= (and b!5580879 c!977264) b!5580882))

(assert (= (and b!5580879 (not c!977264)) b!5580878))

(declare-fun m!6562914 () Bool)

(assert (=> d!1764283 m!6562914))

(declare-fun m!6562916 () Bool)

(assert (=> d!1764283 m!6562916))

(declare-fun m!6562918 () Bool)

(assert (=> b!5580884 m!6562918))

(declare-fun m!6562920 () Bool)

(assert (=> b!5580885 m!6562920))

(declare-fun m!6562922 () Bool)

(assert (=> b!5580878 m!6562922))

(declare-fun m!6562924 () Bool)

(assert (=> b!5580879 m!6562924))

(assert (=> b!5580879 m!6562924))

(declare-fun m!6562926 () Bool)

(assert (=> b!5580879 m!6562926))

(declare-fun m!6562928 () Bool)

(assert (=> b!5580881 m!6562928))

(declare-fun m!6562930 () Bool)

(assert (=> b!5580882 m!6562930))

(assert (=> b!5580887 m!6562212))

(assert (=> b!5580040 d!1764283))

(declare-fun d!1764285 () Bool)

(assert (=> d!1764285 (= (isEmpty!34676 (findConcatSeparation!1986 (regOne!31638 r!7292) (regTwo!31638 r!7292) Nil!62865 s!2326 s!2326)) (not ((_ is Some!15571) (findConcatSeparation!1986 (regOne!31638 r!7292) (regTwo!31638 r!7292) Nil!62865 s!2326 s!2326))))))

(assert (=> d!1763929 d!1764285))

(declare-fun d!1764287 () Bool)

(assert (=> d!1764287 (= ($colon$colon!1628 (exprs!5447 lt!2253334) (ite (or c!977005 c!977003) (regTwo!31638 (regOne!31639 (regOne!31638 r!7292))) (regOne!31639 (regOne!31638 r!7292)))) (Cons!62864 (ite (or c!977005 c!977003) (regTwo!31638 (regOne!31639 (regOne!31638 r!7292))) (regOne!31639 (regOne!31638 r!7292))) (exprs!5447 lt!2253334)))))

(assert (=> bm!417235 d!1764287))

(declare-fun d!1764289 () Bool)

(declare-fun c!977266 () Bool)

(assert (=> d!1764289 (= c!977266 (isEmpty!34675 (t!376260 s!2326)))))

(declare-fun e!3443620 () Bool)

(assert (=> d!1764289 (= (matchZipper!1701 ((_ map or) lt!2253319 lt!2253321) (t!376260 s!2326)) e!3443620)))

(declare-fun b!5580888 () Bool)

(assert (=> b!5580888 (= e!3443620 (nullableZipper!1560 ((_ map or) lt!2253319 lt!2253321)))))

(declare-fun b!5580889 () Bool)

(assert (=> b!5580889 (= e!3443620 (matchZipper!1701 (derivationStepZipper!1662 ((_ map or) lt!2253319 lt!2253321) (head!11900 (t!376260 s!2326))) (tail!10995 (t!376260 s!2326))))))

(assert (= (and d!1764289 c!977266) b!5580888))

(assert (= (and d!1764289 (not c!977266)) b!5580889))

(assert (=> d!1764289 m!6561980))

(declare-fun m!6562932 () Bool)

(assert (=> b!5580888 m!6562932))

(assert (=> b!5580889 m!6561984))

(assert (=> b!5580889 m!6561984))

(declare-fun m!6562934 () Bool)

(assert (=> b!5580889 m!6562934))

(assert (=> b!5580889 m!6561988))

(assert (=> b!5580889 m!6562934))

(assert (=> b!5580889 m!6561988))

(declare-fun m!6562936 () Bool)

(assert (=> b!5580889 m!6562936))

(assert (=> d!1763875 d!1764289))

(assert (=> d!1763875 d!1763873))

(declare-fun d!1764291 () Bool)

(declare-fun e!3443621 () Bool)

(assert (=> d!1764291 (= (matchZipper!1701 ((_ map or) lt!2253319 lt!2253321) (t!376260 s!2326)) e!3443621)))

(declare-fun res!2368433 () Bool)

(assert (=> d!1764291 (=> res!2368433 e!3443621)))

(assert (=> d!1764291 (= res!2368433 (matchZipper!1701 lt!2253319 (t!376260 s!2326)))))

(assert (=> d!1764291 true))

(declare-fun _$48!1136 () Unit!155624)

(assert (=> d!1764291 (= (choose!42287 lt!2253319 lt!2253321 (t!376260 s!2326)) _$48!1136)))

(declare-fun b!5580890 () Bool)

(assert (=> b!5580890 (= e!3443621 (matchZipper!1701 lt!2253321 (t!376260 s!2326)))))

(assert (= (and d!1764291 (not res!2368433)) b!5580890))

(assert (=> d!1764291 m!6562004))

(assert (=> d!1764291 m!6561678))

(assert (=> b!5580890 m!6561688))

(assert (=> d!1763875 d!1764291))

(declare-fun bs!1291091 () Bool)

(declare-fun b!5580898 () Bool)

(assert (= bs!1291091 (and b!5580898 d!1763927)))

(declare-fun lambda!299272 () Int)

(assert (=> bs!1291091 (not (= lambda!299272 lambda!299215))))

(declare-fun bs!1291092 () Bool)

(assert (= bs!1291092 (and b!5580898 b!5579787)))

(assert (=> bs!1291092 (not (= lambda!299272 lambda!299204))))

(declare-fun bs!1291093 () Bool)

(assert (= bs!1291093 (and b!5580898 b!5579318)))

(assert (=> bs!1291093 (not (= lambda!299272 lambda!299168))))

(declare-fun bs!1291094 () Bool)

(assert (= bs!1291094 (and b!5580898 b!5580794)))

(assert (=> bs!1291094 (not (= lambda!299272 lambda!299268))))

(assert (=> bs!1291093 (not (= lambda!299272 lambda!299169))))

(declare-fun bs!1291095 () Bool)

(assert (= bs!1291095 (and b!5580898 d!1763923)))

(assert (=> bs!1291095 (not (= lambda!299272 lambda!299210))))

(declare-fun bs!1291096 () Bool)

(assert (= bs!1291096 (and b!5580898 b!5579789)))

(assert (=> bs!1291096 (= (and (= (reg!15892 (regOne!31639 r!7292)) (reg!15892 r!7292)) (= (regOne!31639 r!7292) r!7292)) (= lambda!299272 lambda!299203))))

(assert (=> bs!1291091 (not (= lambda!299272 lambda!299216))))

(declare-fun bs!1291097 () Bool)

(assert (= bs!1291097 (and b!5580898 b!5580796)))

(assert (=> bs!1291097 (= (and (= (reg!15892 (regOne!31639 r!7292)) (reg!15892 (regTwo!31639 r!7292))) (= (regOne!31639 r!7292) (regTwo!31639 r!7292))) (= lambda!299272 lambda!299267))))

(assert (=> b!5580898 true))

(assert (=> b!5580898 true))

(declare-fun bs!1291098 () Bool)

(declare-fun b!5580896 () Bool)

(assert (= bs!1291098 (and b!5580896 d!1763927)))

(declare-fun lambda!299273 () Int)

(assert (=> bs!1291098 (not (= lambda!299273 lambda!299215))))

(declare-fun bs!1291099 () Bool)

(assert (= bs!1291099 (and b!5580896 b!5579318)))

(assert (=> bs!1291099 (not (= lambda!299273 lambda!299168))))

(declare-fun bs!1291100 () Bool)

(assert (= bs!1291100 (and b!5580896 b!5580794)))

(assert (=> bs!1291100 (= (and (= (regOne!31638 (regOne!31639 r!7292)) (regOne!31638 (regTwo!31639 r!7292))) (= (regTwo!31638 (regOne!31639 r!7292)) (regTwo!31638 (regTwo!31639 r!7292)))) (= lambda!299273 lambda!299268))))

(assert (=> bs!1291099 (= (and (= (regOne!31638 (regOne!31639 r!7292)) (regOne!31638 r!7292)) (= (regTwo!31638 (regOne!31639 r!7292)) (regTwo!31638 r!7292))) (= lambda!299273 lambda!299169))))

(declare-fun bs!1291101 () Bool)

(assert (= bs!1291101 (and b!5580896 d!1763923)))

(assert (=> bs!1291101 (not (= lambda!299273 lambda!299210))))

(declare-fun bs!1291102 () Bool)

(assert (= bs!1291102 (and b!5580896 b!5579789)))

(assert (=> bs!1291102 (not (= lambda!299273 lambda!299203))))

(assert (=> bs!1291098 (= (and (= (regOne!31638 (regOne!31639 r!7292)) (regOne!31638 r!7292)) (= (regTwo!31638 (regOne!31639 r!7292)) (regTwo!31638 r!7292))) (= lambda!299273 lambda!299216))))

(declare-fun bs!1291103 () Bool)

(assert (= bs!1291103 (and b!5580896 b!5580796)))

(assert (=> bs!1291103 (not (= lambda!299273 lambda!299267))))

(declare-fun bs!1291104 () Bool)

(assert (= bs!1291104 (and b!5580896 b!5579787)))

(assert (=> bs!1291104 (= (and (= (regOne!31638 (regOne!31639 r!7292)) (regOne!31638 r!7292)) (= (regTwo!31638 (regOne!31639 r!7292)) (regTwo!31638 r!7292))) (= lambda!299273 lambda!299204))))

(declare-fun bs!1291105 () Bool)

(assert (= bs!1291105 (and b!5580896 b!5580898)))

(assert (=> bs!1291105 (not (= lambda!299273 lambda!299272))))

(assert (=> b!5580896 true))

(assert (=> b!5580896 true))

(declare-fun d!1764293 () Bool)

(declare-fun c!977269 () Bool)

(assert (=> d!1764293 (= c!977269 ((_ is EmptyExpr!15563) (regOne!31639 r!7292)))))

(declare-fun e!3443628 () Bool)

(assert (=> d!1764293 (= (matchRSpec!2666 (regOne!31639 r!7292) s!2326) e!3443628)))

(declare-fun b!5580891 () Bool)

(declare-fun e!3443625 () Bool)

(assert (=> b!5580891 (= e!3443625 (= s!2326 (Cons!62865 (c!976846 (regOne!31639 r!7292)) Nil!62865)))))

(declare-fun b!5580892 () Bool)

(declare-fun e!3443624 () Bool)

(declare-fun e!3443623 () Bool)

(assert (=> b!5580892 (= e!3443624 e!3443623)))

(declare-fun res!2368434 () Bool)

(assert (=> b!5580892 (= res!2368434 (matchRSpec!2666 (regOne!31639 (regOne!31639 r!7292)) s!2326))))

(assert (=> b!5580892 (=> res!2368434 e!3443623)))

(declare-fun b!5580893 () Bool)

(assert (=> b!5580893 (= e!3443623 (matchRSpec!2666 (regTwo!31639 (regOne!31639 r!7292)) s!2326))))

(declare-fun bm!417418 () Bool)

(declare-fun c!977268 () Bool)

(declare-fun call!417423 () Bool)

(assert (=> bm!417418 (= call!417423 (Exists!2663 (ite c!977268 lambda!299272 lambda!299273)))))

(declare-fun b!5580894 () Bool)

(declare-fun c!977270 () Bool)

(assert (=> b!5580894 (= c!977270 ((_ is Union!15563) (regOne!31639 r!7292)))))

(assert (=> b!5580894 (= e!3443625 e!3443624)))

(declare-fun b!5580895 () Bool)

(declare-fun call!417424 () Bool)

(assert (=> b!5580895 (= e!3443628 call!417424)))

(declare-fun e!3443626 () Bool)

(assert (=> b!5580896 (= e!3443626 call!417423)))

(declare-fun b!5580897 () Bool)

(declare-fun c!977267 () Bool)

(assert (=> b!5580897 (= c!977267 ((_ is ElementMatch!15563) (regOne!31639 r!7292)))))

(declare-fun e!3443622 () Bool)

(assert (=> b!5580897 (= e!3443622 e!3443625)))

(declare-fun bm!417419 () Bool)

(assert (=> bm!417419 (= call!417424 (isEmpty!34675 s!2326))))

(declare-fun e!3443627 () Bool)

(assert (=> b!5580898 (= e!3443627 call!417423)))

(declare-fun b!5580899 () Bool)

(declare-fun res!2368435 () Bool)

(assert (=> b!5580899 (=> res!2368435 e!3443627)))

(assert (=> b!5580899 (= res!2368435 call!417424)))

(assert (=> b!5580899 (= e!3443626 e!3443627)))

(declare-fun b!5580900 () Bool)

(assert (=> b!5580900 (= e!3443624 e!3443626)))

(assert (=> b!5580900 (= c!977268 ((_ is Star!15563) (regOne!31639 r!7292)))))

(declare-fun b!5580901 () Bool)

(assert (=> b!5580901 (= e!3443628 e!3443622)))

(declare-fun res!2368436 () Bool)

(assert (=> b!5580901 (= res!2368436 (not ((_ is EmptyLang!15563) (regOne!31639 r!7292))))))

(assert (=> b!5580901 (=> (not res!2368436) (not e!3443622))))

(assert (= (and d!1764293 c!977269) b!5580895))

(assert (= (and d!1764293 (not c!977269)) b!5580901))

(assert (= (and b!5580901 res!2368436) b!5580897))

(assert (= (and b!5580897 c!977267) b!5580891))

(assert (= (and b!5580897 (not c!977267)) b!5580894))

(assert (= (and b!5580894 c!977270) b!5580892))

(assert (= (and b!5580894 (not c!977270)) b!5580900))

(assert (= (and b!5580892 (not res!2368434)) b!5580893))

(assert (= (and b!5580900 c!977268) b!5580899))

(assert (= (and b!5580900 (not c!977268)) b!5580896))

(assert (= (and b!5580899 (not res!2368435)) b!5580898))

(assert (= (or b!5580898 b!5580896) bm!417418))

(assert (= (or b!5580895 b!5580899) bm!417419))

(declare-fun m!6562938 () Bool)

(assert (=> b!5580892 m!6562938))

(declare-fun m!6562940 () Bool)

(assert (=> b!5580893 m!6562940))

(declare-fun m!6562942 () Bool)

(assert (=> bm!417418 m!6562942))

(assert (=> bm!417419 m!6562028))

(assert (=> b!5579783 d!1764293))

(declare-fun d!1764295 () Bool)

(declare-fun c!977271 () Bool)

(assert (=> d!1764295 (= c!977271 (isEmpty!34675 (tail!10995 (t!376260 s!2326))))))

(declare-fun e!3443629 () Bool)

(assert (=> d!1764295 (= (matchZipper!1701 (derivationStepZipper!1662 lt!2253324 (head!11900 (t!376260 s!2326))) (tail!10995 (t!376260 s!2326))) e!3443629)))

(declare-fun b!5580902 () Bool)

(assert (=> b!5580902 (= e!3443629 (nullableZipper!1560 (derivationStepZipper!1662 lt!2253324 (head!11900 (t!376260 s!2326)))))))

(declare-fun b!5580903 () Bool)

(assert (=> b!5580903 (= e!3443629 (matchZipper!1701 (derivationStepZipper!1662 (derivationStepZipper!1662 lt!2253324 (head!11900 (t!376260 s!2326))) (head!11900 (tail!10995 (t!376260 s!2326)))) (tail!10995 (tail!10995 (t!376260 s!2326)))))))

(assert (= (and d!1764295 c!977271) b!5580902))

(assert (= (and d!1764295 (not c!977271)) b!5580903))

(assert (=> d!1764295 m!6561988))

(assert (=> d!1764295 m!6562762))

(assert (=> b!5580902 m!6561994))

(declare-fun m!6562944 () Bool)

(assert (=> b!5580902 m!6562944))

(assert (=> b!5580903 m!6561988))

(assert (=> b!5580903 m!6562766))

(assert (=> b!5580903 m!6561994))

(assert (=> b!5580903 m!6562766))

(declare-fun m!6562946 () Bool)

(assert (=> b!5580903 m!6562946))

(assert (=> b!5580903 m!6561988))

(assert (=> b!5580903 m!6562770))

(assert (=> b!5580903 m!6562946))

(assert (=> b!5580903 m!6562770))

(declare-fun m!6562948 () Bool)

(assert (=> b!5580903 m!6562948))

(assert (=> b!5579729 d!1764295))

(declare-fun bs!1291106 () Bool)

(declare-fun d!1764297 () Bool)

(assert (= bs!1291106 (and d!1764297 b!5579326)))

(declare-fun lambda!299274 () Int)

(assert (=> bs!1291106 (= (= (head!11900 (t!376260 s!2326)) (h!69313 s!2326)) (= lambda!299274 lambda!299170))))

(declare-fun bs!1291107 () Bool)

(assert (= bs!1291107 (and d!1764297 d!1764209)))

(assert (=> bs!1291107 (= lambda!299274 lambda!299265)))

(declare-fun bs!1291108 () Bool)

(assert (= bs!1291108 (and d!1764297 d!1764255)))

(assert (=> bs!1291108 (= lambda!299274 lambda!299269)))

(declare-fun bs!1291109 () Bool)

(assert (= bs!1291109 (and d!1764297 d!1764273)))

(assert (=> bs!1291109 (= lambda!299274 lambda!299270)))

(assert (=> d!1764297 true))

(assert (=> d!1764297 (= (derivationStepZipper!1662 lt!2253324 (head!11900 (t!376260 s!2326))) (flatMap!1176 lt!2253324 lambda!299274))))

(declare-fun bs!1291110 () Bool)

(assert (= bs!1291110 d!1764297))

(declare-fun m!6562950 () Bool)

(assert (=> bs!1291110 m!6562950))

(assert (=> b!5579729 d!1764297))

(assert (=> b!5579729 d!1764211))

(assert (=> b!5579729 d!1764213))

(assert (=> b!5579912 d!1763949))

(declare-fun d!1764299 () Bool)

(assert (=> d!1764299 (= (nullable!5595 (h!69312 (exprs!5447 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343)))))))) (nullableFct!1707 (h!69312 (exprs!5447 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343)))))))))))

(declare-fun bs!1291111 () Bool)

(assert (= bs!1291111 d!1764299))

(declare-fun m!6562952 () Bool)

(assert (=> bs!1291111 m!6562952))

(assert (=> b!5579926 d!1764299))

(declare-fun d!1764301 () Bool)

(assert (=> d!1764301 (= (nullable!5595 (h!69312 (exprs!5447 lt!2253334))) (nullableFct!1707 (h!69312 (exprs!5447 lt!2253334))))))

(declare-fun bs!1291112 () Bool)

(assert (= bs!1291112 d!1764301))

(declare-fun m!6562954 () Bool)

(assert (=> bs!1291112 m!6562954))

(assert (=> b!5579931 d!1764301))

(declare-fun d!1764303 () Bool)

(assert (=> d!1764303 (= (isEmpty!34671 (t!376259 (unfocusZipperList!991 zl!343))) ((_ is Nil!62864) (t!376259 (unfocusZipperList!991 zl!343))))))

(assert (=> b!5580036 d!1764303))

(declare-fun b!5580904 () Bool)

(declare-fun e!3443634 () (InoxSet Context!9894))

(declare-fun call!417430 () (InoxSet Context!9894))

(declare-fun call!417427 () (InoxSet Context!9894))

(assert (=> b!5580904 (= e!3443634 ((_ map or) call!417430 call!417427))))

(declare-fun d!1764305 () Bool)

(declare-fun c!977275 () Bool)

(assert (=> d!1764305 (= c!977275 (and ((_ is ElementMatch!15563) (h!69312 (exprs!5447 lt!2253322))) (= (c!976846 (h!69312 (exprs!5447 lt!2253322))) (h!69313 s!2326))))))

(declare-fun e!3443633 () (InoxSet Context!9894))

(assert (=> d!1764305 (= (derivationStepZipperDown!905 (h!69312 (exprs!5447 lt!2253322)) (Context!9895 (t!376259 (exprs!5447 lt!2253322))) (h!69313 s!2326)) e!3443633)))

(declare-fun bm!417420 () Bool)

(declare-fun call!417425 () (InoxSet Context!9894))

(declare-fun call!417428 () (InoxSet Context!9894))

(assert (=> bm!417420 (= call!417425 call!417428)))

(declare-fun c!977274 () Bool)

(declare-fun c!977276 () Bool)

(declare-fun bm!417421 () Bool)

(declare-fun call!417429 () List!62988)

(assert (=> bm!417421 (= call!417429 ($colon$colon!1628 (exprs!5447 (Context!9895 (t!376259 (exprs!5447 lt!2253322)))) (ite (or c!977276 c!977274) (regTwo!31638 (h!69312 (exprs!5447 lt!2253322))) (h!69312 (exprs!5447 lt!2253322)))))))

(declare-fun b!5580905 () Bool)

(declare-fun c!977273 () Bool)

(assert (=> b!5580905 (= c!977273 ((_ is Star!15563) (h!69312 (exprs!5447 lt!2253322))))))

(declare-fun e!3443632 () (InoxSet Context!9894))

(declare-fun e!3443635 () (InoxSet Context!9894))

(assert (=> b!5580905 (= e!3443632 e!3443635)))

(declare-fun bm!417422 () Bool)

(assert (=> bm!417422 (= call!417428 call!417430)))

(declare-fun c!977272 () Bool)

(declare-fun bm!417423 () Bool)

(assert (=> bm!417423 (= call!417427 (derivationStepZipperDown!905 (ite c!977272 (regTwo!31639 (h!69312 (exprs!5447 lt!2253322))) (regOne!31638 (h!69312 (exprs!5447 lt!2253322)))) (ite c!977272 (Context!9895 (t!376259 (exprs!5447 lt!2253322))) (Context!9895 call!417429)) (h!69313 s!2326)))))

(declare-fun b!5580906 () Bool)

(declare-fun e!3443630 () Bool)

(assert (=> b!5580906 (= c!977276 e!3443630)))

(declare-fun res!2368437 () Bool)

(assert (=> b!5580906 (=> (not res!2368437) (not e!3443630))))

(assert (=> b!5580906 (= res!2368437 ((_ is Concat!24408) (h!69312 (exprs!5447 lt!2253322))))))

(declare-fun e!3443631 () (InoxSet Context!9894))

(assert (=> b!5580906 (= e!3443634 e!3443631)))

(declare-fun b!5580907 () Bool)

(assert (=> b!5580907 (= e!3443631 e!3443632)))

(assert (=> b!5580907 (= c!977274 ((_ is Concat!24408) (h!69312 (exprs!5447 lt!2253322))))))

(declare-fun b!5580908 () Bool)

(assert (=> b!5580908 (= e!3443633 (store ((as const (Array Context!9894 Bool)) false) (Context!9895 (t!376259 (exprs!5447 lt!2253322))) true))))

(declare-fun b!5580909 () Bool)

(assert (=> b!5580909 (= e!3443632 call!417425)))

(declare-fun b!5580910 () Bool)

(assert (=> b!5580910 (= e!3443630 (nullable!5595 (regOne!31638 (h!69312 (exprs!5447 lt!2253322)))))))

(declare-fun b!5580911 () Bool)

(assert (=> b!5580911 (= e!3443633 e!3443634)))

(assert (=> b!5580911 (= c!977272 ((_ is Union!15563) (h!69312 (exprs!5447 lt!2253322))))))

(declare-fun b!5580912 () Bool)

(assert (=> b!5580912 (= e!3443631 ((_ map or) call!417427 call!417428))))

(declare-fun bm!417424 () Bool)

(declare-fun call!417426 () List!62988)

(assert (=> bm!417424 (= call!417426 call!417429)))

(declare-fun bm!417425 () Bool)

(assert (=> bm!417425 (= call!417430 (derivationStepZipperDown!905 (ite c!977272 (regOne!31639 (h!69312 (exprs!5447 lt!2253322))) (ite c!977276 (regTwo!31638 (h!69312 (exprs!5447 lt!2253322))) (ite c!977274 (regOne!31638 (h!69312 (exprs!5447 lt!2253322))) (reg!15892 (h!69312 (exprs!5447 lt!2253322)))))) (ite (or c!977272 c!977276) (Context!9895 (t!376259 (exprs!5447 lt!2253322))) (Context!9895 call!417426)) (h!69313 s!2326)))))

(declare-fun b!5580913 () Bool)

(assert (=> b!5580913 (= e!3443635 call!417425)))

(declare-fun b!5580914 () Bool)

(assert (=> b!5580914 (= e!3443635 ((as const (Array Context!9894 Bool)) false))))

(assert (= (and d!1764305 c!977275) b!5580908))

(assert (= (and d!1764305 (not c!977275)) b!5580911))

(assert (= (and b!5580911 c!977272) b!5580904))

(assert (= (and b!5580911 (not c!977272)) b!5580906))

(assert (= (and b!5580906 res!2368437) b!5580910))

(assert (= (and b!5580906 c!977276) b!5580912))

(assert (= (and b!5580906 (not c!977276)) b!5580907))

(assert (= (and b!5580907 c!977274) b!5580909))

(assert (= (and b!5580907 (not c!977274)) b!5580905))

(assert (= (and b!5580905 c!977273) b!5580913))

(assert (= (and b!5580905 (not c!977273)) b!5580914))

(assert (= (or b!5580909 b!5580913) bm!417424))

(assert (= (or b!5580909 b!5580913) bm!417420))

(assert (= (or b!5580912 bm!417424) bm!417421))

(assert (= (or b!5580912 bm!417420) bm!417422))

(assert (= (or b!5580904 b!5580912) bm!417423))

(assert (= (or b!5580904 bm!417422) bm!417425))

(declare-fun m!6562956 () Bool)

(assert (=> b!5580910 m!6562956))

(declare-fun m!6562958 () Bool)

(assert (=> bm!417421 m!6562958))

(declare-fun m!6562960 () Bool)

(assert (=> b!5580908 m!6562960))

(declare-fun m!6562962 () Bool)

(assert (=> bm!417423 m!6562962))

(declare-fun m!6562964 () Bool)

(assert (=> bm!417425 m!6562964))

(assert (=> bm!417206 d!1764305))

(declare-fun d!1764307 () Bool)

(assert (=> d!1764307 (= (isEmptyExpr!1120 lt!2253397) ((_ is EmptyExpr!15563) lt!2253397))))

(assert (=> b!5579908 d!1764307))

(declare-fun d!1764309 () Bool)

(declare-fun res!2368438 () Bool)

(declare-fun e!3443636 () Bool)

(assert (=> d!1764309 (=> res!2368438 e!3443636)))

(assert (=> d!1764309 (= res!2368438 ((_ is Nil!62864) (exprs!5447 (h!69314 zl!343))))))

(assert (=> d!1764309 (= (forall!14732 (exprs!5447 (h!69314 zl!343)) lambda!299220) e!3443636)))

(declare-fun b!5580915 () Bool)

(declare-fun e!3443637 () Bool)

(assert (=> b!5580915 (= e!3443636 e!3443637)))

(declare-fun res!2368439 () Bool)

(assert (=> b!5580915 (=> (not res!2368439) (not e!3443637))))

(assert (=> b!5580915 (= res!2368439 (dynLambda!24587 lambda!299220 (h!69312 (exprs!5447 (h!69314 zl!343)))))))

(declare-fun b!5580916 () Bool)

(assert (=> b!5580916 (= e!3443637 (forall!14732 (t!376259 (exprs!5447 (h!69314 zl!343))) lambda!299220))))

(assert (= (and d!1764309 (not res!2368438)) b!5580915))

(assert (= (and b!5580915 res!2368439) b!5580916))

(declare-fun b_lambda!211527 () Bool)

(assert (=> (not b_lambda!211527) (not b!5580915)))

(declare-fun m!6562966 () Bool)

(assert (=> b!5580915 m!6562966))

(declare-fun m!6562968 () Bool)

(assert (=> b!5580916 m!6562968))

(assert (=> d!1763937 d!1764309))

(assert (=> bs!1290884 d!1763915))

(declare-fun b!5580917 () Bool)

(declare-fun res!2368445 () Bool)

(declare-fun e!3443641 () Bool)

(assert (=> b!5580917 (=> res!2368445 e!3443641)))

(assert (=> b!5580917 (= res!2368445 (not (isEmpty!34675 (tail!10995 (_2!35963 (get!21644 lt!2253406))))))))

(declare-fun b!5580918 () Bool)

(declare-fun res!2368446 () Bool)

(declare-fun e!3443640 () Bool)

(assert (=> b!5580918 (=> (not res!2368446) (not e!3443640))))

(assert (=> b!5580918 (= res!2368446 (isEmpty!34675 (tail!10995 (_2!35963 (get!21644 lt!2253406)))))))

(declare-fun b!5580919 () Bool)

(declare-fun e!3443642 () Bool)

(declare-fun lt!2253457 () Bool)

(declare-fun call!417431 () Bool)

(assert (=> b!5580919 (= e!3443642 (= lt!2253457 call!417431))))

(declare-fun b!5580920 () Bool)

(declare-fun e!3443638 () Bool)

(assert (=> b!5580920 (= e!3443638 (not lt!2253457))))

(declare-fun b!5580921 () Bool)

(declare-fun res!2368442 () Bool)

(assert (=> b!5580921 (=> (not res!2368442) (not e!3443640))))

(assert (=> b!5580921 (= res!2368442 (not call!417431))))

(declare-fun b!5580922 () Bool)

(declare-fun e!3443639 () Bool)

(assert (=> b!5580922 (= e!3443639 (matchR!7748 (derivativeStep!4414 (regTwo!31638 r!7292) (head!11900 (_2!35963 (get!21644 lt!2253406)))) (tail!10995 (_2!35963 (get!21644 lt!2253406)))))))

(declare-fun b!5580923 () Bool)

(assert (=> b!5580923 (= e!3443641 (not (= (head!11900 (_2!35963 (get!21644 lt!2253406))) (c!976846 (regTwo!31638 r!7292)))))))

(declare-fun bm!417426 () Bool)

(assert (=> bm!417426 (= call!417431 (isEmpty!34675 (_2!35963 (get!21644 lt!2253406))))))

(declare-fun b!5580924 () Bool)

(declare-fun e!3443644 () Bool)

(assert (=> b!5580924 (= e!3443644 e!3443641)))

(declare-fun res!2368441 () Bool)

(assert (=> b!5580924 (=> res!2368441 e!3443641)))

(assert (=> b!5580924 (= res!2368441 call!417431)))

(declare-fun b!5580925 () Bool)

(assert (=> b!5580925 (= e!3443640 (= (head!11900 (_2!35963 (get!21644 lt!2253406))) (c!976846 (regTwo!31638 r!7292))))))

(declare-fun b!5580926 () Bool)

(declare-fun res!2368444 () Bool)

(declare-fun e!3443643 () Bool)

(assert (=> b!5580926 (=> res!2368444 e!3443643)))

(assert (=> b!5580926 (= res!2368444 (not ((_ is ElementMatch!15563) (regTwo!31638 r!7292))))))

(assert (=> b!5580926 (= e!3443638 e!3443643)))

(declare-fun b!5580927 () Bool)

(assert (=> b!5580927 (= e!3443639 (nullable!5595 (regTwo!31638 r!7292)))))

(declare-fun d!1764311 () Bool)

(assert (=> d!1764311 e!3443642))

(declare-fun c!977279 () Bool)

(assert (=> d!1764311 (= c!977279 ((_ is EmptyExpr!15563) (regTwo!31638 r!7292)))))

(assert (=> d!1764311 (= lt!2253457 e!3443639)))

(declare-fun c!977278 () Bool)

(assert (=> d!1764311 (= c!977278 (isEmpty!34675 (_2!35963 (get!21644 lt!2253406))))))

(assert (=> d!1764311 (validRegex!7299 (regTwo!31638 r!7292))))

(assert (=> d!1764311 (= (matchR!7748 (regTwo!31638 r!7292) (_2!35963 (get!21644 lt!2253406))) lt!2253457)))

(declare-fun b!5580928 () Bool)

(assert (=> b!5580928 (= e!3443642 e!3443638)))

(declare-fun c!977277 () Bool)

(assert (=> b!5580928 (= c!977277 ((_ is EmptyLang!15563) (regTwo!31638 r!7292)))))

(declare-fun b!5580929 () Bool)

(assert (=> b!5580929 (= e!3443643 e!3443644)))

(declare-fun res!2368443 () Bool)

(assert (=> b!5580929 (=> (not res!2368443) (not e!3443644))))

(assert (=> b!5580929 (= res!2368443 (not lt!2253457))))

(declare-fun b!5580930 () Bool)

(declare-fun res!2368440 () Bool)

(assert (=> b!5580930 (=> res!2368440 e!3443643)))

(assert (=> b!5580930 (= res!2368440 e!3443640)))

(declare-fun res!2368447 () Bool)

(assert (=> b!5580930 (=> (not res!2368447) (not e!3443640))))

(assert (=> b!5580930 (= res!2368447 lt!2253457)))

(assert (= (and d!1764311 c!977278) b!5580927))

(assert (= (and d!1764311 (not c!977278)) b!5580922))

(assert (= (and d!1764311 c!977279) b!5580919))

(assert (= (and d!1764311 (not c!977279)) b!5580928))

(assert (= (and b!5580928 c!977277) b!5580920))

(assert (= (and b!5580928 (not c!977277)) b!5580926))

(assert (= (and b!5580926 (not res!2368444)) b!5580930))

(assert (= (and b!5580930 res!2368447) b!5580921))

(assert (= (and b!5580921 res!2368442) b!5580918))

(assert (= (and b!5580918 res!2368446) b!5580925))

(assert (= (and b!5580930 (not res!2368440)) b!5580929))

(assert (= (and b!5580929 res!2368443) b!5580924))

(assert (= (and b!5580924 (not res!2368441)) b!5580917))

(assert (= (and b!5580917 (not res!2368445)) b!5580923))

(assert (= (or b!5580919 b!5580921 b!5580924) bm!417426))

(declare-fun m!6562970 () Bool)

(assert (=> b!5580923 m!6562970))

(assert (=> b!5580927 m!6562870))

(declare-fun m!6562972 () Bool)

(assert (=> b!5580917 m!6562972))

(assert (=> b!5580917 m!6562972))

(declare-fun m!6562974 () Bool)

(assert (=> b!5580917 m!6562974))

(declare-fun m!6562976 () Bool)

(assert (=> d!1764311 m!6562976))

(assert (=> d!1764311 m!6562872))

(assert (=> bm!417426 m!6562976))

(assert (=> b!5580925 m!6562970))

(assert (=> b!5580922 m!6562970))

(assert (=> b!5580922 m!6562970))

(declare-fun m!6562978 () Bool)

(assert (=> b!5580922 m!6562978))

(assert (=> b!5580922 m!6562972))

(assert (=> b!5580922 m!6562978))

(assert (=> b!5580922 m!6562972))

(declare-fun m!6562980 () Bool)

(assert (=> b!5580922 m!6562980))

(assert (=> b!5580918 m!6562972))

(assert (=> b!5580918 m!6562972))

(assert (=> b!5580918 m!6562974))

(assert (=> b!5579961 d!1764311))

(declare-fun d!1764313 () Bool)

(assert (=> d!1764313 (= (get!21644 lt!2253406) (v!51612 lt!2253406))))

(assert (=> b!5579961 d!1764313))

(assert (=> d!1763869 d!1764231))

(declare-fun d!1764315 () Bool)

(assert (=> d!1764315 true))

(declare-fun setRes!37145 () Bool)

(assert (=> d!1764315 setRes!37145))

(declare-fun condSetEmpty!37145 () Bool)

(declare-fun res!2368450 () (InoxSet Context!9894))

(assert (=> d!1764315 (= condSetEmpty!37145 (= res!2368450 ((as const (Array Context!9894 Bool)) false)))))

(assert (=> d!1764315 (= (choose!42288 z!1189 lambda!299170) res!2368450)))

(declare-fun setIsEmpty!37145 () Bool)

(assert (=> setIsEmpty!37145 setRes!37145))

(declare-fun e!3443647 () Bool)

(declare-fun setElem!37145 () Context!9894)

(declare-fun tp!1544185 () Bool)

(declare-fun setNonEmpty!37145 () Bool)

(assert (=> setNonEmpty!37145 (= setRes!37145 (and tp!1544185 (inv!82154 setElem!37145) e!3443647))))

(declare-fun setRest!37145 () (InoxSet Context!9894))

(assert (=> setNonEmpty!37145 (= res!2368450 ((_ map or) (store ((as const (Array Context!9894 Bool)) false) setElem!37145 true) setRest!37145))))

(declare-fun b!5580933 () Bool)

(declare-fun tp!1544184 () Bool)

(assert (=> b!5580933 (= e!3443647 tp!1544184)))

(assert (= (and d!1764315 condSetEmpty!37145) setIsEmpty!37145))

(assert (= (and d!1764315 (not condSetEmpty!37145)) setNonEmpty!37145))

(assert (= setNonEmpty!37145 b!5580933))

(declare-fun m!6562982 () Bool)

(assert (=> setNonEmpty!37145 m!6562982))

(assert (=> d!1763913 d!1764315))

(declare-fun d!1764317 () Bool)

(assert (=> d!1764317 true))

(declare-fun setRes!37146 () Bool)

(assert (=> d!1764317 setRes!37146))

(declare-fun condSetEmpty!37146 () Bool)

(declare-fun res!2368451 () (InoxSet Context!9894))

(assert (=> d!1764317 (= condSetEmpty!37146 (= res!2368451 ((as const (Array Context!9894 Bool)) false)))))

(assert (=> d!1764317 (= (choose!42288 lt!2253320 lambda!299170) res!2368451)))

(declare-fun setIsEmpty!37146 () Bool)

(assert (=> setIsEmpty!37146 setRes!37146))

(declare-fun e!3443648 () Bool)

(declare-fun setElem!37146 () Context!9894)

(declare-fun setNonEmpty!37146 () Bool)

(declare-fun tp!1544187 () Bool)

(assert (=> setNonEmpty!37146 (= setRes!37146 (and tp!1544187 (inv!82154 setElem!37146) e!3443648))))

(declare-fun setRest!37146 () (InoxSet Context!9894))

(assert (=> setNonEmpty!37146 (= res!2368451 ((_ map or) (store ((as const (Array Context!9894 Bool)) false) setElem!37146 true) setRest!37146))))

(declare-fun b!5580934 () Bool)

(declare-fun tp!1544186 () Bool)

(assert (=> b!5580934 (= e!3443648 tp!1544186)))

(assert (= (and d!1764317 condSetEmpty!37146) setIsEmpty!37146))

(assert (= (and d!1764317 (not condSetEmpty!37146)) setNonEmpty!37146))

(assert (= setNonEmpty!37146 b!5580934))

(declare-fun m!6562984 () Bool)

(assert (=> setNonEmpty!37146 m!6562984))

(assert (=> d!1763879 d!1764317))

(declare-fun d!1764319 () Bool)

(declare-fun lambda!299277 () Int)

(declare-fun exists!2161 ((InoxSet Context!9894) Int) Bool)

(assert (=> d!1764319 (= (nullableZipper!1560 lt!2253319) (exists!2161 lt!2253319 lambda!299277))))

(declare-fun bs!1291113 () Bool)

(assert (= bs!1291113 d!1764319))

(declare-fun m!6562986 () Bool)

(assert (=> bs!1291113 m!6562986))

(assert (=> b!5579730 d!1764319))

(declare-fun b!5580935 () Bool)

(declare-fun e!3443655 () Bool)

(declare-fun e!3443649 () Bool)

(assert (=> b!5580935 (= e!3443655 e!3443649)))

(declare-fun res!2368454 () Bool)

(assert (=> b!5580935 (= res!2368454 (not (nullable!5595 (reg!15892 (ite c!977042 (reg!15892 r!7292) (ite c!977041 (regTwo!31639 r!7292) (regTwo!31638 r!7292)))))))))

(assert (=> b!5580935 (=> (not res!2368454) (not e!3443649))))

(declare-fun bm!417427 () Bool)

(declare-fun call!417434 () Bool)

(declare-fun call!417433 () Bool)

(assert (=> bm!417427 (= call!417434 call!417433)))

(declare-fun b!5580936 () Bool)

(declare-fun e!3443650 () Bool)

(declare-fun e!3443654 () Bool)

(assert (=> b!5580936 (= e!3443650 e!3443654)))

(declare-fun res!2368455 () Bool)

(assert (=> b!5580936 (=> (not res!2368455) (not e!3443654))))

(declare-fun call!417432 () Bool)

(assert (=> b!5580936 (= res!2368455 call!417432)))

(declare-fun b!5580937 () Bool)

(declare-fun res!2368452 () Bool)

(declare-fun e!3443653 () Bool)

(assert (=> b!5580937 (=> (not res!2368452) (not e!3443653))))

(assert (=> b!5580937 (= res!2368452 call!417432)))

(declare-fun e!3443651 () Bool)

(assert (=> b!5580937 (= e!3443651 e!3443653)))

(declare-fun b!5580938 () Bool)

(assert (=> b!5580938 (= e!3443655 e!3443651)))

(declare-fun c!977282 () Bool)

(assert (=> b!5580938 (= c!977282 ((_ is Union!15563) (ite c!977042 (reg!15892 r!7292) (ite c!977041 (regTwo!31639 r!7292) (regTwo!31638 r!7292)))))))

(declare-fun b!5580939 () Bool)

(assert (=> b!5580939 (= e!3443654 call!417434)))

(declare-fun b!5580940 () Bool)

(assert (=> b!5580940 (= e!3443649 call!417433)))

(declare-fun b!5580941 () Bool)

(declare-fun e!3443652 () Bool)

(assert (=> b!5580941 (= e!3443652 e!3443655)))

(declare-fun c!977283 () Bool)

(assert (=> b!5580941 (= c!977283 ((_ is Star!15563) (ite c!977042 (reg!15892 r!7292) (ite c!977041 (regTwo!31639 r!7292) (regTwo!31638 r!7292)))))))

(declare-fun bm!417429 () Bool)

(assert (=> bm!417429 (= call!417432 (validRegex!7299 (ite c!977282 (regOne!31639 (ite c!977042 (reg!15892 r!7292) (ite c!977041 (regTwo!31639 r!7292) (regTwo!31638 r!7292)))) (regOne!31638 (ite c!977042 (reg!15892 r!7292) (ite c!977041 (regTwo!31639 r!7292) (regTwo!31638 r!7292)))))))))

(declare-fun b!5580942 () Bool)

(assert (=> b!5580942 (= e!3443653 call!417434)))

(declare-fun b!5580943 () Bool)

(declare-fun res!2368453 () Bool)

(assert (=> b!5580943 (=> res!2368453 e!3443650)))

(assert (=> b!5580943 (= res!2368453 (not ((_ is Concat!24408) (ite c!977042 (reg!15892 r!7292) (ite c!977041 (regTwo!31639 r!7292) (regTwo!31638 r!7292))))))))

(assert (=> b!5580943 (= e!3443651 e!3443650)))

(declare-fun d!1764321 () Bool)

(declare-fun res!2368456 () Bool)

(assert (=> d!1764321 (=> res!2368456 e!3443652)))

(assert (=> d!1764321 (= res!2368456 ((_ is ElementMatch!15563) (ite c!977042 (reg!15892 r!7292) (ite c!977041 (regTwo!31639 r!7292) (regTwo!31638 r!7292)))))))

(assert (=> d!1764321 (= (validRegex!7299 (ite c!977042 (reg!15892 r!7292) (ite c!977041 (regTwo!31639 r!7292) (regTwo!31638 r!7292)))) e!3443652)))

(declare-fun bm!417428 () Bool)

(assert (=> bm!417428 (= call!417433 (validRegex!7299 (ite c!977283 (reg!15892 (ite c!977042 (reg!15892 r!7292) (ite c!977041 (regTwo!31639 r!7292) (regTwo!31638 r!7292)))) (ite c!977282 (regTwo!31639 (ite c!977042 (reg!15892 r!7292) (ite c!977041 (regTwo!31639 r!7292) (regTwo!31638 r!7292)))) (regTwo!31638 (ite c!977042 (reg!15892 r!7292) (ite c!977041 (regTwo!31639 r!7292) (regTwo!31638 r!7292))))))))))

(assert (= (and d!1764321 (not res!2368456)) b!5580941))

(assert (= (and b!5580941 c!977283) b!5580935))

(assert (= (and b!5580941 (not c!977283)) b!5580938))

(assert (= (and b!5580935 res!2368454) b!5580940))

(assert (= (and b!5580938 c!977282) b!5580937))

(assert (= (and b!5580938 (not c!977282)) b!5580943))

(assert (= (and b!5580937 res!2368452) b!5580942))

(assert (= (and b!5580943 (not res!2368453)) b!5580936))

(assert (= (and b!5580936 res!2368455) b!5580939))

(assert (= (or b!5580942 b!5580939) bm!417427))

(assert (= (or b!5580937 b!5580936) bm!417429))

(assert (= (or b!5580940 bm!417427) bm!417428))

(declare-fun m!6562988 () Bool)

(assert (=> b!5580935 m!6562988))

(declare-fun m!6562990 () Bool)

(assert (=> bm!417429 m!6562990))

(declare-fun m!6562992 () Bool)

(assert (=> bm!417428 m!6562992))

(assert (=> bm!417256 d!1764321))

(declare-fun bs!1291114 () Bool)

(declare-fun d!1764323 () Bool)

(assert (= bs!1291114 (and d!1764323 d!1763945)))

(declare-fun lambda!299278 () Int)

(assert (=> bs!1291114 (= lambda!299278 lambda!299223)))

(declare-fun bs!1291115 () Bool)

(assert (= bs!1291115 (and d!1764323 d!1763935)))

(assert (=> bs!1291115 (= lambda!299278 lambda!299219)))

(declare-fun bs!1291116 () Bool)

(assert (= bs!1291116 (and d!1764323 d!1764215)))

(assert (=> bs!1291116 (= lambda!299278 lambda!299266)))

(declare-fun bs!1291117 () Bool)

(assert (= bs!1291117 (and d!1764323 d!1763947)))

(assert (=> bs!1291117 (= lambda!299278 lambda!299226)))

(declare-fun bs!1291118 () Bool)

(assert (= bs!1291118 (and d!1764323 d!1764283)))

(assert (=> bs!1291118 (= lambda!299278 lambda!299271)))

(declare-fun bs!1291119 () Bool)

(assert (= bs!1291119 (and d!1764323 d!1763903)))

(assert (=> bs!1291119 (= lambda!299278 lambda!299207)))

(declare-fun bs!1291120 () Bool)

(assert (= bs!1291120 (and d!1764323 d!1763937)))

(assert (=> bs!1291120 (= lambda!299278 lambda!299220)))

(assert (=> d!1764323 (= (inv!82154 setElem!37137) (forall!14732 (exprs!5447 setElem!37137) lambda!299278))))

(declare-fun bs!1291121 () Bool)

(assert (= bs!1291121 d!1764323))

(declare-fun m!6562994 () Bool)

(assert (=> bs!1291121 m!6562994))

(assert (=> setNonEmpty!37137 d!1764323))

(declare-fun b!5580944 () Bool)

(declare-fun e!3443658 () Bool)

(assert (=> b!5580944 (= e!3443658 (nullable!5595 (h!69312 (exprs!5447 (Context!9895 (t!376259 (exprs!5447 (h!69314 zl!343))))))))))

(declare-fun b!5580945 () Bool)

(declare-fun e!3443656 () (InoxSet Context!9894))

(declare-fun call!417435 () (InoxSet Context!9894))

(assert (=> b!5580945 (= e!3443656 call!417435)))

(declare-fun b!5580946 () Bool)

(declare-fun e!3443657 () (InoxSet Context!9894))

(assert (=> b!5580946 (= e!3443657 e!3443656)))

(declare-fun c!977285 () Bool)

(assert (=> b!5580946 (= c!977285 ((_ is Cons!62864) (exprs!5447 (Context!9895 (t!376259 (exprs!5447 (h!69314 zl!343)))))))))

(declare-fun d!1764325 () Bool)

(declare-fun c!977284 () Bool)

(assert (=> d!1764325 (= c!977284 e!3443658)))

(declare-fun res!2368457 () Bool)

(assert (=> d!1764325 (=> (not res!2368457) (not e!3443658))))

(assert (=> d!1764325 (= res!2368457 ((_ is Cons!62864) (exprs!5447 (Context!9895 (t!376259 (exprs!5447 (h!69314 zl!343)))))))))

(assert (=> d!1764325 (= (derivationStepZipperUp!831 (Context!9895 (t!376259 (exprs!5447 (h!69314 zl!343)))) (h!69313 s!2326)) e!3443657)))

(declare-fun b!5580947 () Bool)

(assert (=> b!5580947 (= e!3443656 ((as const (Array Context!9894 Bool)) false))))

(declare-fun b!5580948 () Bool)

(assert (=> b!5580948 (= e!3443657 ((_ map or) call!417435 (derivationStepZipperUp!831 (Context!9895 (t!376259 (exprs!5447 (Context!9895 (t!376259 (exprs!5447 (h!69314 zl!343))))))) (h!69313 s!2326))))))

(declare-fun bm!417430 () Bool)

(assert (=> bm!417430 (= call!417435 (derivationStepZipperDown!905 (h!69312 (exprs!5447 (Context!9895 (t!376259 (exprs!5447 (h!69314 zl!343)))))) (Context!9895 (t!376259 (exprs!5447 (Context!9895 (t!376259 (exprs!5447 (h!69314 zl!343))))))) (h!69313 s!2326)))))

(assert (= (and d!1764325 res!2368457) b!5580944))

(assert (= (and d!1764325 c!977284) b!5580948))

(assert (= (and d!1764325 (not c!977284)) b!5580946))

(assert (= (and b!5580946 c!977285) b!5580945))

(assert (= (and b!5580946 (not c!977285)) b!5580947))

(assert (= (or b!5580948 b!5580945) bm!417430))

(declare-fun m!6562996 () Bool)

(assert (=> b!5580944 m!6562996))

(declare-fun m!6562998 () Bool)

(assert (=> b!5580948 m!6562998))

(declare-fun m!6563000 () Bool)

(assert (=> bm!417430 m!6563000))

(assert (=> b!5579940 d!1764325))

(declare-fun d!1764327 () Bool)

(assert (=> d!1764327 (= (nullable!5595 (reg!15892 r!7292)) (nullableFct!1707 (reg!15892 r!7292)))))

(declare-fun bs!1291122 () Bool)

(assert (= bs!1291122 d!1764327))

(declare-fun m!6563002 () Bool)

(assert (=> bs!1291122 m!6563002))

(assert (=> b!5580001 d!1764327))

(declare-fun b!5580949 () Bool)

(declare-fun e!3443663 () (InoxSet Context!9894))

(declare-fun call!417441 () (InoxSet Context!9894))

(declare-fun call!417438 () (InoxSet Context!9894))

(assert (=> b!5580949 (= e!3443663 ((_ map or) call!417441 call!417438))))

(declare-fun d!1764329 () Bool)

(declare-fun c!977289 () Bool)

(assert (=> d!1764329 (= c!977289 (and ((_ is ElementMatch!15563) (ite c!977020 (regTwo!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))))) (= (c!976846 (ite c!977020 (regTwo!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))))) (h!69313 s!2326))))))

(declare-fun e!3443662 () (InoxSet Context!9894))

(assert (=> d!1764329 (= (derivationStepZipperDown!905 (ite c!977020 (regTwo!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343))))) (ite c!977020 lt!2253334 (Context!9895 call!417249)) (h!69313 s!2326)) e!3443662)))

(declare-fun bm!417431 () Bool)

(declare-fun call!417436 () (InoxSet Context!9894))

(declare-fun call!417439 () (InoxSet Context!9894))

(assert (=> bm!417431 (= call!417436 call!417439)))

(declare-fun call!417440 () List!62988)

(declare-fun c!977290 () Bool)

(declare-fun bm!417432 () Bool)

(declare-fun c!977288 () Bool)

(assert (=> bm!417432 (= call!417440 ($colon$colon!1628 (exprs!5447 (ite c!977020 lt!2253334 (Context!9895 call!417249))) (ite (or c!977290 c!977288) (regTwo!31638 (ite c!977020 (regTwo!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))))) (ite c!977020 (regTwo!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343))))))))))

(declare-fun b!5580950 () Bool)

(declare-fun c!977287 () Bool)

(assert (=> b!5580950 (= c!977287 ((_ is Star!15563) (ite c!977020 (regTwo!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))))))))

(declare-fun e!3443661 () (InoxSet Context!9894))

(declare-fun e!3443664 () (InoxSet Context!9894))

(assert (=> b!5580950 (= e!3443661 e!3443664)))

(declare-fun bm!417433 () Bool)

(assert (=> bm!417433 (= call!417439 call!417441)))

(declare-fun c!977286 () Bool)

(declare-fun bm!417434 () Bool)

(assert (=> bm!417434 (= call!417438 (derivationStepZipperDown!905 (ite c!977286 (regTwo!31639 (ite c!977020 (regTwo!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))))) (regOne!31638 (ite c!977020 (regTwo!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343))))))) (ite c!977286 (ite c!977020 lt!2253334 (Context!9895 call!417249)) (Context!9895 call!417440)) (h!69313 s!2326)))))

(declare-fun b!5580951 () Bool)

(declare-fun e!3443659 () Bool)

(assert (=> b!5580951 (= c!977290 e!3443659)))

(declare-fun res!2368458 () Bool)

(assert (=> b!5580951 (=> (not res!2368458) (not e!3443659))))

(assert (=> b!5580951 (= res!2368458 ((_ is Concat!24408) (ite c!977020 (regTwo!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))))))))

(declare-fun e!3443660 () (InoxSet Context!9894))

(assert (=> b!5580951 (= e!3443663 e!3443660)))

(declare-fun b!5580952 () Bool)

(assert (=> b!5580952 (= e!3443660 e!3443661)))

(assert (=> b!5580952 (= c!977288 ((_ is Concat!24408) (ite c!977020 (regTwo!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))))))))

(declare-fun b!5580953 () Bool)

(assert (=> b!5580953 (= e!3443662 (store ((as const (Array Context!9894 Bool)) false) (ite c!977020 lt!2253334 (Context!9895 call!417249)) true))))

(declare-fun b!5580954 () Bool)

(assert (=> b!5580954 (= e!3443661 call!417436)))

(declare-fun b!5580955 () Bool)

(assert (=> b!5580955 (= e!3443659 (nullable!5595 (regOne!31638 (ite c!977020 (regTwo!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343))))))))))

(declare-fun b!5580956 () Bool)

(assert (=> b!5580956 (= e!3443662 e!3443663)))

(assert (=> b!5580956 (= c!977286 ((_ is Union!15563) (ite c!977020 (regTwo!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))))))))

(declare-fun b!5580957 () Bool)

(assert (=> b!5580957 (= e!3443660 ((_ map or) call!417438 call!417439))))

(declare-fun bm!417435 () Bool)

(declare-fun call!417437 () List!62988)

(assert (=> bm!417435 (= call!417437 call!417440)))

(declare-fun bm!417436 () Bool)

(assert (=> bm!417436 (= call!417441 (derivationStepZipperDown!905 (ite c!977286 (regOne!31639 (ite c!977020 (regTwo!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))))) (ite c!977290 (regTwo!31638 (ite c!977020 (regTwo!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))))) (ite c!977288 (regOne!31638 (ite c!977020 (regTwo!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))))) (reg!15892 (ite c!977020 (regTwo!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343))))))))) (ite (or c!977286 c!977290) (ite c!977020 lt!2253334 (Context!9895 call!417249)) (Context!9895 call!417437)) (h!69313 s!2326)))))

(declare-fun b!5580958 () Bool)

(assert (=> b!5580958 (= e!3443664 call!417436)))

(declare-fun b!5580959 () Bool)

(assert (=> b!5580959 (= e!3443664 ((as const (Array Context!9894 Bool)) false))))

(assert (= (and d!1764329 c!977289) b!5580953))

(assert (= (and d!1764329 (not c!977289)) b!5580956))

(assert (= (and b!5580956 c!977286) b!5580949))

(assert (= (and b!5580956 (not c!977286)) b!5580951))

(assert (= (and b!5580951 res!2368458) b!5580955))

(assert (= (and b!5580951 c!977290) b!5580957))

(assert (= (and b!5580951 (not c!977290)) b!5580952))

(assert (= (and b!5580952 c!977288) b!5580954))

(assert (= (and b!5580952 (not c!977288)) b!5580950))

(assert (= (and b!5580950 c!977287) b!5580958))

(assert (= (and b!5580950 (not c!977287)) b!5580959))

(assert (= (or b!5580954 b!5580958) bm!417435))

(assert (= (or b!5580954 b!5580958) bm!417431))

(assert (= (or b!5580957 bm!417435) bm!417432))

(assert (= (or b!5580957 bm!417431) bm!417433))

(assert (= (or b!5580949 b!5580957) bm!417434))

(assert (= (or b!5580949 bm!417433) bm!417436))

(declare-fun m!6563004 () Bool)

(assert (=> b!5580955 m!6563004))

(declare-fun m!6563006 () Bool)

(assert (=> bm!417432 m!6563006))

(declare-fun m!6563008 () Bool)

(assert (=> b!5580953 m!6563008))

(declare-fun m!6563010 () Bool)

(assert (=> bm!417434 m!6563010))

(declare-fun m!6563012 () Bool)

(assert (=> bm!417436 m!6563012))

(assert (=> bm!417243 d!1764329))

(declare-fun d!1764331 () Bool)

(assert (=> d!1764331 true))

(assert (=> d!1764331 true))

(declare-fun res!2368459 () Bool)

(assert (=> d!1764331 (= (choose!42291 lambda!299168) res!2368459)))

(assert (=> d!1763925 d!1764331))

(assert (=> d!1763893 d!1764231))

(declare-fun b!5580960 () Bool)

(declare-fun e!3443669 () (InoxSet Context!9894))

(declare-fun call!417447 () (InoxSet Context!9894))

(declare-fun call!417444 () (InoxSet Context!9894))

(assert (=> b!5580960 (= e!3443669 ((_ map or) call!417447 call!417444))))

(declare-fun d!1764333 () Bool)

(declare-fun c!977294 () Bool)

(assert (=> d!1764333 (= c!977294 (and ((_ is ElementMatch!15563) (h!69312 (exprs!5447 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343)))))))) (= (c!976846 (h!69312 (exprs!5447 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343)))))))) (h!69313 s!2326))))))

(declare-fun e!3443668 () (InoxSet Context!9894))

(assert (=> d!1764333 (= (derivationStepZipperDown!905 (h!69312 (exprs!5447 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343))))))) (Context!9895 (t!376259 (exprs!5447 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343)))))))) (h!69313 s!2326)) e!3443668)))

(declare-fun bm!417437 () Bool)

(declare-fun call!417442 () (InoxSet Context!9894))

(declare-fun call!417445 () (InoxSet Context!9894))

(assert (=> bm!417437 (= call!417442 call!417445)))

(declare-fun call!417446 () List!62988)

(declare-fun bm!417438 () Bool)

(declare-fun c!977295 () Bool)

(declare-fun c!977293 () Bool)

(assert (=> bm!417438 (= call!417446 ($colon$colon!1628 (exprs!5447 (Context!9895 (t!376259 (exprs!5447 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343))))))))) (ite (or c!977295 c!977293) (regTwo!31638 (h!69312 (exprs!5447 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343)))))))) (h!69312 (exprs!5447 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343))))))))))))

(declare-fun b!5580961 () Bool)

(declare-fun c!977292 () Bool)

(assert (=> b!5580961 (= c!977292 ((_ is Star!15563) (h!69312 (exprs!5447 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343)))))))))))

(declare-fun e!3443667 () (InoxSet Context!9894))

(declare-fun e!3443670 () (InoxSet Context!9894))

(assert (=> b!5580961 (= e!3443667 e!3443670)))

(declare-fun bm!417439 () Bool)

(assert (=> bm!417439 (= call!417445 call!417447)))

(declare-fun bm!417440 () Bool)

(declare-fun c!977291 () Bool)

(assert (=> bm!417440 (= call!417444 (derivationStepZipperDown!905 (ite c!977291 (regTwo!31639 (h!69312 (exprs!5447 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343)))))))) (regOne!31638 (h!69312 (exprs!5447 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343))))))))) (ite c!977291 (Context!9895 (t!376259 (exprs!5447 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343)))))))) (Context!9895 call!417446)) (h!69313 s!2326)))))

(declare-fun b!5580962 () Bool)

(declare-fun e!3443665 () Bool)

(assert (=> b!5580962 (= c!977295 e!3443665)))

(declare-fun res!2368460 () Bool)

(assert (=> b!5580962 (=> (not res!2368460) (not e!3443665))))

(assert (=> b!5580962 (= res!2368460 ((_ is Concat!24408) (h!69312 (exprs!5447 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343)))))))))))

(declare-fun e!3443666 () (InoxSet Context!9894))

(assert (=> b!5580962 (= e!3443669 e!3443666)))

(declare-fun b!5580963 () Bool)

(assert (=> b!5580963 (= e!3443666 e!3443667)))

(assert (=> b!5580963 (= c!977293 ((_ is Concat!24408) (h!69312 (exprs!5447 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343)))))))))))

(declare-fun b!5580964 () Bool)

(assert (=> b!5580964 (= e!3443668 (store ((as const (Array Context!9894 Bool)) false) (Context!9895 (t!376259 (exprs!5447 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343)))))))) true))))

(declare-fun b!5580965 () Bool)

(assert (=> b!5580965 (= e!3443667 call!417442)))

(declare-fun b!5580966 () Bool)

(assert (=> b!5580966 (= e!3443665 (nullable!5595 (regOne!31638 (h!69312 (exprs!5447 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343))))))))))))

(declare-fun b!5580967 () Bool)

(assert (=> b!5580967 (= e!3443668 e!3443669)))

(assert (=> b!5580967 (= c!977291 ((_ is Union!15563) (h!69312 (exprs!5447 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343)))))))))))

(declare-fun b!5580968 () Bool)

(assert (=> b!5580968 (= e!3443666 ((_ map or) call!417444 call!417445))))

(declare-fun bm!417441 () Bool)

(declare-fun call!417443 () List!62988)

(assert (=> bm!417441 (= call!417443 call!417446)))

(declare-fun bm!417442 () Bool)

(assert (=> bm!417442 (= call!417447 (derivationStepZipperDown!905 (ite c!977291 (regOne!31639 (h!69312 (exprs!5447 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343)))))))) (ite c!977295 (regTwo!31638 (h!69312 (exprs!5447 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343)))))))) (ite c!977293 (regOne!31638 (h!69312 (exprs!5447 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343)))))))) (reg!15892 (h!69312 (exprs!5447 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343))))))))))) (ite (or c!977291 c!977295) (Context!9895 (t!376259 (exprs!5447 (Context!9895 (Cons!62864 (h!69312 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343)))))))) (Context!9895 call!417443)) (h!69313 s!2326)))))

(declare-fun b!5580969 () Bool)

(assert (=> b!5580969 (= e!3443670 call!417442)))

(declare-fun b!5580970 () Bool)

(assert (=> b!5580970 (= e!3443670 ((as const (Array Context!9894 Bool)) false))))

(assert (= (and d!1764333 c!977294) b!5580964))

(assert (= (and d!1764333 (not c!977294)) b!5580967))

(assert (= (and b!5580967 c!977291) b!5580960))

(assert (= (and b!5580967 (not c!977291)) b!5580962))

(assert (= (and b!5580962 res!2368460) b!5580966))

(assert (= (and b!5580962 c!977295) b!5580968))

(assert (= (and b!5580962 (not c!977295)) b!5580963))

(assert (= (and b!5580963 c!977293) b!5580965))

(assert (= (and b!5580963 (not c!977293)) b!5580961))

(assert (= (and b!5580961 c!977292) b!5580969))

(assert (= (and b!5580961 (not c!977292)) b!5580970))

(assert (= (or b!5580965 b!5580969) bm!417441))

(assert (= (or b!5580965 b!5580969) bm!417437))

(assert (= (or b!5580968 bm!417441) bm!417438))

(assert (= (or b!5580968 bm!417437) bm!417439))

(assert (= (or b!5580960 b!5580968) bm!417440))

(assert (= (or b!5580960 bm!417439) bm!417442))

(declare-fun m!6563014 () Bool)

(assert (=> b!5580966 m!6563014))

(declare-fun m!6563016 () Bool)

(assert (=> bm!417438 m!6563016))

(declare-fun m!6563018 () Bool)

(assert (=> b!5580964 m!6563018))

(declare-fun m!6563020 () Bool)

(assert (=> bm!417440 m!6563020))

(declare-fun m!6563022 () Bool)

(assert (=> bm!417442 m!6563022))

(assert (=> bm!417246 d!1764333))

(declare-fun b!5580971 () Bool)

(declare-fun e!3443675 () (InoxSet Context!9894))

(declare-fun call!417453 () (InoxSet Context!9894))

(declare-fun call!417450 () (InoxSet Context!9894))

(assert (=> b!5580971 (= e!3443675 ((_ map or) call!417453 call!417450))))

(declare-fun d!1764335 () Bool)

(declare-fun c!977299 () Bool)

(assert (=> d!1764335 (= c!977299 (and ((_ is ElementMatch!15563) (h!69312 (exprs!5447 lt!2253334))) (= (c!976846 (h!69312 (exprs!5447 lt!2253334))) (h!69313 s!2326))))))

(declare-fun e!3443674 () (InoxSet Context!9894))

(assert (=> d!1764335 (= (derivationStepZipperDown!905 (h!69312 (exprs!5447 lt!2253334)) (Context!9895 (t!376259 (exprs!5447 lt!2253334))) (h!69313 s!2326)) e!3443674)))

(declare-fun bm!417443 () Bool)

(declare-fun call!417448 () (InoxSet Context!9894))

(declare-fun call!417451 () (InoxSet Context!9894))

(assert (=> bm!417443 (= call!417448 call!417451)))

(declare-fun c!977298 () Bool)

(declare-fun bm!417444 () Bool)

(declare-fun call!417452 () List!62988)

(declare-fun c!977300 () Bool)

(assert (=> bm!417444 (= call!417452 ($colon$colon!1628 (exprs!5447 (Context!9895 (t!376259 (exprs!5447 lt!2253334)))) (ite (or c!977300 c!977298) (regTwo!31638 (h!69312 (exprs!5447 lt!2253334))) (h!69312 (exprs!5447 lt!2253334)))))))

(declare-fun b!5580972 () Bool)

(declare-fun c!977297 () Bool)

(assert (=> b!5580972 (= c!977297 ((_ is Star!15563) (h!69312 (exprs!5447 lt!2253334))))))

(declare-fun e!3443673 () (InoxSet Context!9894))

(declare-fun e!3443676 () (InoxSet Context!9894))

(assert (=> b!5580972 (= e!3443673 e!3443676)))

(declare-fun bm!417445 () Bool)

(assert (=> bm!417445 (= call!417451 call!417453)))

(declare-fun bm!417446 () Bool)

(declare-fun c!977296 () Bool)

(assert (=> bm!417446 (= call!417450 (derivationStepZipperDown!905 (ite c!977296 (regTwo!31639 (h!69312 (exprs!5447 lt!2253334))) (regOne!31638 (h!69312 (exprs!5447 lt!2253334)))) (ite c!977296 (Context!9895 (t!376259 (exprs!5447 lt!2253334))) (Context!9895 call!417452)) (h!69313 s!2326)))))

(declare-fun b!5580973 () Bool)

(declare-fun e!3443671 () Bool)

(assert (=> b!5580973 (= c!977300 e!3443671)))

(declare-fun res!2368461 () Bool)

(assert (=> b!5580973 (=> (not res!2368461) (not e!3443671))))

(assert (=> b!5580973 (= res!2368461 ((_ is Concat!24408) (h!69312 (exprs!5447 lt!2253334))))))

(declare-fun e!3443672 () (InoxSet Context!9894))

(assert (=> b!5580973 (= e!3443675 e!3443672)))

(declare-fun b!5580974 () Bool)

(assert (=> b!5580974 (= e!3443672 e!3443673)))

(assert (=> b!5580974 (= c!977298 ((_ is Concat!24408) (h!69312 (exprs!5447 lt!2253334))))))

(declare-fun b!5580975 () Bool)

(assert (=> b!5580975 (= e!3443674 (store ((as const (Array Context!9894 Bool)) false) (Context!9895 (t!376259 (exprs!5447 lt!2253334))) true))))

(declare-fun b!5580976 () Bool)

(assert (=> b!5580976 (= e!3443673 call!417448)))

(declare-fun b!5580977 () Bool)

(assert (=> b!5580977 (= e!3443671 (nullable!5595 (regOne!31638 (h!69312 (exprs!5447 lt!2253334)))))))

(declare-fun b!5580978 () Bool)

(assert (=> b!5580978 (= e!3443674 e!3443675)))

(assert (=> b!5580978 (= c!977296 ((_ is Union!15563) (h!69312 (exprs!5447 lt!2253334))))))

(declare-fun b!5580979 () Bool)

(assert (=> b!5580979 (= e!3443672 ((_ map or) call!417450 call!417451))))

(declare-fun bm!417447 () Bool)

(declare-fun call!417449 () List!62988)

(assert (=> bm!417447 (= call!417449 call!417452)))

(declare-fun bm!417448 () Bool)

(assert (=> bm!417448 (= call!417453 (derivationStepZipperDown!905 (ite c!977296 (regOne!31639 (h!69312 (exprs!5447 lt!2253334))) (ite c!977300 (regTwo!31638 (h!69312 (exprs!5447 lt!2253334))) (ite c!977298 (regOne!31638 (h!69312 (exprs!5447 lt!2253334))) (reg!15892 (h!69312 (exprs!5447 lt!2253334)))))) (ite (or c!977296 c!977300) (Context!9895 (t!376259 (exprs!5447 lt!2253334))) (Context!9895 call!417449)) (h!69313 s!2326)))))

(declare-fun b!5580980 () Bool)

(assert (=> b!5580980 (= e!3443676 call!417448)))

(declare-fun b!5580981 () Bool)

(assert (=> b!5580981 (= e!3443676 ((as const (Array Context!9894 Bool)) false))))

(assert (= (and d!1764335 c!977299) b!5580975))

(assert (= (and d!1764335 (not c!977299)) b!5580978))

(assert (= (and b!5580978 c!977296) b!5580971))

(assert (= (and b!5580978 (not c!977296)) b!5580973))

(assert (= (and b!5580973 res!2368461) b!5580977))

(assert (= (and b!5580973 c!977300) b!5580979))

(assert (= (and b!5580973 (not c!977300)) b!5580974))

(assert (= (and b!5580974 c!977298) b!5580976))

(assert (= (and b!5580974 (not c!977298)) b!5580972))

(assert (= (and b!5580972 c!977297) b!5580980))

(assert (= (and b!5580972 (not c!977297)) b!5580981))

(assert (= (or b!5580976 b!5580980) bm!417447))

(assert (= (or b!5580976 b!5580980) bm!417443))

(assert (= (or b!5580979 bm!417447) bm!417444))

(assert (= (or b!5580979 bm!417443) bm!417445))

(assert (= (or b!5580971 b!5580979) bm!417446))

(assert (= (or b!5580971 bm!417445) bm!417448))

(declare-fun m!6563024 () Bool)

(assert (=> b!5580977 m!6563024))

(declare-fun m!6563026 () Bool)

(assert (=> bm!417444 m!6563026))

(declare-fun m!6563028 () Bool)

(assert (=> b!5580975 m!6563028))

(declare-fun m!6563030 () Bool)

(assert (=> bm!417446 m!6563030))

(declare-fun m!6563032 () Bool)

(assert (=> bm!417448 m!6563032))

(assert (=> bm!417247 d!1764335))

(declare-fun d!1764337 () Bool)

(assert (=> d!1764337 (= (nullable!5595 (h!69312 (exprs!5447 lt!2253322))) (nullableFct!1707 (h!69312 (exprs!5447 lt!2253322))))))

(declare-fun bs!1291123 () Bool)

(assert (= bs!1291123 d!1764337))

(declare-fun m!6563034 () Bool)

(assert (=> bs!1291123 m!6563034))

(assert (=> b!5579745 d!1764337))

(assert (=> b!5579936 d!1763907))

(declare-fun bs!1291124 () Bool)

(declare-fun d!1764339 () Bool)

(assert (= bs!1291124 (and d!1764339 d!1764319)))

(declare-fun lambda!299279 () Int)

(assert (=> bs!1291124 (= lambda!299279 lambda!299277)))

(assert (=> d!1764339 (= (nullableZipper!1560 lt!2253324) (exists!2161 lt!2253324 lambda!299279))))

(declare-fun bs!1291125 () Bool)

(assert (= bs!1291125 d!1764339))

(declare-fun m!6563036 () Bool)

(assert (=> bs!1291125 m!6563036))

(assert (=> b!5579728 d!1764339))

(declare-fun d!1764341 () Bool)

(declare-fun c!977301 () Bool)

(assert (=> d!1764341 (= c!977301 (isEmpty!34675 (tail!10995 (t!376260 s!2326))))))

(declare-fun e!3443677 () Bool)

(assert (=> d!1764341 (= (matchZipper!1701 (derivationStepZipper!1662 lt!2253325 (head!11900 (t!376260 s!2326))) (tail!10995 (t!376260 s!2326))) e!3443677)))

(declare-fun b!5580982 () Bool)

(assert (=> b!5580982 (= e!3443677 (nullableZipper!1560 (derivationStepZipper!1662 lt!2253325 (head!11900 (t!376260 s!2326)))))))

(declare-fun b!5580983 () Bool)

(assert (=> b!5580983 (= e!3443677 (matchZipper!1701 (derivationStepZipper!1662 (derivationStepZipper!1662 lt!2253325 (head!11900 (t!376260 s!2326))) (head!11900 (tail!10995 (t!376260 s!2326)))) (tail!10995 (tail!10995 (t!376260 s!2326)))))))

(assert (= (and d!1764341 c!977301) b!5580982))

(assert (= (and d!1764341 (not c!977301)) b!5580983))

(assert (=> d!1764341 m!6561988))

(assert (=> d!1764341 m!6562762))

(assert (=> b!5580982 m!6562046))

(declare-fun m!6563038 () Bool)

(assert (=> b!5580982 m!6563038))

(assert (=> b!5580983 m!6561988))

(assert (=> b!5580983 m!6562766))

(assert (=> b!5580983 m!6562046))

(assert (=> b!5580983 m!6562766))

(declare-fun m!6563040 () Bool)

(assert (=> b!5580983 m!6563040))

(assert (=> b!5580983 m!6561988))

(assert (=> b!5580983 m!6562770))

(assert (=> b!5580983 m!6563040))

(assert (=> b!5580983 m!6562770))

(declare-fun m!6563042 () Bool)

(assert (=> b!5580983 m!6563042))

(assert (=> b!5579836 d!1764341))

(declare-fun bs!1291126 () Bool)

(declare-fun d!1764343 () Bool)

(assert (= bs!1291126 (and d!1764343 d!1764273)))

(declare-fun lambda!299280 () Int)

(assert (=> bs!1291126 (= lambda!299280 lambda!299270)))

(declare-fun bs!1291127 () Bool)

(assert (= bs!1291127 (and d!1764343 d!1764255)))

(assert (=> bs!1291127 (= lambda!299280 lambda!299269)))

(declare-fun bs!1291128 () Bool)

(assert (= bs!1291128 (and d!1764343 d!1764297)))

(assert (=> bs!1291128 (= lambda!299280 lambda!299274)))

(declare-fun bs!1291129 () Bool)

(assert (= bs!1291129 (and d!1764343 d!1764209)))

(assert (=> bs!1291129 (= lambda!299280 lambda!299265)))

(declare-fun bs!1291130 () Bool)

(assert (= bs!1291130 (and d!1764343 b!5579326)))

(assert (=> bs!1291130 (= (= (head!11900 (t!376260 s!2326)) (h!69313 s!2326)) (= lambda!299280 lambda!299170))))

(assert (=> d!1764343 true))

(assert (=> d!1764343 (= (derivationStepZipper!1662 lt!2253325 (head!11900 (t!376260 s!2326))) (flatMap!1176 lt!2253325 lambda!299280))))

(declare-fun bs!1291131 () Bool)

(assert (= bs!1291131 d!1764343))

(declare-fun m!6563044 () Bool)

(assert (=> bs!1291131 m!6563044))

(assert (=> b!5579836 d!1764343))

(assert (=> b!5579836 d!1764211))

(assert (=> b!5579836 d!1764213))

(assert (=> d!1763889 d!1763887))

(assert (=> d!1763889 d!1763885))

(declare-fun d!1764345 () Bool)

(assert (=> d!1764345 (= (matchR!7748 r!7292 s!2326) (matchRSpec!2666 r!7292 s!2326))))

(assert (=> d!1764345 true))

(declare-fun _$88!3850 () Unit!155624)

(assert (=> d!1764345 (= (choose!42290 r!7292 s!2326) _$88!3850)))

(declare-fun bs!1291132 () Bool)

(assert (= bs!1291132 d!1764345))

(assert (=> bs!1291132 m!6561716))

(assert (=> bs!1291132 m!6561714))

(assert (=> d!1763889 d!1764345))

(assert (=> d!1763889 d!1763933))

(declare-fun d!1764347 () Bool)

(assert (=> d!1764347 (= (isEmpty!34675 s!2326) ((_ is Nil!62865) s!2326))))

(assert (=> bm!417215 d!1764347))

(declare-fun d!1764349 () Bool)

(assert (=> d!1764349 (= (head!11901 (unfocusZipperList!991 zl!343)) (h!69312 (unfocusZipperList!991 zl!343)))))

(assert (=> b!5580037 d!1764349))

(declare-fun b!5580984 () Bool)

(declare-fun e!3443680 () Bool)

(assert (=> b!5580984 (= e!3443680 (nullable!5595 (h!69312 (exprs!5447 (Context!9895 (t!376259 (exprs!5447 lt!2253322)))))))))

(declare-fun b!5580985 () Bool)

(declare-fun e!3443678 () (InoxSet Context!9894))

(declare-fun call!417454 () (InoxSet Context!9894))

(assert (=> b!5580985 (= e!3443678 call!417454)))

(declare-fun b!5580986 () Bool)

(declare-fun e!3443679 () (InoxSet Context!9894))

(assert (=> b!5580986 (= e!3443679 e!3443678)))

(declare-fun c!977303 () Bool)

(assert (=> b!5580986 (= c!977303 ((_ is Cons!62864) (exprs!5447 (Context!9895 (t!376259 (exprs!5447 lt!2253322))))))))

(declare-fun d!1764351 () Bool)

(declare-fun c!977302 () Bool)

(assert (=> d!1764351 (= c!977302 e!3443680)))

(declare-fun res!2368462 () Bool)

(assert (=> d!1764351 (=> (not res!2368462) (not e!3443680))))

(assert (=> d!1764351 (= res!2368462 ((_ is Cons!62864) (exprs!5447 (Context!9895 (t!376259 (exprs!5447 lt!2253322))))))))

(assert (=> d!1764351 (= (derivationStepZipperUp!831 (Context!9895 (t!376259 (exprs!5447 lt!2253322))) (h!69313 s!2326)) e!3443679)))

(declare-fun b!5580987 () Bool)

(assert (=> b!5580987 (= e!3443678 ((as const (Array Context!9894 Bool)) false))))

(declare-fun b!5580988 () Bool)

(assert (=> b!5580988 (= e!3443679 ((_ map or) call!417454 (derivationStepZipperUp!831 (Context!9895 (t!376259 (exprs!5447 (Context!9895 (t!376259 (exprs!5447 lt!2253322)))))) (h!69313 s!2326))))))

(declare-fun bm!417449 () Bool)

(assert (=> bm!417449 (= call!417454 (derivationStepZipperDown!905 (h!69312 (exprs!5447 (Context!9895 (t!376259 (exprs!5447 lt!2253322))))) (Context!9895 (t!376259 (exprs!5447 (Context!9895 (t!376259 (exprs!5447 lt!2253322)))))) (h!69313 s!2326)))))

(assert (= (and d!1764351 res!2368462) b!5580984))

(assert (= (and d!1764351 c!977302) b!5580988))

(assert (= (and d!1764351 (not c!977302)) b!5580986))

(assert (= (and b!5580986 c!977303) b!5580985))

(assert (= (and b!5580986 (not c!977303)) b!5580987))

(assert (= (or b!5580988 b!5580985) bm!417449))

(declare-fun m!6563046 () Bool)

(assert (=> b!5580984 m!6563046))

(declare-fun m!6563048 () Bool)

(assert (=> b!5580988 m!6563048))

(declare-fun m!6563050 () Bool)

(assert (=> bm!417449 m!6563050))

(assert (=> b!5579749 d!1764351))

(declare-fun bs!1291133 () Bool)

(declare-fun d!1764353 () Bool)

(assert (= bs!1291133 (and d!1764353 d!1764319)))

(declare-fun lambda!299281 () Int)

(assert (=> bs!1291133 (= lambda!299281 lambda!299277)))

(declare-fun bs!1291134 () Bool)

(assert (= bs!1291134 (and d!1764353 d!1764339)))

(assert (=> bs!1291134 (= lambda!299281 lambda!299279)))

(assert (=> d!1764353 (= (nullableZipper!1560 lt!2253320) (exists!2161 lt!2253320 lambda!299281))))

(declare-fun bs!1291135 () Bool)

(assert (= bs!1291135 d!1764353))

(declare-fun m!6563052 () Bool)

(assert (=> bs!1291135 m!6563052))

(assert (=> b!5579883 d!1764353))

(declare-fun b!5580989 () Bool)

(declare-fun e!3443682 () Bool)

(declare-fun e!3443683 () Bool)

(assert (=> b!5580989 (= e!3443682 e!3443683)))

(declare-fun res!2368465 () Bool)

(declare-fun call!417455 () Bool)

(assert (=> b!5580989 (= res!2368465 call!417455)))

(assert (=> b!5580989 (=> (not res!2368465) (not e!3443683))))

(declare-fun b!5580990 () Bool)

(declare-fun e!3443684 () Bool)

(declare-fun e!3443685 () Bool)

(assert (=> b!5580990 (= e!3443684 e!3443685)))

(declare-fun res!2368463 () Bool)

(assert (=> b!5580990 (=> res!2368463 e!3443685)))

(assert (=> b!5580990 (= res!2368463 ((_ is Star!15563) (regOne!31639 (regOne!31638 r!7292))))))

(declare-fun b!5580991 () Bool)

(declare-fun e!3443681 () Bool)

(assert (=> b!5580991 (= e!3443682 e!3443681)))

(declare-fun res!2368464 () Bool)

(assert (=> b!5580991 (= res!2368464 call!417455)))

(assert (=> b!5580991 (=> res!2368464 e!3443681)))

(declare-fun d!1764355 () Bool)

(declare-fun res!2368467 () Bool)

(declare-fun e!3443686 () Bool)

(assert (=> d!1764355 (=> res!2368467 e!3443686)))

(assert (=> d!1764355 (= res!2368467 ((_ is EmptyExpr!15563) (regOne!31639 (regOne!31638 r!7292))))))

(assert (=> d!1764355 (= (nullableFct!1707 (regOne!31639 (regOne!31638 r!7292))) e!3443686)))

(declare-fun b!5580992 () Bool)

(assert (=> b!5580992 (= e!3443686 e!3443684)))

(declare-fun res!2368466 () Bool)

(assert (=> b!5580992 (=> (not res!2368466) (not e!3443684))))

(assert (=> b!5580992 (= res!2368466 (and (not ((_ is EmptyLang!15563) (regOne!31639 (regOne!31638 r!7292)))) (not ((_ is ElementMatch!15563) (regOne!31639 (regOne!31638 r!7292))))))))

(declare-fun bm!417450 () Bool)

(declare-fun c!977304 () Bool)

(assert (=> bm!417450 (= call!417455 (nullable!5595 (ite c!977304 (regOne!31639 (regOne!31639 (regOne!31638 r!7292))) (regOne!31638 (regOne!31639 (regOne!31638 r!7292))))))))

(declare-fun b!5580993 () Bool)

(declare-fun call!417456 () Bool)

(assert (=> b!5580993 (= e!3443683 call!417456)))

(declare-fun bm!417451 () Bool)

(assert (=> bm!417451 (= call!417456 (nullable!5595 (ite c!977304 (regTwo!31639 (regOne!31639 (regOne!31638 r!7292))) (regTwo!31638 (regOne!31639 (regOne!31638 r!7292))))))))

(declare-fun b!5580994 () Bool)

(assert (=> b!5580994 (= e!3443685 e!3443682)))

(assert (=> b!5580994 (= c!977304 ((_ is Union!15563) (regOne!31639 (regOne!31638 r!7292))))))

(declare-fun b!5580995 () Bool)

(assert (=> b!5580995 (= e!3443681 call!417456)))

(assert (= (and d!1764355 (not res!2368467)) b!5580992))

(assert (= (and b!5580992 res!2368466) b!5580990))

(assert (= (and b!5580990 (not res!2368463)) b!5580994))

(assert (= (and b!5580994 c!977304) b!5580991))

(assert (= (and b!5580994 (not c!977304)) b!5580989))

(assert (= (and b!5580991 (not res!2368464)) b!5580995))

(assert (= (and b!5580989 res!2368465) b!5580993))

(assert (= (or b!5580995 b!5580993) bm!417451))

(assert (= (or b!5580991 b!5580989) bm!417450))

(declare-fun m!6563054 () Bool)

(assert (=> bm!417450 m!6563054))

(declare-fun m!6563056 () Bool)

(assert (=> bm!417451 m!6563056))

(assert (=> d!1763877 d!1764355))

(declare-fun b!5581004 () Bool)

(declare-fun e!3443691 () List!62989)

(assert (=> b!5581004 (= e!3443691 (t!376260 s!2326))))

(declare-fun d!1764357 () Bool)

(declare-fun e!3443692 () Bool)

(assert (=> d!1764357 e!3443692))

(declare-fun res!2368472 () Bool)

(assert (=> d!1764357 (=> (not res!2368472) (not e!3443692))))

(declare-fun lt!2253460 () List!62989)

(declare-fun content!11333 (List!62989) (InoxSet C!31396))

(assert (=> d!1764357 (= res!2368472 (= (content!11333 lt!2253460) ((_ map or) (content!11333 (++!13795 Nil!62865 (Cons!62865 (h!69313 s!2326) Nil!62865))) (content!11333 (t!376260 s!2326)))))))

(assert (=> d!1764357 (= lt!2253460 e!3443691)))

(declare-fun c!977307 () Bool)

(assert (=> d!1764357 (= c!977307 ((_ is Nil!62865) (++!13795 Nil!62865 (Cons!62865 (h!69313 s!2326) Nil!62865))))))

(assert (=> d!1764357 (= (++!13795 (++!13795 Nil!62865 (Cons!62865 (h!69313 s!2326) Nil!62865)) (t!376260 s!2326)) lt!2253460)))

(declare-fun b!5581006 () Bool)

(declare-fun res!2368473 () Bool)

(assert (=> b!5581006 (=> (not res!2368473) (not e!3443692))))

(declare-fun size!39958 (List!62989) Int)

(assert (=> b!5581006 (= res!2368473 (= (size!39958 lt!2253460) (+ (size!39958 (++!13795 Nil!62865 (Cons!62865 (h!69313 s!2326) Nil!62865))) (size!39958 (t!376260 s!2326)))))))

(declare-fun b!5581005 () Bool)

(assert (=> b!5581005 (= e!3443691 (Cons!62865 (h!69313 (++!13795 Nil!62865 (Cons!62865 (h!69313 s!2326) Nil!62865))) (++!13795 (t!376260 (++!13795 Nil!62865 (Cons!62865 (h!69313 s!2326) Nil!62865))) (t!376260 s!2326))))))

(declare-fun b!5581007 () Bool)

(assert (=> b!5581007 (= e!3443692 (or (not (= (t!376260 s!2326) Nil!62865)) (= lt!2253460 (++!13795 Nil!62865 (Cons!62865 (h!69313 s!2326) Nil!62865)))))))

(assert (= (and d!1764357 c!977307) b!5581004))

(assert (= (and d!1764357 (not c!977307)) b!5581005))

(assert (= (and d!1764357 res!2368472) b!5581006))

(assert (= (and b!5581006 res!2368473) b!5581007))

(declare-fun m!6563058 () Bool)

(assert (=> d!1764357 m!6563058))

(assert (=> d!1764357 m!6562132))

(declare-fun m!6563060 () Bool)

(assert (=> d!1764357 m!6563060))

(declare-fun m!6563062 () Bool)

(assert (=> d!1764357 m!6563062))

(declare-fun m!6563064 () Bool)

(assert (=> b!5581006 m!6563064))

(assert (=> b!5581006 m!6562132))

(declare-fun m!6563066 () Bool)

(assert (=> b!5581006 m!6563066))

(declare-fun m!6563068 () Bool)

(assert (=> b!5581006 m!6563068))

(declare-fun m!6563070 () Bool)

(assert (=> b!5581005 m!6563070))

(assert (=> b!5579966 d!1764357))

(declare-fun b!5581008 () Bool)

(declare-fun e!3443693 () List!62989)

(assert (=> b!5581008 (= e!3443693 (Cons!62865 (h!69313 s!2326) Nil!62865))))

(declare-fun d!1764359 () Bool)

(declare-fun e!3443694 () Bool)

(assert (=> d!1764359 e!3443694))

(declare-fun res!2368474 () Bool)

(assert (=> d!1764359 (=> (not res!2368474) (not e!3443694))))

(declare-fun lt!2253461 () List!62989)

(assert (=> d!1764359 (= res!2368474 (= (content!11333 lt!2253461) ((_ map or) (content!11333 Nil!62865) (content!11333 (Cons!62865 (h!69313 s!2326) Nil!62865)))))))

(assert (=> d!1764359 (= lt!2253461 e!3443693)))

(declare-fun c!977308 () Bool)

(assert (=> d!1764359 (= c!977308 ((_ is Nil!62865) Nil!62865))))

(assert (=> d!1764359 (= (++!13795 Nil!62865 (Cons!62865 (h!69313 s!2326) Nil!62865)) lt!2253461)))

(declare-fun b!5581010 () Bool)

(declare-fun res!2368475 () Bool)

(assert (=> b!5581010 (=> (not res!2368475) (not e!3443694))))

(assert (=> b!5581010 (= res!2368475 (= (size!39958 lt!2253461) (+ (size!39958 Nil!62865) (size!39958 (Cons!62865 (h!69313 s!2326) Nil!62865)))))))

(declare-fun b!5581009 () Bool)

(assert (=> b!5581009 (= e!3443693 (Cons!62865 (h!69313 Nil!62865) (++!13795 (t!376260 Nil!62865) (Cons!62865 (h!69313 s!2326) Nil!62865))))))

(declare-fun b!5581011 () Bool)

(assert (=> b!5581011 (= e!3443694 (or (not (= (Cons!62865 (h!69313 s!2326) Nil!62865) Nil!62865)) (= lt!2253461 Nil!62865)))))

(assert (= (and d!1764359 c!977308) b!5581008))

(assert (= (and d!1764359 (not c!977308)) b!5581009))

(assert (= (and d!1764359 res!2368474) b!5581010))

(assert (= (and b!5581010 res!2368475) b!5581011))

(declare-fun m!6563072 () Bool)

(assert (=> d!1764359 m!6563072))

(declare-fun m!6563074 () Bool)

(assert (=> d!1764359 m!6563074))

(declare-fun m!6563076 () Bool)

(assert (=> d!1764359 m!6563076))

(declare-fun m!6563078 () Bool)

(assert (=> b!5581010 m!6563078))

(declare-fun m!6563080 () Bool)

(assert (=> b!5581010 m!6563080))

(declare-fun m!6563082 () Bool)

(assert (=> b!5581010 m!6563082))

(declare-fun m!6563084 () Bool)

(assert (=> b!5581009 m!6563084))

(assert (=> b!5579966 d!1764359))

(declare-fun d!1764361 () Bool)

(assert (=> d!1764361 (= (++!13795 (++!13795 Nil!62865 (Cons!62865 (h!69313 s!2326) Nil!62865)) (t!376260 s!2326)) s!2326)))

(declare-fun lt!2253464 () Unit!155624)

(declare-fun choose!42296 (List!62989 C!31396 List!62989 List!62989) Unit!155624)

(assert (=> d!1764361 (= lt!2253464 (choose!42296 Nil!62865 (h!69313 s!2326) (t!376260 s!2326) s!2326))))

(assert (=> d!1764361 (= (++!13795 Nil!62865 (Cons!62865 (h!69313 s!2326) (t!376260 s!2326))) s!2326)))

(assert (=> d!1764361 (= (lemmaMoveElementToOtherListKeepsConcatEq!1964 Nil!62865 (h!69313 s!2326) (t!376260 s!2326) s!2326) lt!2253464)))

(declare-fun bs!1291136 () Bool)

(assert (= bs!1291136 d!1764361))

(assert (=> bs!1291136 m!6562132))

(assert (=> bs!1291136 m!6562132))

(assert (=> bs!1291136 m!6562134))

(declare-fun m!6563086 () Bool)

(assert (=> bs!1291136 m!6563086))

(declare-fun m!6563088 () Bool)

(assert (=> bs!1291136 m!6563088))

(assert (=> b!5579966 d!1764361))

(declare-fun b!5581012 () Bool)

(declare-fun e!3443699 () Bool)

(declare-fun lt!2253466 () Option!15572)

(assert (=> b!5581012 (= e!3443699 (not (isDefined!12275 lt!2253466)))))

(declare-fun b!5581013 () Bool)

(declare-fun e!3443695 () Bool)

(assert (=> b!5581013 (= e!3443695 (matchR!7748 (regTwo!31638 r!7292) (t!376260 s!2326)))))

(declare-fun b!5581014 () Bool)

(declare-fun res!2368479 () Bool)

(declare-fun e!3443698 () Bool)

(assert (=> b!5581014 (=> (not res!2368479) (not e!3443698))))

(assert (=> b!5581014 (= res!2368479 (matchR!7748 (regTwo!31638 r!7292) (_2!35963 (get!21644 lt!2253466))))))

(declare-fun b!5581015 () Bool)

(declare-fun e!3443697 () Option!15572)

(assert (=> b!5581015 (= e!3443697 None!15571)))

(declare-fun b!5581016 () Bool)

(assert (=> b!5581016 (= e!3443698 (= (++!13795 (_1!35963 (get!21644 lt!2253466)) (_2!35963 (get!21644 lt!2253466))) s!2326))))

(declare-fun b!5581017 () Bool)

(declare-fun e!3443696 () Option!15572)

(assert (=> b!5581017 (= e!3443696 e!3443697)))

(declare-fun c!977309 () Bool)

(assert (=> b!5581017 (= c!977309 ((_ is Nil!62865) (t!376260 s!2326)))))

(declare-fun d!1764363 () Bool)

(assert (=> d!1764363 e!3443699))

(declare-fun res!2368477 () Bool)

(assert (=> d!1764363 (=> res!2368477 e!3443699)))

(assert (=> d!1764363 (= res!2368477 e!3443698)))

(declare-fun res!2368480 () Bool)

(assert (=> d!1764363 (=> (not res!2368480) (not e!3443698))))

(assert (=> d!1764363 (= res!2368480 (isDefined!12275 lt!2253466))))

(assert (=> d!1764363 (= lt!2253466 e!3443696)))

(declare-fun c!977310 () Bool)

(assert (=> d!1764363 (= c!977310 e!3443695)))

(declare-fun res!2368478 () Bool)

(assert (=> d!1764363 (=> (not res!2368478) (not e!3443695))))

(assert (=> d!1764363 (= res!2368478 (matchR!7748 (regOne!31638 r!7292) (++!13795 Nil!62865 (Cons!62865 (h!69313 s!2326) Nil!62865))))))

(assert (=> d!1764363 (validRegex!7299 (regOne!31638 r!7292))))

(assert (=> d!1764363 (= (findConcatSeparation!1986 (regOne!31638 r!7292) (regTwo!31638 r!7292) (++!13795 Nil!62865 (Cons!62865 (h!69313 s!2326) Nil!62865)) (t!376260 s!2326) s!2326) lt!2253466)))

(declare-fun b!5581018 () Bool)

(assert (=> b!5581018 (= e!3443696 (Some!15571 (tuple2!65321 (++!13795 Nil!62865 (Cons!62865 (h!69313 s!2326) Nil!62865)) (t!376260 s!2326))))))

(declare-fun b!5581019 () Bool)

(declare-fun lt!2253467 () Unit!155624)

(declare-fun lt!2253465 () Unit!155624)

(assert (=> b!5581019 (= lt!2253467 lt!2253465)))

(assert (=> b!5581019 (= (++!13795 (++!13795 (++!13795 Nil!62865 (Cons!62865 (h!69313 s!2326) Nil!62865)) (Cons!62865 (h!69313 (t!376260 s!2326)) Nil!62865)) (t!376260 (t!376260 s!2326))) s!2326)))

(assert (=> b!5581019 (= lt!2253465 (lemmaMoveElementToOtherListKeepsConcatEq!1964 (++!13795 Nil!62865 (Cons!62865 (h!69313 s!2326) Nil!62865)) (h!69313 (t!376260 s!2326)) (t!376260 (t!376260 s!2326)) s!2326))))

(assert (=> b!5581019 (= e!3443697 (findConcatSeparation!1986 (regOne!31638 r!7292) (regTwo!31638 r!7292) (++!13795 (++!13795 Nil!62865 (Cons!62865 (h!69313 s!2326) Nil!62865)) (Cons!62865 (h!69313 (t!376260 s!2326)) Nil!62865)) (t!376260 (t!376260 s!2326)) s!2326))))

(declare-fun b!5581020 () Bool)

(declare-fun res!2368476 () Bool)

(assert (=> b!5581020 (=> (not res!2368476) (not e!3443698))))

(assert (=> b!5581020 (= res!2368476 (matchR!7748 (regOne!31638 r!7292) (_1!35963 (get!21644 lt!2253466))))))

(assert (= (and d!1764363 res!2368478) b!5581013))

(assert (= (and d!1764363 c!977310) b!5581018))

(assert (= (and d!1764363 (not c!977310)) b!5581017))

(assert (= (and b!5581017 c!977309) b!5581015))

(assert (= (and b!5581017 (not c!977309)) b!5581019))

(assert (= (and d!1764363 res!2368480) b!5581020))

(assert (= (and b!5581020 res!2368476) b!5581014))

(assert (= (and b!5581014 res!2368479) b!5581016))

(assert (= (and d!1764363 (not res!2368477)) b!5581012))

(assert (=> b!5581019 m!6562132))

(declare-fun m!6563090 () Bool)

(assert (=> b!5581019 m!6563090))

(assert (=> b!5581019 m!6563090))

(declare-fun m!6563092 () Bool)

(assert (=> b!5581019 m!6563092))

(assert (=> b!5581019 m!6562132))

(declare-fun m!6563094 () Bool)

(assert (=> b!5581019 m!6563094))

(assert (=> b!5581019 m!6563090))

(declare-fun m!6563096 () Bool)

(assert (=> b!5581019 m!6563096))

(declare-fun m!6563098 () Bool)

(assert (=> b!5581020 m!6563098))

(declare-fun m!6563100 () Bool)

(assert (=> b!5581020 m!6563100))

(declare-fun m!6563102 () Bool)

(assert (=> b!5581013 m!6563102))

(assert (=> b!5581016 m!6563098))

(declare-fun m!6563104 () Bool)

(assert (=> b!5581016 m!6563104))

(declare-fun m!6563106 () Bool)

(assert (=> b!5581012 m!6563106))

(assert (=> b!5581014 m!6563098))

(declare-fun m!6563108 () Bool)

(assert (=> b!5581014 m!6563108))

(assert (=> d!1764363 m!6563106))

(assert (=> d!1764363 m!6562132))

(declare-fun m!6563110 () Bool)

(assert (=> d!1764363 m!6563110))

(assert (=> d!1764363 m!6562154))

(assert (=> b!5579966 d!1764363))

(declare-fun d!1764365 () Bool)

(declare-fun c!977311 () Bool)

(assert (=> d!1764365 (= c!977311 (isEmpty!34675 (tail!10995 (t!376260 s!2326))))))

(declare-fun e!3443700 () Bool)

(assert (=> d!1764365 (= (matchZipper!1701 (derivationStepZipper!1662 lt!2253337 (head!11900 (t!376260 s!2326))) (tail!10995 (t!376260 s!2326))) e!3443700)))

(declare-fun b!5581021 () Bool)

(assert (=> b!5581021 (= e!3443700 (nullableZipper!1560 (derivationStepZipper!1662 lt!2253337 (head!11900 (t!376260 s!2326)))))))

(declare-fun b!5581022 () Bool)

(assert (=> b!5581022 (= e!3443700 (matchZipper!1701 (derivationStepZipper!1662 (derivationStepZipper!1662 lt!2253337 (head!11900 (t!376260 s!2326))) (head!11900 (tail!10995 (t!376260 s!2326)))) (tail!10995 (tail!10995 (t!376260 s!2326)))))))

(assert (= (and d!1764365 c!977311) b!5581021))

(assert (= (and d!1764365 (not c!977311)) b!5581022))

(assert (=> d!1764365 m!6561988))

(assert (=> d!1764365 m!6562762))

(assert (=> b!5581021 m!6561986))

(declare-fun m!6563112 () Bool)

(assert (=> b!5581021 m!6563112))

(assert (=> b!5581022 m!6561988))

(assert (=> b!5581022 m!6562766))

(assert (=> b!5581022 m!6561986))

(assert (=> b!5581022 m!6562766))

(declare-fun m!6563114 () Bool)

(assert (=> b!5581022 m!6563114))

(assert (=> b!5581022 m!6561988))

(assert (=> b!5581022 m!6562770))

(assert (=> b!5581022 m!6563114))

(assert (=> b!5581022 m!6562770))

(declare-fun m!6563116 () Bool)

(assert (=> b!5581022 m!6563116))

(assert (=> b!5579727 d!1764365))

(declare-fun bs!1291137 () Bool)

(declare-fun d!1764367 () Bool)

(assert (= bs!1291137 (and d!1764367 d!1764343)))

(declare-fun lambda!299282 () Int)

(assert (=> bs!1291137 (= lambda!299282 lambda!299280)))

(declare-fun bs!1291138 () Bool)

(assert (= bs!1291138 (and d!1764367 d!1764273)))

(assert (=> bs!1291138 (= lambda!299282 lambda!299270)))

(declare-fun bs!1291139 () Bool)

(assert (= bs!1291139 (and d!1764367 d!1764255)))

(assert (=> bs!1291139 (= lambda!299282 lambda!299269)))

(declare-fun bs!1291140 () Bool)

(assert (= bs!1291140 (and d!1764367 d!1764297)))

(assert (=> bs!1291140 (= lambda!299282 lambda!299274)))

(declare-fun bs!1291141 () Bool)

(assert (= bs!1291141 (and d!1764367 d!1764209)))

(assert (=> bs!1291141 (= lambda!299282 lambda!299265)))

(declare-fun bs!1291142 () Bool)

(assert (= bs!1291142 (and d!1764367 b!5579326)))

(assert (=> bs!1291142 (= (= (head!11900 (t!376260 s!2326)) (h!69313 s!2326)) (= lambda!299282 lambda!299170))))

(assert (=> d!1764367 true))

(assert (=> d!1764367 (= (derivationStepZipper!1662 lt!2253337 (head!11900 (t!376260 s!2326))) (flatMap!1176 lt!2253337 lambda!299282))))

(declare-fun bs!1291143 () Bool)

(assert (= bs!1291143 d!1764367))

(declare-fun m!6563118 () Bool)

(assert (=> bs!1291143 m!6563118))

(assert (=> b!5579727 d!1764367))

(assert (=> b!5579727 d!1764211))

(assert (=> b!5579727 d!1764213))

(declare-fun d!1764369 () Bool)

(assert (=> d!1764369 (= (isEmpty!34671 (exprs!5447 (h!69314 zl!343))) ((_ is Nil!62864) (exprs!5447 (h!69314 zl!343))))))

(assert (=> b!5579909 d!1764369))

(declare-fun d!1764371 () Bool)

(assert (=> d!1764371 (= (nullable!5595 r!7292) (nullableFct!1707 r!7292))))

(declare-fun bs!1291144 () Bool)

(assert (= bs!1291144 d!1764371))

(declare-fun m!6563120 () Bool)

(assert (=> bs!1291144 m!6563120))

(assert (=> b!5579831 d!1764371))

(declare-fun d!1764373 () Bool)

(assert (=> d!1764373 (= (isUnion!560 lt!2253423) ((_ is Union!15563) lt!2253423))))

(assert (=> b!5580033 d!1764373))

(assert (=> bm!417212 d!1764347))

(declare-fun b!5581023 () Bool)

(declare-fun e!3443707 () Bool)

(declare-fun e!3443701 () Bool)

(assert (=> b!5581023 (= e!3443707 e!3443701)))

(declare-fun res!2368483 () Bool)

(assert (=> b!5581023 (= res!2368483 (not (nullable!5595 (reg!15892 (ite c!977041 (regOne!31639 r!7292) (regOne!31638 r!7292))))))))

(assert (=> b!5581023 (=> (not res!2368483) (not e!3443701))))

(declare-fun bm!417452 () Bool)

(declare-fun call!417459 () Bool)

(declare-fun call!417458 () Bool)

(assert (=> bm!417452 (= call!417459 call!417458)))

(declare-fun b!5581024 () Bool)

(declare-fun e!3443702 () Bool)

(declare-fun e!3443706 () Bool)

(assert (=> b!5581024 (= e!3443702 e!3443706)))

(declare-fun res!2368484 () Bool)

(assert (=> b!5581024 (=> (not res!2368484) (not e!3443706))))

(declare-fun call!417457 () Bool)

(assert (=> b!5581024 (= res!2368484 call!417457)))

(declare-fun b!5581025 () Bool)

(declare-fun res!2368481 () Bool)

(declare-fun e!3443705 () Bool)

(assert (=> b!5581025 (=> (not res!2368481) (not e!3443705))))

(assert (=> b!5581025 (= res!2368481 call!417457)))

(declare-fun e!3443703 () Bool)

(assert (=> b!5581025 (= e!3443703 e!3443705)))

(declare-fun b!5581026 () Bool)

(assert (=> b!5581026 (= e!3443707 e!3443703)))

(declare-fun c!977312 () Bool)

(assert (=> b!5581026 (= c!977312 ((_ is Union!15563) (ite c!977041 (regOne!31639 r!7292) (regOne!31638 r!7292))))))

(declare-fun b!5581027 () Bool)

(assert (=> b!5581027 (= e!3443706 call!417459)))

(declare-fun b!5581028 () Bool)

(assert (=> b!5581028 (= e!3443701 call!417458)))

(declare-fun b!5581029 () Bool)

(declare-fun e!3443704 () Bool)

(assert (=> b!5581029 (= e!3443704 e!3443707)))

(declare-fun c!977313 () Bool)

(assert (=> b!5581029 (= c!977313 ((_ is Star!15563) (ite c!977041 (regOne!31639 r!7292) (regOne!31638 r!7292))))))

(declare-fun bm!417454 () Bool)

(assert (=> bm!417454 (= call!417457 (validRegex!7299 (ite c!977312 (regOne!31639 (ite c!977041 (regOne!31639 r!7292) (regOne!31638 r!7292))) (regOne!31638 (ite c!977041 (regOne!31639 r!7292) (regOne!31638 r!7292))))))))

(declare-fun b!5581030 () Bool)

(assert (=> b!5581030 (= e!3443705 call!417459)))

(declare-fun b!5581031 () Bool)

(declare-fun res!2368482 () Bool)

(assert (=> b!5581031 (=> res!2368482 e!3443702)))

(assert (=> b!5581031 (= res!2368482 (not ((_ is Concat!24408) (ite c!977041 (regOne!31639 r!7292) (regOne!31638 r!7292)))))))

(assert (=> b!5581031 (= e!3443703 e!3443702)))

(declare-fun d!1764375 () Bool)

(declare-fun res!2368485 () Bool)

(assert (=> d!1764375 (=> res!2368485 e!3443704)))

(assert (=> d!1764375 (= res!2368485 ((_ is ElementMatch!15563) (ite c!977041 (regOne!31639 r!7292) (regOne!31638 r!7292))))))

(assert (=> d!1764375 (= (validRegex!7299 (ite c!977041 (regOne!31639 r!7292) (regOne!31638 r!7292))) e!3443704)))

(declare-fun bm!417453 () Bool)

(assert (=> bm!417453 (= call!417458 (validRegex!7299 (ite c!977313 (reg!15892 (ite c!977041 (regOne!31639 r!7292) (regOne!31638 r!7292))) (ite c!977312 (regTwo!31639 (ite c!977041 (regOne!31639 r!7292) (regOne!31638 r!7292))) (regTwo!31638 (ite c!977041 (regOne!31639 r!7292) (regOne!31638 r!7292)))))))))

(assert (= (and d!1764375 (not res!2368485)) b!5581029))

(assert (= (and b!5581029 c!977313) b!5581023))

(assert (= (and b!5581029 (not c!977313)) b!5581026))

(assert (= (and b!5581023 res!2368483) b!5581028))

(assert (= (and b!5581026 c!977312) b!5581025))

(assert (= (and b!5581026 (not c!977312)) b!5581031))

(assert (= (and b!5581025 res!2368481) b!5581030))

(assert (= (and b!5581031 (not res!2368482)) b!5581024))

(assert (= (and b!5581024 res!2368484) b!5581027))

(assert (= (or b!5581030 b!5581027) bm!417452))

(assert (= (or b!5581025 b!5581024) bm!417454))

(assert (= (or b!5581028 bm!417452) bm!417453))

(declare-fun m!6563122 () Bool)

(assert (=> b!5581023 m!6563122))

(declare-fun m!6563124 () Bool)

(assert (=> bm!417454 m!6563124))

(declare-fun m!6563126 () Bool)

(assert (=> bm!417453 m!6563126))

(assert (=> bm!417257 d!1764375))

(declare-fun b!5581032 () Bool)

(declare-fun e!3443714 () Bool)

(declare-fun e!3443708 () Bool)

(assert (=> b!5581032 (= e!3443714 e!3443708)))

(declare-fun res!2368488 () Bool)

(assert (=> b!5581032 (= res!2368488 (not (nullable!5595 (reg!15892 lt!2253423))))))

(assert (=> b!5581032 (=> (not res!2368488) (not e!3443708))))

(declare-fun bm!417455 () Bool)

(declare-fun call!417462 () Bool)

(declare-fun call!417461 () Bool)

(assert (=> bm!417455 (= call!417462 call!417461)))

(declare-fun b!5581033 () Bool)

(declare-fun e!3443709 () Bool)

(declare-fun e!3443713 () Bool)

(assert (=> b!5581033 (= e!3443709 e!3443713)))

(declare-fun res!2368489 () Bool)

(assert (=> b!5581033 (=> (not res!2368489) (not e!3443713))))

(declare-fun call!417460 () Bool)

(assert (=> b!5581033 (= res!2368489 call!417460)))

(declare-fun b!5581034 () Bool)

(declare-fun res!2368486 () Bool)

(declare-fun e!3443712 () Bool)

(assert (=> b!5581034 (=> (not res!2368486) (not e!3443712))))

(assert (=> b!5581034 (= res!2368486 call!417460)))

(declare-fun e!3443710 () Bool)

(assert (=> b!5581034 (= e!3443710 e!3443712)))

(declare-fun b!5581035 () Bool)

(assert (=> b!5581035 (= e!3443714 e!3443710)))

(declare-fun c!977314 () Bool)

(assert (=> b!5581035 (= c!977314 ((_ is Union!15563) lt!2253423))))

(declare-fun b!5581036 () Bool)

(assert (=> b!5581036 (= e!3443713 call!417462)))

(declare-fun b!5581037 () Bool)

(assert (=> b!5581037 (= e!3443708 call!417461)))

(declare-fun b!5581038 () Bool)

(declare-fun e!3443711 () Bool)

(assert (=> b!5581038 (= e!3443711 e!3443714)))

(declare-fun c!977315 () Bool)

(assert (=> b!5581038 (= c!977315 ((_ is Star!15563) lt!2253423))))

(declare-fun bm!417457 () Bool)

(assert (=> bm!417457 (= call!417460 (validRegex!7299 (ite c!977314 (regOne!31639 lt!2253423) (regOne!31638 lt!2253423))))))

(declare-fun b!5581039 () Bool)

(assert (=> b!5581039 (= e!3443712 call!417462)))

(declare-fun b!5581040 () Bool)

(declare-fun res!2368487 () Bool)

(assert (=> b!5581040 (=> res!2368487 e!3443709)))

(assert (=> b!5581040 (= res!2368487 (not ((_ is Concat!24408) lt!2253423)))))

(assert (=> b!5581040 (= e!3443710 e!3443709)))

(declare-fun d!1764377 () Bool)

(declare-fun res!2368490 () Bool)

(assert (=> d!1764377 (=> res!2368490 e!3443711)))

(assert (=> d!1764377 (= res!2368490 ((_ is ElementMatch!15563) lt!2253423))))

(assert (=> d!1764377 (= (validRegex!7299 lt!2253423) e!3443711)))

(declare-fun bm!417456 () Bool)

(assert (=> bm!417456 (= call!417461 (validRegex!7299 (ite c!977315 (reg!15892 lt!2253423) (ite c!977314 (regTwo!31639 lt!2253423) (regTwo!31638 lt!2253423)))))))

(assert (= (and d!1764377 (not res!2368490)) b!5581038))

(assert (= (and b!5581038 c!977315) b!5581032))

(assert (= (and b!5581038 (not c!977315)) b!5581035))

(assert (= (and b!5581032 res!2368488) b!5581037))

(assert (= (and b!5581035 c!977314) b!5581034))

(assert (= (and b!5581035 (not c!977314)) b!5581040))

(assert (= (and b!5581034 res!2368486) b!5581039))

(assert (= (and b!5581040 (not res!2368487)) b!5581033))

(assert (= (and b!5581033 res!2368489) b!5581036))

(assert (= (or b!5581039 b!5581036) bm!417455))

(assert (= (or b!5581034 b!5581033) bm!417457))

(assert (= (or b!5581037 bm!417455) bm!417456))

(declare-fun m!6563128 () Bool)

(assert (=> b!5581032 m!6563128))

(declare-fun m!6563130 () Bool)

(assert (=> bm!417457 m!6563130))

(declare-fun m!6563132 () Bool)

(assert (=> bm!417456 m!6563132))

(assert (=> d!1763945 d!1764377))

(declare-fun d!1764379 () Bool)

(declare-fun res!2368491 () Bool)

(declare-fun e!3443715 () Bool)

(assert (=> d!1764379 (=> res!2368491 e!3443715)))

(assert (=> d!1764379 (= res!2368491 ((_ is Nil!62864) (unfocusZipperList!991 zl!343)))))

(assert (=> d!1764379 (= (forall!14732 (unfocusZipperList!991 zl!343) lambda!299223) e!3443715)))

(declare-fun b!5581041 () Bool)

(declare-fun e!3443716 () Bool)

(assert (=> b!5581041 (= e!3443715 e!3443716)))

(declare-fun res!2368492 () Bool)

(assert (=> b!5581041 (=> (not res!2368492) (not e!3443716))))

(assert (=> b!5581041 (= res!2368492 (dynLambda!24587 lambda!299223 (h!69312 (unfocusZipperList!991 zl!343))))))

(declare-fun b!5581042 () Bool)

(assert (=> b!5581042 (= e!3443716 (forall!14732 (t!376259 (unfocusZipperList!991 zl!343)) lambda!299223))))

(assert (= (and d!1764379 (not res!2368491)) b!5581041))

(assert (= (and b!5581041 res!2368492) b!5581042))

(declare-fun b_lambda!211529 () Bool)

(assert (=> (not b_lambda!211529) (not b!5581041)))

(declare-fun m!6563134 () Bool)

(assert (=> b!5581041 m!6563134))

(declare-fun m!6563136 () Bool)

(assert (=> b!5581042 m!6563136))

(assert (=> d!1763945 d!1764379))

(declare-fun b!5581043 () Bool)

(declare-fun e!3443721 () (InoxSet Context!9894))

(declare-fun call!417468 () (InoxSet Context!9894))

(declare-fun call!417465 () (InoxSet Context!9894))

(assert (=> b!5581043 (= e!3443721 ((_ map or) call!417468 call!417465))))

(declare-fun c!977319 () Bool)

(declare-fun d!1764381 () Bool)

(assert (=> d!1764381 (= c!977319 (and ((_ is ElementMatch!15563) (ite c!977020 (regOne!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (ite c!977024 (regTwo!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (ite c!977022 (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (reg!15892 (h!69312 (exprs!5447 (h!69314 zl!343)))))))) (= (c!976846 (ite c!977020 (regOne!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (ite c!977024 (regTwo!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (ite c!977022 (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (reg!15892 (h!69312 (exprs!5447 (h!69314 zl!343)))))))) (h!69313 s!2326))))))

(declare-fun e!3443720 () (InoxSet Context!9894))

(assert (=> d!1764381 (= (derivationStepZipperDown!905 (ite c!977020 (regOne!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (ite c!977024 (regTwo!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (ite c!977022 (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (reg!15892 (h!69312 (exprs!5447 (h!69314 zl!343))))))) (ite (or c!977020 c!977024) lt!2253334 (Context!9895 call!417246)) (h!69313 s!2326)) e!3443720)))

(declare-fun bm!417458 () Bool)

(declare-fun call!417463 () (InoxSet Context!9894))

(declare-fun call!417466 () (InoxSet Context!9894))

(assert (=> bm!417458 (= call!417463 call!417466)))

(declare-fun c!977320 () Bool)

(declare-fun c!977318 () Bool)

(declare-fun call!417467 () List!62988)

(declare-fun bm!417459 () Bool)

(assert (=> bm!417459 (= call!417467 ($colon$colon!1628 (exprs!5447 (ite (or c!977020 c!977024) lt!2253334 (Context!9895 call!417246))) (ite (or c!977320 c!977318) (regTwo!31638 (ite c!977020 (regOne!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (ite c!977024 (regTwo!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (ite c!977022 (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (reg!15892 (h!69312 (exprs!5447 (h!69314 zl!343)))))))) (ite c!977020 (regOne!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (ite c!977024 (regTwo!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (ite c!977022 (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (reg!15892 (h!69312 (exprs!5447 (h!69314 zl!343))))))))))))

(declare-fun c!977317 () Bool)

(declare-fun b!5581044 () Bool)

(assert (=> b!5581044 (= c!977317 ((_ is Star!15563) (ite c!977020 (regOne!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (ite c!977024 (regTwo!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (ite c!977022 (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (reg!15892 (h!69312 (exprs!5447 (h!69314 zl!343)))))))))))

(declare-fun e!3443719 () (InoxSet Context!9894))

(declare-fun e!3443722 () (InoxSet Context!9894))

(assert (=> b!5581044 (= e!3443719 e!3443722)))

(declare-fun bm!417460 () Bool)

(assert (=> bm!417460 (= call!417466 call!417468)))

(declare-fun c!977316 () Bool)

(declare-fun bm!417461 () Bool)

(assert (=> bm!417461 (= call!417465 (derivationStepZipperDown!905 (ite c!977316 (regTwo!31639 (ite c!977020 (regOne!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (ite c!977024 (regTwo!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (ite c!977022 (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (reg!15892 (h!69312 (exprs!5447 (h!69314 zl!343)))))))) (regOne!31638 (ite c!977020 (regOne!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (ite c!977024 (regTwo!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (ite c!977022 (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (reg!15892 (h!69312 (exprs!5447 (h!69314 zl!343))))))))) (ite c!977316 (ite (or c!977020 c!977024) lt!2253334 (Context!9895 call!417246)) (Context!9895 call!417467)) (h!69313 s!2326)))))

(declare-fun b!5581045 () Bool)

(declare-fun e!3443717 () Bool)

(assert (=> b!5581045 (= c!977320 e!3443717)))

(declare-fun res!2368493 () Bool)

(assert (=> b!5581045 (=> (not res!2368493) (not e!3443717))))

(assert (=> b!5581045 (= res!2368493 ((_ is Concat!24408) (ite c!977020 (regOne!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (ite c!977024 (regTwo!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (ite c!977022 (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (reg!15892 (h!69312 (exprs!5447 (h!69314 zl!343)))))))))))

(declare-fun e!3443718 () (InoxSet Context!9894))

(assert (=> b!5581045 (= e!3443721 e!3443718)))

(declare-fun b!5581046 () Bool)

(assert (=> b!5581046 (= e!3443718 e!3443719)))

(assert (=> b!5581046 (= c!977318 ((_ is Concat!24408) (ite c!977020 (regOne!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (ite c!977024 (regTwo!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (ite c!977022 (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (reg!15892 (h!69312 (exprs!5447 (h!69314 zl!343)))))))))))

(declare-fun b!5581047 () Bool)

(assert (=> b!5581047 (= e!3443720 (store ((as const (Array Context!9894 Bool)) false) (ite (or c!977020 c!977024) lt!2253334 (Context!9895 call!417246)) true))))

(declare-fun b!5581048 () Bool)

(assert (=> b!5581048 (= e!3443719 call!417463)))

(declare-fun b!5581049 () Bool)

(assert (=> b!5581049 (= e!3443717 (nullable!5595 (regOne!31638 (ite c!977020 (regOne!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (ite c!977024 (regTwo!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (ite c!977022 (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (reg!15892 (h!69312 (exprs!5447 (h!69314 zl!343))))))))))))

(declare-fun b!5581050 () Bool)

(assert (=> b!5581050 (= e!3443720 e!3443721)))

(assert (=> b!5581050 (= c!977316 ((_ is Union!15563) (ite c!977020 (regOne!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (ite c!977024 (regTwo!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (ite c!977022 (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (reg!15892 (h!69312 (exprs!5447 (h!69314 zl!343)))))))))))

(declare-fun b!5581051 () Bool)

(assert (=> b!5581051 (= e!3443718 ((_ map or) call!417465 call!417466))))

(declare-fun bm!417462 () Bool)

(declare-fun call!417464 () List!62988)

(assert (=> bm!417462 (= call!417464 call!417467)))

(declare-fun bm!417463 () Bool)

(assert (=> bm!417463 (= call!417468 (derivationStepZipperDown!905 (ite c!977316 (regOne!31639 (ite c!977020 (regOne!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (ite c!977024 (regTwo!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (ite c!977022 (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (reg!15892 (h!69312 (exprs!5447 (h!69314 zl!343)))))))) (ite c!977320 (regTwo!31638 (ite c!977020 (regOne!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (ite c!977024 (regTwo!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (ite c!977022 (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (reg!15892 (h!69312 (exprs!5447 (h!69314 zl!343)))))))) (ite c!977318 (regOne!31638 (ite c!977020 (regOne!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (ite c!977024 (regTwo!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (ite c!977022 (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (reg!15892 (h!69312 (exprs!5447 (h!69314 zl!343)))))))) (reg!15892 (ite c!977020 (regOne!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (ite c!977024 (regTwo!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (ite c!977022 (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (reg!15892 (h!69312 (exprs!5447 (h!69314 zl!343))))))))))) (ite (or c!977316 c!977320) (ite (or c!977020 c!977024) lt!2253334 (Context!9895 call!417246)) (Context!9895 call!417464)) (h!69313 s!2326)))))

(declare-fun b!5581052 () Bool)

(assert (=> b!5581052 (= e!3443722 call!417463)))

(declare-fun b!5581053 () Bool)

(assert (=> b!5581053 (= e!3443722 ((as const (Array Context!9894 Bool)) false))))

(assert (= (and d!1764381 c!977319) b!5581047))

(assert (= (and d!1764381 (not c!977319)) b!5581050))

(assert (= (and b!5581050 c!977316) b!5581043))

(assert (= (and b!5581050 (not c!977316)) b!5581045))

(assert (= (and b!5581045 res!2368493) b!5581049))

(assert (= (and b!5581045 c!977320) b!5581051))

(assert (= (and b!5581045 (not c!977320)) b!5581046))

(assert (= (and b!5581046 c!977318) b!5581048))

(assert (= (and b!5581046 (not c!977318)) b!5581044))

(assert (= (and b!5581044 c!977317) b!5581052))

(assert (= (and b!5581044 (not c!977317)) b!5581053))

(assert (= (or b!5581048 b!5581052) bm!417462))

(assert (= (or b!5581048 b!5581052) bm!417458))

(assert (= (or b!5581051 bm!417462) bm!417459))

(assert (= (or b!5581051 bm!417458) bm!417460))

(assert (= (or b!5581043 b!5581051) bm!417461))

(assert (= (or b!5581043 bm!417460) bm!417463))

(declare-fun m!6563138 () Bool)

(assert (=> b!5581049 m!6563138))

(declare-fun m!6563140 () Bool)

(assert (=> bm!417459 m!6563140))

(declare-fun m!6563142 () Bool)

(assert (=> b!5581047 m!6563142))

(declare-fun m!6563144 () Bool)

(assert (=> bm!417461 m!6563144))

(declare-fun m!6563146 () Bool)

(assert (=> bm!417463 m!6563146))

(assert (=> bm!417245 d!1764381))

(declare-fun bs!1291145 () Bool)

(declare-fun d!1764383 () Bool)

(assert (= bs!1291145 (and d!1764383 d!1763945)))

(declare-fun lambda!299283 () Int)

(assert (=> bs!1291145 (= lambda!299283 lambda!299223)))

(declare-fun bs!1291146 () Bool)

(assert (= bs!1291146 (and d!1764383 d!1763935)))

(assert (=> bs!1291146 (= lambda!299283 lambda!299219)))

(declare-fun bs!1291147 () Bool)

(assert (= bs!1291147 (and d!1764383 d!1764215)))

(assert (=> bs!1291147 (= lambda!299283 lambda!299266)))

(declare-fun bs!1291148 () Bool)

(assert (= bs!1291148 (and d!1764383 d!1764283)))

(assert (=> bs!1291148 (= lambda!299283 lambda!299271)))

(declare-fun bs!1291149 () Bool)

(assert (= bs!1291149 (and d!1764383 d!1764323)))

(assert (=> bs!1291149 (= lambda!299283 lambda!299278)))

(declare-fun bs!1291150 () Bool)

(assert (= bs!1291150 (and d!1764383 d!1763947)))

(assert (=> bs!1291150 (= lambda!299283 lambda!299226)))

(declare-fun bs!1291151 () Bool)

(assert (= bs!1291151 (and d!1764383 d!1763903)))

(assert (=> bs!1291151 (= lambda!299283 lambda!299207)))

(declare-fun bs!1291152 () Bool)

(assert (= bs!1291152 (and d!1764383 d!1763937)))

(assert (=> bs!1291152 (= lambda!299283 lambda!299220)))

(assert (=> d!1764383 (= (inv!82154 (h!69314 (t!376261 zl!343))) (forall!14732 (exprs!5447 (h!69314 (t!376261 zl!343))) lambda!299283))))

(declare-fun bs!1291153 () Bool)

(assert (= bs!1291153 d!1764383))

(declare-fun m!6563148 () Bool)

(assert (=> bs!1291153 m!6563148))

(assert (=> b!5580088 d!1764383))

(declare-fun d!1764385 () Bool)

(assert (=> d!1764385 (= (nullable!5595 (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343))))) (nullableFct!1707 (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343))))))))

(declare-fun bs!1291154 () Bool)

(assert (= bs!1291154 d!1764385))

(declare-fun m!6563150 () Bool)

(assert (=> bs!1291154 m!6563150))

(assert (=> b!5579921 d!1764385))

(declare-fun d!1764387 () Bool)

(assert (=> d!1764387 (= (Exists!2663 lambda!299215) (choose!42291 lambda!299215))))

(declare-fun bs!1291155 () Bool)

(assert (= bs!1291155 d!1764387))

(declare-fun m!6563152 () Bool)

(assert (=> bs!1291155 m!6563152))

(assert (=> d!1763927 d!1764387))

(declare-fun d!1764389 () Bool)

(assert (=> d!1764389 (= (Exists!2663 lambda!299216) (choose!42291 lambda!299216))))

(declare-fun bs!1291156 () Bool)

(assert (= bs!1291156 d!1764389))

(declare-fun m!6563154 () Bool)

(assert (=> bs!1291156 m!6563154))

(assert (=> d!1763927 d!1764389))

(declare-fun bs!1291157 () Bool)

(declare-fun d!1764391 () Bool)

(assert (= bs!1291157 (and d!1764391 d!1763927)))

(declare-fun lambda!299288 () Int)

(assert (=> bs!1291157 (= lambda!299288 lambda!299215)))

(declare-fun bs!1291158 () Bool)

(assert (= bs!1291158 (and d!1764391 b!5579318)))

(assert (=> bs!1291158 (= lambda!299288 lambda!299168)))

(declare-fun bs!1291159 () Bool)

(assert (= bs!1291159 (and d!1764391 b!5580794)))

(assert (=> bs!1291159 (not (= lambda!299288 lambda!299268))))

(assert (=> bs!1291158 (not (= lambda!299288 lambda!299169))))

(declare-fun bs!1291160 () Bool)

(assert (= bs!1291160 (and d!1764391 d!1763923)))

(assert (=> bs!1291160 (= lambda!299288 lambda!299210)))

(declare-fun bs!1291161 () Bool)

(assert (= bs!1291161 (and d!1764391 b!5579789)))

(assert (=> bs!1291161 (not (= lambda!299288 lambda!299203))))

(declare-fun bs!1291162 () Bool)

(assert (= bs!1291162 (and d!1764391 b!5580896)))

(assert (=> bs!1291162 (not (= lambda!299288 lambda!299273))))

(assert (=> bs!1291157 (not (= lambda!299288 lambda!299216))))

(declare-fun bs!1291163 () Bool)

(assert (= bs!1291163 (and d!1764391 b!5580796)))

(assert (=> bs!1291163 (not (= lambda!299288 lambda!299267))))

(declare-fun bs!1291164 () Bool)

(assert (= bs!1291164 (and d!1764391 b!5579787)))

(assert (=> bs!1291164 (not (= lambda!299288 lambda!299204))))

(declare-fun bs!1291165 () Bool)

(assert (= bs!1291165 (and d!1764391 b!5580898)))

(assert (=> bs!1291165 (not (= lambda!299288 lambda!299272))))

(assert (=> d!1764391 true))

(assert (=> d!1764391 true))

(assert (=> d!1764391 true))

(declare-fun lambda!299289 () Int)

(assert (=> bs!1291157 (not (= lambda!299289 lambda!299215))))

(declare-fun bs!1291166 () Bool)

(assert (= bs!1291166 d!1764391))

(assert (=> bs!1291166 (not (= lambda!299289 lambda!299288))))

(assert (=> bs!1291158 (not (= lambda!299289 lambda!299168))))

(assert (=> bs!1291159 (= (and (= (regOne!31638 r!7292) (regOne!31638 (regTwo!31639 r!7292))) (= (regTwo!31638 r!7292) (regTwo!31638 (regTwo!31639 r!7292)))) (= lambda!299289 lambda!299268))))

(assert (=> bs!1291158 (= lambda!299289 lambda!299169)))

(assert (=> bs!1291160 (not (= lambda!299289 lambda!299210))))

(assert (=> bs!1291161 (not (= lambda!299289 lambda!299203))))

(assert (=> bs!1291162 (= (and (= (regOne!31638 r!7292) (regOne!31638 (regOne!31639 r!7292))) (= (regTwo!31638 r!7292) (regTwo!31638 (regOne!31639 r!7292)))) (= lambda!299289 lambda!299273))))

(assert (=> bs!1291157 (= lambda!299289 lambda!299216)))

(assert (=> bs!1291163 (not (= lambda!299289 lambda!299267))))

(assert (=> bs!1291164 (= lambda!299289 lambda!299204)))

(assert (=> bs!1291165 (not (= lambda!299289 lambda!299272))))

(assert (=> d!1764391 true))

(assert (=> d!1764391 true))

(assert (=> d!1764391 true))

(assert (=> d!1764391 (= (Exists!2663 lambda!299288) (Exists!2663 lambda!299289))))

(assert (=> d!1764391 true))

(declare-fun _$90!1304 () Unit!155624)

(assert (=> d!1764391 (= (choose!42293 (regOne!31638 r!7292) (regTwo!31638 r!7292) s!2326) _$90!1304)))

(declare-fun m!6563156 () Bool)

(assert (=> bs!1291166 m!6563156))

(declare-fun m!6563158 () Bool)

(assert (=> bs!1291166 m!6563158))

(assert (=> d!1763927 d!1764391))

(assert (=> d!1763927 d!1764229))

(declare-fun b!5581062 () Bool)

(declare-fun e!3443731 () (InoxSet Context!9894))

(declare-fun call!417474 () (InoxSet Context!9894))

(declare-fun call!417471 () (InoxSet Context!9894))

(assert (=> b!5581062 (= e!3443731 ((_ map or) call!417474 call!417471))))

(declare-fun d!1764393 () Bool)

(declare-fun c!977324 () Bool)

(assert (=> d!1764393 (= c!977324 (and ((_ is ElementMatch!15563) (h!69312 (exprs!5447 (h!69314 zl!343)))) (= (c!976846 (h!69312 (exprs!5447 (h!69314 zl!343)))) (h!69313 s!2326))))))

(declare-fun e!3443730 () (InoxSet Context!9894))

(assert (=> d!1764393 (= (derivationStepZipperDown!905 (h!69312 (exprs!5447 (h!69314 zl!343))) (Context!9895 (t!376259 (exprs!5447 (h!69314 zl!343)))) (h!69313 s!2326)) e!3443730)))

(declare-fun bm!417464 () Bool)

(declare-fun call!417469 () (InoxSet Context!9894))

(declare-fun call!417472 () (InoxSet Context!9894))

(assert (=> bm!417464 (= call!417469 call!417472)))

(declare-fun call!417473 () List!62988)

(declare-fun bm!417465 () Bool)

(declare-fun c!977323 () Bool)

(declare-fun c!977325 () Bool)

(assert (=> bm!417465 (= call!417473 ($colon$colon!1628 (exprs!5447 (Context!9895 (t!376259 (exprs!5447 (h!69314 zl!343))))) (ite (or c!977325 c!977323) (regTwo!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (h!69312 (exprs!5447 (h!69314 zl!343))))))))

(declare-fun b!5581063 () Bool)

(declare-fun c!977322 () Bool)

(assert (=> b!5581063 (= c!977322 ((_ is Star!15563) (h!69312 (exprs!5447 (h!69314 zl!343)))))))

(declare-fun e!3443729 () (InoxSet Context!9894))

(declare-fun e!3443732 () (InoxSet Context!9894))

(assert (=> b!5581063 (= e!3443729 e!3443732)))

(declare-fun bm!417466 () Bool)

(assert (=> bm!417466 (= call!417472 call!417474)))

(declare-fun c!977321 () Bool)

(declare-fun bm!417467 () Bool)

(assert (=> bm!417467 (= call!417471 (derivationStepZipperDown!905 (ite c!977321 (regTwo!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343))))) (ite c!977321 (Context!9895 (t!376259 (exprs!5447 (h!69314 zl!343)))) (Context!9895 call!417473)) (h!69313 s!2326)))))

(declare-fun b!5581064 () Bool)

(declare-fun e!3443727 () Bool)

(assert (=> b!5581064 (= c!977325 e!3443727)))

(declare-fun res!2368502 () Bool)

(assert (=> b!5581064 (=> (not res!2368502) (not e!3443727))))

(assert (=> b!5581064 (= res!2368502 ((_ is Concat!24408) (h!69312 (exprs!5447 (h!69314 zl!343)))))))

(declare-fun e!3443728 () (InoxSet Context!9894))

(assert (=> b!5581064 (= e!3443731 e!3443728)))

(declare-fun b!5581065 () Bool)

(assert (=> b!5581065 (= e!3443728 e!3443729)))

(assert (=> b!5581065 (= c!977323 ((_ is Concat!24408) (h!69312 (exprs!5447 (h!69314 zl!343)))))))

(declare-fun b!5581066 () Bool)

(assert (=> b!5581066 (= e!3443730 (store ((as const (Array Context!9894 Bool)) false) (Context!9895 (t!376259 (exprs!5447 (h!69314 zl!343)))) true))))

(declare-fun b!5581067 () Bool)

(assert (=> b!5581067 (= e!3443729 call!417469)))

(declare-fun b!5581068 () Bool)

(assert (=> b!5581068 (= e!3443727 (nullable!5595 (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343))))))))

(declare-fun b!5581069 () Bool)

(assert (=> b!5581069 (= e!3443730 e!3443731)))

(assert (=> b!5581069 (= c!977321 ((_ is Union!15563) (h!69312 (exprs!5447 (h!69314 zl!343)))))))

(declare-fun b!5581070 () Bool)

(assert (=> b!5581070 (= e!3443728 ((_ map or) call!417471 call!417472))))

(declare-fun bm!417468 () Bool)

(declare-fun call!417470 () List!62988)

(assert (=> bm!417468 (= call!417470 call!417473)))

(declare-fun bm!417469 () Bool)

(assert (=> bm!417469 (= call!417474 (derivationStepZipperDown!905 (ite c!977321 (regOne!31639 (h!69312 (exprs!5447 (h!69314 zl!343)))) (ite c!977325 (regTwo!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (ite c!977323 (regOne!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (reg!15892 (h!69312 (exprs!5447 (h!69314 zl!343))))))) (ite (or c!977321 c!977325) (Context!9895 (t!376259 (exprs!5447 (h!69314 zl!343)))) (Context!9895 call!417470)) (h!69313 s!2326)))))

(declare-fun b!5581071 () Bool)

(assert (=> b!5581071 (= e!3443732 call!417469)))

(declare-fun b!5581072 () Bool)

(assert (=> b!5581072 (= e!3443732 ((as const (Array Context!9894 Bool)) false))))

(assert (= (and d!1764393 c!977324) b!5581066))

(assert (= (and d!1764393 (not c!977324)) b!5581069))

(assert (= (and b!5581069 c!977321) b!5581062))

(assert (= (and b!5581069 (not c!977321)) b!5581064))

(assert (= (and b!5581064 res!2368502) b!5581068))

(assert (= (and b!5581064 c!977325) b!5581070))

(assert (= (and b!5581064 (not c!977325)) b!5581065))

(assert (= (and b!5581065 c!977323) b!5581067))

(assert (= (and b!5581065 (not c!977323)) b!5581063))

(assert (= (and b!5581063 c!977322) b!5581071))

(assert (= (and b!5581063 (not c!977322)) b!5581072))

(assert (= (or b!5581067 b!5581071) bm!417468))

(assert (= (or b!5581067 b!5581071) bm!417464))

(assert (= (or b!5581070 bm!417468) bm!417465))

(assert (= (or b!5581070 bm!417464) bm!417466))

(assert (= (or b!5581062 b!5581070) bm!417467))

(assert (= (or b!5581062 bm!417466) bm!417469))

(assert (=> b!5581068 m!6562098))

(declare-fun m!6563160 () Bool)

(assert (=> bm!417465 m!6563160))

(declare-fun m!6563162 () Bool)

(assert (=> b!5581066 m!6563162))

(declare-fun m!6563164 () Bool)

(assert (=> bm!417467 m!6563164))

(declare-fun m!6563166 () Bool)

(assert (=> bm!417469 m!6563166))

(assert (=> bm!417248 d!1764393))

(declare-fun bs!1291167 () Bool)

(declare-fun d!1764395 () Bool)

(assert (= bs!1291167 (and d!1764395 d!1764319)))

(declare-fun lambda!299290 () Int)

(assert (=> bs!1291167 (= lambda!299290 lambda!299277)))

(declare-fun bs!1291168 () Bool)

(assert (= bs!1291168 (and d!1764395 d!1764339)))

(assert (=> bs!1291168 (= lambda!299290 lambda!299279)))

(declare-fun bs!1291169 () Bool)

(assert (= bs!1291169 (and d!1764395 d!1764353)))

(assert (=> bs!1291169 (= lambda!299290 lambda!299281)))

(assert (=> d!1764395 (= (nullableZipper!1560 lt!2253321) (exists!2161 lt!2253321 lambda!299290))))

(declare-fun bs!1291170 () Bool)

(assert (= bs!1291170 d!1764395))

(declare-fun m!6563168 () Bool)

(assert (=> bs!1291170 m!6563168))

(assert (=> b!5579881 d!1764395))

(declare-fun b!5581073 () Bool)

(declare-fun e!3443739 () Bool)

(declare-fun e!3443733 () Bool)

(assert (=> b!5581073 (= e!3443739 e!3443733)))

(declare-fun res!2368505 () Bool)

(assert (=> b!5581073 (= res!2368505 (not (nullable!5595 (reg!15892 lt!2253397))))))

(assert (=> b!5581073 (=> (not res!2368505) (not e!3443733))))

(declare-fun bm!417470 () Bool)

(declare-fun call!417477 () Bool)

(declare-fun call!417476 () Bool)

(assert (=> bm!417470 (= call!417477 call!417476)))

(declare-fun b!5581074 () Bool)

(declare-fun e!3443734 () Bool)

(declare-fun e!3443738 () Bool)

(assert (=> b!5581074 (= e!3443734 e!3443738)))

(declare-fun res!2368506 () Bool)

(assert (=> b!5581074 (=> (not res!2368506) (not e!3443738))))

(declare-fun call!417475 () Bool)

(assert (=> b!5581074 (= res!2368506 call!417475)))

(declare-fun b!5581075 () Bool)

(declare-fun res!2368503 () Bool)

(declare-fun e!3443737 () Bool)

(assert (=> b!5581075 (=> (not res!2368503) (not e!3443737))))

(assert (=> b!5581075 (= res!2368503 call!417475)))

(declare-fun e!3443735 () Bool)

(assert (=> b!5581075 (= e!3443735 e!3443737)))

(declare-fun b!5581076 () Bool)

(assert (=> b!5581076 (= e!3443739 e!3443735)))

(declare-fun c!977326 () Bool)

(assert (=> b!5581076 (= c!977326 ((_ is Union!15563) lt!2253397))))

(declare-fun b!5581077 () Bool)

(assert (=> b!5581077 (= e!3443738 call!417477)))

(declare-fun b!5581078 () Bool)

(assert (=> b!5581078 (= e!3443733 call!417476)))

(declare-fun b!5581079 () Bool)

(declare-fun e!3443736 () Bool)

(assert (=> b!5581079 (= e!3443736 e!3443739)))

(declare-fun c!977327 () Bool)

(assert (=> b!5581079 (= c!977327 ((_ is Star!15563) lt!2253397))))

(declare-fun bm!417472 () Bool)

(assert (=> bm!417472 (= call!417475 (validRegex!7299 (ite c!977326 (regOne!31639 lt!2253397) (regOne!31638 lt!2253397))))))

(declare-fun b!5581080 () Bool)

(assert (=> b!5581080 (= e!3443737 call!417477)))

(declare-fun b!5581081 () Bool)

(declare-fun res!2368504 () Bool)

(assert (=> b!5581081 (=> res!2368504 e!3443734)))

(assert (=> b!5581081 (= res!2368504 (not ((_ is Concat!24408) lt!2253397)))))

(assert (=> b!5581081 (= e!3443735 e!3443734)))

(declare-fun d!1764397 () Bool)

(declare-fun res!2368507 () Bool)

(assert (=> d!1764397 (=> res!2368507 e!3443736)))

(assert (=> d!1764397 (= res!2368507 ((_ is ElementMatch!15563) lt!2253397))))

(assert (=> d!1764397 (= (validRegex!7299 lt!2253397) e!3443736)))

(declare-fun bm!417471 () Bool)

(assert (=> bm!417471 (= call!417476 (validRegex!7299 (ite c!977327 (reg!15892 lt!2253397) (ite c!977326 (regTwo!31639 lt!2253397) (regTwo!31638 lt!2253397)))))))

(assert (= (and d!1764397 (not res!2368507)) b!5581079))

(assert (= (and b!5581079 c!977327) b!5581073))

(assert (= (and b!5581079 (not c!977327)) b!5581076))

(assert (= (and b!5581073 res!2368505) b!5581078))

(assert (= (and b!5581076 c!977326) b!5581075))

(assert (= (and b!5581076 (not c!977326)) b!5581081))

(assert (= (and b!5581075 res!2368503) b!5581080))

(assert (= (and b!5581081 (not res!2368504)) b!5581074))

(assert (= (and b!5581074 res!2368506) b!5581077))

(assert (= (or b!5581080 b!5581077) bm!417470))

(assert (= (or b!5581075 b!5581074) bm!417472))

(assert (= (or b!5581078 bm!417470) bm!417471))

(declare-fun m!6563170 () Bool)

(assert (=> b!5581073 m!6563170))

(declare-fun m!6563172 () Bool)

(assert (=> bm!417472 m!6563172))

(declare-fun m!6563174 () Bool)

(assert (=> bm!417471 m!6563174))

(assert (=> d!1763903 d!1764397))

(declare-fun d!1764399 () Bool)

(declare-fun res!2368508 () Bool)

(declare-fun e!3443740 () Bool)

(assert (=> d!1764399 (=> res!2368508 e!3443740)))

(assert (=> d!1764399 (= res!2368508 ((_ is Nil!62864) (exprs!5447 (h!69314 zl!343))))))

(assert (=> d!1764399 (= (forall!14732 (exprs!5447 (h!69314 zl!343)) lambda!299207) e!3443740)))

(declare-fun b!5581082 () Bool)

(declare-fun e!3443741 () Bool)

(assert (=> b!5581082 (= e!3443740 e!3443741)))

(declare-fun res!2368509 () Bool)

(assert (=> b!5581082 (=> (not res!2368509) (not e!3443741))))

(assert (=> b!5581082 (= res!2368509 (dynLambda!24587 lambda!299207 (h!69312 (exprs!5447 (h!69314 zl!343)))))))

(declare-fun b!5581083 () Bool)

(assert (=> b!5581083 (= e!3443741 (forall!14732 (t!376259 (exprs!5447 (h!69314 zl!343))) lambda!299207))))

(assert (= (and d!1764399 (not res!2368508)) b!5581082))

(assert (= (and b!5581082 res!2368509) b!5581083))

(declare-fun b_lambda!211531 () Bool)

(assert (=> (not b_lambda!211531) (not b!5581082)))

(declare-fun m!6563176 () Bool)

(assert (=> b!5581082 m!6563176))

(declare-fun m!6563178 () Bool)

(assert (=> b!5581083 m!6563178))

(assert (=> d!1763903 d!1764399))

(declare-fun d!1764401 () Bool)

(assert (=> d!1764401 (= (isEmpty!34671 (unfocusZipperList!991 zl!343)) ((_ is Nil!62864) (unfocusZipperList!991 zl!343)))))

(assert (=> b!5580042 d!1764401))

(declare-fun d!1764403 () Bool)

(declare-fun c!977330 () Bool)

(assert (=> d!1764403 (= c!977330 ((_ is Nil!62866) lt!2253416))))

(declare-fun e!3443744 () (InoxSet Context!9894))

(assert (=> d!1764403 (= (content!11331 lt!2253416) e!3443744)))

(declare-fun b!5581088 () Bool)

(assert (=> b!5581088 (= e!3443744 ((as const (Array Context!9894 Bool)) false))))

(declare-fun b!5581089 () Bool)

(assert (=> b!5581089 (= e!3443744 ((_ map or) (store ((as const (Array Context!9894 Bool)) false) (h!69314 lt!2253416) true) (content!11331 (t!376261 lt!2253416))))))

(assert (= (and d!1764403 c!977330) b!5581088))

(assert (= (and d!1764403 (not c!977330)) b!5581089))

(declare-fun m!6563180 () Bool)

(assert (=> b!5581089 m!6563180))

(declare-fun m!6563182 () Bool)

(assert (=> b!5581089 m!6563182))

(assert (=> b!5579982 d!1764403))

(declare-fun bs!1291171 () Bool)

(declare-fun d!1764405 () Bool)

(assert (= bs!1291171 (and d!1764405 d!1763945)))

(declare-fun lambda!299291 () Int)

(assert (=> bs!1291171 (= lambda!299291 lambda!299223)))

(declare-fun bs!1291172 () Bool)

(assert (= bs!1291172 (and d!1764405 d!1763935)))

(assert (=> bs!1291172 (= lambda!299291 lambda!299219)))

(declare-fun bs!1291173 () Bool)

(assert (= bs!1291173 (and d!1764405 d!1764215)))

(assert (=> bs!1291173 (= lambda!299291 lambda!299266)))

(declare-fun bs!1291174 () Bool)

(assert (= bs!1291174 (and d!1764405 d!1764283)))

(assert (=> bs!1291174 (= lambda!299291 lambda!299271)))

(declare-fun bs!1291175 () Bool)

(assert (= bs!1291175 (and d!1764405 d!1764383)))

(assert (=> bs!1291175 (= lambda!299291 lambda!299283)))

(declare-fun bs!1291176 () Bool)

(assert (= bs!1291176 (and d!1764405 d!1764323)))

(assert (=> bs!1291176 (= lambda!299291 lambda!299278)))

(declare-fun bs!1291177 () Bool)

(assert (= bs!1291177 (and d!1764405 d!1763947)))

(assert (=> bs!1291177 (= lambda!299291 lambda!299226)))

(declare-fun bs!1291178 () Bool)

(assert (= bs!1291178 (and d!1764405 d!1763903)))

(assert (=> bs!1291178 (= lambda!299291 lambda!299207)))

(declare-fun bs!1291179 () Bool)

(assert (= bs!1291179 (and d!1764405 d!1763937)))

(assert (=> bs!1291179 (= lambda!299291 lambda!299220)))

(declare-fun b!5581090 () Bool)

(declare-fun e!3443747 () Regex!15563)

(assert (=> b!5581090 (= e!3443747 EmptyExpr!15563)))

(declare-fun b!5581091 () Bool)

(declare-fun e!3443746 () Bool)

(declare-fun lt!2253468 () Regex!15563)

(assert (=> b!5581091 (= e!3443746 (isConcat!643 lt!2253468))))

(declare-fun b!5581092 () Bool)

(declare-fun e!3443745 () Regex!15563)

(assert (=> b!5581092 (= e!3443745 e!3443747)))

(declare-fun c!977332 () Bool)

(assert (=> b!5581092 (= c!977332 ((_ is Cons!62864) (t!376259 (exprs!5447 (h!69314 zl!343)))))))

(declare-fun e!3443748 () Bool)

(assert (=> d!1764405 e!3443748))

(declare-fun res!2368511 () Bool)

(assert (=> d!1764405 (=> (not res!2368511) (not e!3443748))))

(assert (=> d!1764405 (= res!2368511 (validRegex!7299 lt!2253468))))

(assert (=> d!1764405 (= lt!2253468 e!3443745)))

(declare-fun c!977334 () Bool)

(declare-fun e!3443750 () Bool)

(assert (=> d!1764405 (= c!977334 e!3443750)))

(declare-fun res!2368510 () Bool)

(assert (=> d!1764405 (=> (not res!2368510) (not e!3443750))))

(assert (=> d!1764405 (= res!2368510 ((_ is Cons!62864) (t!376259 (exprs!5447 (h!69314 zl!343)))))))

(assert (=> d!1764405 (forall!14732 (t!376259 (exprs!5447 (h!69314 zl!343))) lambda!299291)))

(assert (=> d!1764405 (= (generalisedConcat!1178 (t!376259 (exprs!5447 (h!69314 zl!343)))) lt!2253468)))

(declare-fun b!5581093 () Bool)

(declare-fun e!3443749 () Bool)

(assert (=> b!5581093 (= e!3443749 (isEmptyExpr!1120 lt!2253468))))

(declare-fun b!5581094 () Bool)

(assert (=> b!5581094 (= e!3443748 e!3443749)))

(declare-fun c!977333 () Bool)

(assert (=> b!5581094 (= c!977333 (isEmpty!34671 (t!376259 (exprs!5447 (h!69314 zl!343)))))))

(declare-fun b!5581095 () Bool)

(assert (=> b!5581095 (= e!3443749 e!3443746)))

(declare-fun c!977331 () Bool)

(assert (=> b!5581095 (= c!977331 (isEmpty!34671 (tail!10996 (t!376259 (exprs!5447 (h!69314 zl!343))))))))

(declare-fun b!5581096 () Bool)

(assert (=> b!5581096 (= e!3443746 (= lt!2253468 (head!11901 (t!376259 (exprs!5447 (h!69314 zl!343))))))))

(declare-fun b!5581097 () Bool)

(assert (=> b!5581097 (= e!3443750 (isEmpty!34671 (t!376259 (t!376259 (exprs!5447 (h!69314 zl!343))))))))

(declare-fun b!5581098 () Bool)

(assert (=> b!5581098 (= e!3443745 (h!69312 (t!376259 (exprs!5447 (h!69314 zl!343)))))))

(declare-fun b!5581099 () Bool)

(assert (=> b!5581099 (= e!3443747 (Concat!24408 (h!69312 (t!376259 (exprs!5447 (h!69314 zl!343)))) (generalisedConcat!1178 (t!376259 (t!376259 (exprs!5447 (h!69314 zl!343)))))))))

(assert (= (and d!1764405 res!2368510) b!5581097))

(assert (= (and d!1764405 c!977334) b!5581098))

(assert (= (and d!1764405 (not c!977334)) b!5581092))

(assert (= (and b!5581092 c!977332) b!5581099))

(assert (= (and b!5581092 (not c!977332)) b!5581090))

(assert (= (and d!1764405 res!2368511) b!5581094))

(assert (= (and b!5581094 c!977333) b!5581093))

(assert (= (and b!5581094 (not c!977333)) b!5581095))

(assert (= (and b!5581095 c!977331) b!5581096))

(assert (= (and b!5581095 (not c!977331)) b!5581091))

(declare-fun m!6563184 () Bool)

(assert (=> d!1764405 m!6563184))

(declare-fun m!6563186 () Bool)

(assert (=> d!1764405 m!6563186))

(declare-fun m!6563188 () Bool)

(assert (=> b!5581091 m!6563188))

(declare-fun m!6563190 () Bool)

(assert (=> b!5581095 m!6563190))

(assert (=> b!5581095 m!6563190))

(declare-fun m!6563192 () Bool)

(assert (=> b!5581095 m!6563192))

(declare-fun m!6563194 () Bool)

(assert (=> b!5581097 m!6563194))

(declare-fun m!6563196 () Bool)

(assert (=> b!5581096 m!6563196))

(declare-fun m!6563198 () Bool)

(assert (=> b!5581099 m!6563198))

(declare-fun m!6563200 () Bool)

(assert (=> b!5581093 m!6563200))

(assert (=> b!5581094 m!6561696))

(assert (=> b!5579914 d!1764405))

(declare-fun d!1764407 () Bool)

(assert (=> d!1764407 (= ($colon$colon!1628 (exprs!5447 lt!2253334) (ite (or c!977024 c!977022) (regTwo!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (h!69312 (exprs!5447 (h!69314 zl!343))))) (Cons!62864 (ite (or c!977024 c!977022) (regTwo!31638 (h!69312 (exprs!5447 (h!69314 zl!343)))) (h!69312 (exprs!5447 (h!69314 zl!343)))) (exprs!5447 lt!2253334)))))

(assert (=> bm!417241 d!1764407))

(declare-fun bs!1291180 () Bool)

(declare-fun d!1764409 () Bool)

(assert (= bs!1291180 (and d!1764409 d!1764319)))

(declare-fun lambda!299292 () Int)

(assert (=> bs!1291180 (= lambda!299292 lambda!299277)))

(declare-fun bs!1291181 () Bool)

(assert (= bs!1291181 (and d!1764409 d!1764339)))

(assert (=> bs!1291181 (= lambda!299292 lambda!299279)))

(declare-fun bs!1291182 () Bool)

(assert (= bs!1291182 (and d!1764409 d!1764353)))

(assert (=> bs!1291182 (= lambda!299292 lambda!299281)))

(declare-fun bs!1291183 () Bool)

(assert (= bs!1291183 (and d!1764409 d!1764395)))

(assert (=> bs!1291183 (= lambda!299292 lambda!299290)))

(assert (=> d!1764409 (= (nullableZipper!1560 lt!2253325) (exists!2161 lt!2253325 lambda!299292))))

(declare-fun bs!1291184 () Bool)

(assert (= bs!1291184 d!1764409))

(declare-fun m!6563202 () Bool)

(assert (=> bs!1291184 m!6563202))

(assert (=> b!5579835 d!1764409))

(declare-fun b!5581100 () Bool)

(declare-fun e!3443755 () (InoxSet Context!9894))

(declare-fun call!417483 () (InoxSet Context!9894))

(declare-fun call!417480 () (InoxSet Context!9894))

(assert (=> b!5581100 (= e!3443755 ((_ map or) call!417483 call!417480))))

(declare-fun c!977338 () Bool)

(declare-fun d!1764411 () Bool)

(assert (=> d!1764411 (= c!977338 (and ((_ is ElementMatch!15563) (ite c!976996 (regTwo!31639 (regTwo!31639 (regOne!31638 r!7292))) (regOne!31638 (regTwo!31639 (regOne!31638 r!7292))))) (= (c!976846 (ite c!976996 (regTwo!31639 (regTwo!31639 (regOne!31638 r!7292))) (regOne!31638 (regTwo!31639 (regOne!31638 r!7292))))) (h!69313 s!2326))))))

(declare-fun e!3443754 () (InoxSet Context!9894))

(assert (=> d!1764411 (= (derivationStepZipperDown!905 (ite c!976996 (regTwo!31639 (regTwo!31639 (regOne!31638 r!7292))) (regOne!31638 (regTwo!31639 (regOne!31638 r!7292)))) (ite c!976996 lt!2253334 (Context!9895 call!417237)) (h!69313 s!2326)) e!3443754)))

(declare-fun bm!417473 () Bool)

(declare-fun call!417478 () (InoxSet Context!9894))

(declare-fun call!417481 () (InoxSet Context!9894))

(assert (=> bm!417473 (= call!417478 call!417481)))

(declare-fun bm!417474 () Bool)

(declare-fun c!977339 () Bool)

(declare-fun c!977337 () Bool)

(declare-fun call!417482 () List!62988)

(assert (=> bm!417474 (= call!417482 ($colon$colon!1628 (exprs!5447 (ite c!976996 lt!2253334 (Context!9895 call!417237))) (ite (or c!977339 c!977337) (regTwo!31638 (ite c!976996 (regTwo!31639 (regTwo!31639 (regOne!31638 r!7292))) (regOne!31638 (regTwo!31639 (regOne!31638 r!7292))))) (ite c!976996 (regTwo!31639 (regTwo!31639 (regOne!31638 r!7292))) (regOne!31638 (regTwo!31639 (regOne!31638 r!7292)))))))))

(declare-fun b!5581101 () Bool)

(declare-fun c!977336 () Bool)

(assert (=> b!5581101 (= c!977336 ((_ is Star!15563) (ite c!976996 (regTwo!31639 (regTwo!31639 (regOne!31638 r!7292))) (regOne!31638 (regTwo!31639 (regOne!31638 r!7292))))))))

(declare-fun e!3443753 () (InoxSet Context!9894))

(declare-fun e!3443756 () (InoxSet Context!9894))

(assert (=> b!5581101 (= e!3443753 e!3443756)))

(declare-fun bm!417475 () Bool)

(assert (=> bm!417475 (= call!417481 call!417483)))

(declare-fun bm!417476 () Bool)

(declare-fun c!977335 () Bool)

(assert (=> bm!417476 (= call!417480 (derivationStepZipperDown!905 (ite c!977335 (regTwo!31639 (ite c!976996 (regTwo!31639 (regTwo!31639 (regOne!31638 r!7292))) (regOne!31638 (regTwo!31639 (regOne!31638 r!7292))))) (regOne!31638 (ite c!976996 (regTwo!31639 (regTwo!31639 (regOne!31638 r!7292))) (regOne!31638 (regTwo!31639 (regOne!31638 r!7292)))))) (ite c!977335 (ite c!976996 lt!2253334 (Context!9895 call!417237)) (Context!9895 call!417482)) (h!69313 s!2326)))))

(declare-fun b!5581102 () Bool)

(declare-fun e!3443751 () Bool)

(assert (=> b!5581102 (= c!977339 e!3443751)))

(declare-fun res!2368512 () Bool)

(assert (=> b!5581102 (=> (not res!2368512) (not e!3443751))))

(assert (=> b!5581102 (= res!2368512 ((_ is Concat!24408) (ite c!976996 (regTwo!31639 (regTwo!31639 (regOne!31638 r!7292))) (regOne!31638 (regTwo!31639 (regOne!31638 r!7292))))))))

(declare-fun e!3443752 () (InoxSet Context!9894))

(assert (=> b!5581102 (= e!3443755 e!3443752)))

(declare-fun b!5581103 () Bool)

(assert (=> b!5581103 (= e!3443752 e!3443753)))

(assert (=> b!5581103 (= c!977337 ((_ is Concat!24408) (ite c!976996 (regTwo!31639 (regTwo!31639 (regOne!31638 r!7292))) (regOne!31638 (regTwo!31639 (regOne!31638 r!7292))))))))

(declare-fun b!5581104 () Bool)

(assert (=> b!5581104 (= e!3443754 (store ((as const (Array Context!9894 Bool)) false) (ite c!976996 lt!2253334 (Context!9895 call!417237)) true))))

(declare-fun b!5581105 () Bool)

(assert (=> b!5581105 (= e!3443753 call!417478)))

(declare-fun b!5581106 () Bool)

(assert (=> b!5581106 (= e!3443751 (nullable!5595 (regOne!31638 (ite c!976996 (regTwo!31639 (regTwo!31639 (regOne!31638 r!7292))) (regOne!31638 (regTwo!31639 (regOne!31638 r!7292)))))))))

(declare-fun b!5581107 () Bool)

(assert (=> b!5581107 (= e!3443754 e!3443755)))

(assert (=> b!5581107 (= c!977335 ((_ is Union!15563) (ite c!976996 (regTwo!31639 (regTwo!31639 (regOne!31638 r!7292))) (regOne!31638 (regTwo!31639 (regOne!31638 r!7292))))))))

(declare-fun b!5581108 () Bool)

(assert (=> b!5581108 (= e!3443752 ((_ map or) call!417480 call!417481))))

(declare-fun bm!417477 () Bool)

(declare-fun call!417479 () List!62988)

(assert (=> bm!417477 (= call!417479 call!417482)))

(declare-fun bm!417478 () Bool)

(assert (=> bm!417478 (= call!417483 (derivationStepZipperDown!905 (ite c!977335 (regOne!31639 (ite c!976996 (regTwo!31639 (regTwo!31639 (regOne!31638 r!7292))) (regOne!31638 (regTwo!31639 (regOne!31638 r!7292))))) (ite c!977339 (regTwo!31638 (ite c!976996 (regTwo!31639 (regTwo!31639 (regOne!31638 r!7292))) (regOne!31638 (regTwo!31639 (regOne!31638 r!7292))))) (ite c!977337 (regOne!31638 (ite c!976996 (regTwo!31639 (regTwo!31639 (regOne!31638 r!7292))) (regOne!31638 (regTwo!31639 (regOne!31638 r!7292))))) (reg!15892 (ite c!976996 (regTwo!31639 (regTwo!31639 (regOne!31638 r!7292))) (regOne!31638 (regTwo!31639 (regOne!31638 r!7292)))))))) (ite (or c!977335 c!977339) (ite c!976996 lt!2253334 (Context!9895 call!417237)) (Context!9895 call!417479)) (h!69313 s!2326)))))

(declare-fun b!5581109 () Bool)

(assert (=> b!5581109 (= e!3443756 call!417478)))

(declare-fun b!5581110 () Bool)

(assert (=> b!5581110 (= e!3443756 ((as const (Array Context!9894 Bool)) false))))

(assert (= (and d!1764411 c!977338) b!5581104))

(assert (= (and d!1764411 (not c!977338)) b!5581107))

(assert (= (and b!5581107 c!977335) b!5581100))

(assert (= (and b!5581107 (not c!977335)) b!5581102))

(assert (= (and b!5581102 res!2368512) b!5581106))

(assert (= (and b!5581102 c!977339) b!5581108))

(assert (= (and b!5581102 (not c!977339)) b!5581103))

(assert (= (and b!5581103 c!977337) b!5581105))

(assert (= (and b!5581103 (not c!977337)) b!5581101))

(assert (= (and b!5581101 c!977336) b!5581109))

(assert (= (and b!5581101 (not c!977336)) b!5581110))

(assert (= (or b!5581105 b!5581109) bm!417477))

(assert (= (or b!5581105 b!5581109) bm!417473))

(assert (= (or b!5581108 bm!417477) bm!417474))

(assert (= (or b!5581108 bm!417473) bm!417475))

(assert (= (or b!5581100 b!5581108) bm!417476))

(assert (= (or b!5581100 bm!417475) bm!417478))

(declare-fun m!6563204 () Bool)

(assert (=> b!5581106 m!6563204))

(declare-fun m!6563206 () Bool)

(assert (=> bm!417474 m!6563206))

(declare-fun m!6563208 () Bool)

(assert (=> b!5581104 m!6563208))

(declare-fun m!6563210 () Bool)

(assert (=> bm!417476 m!6563210))

(declare-fun m!6563212 () Bool)

(assert (=> bm!417478 m!6563212))

(assert (=> bm!417231 d!1764411))

(assert (=> b!5579827 d!1764243))

(declare-fun d!1764413 () Bool)

(declare-fun c!977340 () Bool)

(assert (=> d!1764413 (= c!977340 (isEmpty!34675 (tail!10995 s!2326)))))

(declare-fun e!3443757 () Bool)

(assert (=> d!1764413 (= (matchZipper!1701 (derivationStepZipper!1662 lt!2253320 (head!11900 s!2326)) (tail!10995 s!2326)) e!3443757)))

(declare-fun b!5581111 () Bool)

(assert (=> b!5581111 (= e!3443757 (nullableZipper!1560 (derivationStepZipper!1662 lt!2253320 (head!11900 s!2326))))))

(declare-fun b!5581112 () Bool)

(assert (=> b!5581112 (= e!3443757 (matchZipper!1701 (derivationStepZipper!1662 (derivationStepZipper!1662 lt!2253320 (head!11900 s!2326)) (head!11900 (tail!10995 s!2326))) (tail!10995 (tail!10995 s!2326))))))

(assert (= (and d!1764413 c!977340) b!5581111))

(assert (= (and d!1764413 (not c!977340)) b!5581112))

(assert (=> d!1764413 m!6562034))

(assert (=> d!1764413 m!6562036))

(assert (=> b!5581111 m!6562076))

(declare-fun m!6563214 () Bool)

(assert (=> b!5581111 m!6563214))

(assert (=> b!5581112 m!6562034))

(assert (=> b!5581112 m!6562826))

(assert (=> b!5581112 m!6562076))

(assert (=> b!5581112 m!6562826))

(declare-fun m!6563216 () Bool)

(assert (=> b!5581112 m!6563216))

(assert (=> b!5581112 m!6562034))

(assert (=> b!5581112 m!6562830))

(assert (=> b!5581112 m!6563216))

(assert (=> b!5581112 m!6562830))

(declare-fun m!6563218 () Bool)

(assert (=> b!5581112 m!6563218))

(assert (=> b!5579884 d!1764413))

(declare-fun bs!1291185 () Bool)

(declare-fun d!1764415 () Bool)

(assert (= bs!1291185 (and d!1764415 d!1764343)))

(declare-fun lambda!299293 () Int)

(assert (=> bs!1291185 (= (= (head!11900 s!2326) (head!11900 (t!376260 s!2326))) (= lambda!299293 lambda!299280))))

(declare-fun bs!1291186 () Bool)

(assert (= bs!1291186 (and d!1764415 d!1764273)))

(assert (=> bs!1291186 (= (= (head!11900 s!2326) (head!11900 (t!376260 s!2326))) (= lambda!299293 lambda!299270))))

(declare-fun bs!1291187 () Bool)

(assert (= bs!1291187 (and d!1764415 d!1764255)))

(assert (=> bs!1291187 (= (= (head!11900 s!2326) (head!11900 (t!376260 s!2326))) (= lambda!299293 lambda!299269))))

(declare-fun bs!1291188 () Bool)

(assert (= bs!1291188 (and d!1764415 d!1764367)))

(assert (=> bs!1291188 (= (= (head!11900 s!2326) (head!11900 (t!376260 s!2326))) (= lambda!299293 lambda!299282))))

(declare-fun bs!1291189 () Bool)

(assert (= bs!1291189 (and d!1764415 d!1764297)))

(assert (=> bs!1291189 (= (= (head!11900 s!2326) (head!11900 (t!376260 s!2326))) (= lambda!299293 lambda!299274))))

(declare-fun bs!1291190 () Bool)

(assert (= bs!1291190 (and d!1764415 d!1764209)))

(assert (=> bs!1291190 (= (= (head!11900 s!2326) (head!11900 (t!376260 s!2326))) (= lambda!299293 lambda!299265))))

(declare-fun bs!1291191 () Bool)

(assert (= bs!1291191 (and d!1764415 b!5579326)))

(assert (=> bs!1291191 (= (= (head!11900 s!2326) (h!69313 s!2326)) (= lambda!299293 lambda!299170))))

(assert (=> d!1764415 true))

(assert (=> d!1764415 (= (derivationStepZipper!1662 lt!2253320 (head!11900 s!2326)) (flatMap!1176 lt!2253320 lambda!299293))))

(declare-fun bs!1291192 () Bool)

(assert (= bs!1291192 d!1764415))

(declare-fun m!6563220 () Bool)

(assert (=> bs!1291192 m!6563220))

(assert (=> b!5579884 d!1764415))

(assert (=> b!5579884 d!1764243))

(assert (=> b!5579884 d!1764221))

(declare-fun d!1764417 () Bool)

(assert (=> d!1764417 (= (Exists!2663 (ite c!976973 lambda!299203 lambda!299204)) (choose!42291 (ite c!976973 lambda!299203 lambda!299204)))))

(declare-fun bs!1291193 () Bool)

(assert (= bs!1291193 d!1764417))

(declare-fun m!6563222 () Bool)

(assert (=> bs!1291193 m!6563222))

(assert (=> bm!417211 d!1764417))

(declare-fun b!5581113 () Bool)

(declare-fun res!2368518 () Bool)

(declare-fun e!3443761 () Bool)

(assert (=> b!5581113 (=> res!2368518 e!3443761)))

(assert (=> b!5581113 (= res!2368518 (not (isEmpty!34675 (tail!10995 (_1!35963 (get!21644 lt!2253406))))))))

(declare-fun b!5581114 () Bool)

(declare-fun res!2368519 () Bool)

(declare-fun e!3443760 () Bool)

(assert (=> b!5581114 (=> (not res!2368519) (not e!3443760))))

(assert (=> b!5581114 (= res!2368519 (isEmpty!34675 (tail!10995 (_1!35963 (get!21644 lt!2253406)))))))

(declare-fun b!5581115 () Bool)

(declare-fun e!3443762 () Bool)

(declare-fun lt!2253469 () Bool)

(declare-fun call!417484 () Bool)

(assert (=> b!5581115 (= e!3443762 (= lt!2253469 call!417484))))

(declare-fun b!5581116 () Bool)

(declare-fun e!3443758 () Bool)

(assert (=> b!5581116 (= e!3443758 (not lt!2253469))))

(declare-fun b!5581117 () Bool)

(declare-fun res!2368515 () Bool)

(assert (=> b!5581117 (=> (not res!2368515) (not e!3443760))))

(assert (=> b!5581117 (= res!2368515 (not call!417484))))

(declare-fun b!5581118 () Bool)

(declare-fun e!3443759 () Bool)

(assert (=> b!5581118 (= e!3443759 (matchR!7748 (derivativeStep!4414 (regOne!31638 r!7292) (head!11900 (_1!35963 (get!21644 lt!2253406)))) (tail!10995 (_1!35963 (get!21644 lt!2253406)))))))

(declare-fun b!5581119 () Bool)

(assert (=> b!5581119 (= e!3443761 (not (= (head!11900 (_1!35963 (get!21644 lt!2253406))) (c!976846 (regOne!31638 r!7292)))))))

(declare-fun bm!417479 () Bool)

(assert (=> bm!417479 (= call!417484 (isEmpty!34675 (_1!35963 (get!21644 lt!2253406))))))

(declare-fun b!5581120 () Bool)

(declare-fun e!3443764 () Bool)

(assert (=> b!5581120 (= e!3443764 e!3443761)))

(declare-fun res!2368514 () Bool)

(assert (=> b!5581120 (=> res!2368514 e!3443761)))

(assert (=> b!5581120 (= res!2368514 call!417484)))

(declare-fun b!5581121 () Bool)

(assert (=> b!5581121 (= e!3443760 (= (head!11900 (_1!35963 (get!21644 lt!2253406))) (c!976846 (regOne!31638 r!7292))))))

(declare-fun b!5581122 () Bool)

(declare-fun res!2368517 () Bool)

(declare-fun e!3443763 () Bool)

(assert (=> b!5581122 (=> res!2368517 e!3443763)))

(assert (=> b!5581122 (= res!2368517 (not ((_ is ElementMatch!15563) (regOne!31638 r!7292))))))

(assert (=> b!5581122 (= e!3443758 e!3443763)))

(declare-fun b!5581123 () Bool)

(assert (=> b!5581123 (= e!3443759 (nullable!5595 (regOne!31638 r!7292)))))

(declare-fun d!1764419 () Bool)

(assert (=> d!1764419 e!3443762))

(declare-fun c!977343 () Bool)

(assert (=> d!1764419 (= c!977343 ((_ is EmptyExpr!15563) (regOne!31638 r!7292)))))

(assert (=> d!1764419 (= lt!2253469 e!3443759)))

(declare-fun c!977342 () Bool)

(assert (=> d!1764419 (= c!977342 (isEmpty!34675 (_1!35963 (get!21644 lt!2253406))))))

(assert (=> d!1764419 (validRegex!7299 (regOne!31638 r!7292))))

(assert (=> d!1764419 (= (matchR!7748 (regOne!31638 r!7292) (_1!35963 (get!21644 lt!2253406))) lt!2253469)))

(declare-fun b!5581124 () Bool)

(assert (=> b!5581124 (= e!3443762 e!3443758)))

(declare-fun c!977341 () Bool)

(assert (=> b!5581124 (= c!977341 ((_ is EmptyLang!15563) (regOne!31638 r!7292)))))

(declare-fun b!5581125 () Bool)

(assert (=> b!5581125 (= e!3443763 e!3443764)))

(declare-fun res!2368516 () Bool)

(assert (=> b!5581125 (=> (not res!2368516) (not e!3443764))))

(assert (=> b!5581125 (= res!2368516 (not lt!2253469))))

(declare-fun b!5581126 () Bool)

(declare-fun res!2368513 () Bool)

(assert (=> b!5581126 (=> res!2368513 e!3443763)))

(assert (=> b!5581126 (= res!2368513 e!3443760)))

(declare-fun res!2368520 () Bool)

(assert (=> b!5581126 (=> (not res!2368520) (not e!3443760))))

(assert (=> b!5581126 (= res!2368520 lt!2253469)))

(assert (= (and d!1764419 c!977342) b!5581123))

(assert (= (and d!1764419 (not c!977342)) b!5581118))

(assert (= (and d!1764419 c!977343) b!5581115))

(assert (= (and d!1764419 (not c!977343)) b!5581124))

(assert (= (and b!5581124 c!977341) b!5581116))

(assert (= (and b!5581124 (not c!977341)) b!5581122))

(assert (= (and b!5581122 (not res!2368517)) b!5581126))

(assert (= (and b!5581126 res!2368520) b!5581117))

(assert (= (and b!5581117 res!2368515) b!5581114))

(assert (= (and b!5581114 res!2368519) b!5581121))

(assert (= (and b!5581126 (not res!2368513)) b!5581125))

(assert (= (and b!5581125 res!2368516) b!5581120))

(assert (= (and b!5581120 (not res!2368514)) b!5581113))

(assert (= (and b!5581113 (not res!2368518)) b!5581119))

(assert (= (or b!5581115 b!5581117 b!5581120) bm!417479))

(declare-fun m!6563224 () Bool)

(assert (=> b!5581119 m!6563224))

(assert (=> b!5581123 m!6562798))

(declare-fun m!6563226 () Bool)

(assert (=> b!5581113 m!6563226))

(assert (=> b!5581113 m!6563226))

(declare-fun m!6563228 () Bool)

(assert (=> b!5581113 m!6563228))

(declare-fun m!6563230 () Bool)

(assert (=> d!1764419 m!6563230))

(assert (=> d!1764419 m!6562154))

(assert (=> bm!417479 m!6563230))

(assert (=> b!5581121 m!6563224))

(assert (=> b!5581118 m!6563224))

(assert (=> b!5581118 m!6563224))

(declare-fun m!6563232 () Bool)

(assert (=> b!5581118 m!6563232))

(assert (=> b!5581118 m!6563226))

(assert (=> b!5581118 m!6563232))

(assert (=> b!5581118 m!6563226))

(declare-fun m!6563234 () Bool)

(assert (=> b!5581118 m!6563234))

(assert (=> b!5581114 m!6563226))

(assert (=> b!5581114 m!6563226))

(assert (=> b!5581114 m!6563228))

(assert (=> b!5579967 d!1764419))

(assert (=> b!5579967 d!1764313))

(declare-fun bs!1291194 () Bool)

(declare-fun d!1764421 () Bool)

(assert (= bs!1291194 (and d!1764421 d!1764319)))

(declare-fun lambda!299294 () Int)

(assert (=> bs!1291194 (= lambda!299294 lambda!299277)))

(declare-fun bs!1291195 () Bool)

(assert (= bs!1291195 (and d!1764421 d!1764353)))

(assert (=> bs!1291195 (= lambda!299294 lambda!299281)))

(declare-fun bs!1291196 () Bool)

(assert (= bs!1291196 (and d!1764421 d!1764409)))

(assert (=> bs!1291196 (= lambda!299294 lambda!299292)))

(declare-fun bs!1291197 () Bool)

(assert (= bs!1291197 (and d!1764421 d!1764395)))

(assert (=> bs!1291197 (= lambda!299294 lambda!299290)))

(declare-fun bs!1291198 () Bool)

(assert (= bs!1291198 (and d!1764421 d!1764339)))

(assert (=> bs!1291198 (= lambda!299294 lambda!299279)))

(assert (=> d!1764421 (= (nullableZipper!1560 lt!2253337) (exists!2161 lt!2253337 lambda!299294))))

(declare-fun bs!1291199 () Bool)

(assert (= bs!1291199 d!1764421))

(declare-fun m!6563236 () Bool)

(assert (=> bs!1291199 m!6563236))

(assert (=> b!5579726 d!1764421))

(declare-fun d!1764423 () Bool)

(assert (=> d!1764423 (= (isEmpty!34671 (tail!10996 (exprs!5447 (h!69314 zl!343)))) ((_ is Nil!62864) (tail!10996 (exprs!5447 (h!69314 zl!343)))))))

(assert (=> b!5579910 d!1764423))

(declare-fun d!1764425 () Bool)

(assert (=> d!1764425 (= (tail!10996 (exprs!5447 (h!69314 zl!343))) (t!376259 (exprs!5447 (h!69314 zl!343))))))

(assert (=> b!5579910 d!1764425))

(declare-fun d!1764427 () Bool)

(assert (=> d!1764427 (= (isEmpty!34671 (tail!10996 (unfocusZipperList!991 zl!343))) ((_ is Nil!62864) (tail!10996 (unfocusZipperList!991 zl!343))))))

(assert (=> b!5580034 d!1764427))

(declare-fun d!1764429 () Bool)

(assert (=> d!1764429 (= (tail!10996 (unfocusZipperList!991 zl!343)) (t!376259 (unfocusZipperList!991 zl!343)))))

(assert (=> b!5580034 d!1764429))

(assert (=> d!1763901 d!1764347))

(assert (=> d!1763887 d!1764347))

(assert (=> d!1763887 d!1763933))

(declare-fun b!5581127 () Bool)

(declare-fun e!3443765 () List!62989)

(assert (=> b!5581127 (= e!3443765 (_2!35963 (get!21644 lt!2253406)))))

(declare-fun d!1764431 () Bool)

(declare-fun e!3443766 () Bool)

(assert (=> d!1764431 e!3443766))

(declare-fun res!2368521 () Bool)

(assert (=> d!1764431 (=> (not res!2368521) (not e!3443766))))

(declare-fun lt!2253470 () List!62989)

(assert (=> d!1764431 (= res!2368521 (= (content!11333 lt!2253470) ((_ map or) (content!11333 (_1!35963 (get!21644 lt!2253406))) (content!11333 (_2!35963 (get!21644 lt!2253406))))))))

(assert (=> d!1764431 (= lt!2253470 e!3443765)))

(declare-fun c!977344 () Bool)

(assert (=> d!1764431 (= c!977344 ((_ is Nil!62865) (_1!35963 (get!21644 lt!2253406))))))

(assert (=> d!1764431 (= (++!13795 (_1!35963 (get!21644 lt!2253406)) (_2!35963 (get!21644 lt!2253406))) lt!2253470)))

(declare-fun b!5581129 () Bool)

(declare-fun res!2368522 () Bool)

(assert (=> b!5581129 (=> (not res!2368522) (not e!3443766))))

(assert (=> b!5581129 (= res!2368522 (= (size!39958 lt!2253470) (+ (size!39958 (_1!35963 (get!21644 lt!2253406))) (size!39958 (_2!35963 (get!21644 lt!2253406))))))))

(declare-fun b!5581128 () Bool)

(assert (=> b!5581128 (= e!3443765 (Cons!62865 (h!69313 (_1!35963 (get!21644 lt!2253406))) (++!13795 (t!376260 (_1!35963 (get!21644 lt!2253406))) (_2!35963 (get!21644 lt!2253406)))))))

(declare-fun b!5581130 () Bool)

(assert (=> b!5581130 (= e!3443766 (or (not (= (_2!35963 (get!21644 lt!2253406)) Nil!62865)) (= lt!2253470 (_1!35963 (get!21644 lt!2253406)))))))

(assert (= (and d!1764431 c!977344) b!5581127))

(assert (= (and d!1764431 (not c!977344)) b!5581128))

(assert (= (and d!1764431 res!2368521) b!5581129))

(assert (= (and b!5581129 res!2368522) b!5581130))

(declare-fun m!6563238 () Bool)

(assert (=> d!1764431 m!6563238))

(declare-fun m!6563240 () Bool)

(assert (=> d!1764431 m!6563240))

(declare-fun m!6563242 () Bool)

(assert (=> d!1764431 m!6563242))

(declare-fun m!6563244 () Bool)

(assert (=> b!5581129 m!6563244))

(declare-fun m!6563246 () Bool)

(assert (=> b!5581129 m!6563246))

(declare-fun m!6563248 () Bool)

(assert (=> b!5581129 m!6563248))

(declare-fun m!6563250 () Bool)

(assert (=> b!5581128 m!6563250))

(assert (=> b!5579963 d!1764431))

(assert (=> b!5579963 d!1764313))

(declare-fun d!1764433 () Bool)

(assert (=> d!1764433 (= (isConcat!643 lt!2253397) ((_ is Concat!24408) lt!2253397))))

(assert (=> b!5579906 d!1764433))

(declare-fun bs!1291200 () Bool)

(declare-fun d!1764435 () Bool)

(assert (= bs!1291200 (and d!1764435 d!1764319)))

(declare-fun lambda!299295 () Int)

(assert (=> bs!1291200 (= lambda!299295 lambda!299277)))

(declare-fun bs!1291201 () Bool)

(assert (= bs!1291201 (and d!1764435 d!1764353)))

(assert (=> bs!1291201 (= lambda!299295 lambda!299281)))

(declare-fun bs!1291202 () Bool)

(assert (= bs!1291202 (and d!1764435 d!1764409)))

(assert (=> bs!1291202 (= lambda!299295 lambda!299292)))

(declare-fun bs!1291203 () Bool)

(assert (= bs!1291203 (and d!1764435 d!1764395)))

(assert (=> bs!1291203 (= lambda!299295 lambda!299290)))

(declare-fun bs!1291204 () Bool)

(assert (= bs!1291204 (and d!1764435 d!1764339)))

(assert (=> bs!1291204 (= lambda!299295 lambda!299279)))

(declare-fun bs!1291205 () Bool)

(assert (= bs!1291205 (and d!1764435 d!1764421)))

(assert (=> bs!1291205 (= lambda!299295 lambda!299294)))

(assert (=> d!1764435 (= (nullableZipper!1560 ((_ map or) lt!2253337 lt!2253325)) (exists!2161 ((_ map or) lt!2253337 lt!2253325) lambda!299295))))

(declare-fun bs!1291206 () Bool)

(assert (= bs!1291206 d!1764435))

(declare-fun m!6563252 () Bool)

(assert (=> bs!1291206 m!6563252))

(assert (=> b!5580011 d!1764435))

(assert (=> b!5579959 d!1764225))

(assert (=> d!1763923 d!1763919))

(assert (=> d!1763923 d!1764229))

(assert (=> d!1763923 d!1763929))

(declare-fun d!1764437 () Bool)

(assert (=> d!1764437 (= (Exists!2663 lambda!299210) (choose!42291 lambda!299210))))

(declare-fun bs!1291207 () Bool)

(assert (= bs!1291207 d!1764437))

(declare-fun m!6563254 () Bool)

(assert (=> bs!1291207 m!6563254))

(assert (=> d!1763923 d!1764437))

(declare-fun bs!1291208 () Bool)

(declare-fun d!1764439 () Bool)

(assert (= bs!1291208 (and d!1764439 d!1764391)))

(declare-fun lambda!299298 () Int)

(assert (=> bs!1291208 (not (= lambda!299298 lambda!299289))))

(declare-fun bs!1291209 () Bool)

(assert (= bs!1291209 (and d!1764439 d!1763927)))

(assert (=> bs!1291209 (= lambda!299298 lambda!299215)))

(assert (=> bs!1291208 (= lambda!299298 lambda!299288)))

(declare-fun bs!1291210 () Bool)

(assert (= bs!1291210 (and d!1764439 b!5579318)))

(assert (=> bs!1291210 (= lambda!299298 lambda!299168)))

(declare-fun bs!1291211 () Bool)

(assert (= bs!1291211 (and d!1764439 b!5580794)))

(assert (=> bs!1291211 (not (= lambda!299298 lambda!299268))))

(assert (=> bs!1291210 (not (= lambda!299298 lambda!299169))))

(declare-fun bs!1291212 () Bool)

(assert (= bs!1291212 (and d!1764439 d!1763923)))

(assert (=> bs!1291212 (= lambda!299298 lambda!299210)))

(declare-fun bs!1291213 () Bool)

(assert (= bs!1291213 (and d!1764439 b!5579789)))

(assert (=> bs!1291213 (not (= lambda!299298 lambda!299203))))

(declare-fun bs!1291214 () Bool)

(assert (= bs!1291214 (and d!1764439 b!5580896)))

(assert (=> bs!1291214 (not (= lambda!299298 lambda!299273))))

(assert (=> bs!1291209 (not (= lambda!299298 lambda!299216))))

(declare-fun bs!1291215 () Bool)

(assert (= bs!1291215 (and d!1764439 b!5580796)))

(assert (=> bs!1291215 (not (= lambda!299298 lambda!299267))))

(declare-fun bs!1291216 () Bool)

(assert (= bs!1291216 (and d!1764439 b!5579787)))

(assert (=> bs!1291216 (not (= lambda!299298 lambda!299204))))

(declare-fun bs!1291217 () Bool)

(assert (= bs!1291217 (and d!1764439 b!5580898)))

(assert (=> bs!1291217 (not (= lambda!299298 lambda!299272))))

(assert (=> d!1764439 true))

(assert (=> d!1764439 true))

(assert (=> d!1764439 true))

(assert (=> d!1764439 (= (isDefined!12275 (findConcatSeparation!1986 (regOne!31638 r!7292) (regTwo!31638 r!7292) Nil!62865 s!2326 s!2326)) (Exists!2663 lambda!299298))))

(assert (=> d!1764439 true))

(declare-fun _$89!1680 () Unit!155624)

(assert (=> d!1764439 (= (choose!42292 (regOne!31638 r!7292) (regTwo!31638 r!7292) s!2326) _$89!1680)))

(declare-fun bs!1291218 () Bool)

(assert (= bs!1291218 d!1764439))

(assert (=> bs!1291218 m!6561666))

(assert (=> bs!1291218 m!6561666))

(assert (=> bs!1291218 m!6561668))

(declare-fun m!6563256 () Bool)

(assert (=> bs!1291218 m!6563256))

(assert (=> d!1763923 d!1764439))

(declare-fun b!5581135 () Bool)

(declare-fun e!3443769 () Bool)

(declare-fun tp!1544188 () Bool)

(declare-fun tp!1544189 () Bool)

(assert (=> b!5581135 (= e!3443769 (and tp!1544188 tp!1544189))))

(assert (=> b!5580081 (= tp!1543992 e!3443769)))

(assert (= (and b!5580081 ((_ is Cons!62864) (exprs!5447 setElem!37137))) b!5581135))

(declare-fun condSetEmpty!37147 () Bool)

(assert (=> setNonEmpty!37137 (= condSetEmpty!37147 (= setRest!37137 ((as const (Array Context!9894 Bool)) false)))))

(declare-fun setRes!37147 () Bool)

(assert (=> setNonEmpty!37137 (= tp!1543991 setRes!37147)))

(declare-fun setIsEmpty!37147 () Bool)

(assert (=> setIsEmpty!37147 setRes!37147))

(declare-fun tp!1544190 () Bool)

(declare-fun setNonEmpty!37147 () Bool)

(declare-fun setElem!37147 () Context!9894)

(declare-fun e!3443770 () Bool)

(assert (=> setNonEmpty!37147 (= setRes!37147 (and tp!1544190 (inv!82154 setElem!37147) e!3443770))))

(declare-fun setRest!37147 () (InoxSet Context!9894))

(assert (=> setNonEmpty!37147 (= setRest!37137 ((_ map or) (store ((as const (Array Context!9894 Bool)) false) setElem!37147 true) setRest!37147))))

(declare-fun b!5581136 () Bool)

(declare-fun tp!1544191 () Bool)

(assert (=> b!5581136 (= e!3443770 tp!1544191)))

(assert (= (and setNonEmpty!37137 condSetEmpty!37147) setIsEmpty!37147))

(assert (= (and setNonEmpty!37137 (not condSetEmpty!37147)) setNonEmpty!37147))

(assert (= setNonEmpty!37147 b!5581136))

(declare-fun m!6563258 () Bool)

(assert (=> setNonEmpty!37147 m!6563258))

(declare-fun b!5581137 () Bool)

(declare-fun e!3443771 () Bool)

(declare-fun tp!1544192 () Bool)

(assert (=> b!5581137 (= e!3443771 (and tp_is_empty!40379 tp!1544192))))

(assert (=> b!5580102 (= tp!1544011 e!3443771)))

(assert (= (and b!5580102 ((_ is Cons!62865) (t!376260 (t!376260 s!2326)))) b!5581137))

(declare-fun b!5581139 () Bool)

(declare-fun e!3443772 () Bool)

(declare-fun tp!1544197 () Bool)

(declare-fun tp!1544194 () Bool)

(assert (=> b!5581139 (= e!3443772 (and tp!1544197 tp!1544194))))

(declare-fun b!5581138 () Bool)

(assert (=> b!5581138 (= e!3443772 tp_is_empty!40379)))

(declare-fun b!5581140 () Bool)

(declare-fun tp!1544193 () Bool)

(assert (=> b!5581140 (= e!3443772 tp!1544193)))

(declare-fun b!5581141 () Bool)

(declare-fun tp!1544195 () Bool)

(declare-fun tp!1544196 () Bool)

(assert (=> b!5581141 (= e!3443772 (and tp!1544195 tp!1544196))))

(assert (=> b!5580072 (= tp!1543979 e!3443772)))

(assert (= (and b!5580072 ((_ is ElementMatch!15563) (regOne!31639 (regTwo!31639 r!7292)))) b!5581138))

(assert (= (and b!5580072 ((_ is Concat!24408) (regOne!31639 (regTwo!31639 r!7292)))) b!5581139))

(assert (= (and b!5580072 ((_ is Star!15563) (regOne!31639 (regTwo!31639 r!7292)))) b!5581140))

(assert (= (and b!5580072 ((_ is Union!15563) (regOne!31639 (regTwo!31639 r!7292)))) b!5581141))

(declare-fun b!5581143 () Bool)

(declare-fun e!3443773 () Bool)

(declare-fun tp!1544202 () Bool)

(declare-fun tp!1544199 () Bool)

(assert (=> b!5581143 (= e!3443773 (and tp!1544202 tp!1544199))))

(declare-fun b!5581142 () Bool)

(assert (=> b!5581142 (= e!3443773 tp_is_empty!40379)))

(declare-fun b!5581144 () Bool)

(declare-fun tp!1544198 () Bool)

(assert (=> b!5581144 (= e!3443773 tp!1544198)))

(declare-fun b!5581145 () Bool)

(declare-fun tp!1544200 () Bool)

(declare-fun tp!1544201 () Bool)

(assert (=> b!5581145 (= e!3443773 (and tp!1544200 tp!1544201))))

(assert (=> b!5580072 (= tp!1543980 e!3443773)))

(assert (= (and b!5580072 ((_ is ElementMatch!15563) (regTwo!31639 (regTwo!31639 r!7292)))) b!5581142))

(assert (= (and b!5580072 ((_ is Concat!24408) (regTwo!31639 (regTwo!31639 r!7292)))) b!5581143))

(assert (= (and b!5580072 ((_ is Star!15563) (regTwo!31639 (regTwo!31639 r!7292)))) b!5581144))

(assert (= (and b!5580072 ((_ is Union!15563) (regTwo!31639 (regTwo!31639 r!7292)))) b!5581145))

(declare-fun b!5581147 () Bool)

(declare-fun e!3443774 () Bool)

(declare-fun tp!1544207 () Bool)

(declare-fun tp!1544204 () Bool)

(assert (=> b!5581147 (= e!3443774 (and tp!1544207 tp!1544204))))

(declare-fun b!5581146 () Bool)

(assert (=> b!5581146 (= e!3443774 tp_is_empty!40379)))

(declare-fun b!5581148 () Bool)

(declare-fun tp!1544203 () Bool)

(assert (=> b!5581148 (= e!3443774 tp!1544203)))

(declare-fun b!5581149 () Bool)

(declare-fun tp!1544205 () Bool)

(declare-fun tp!1544206 () Bool)

(assert (=> b!5581149 (= e!3443774 (and tp!1544205 tp!1544206))))

(assert (=> b!5580071 (= tp!1543977 e!3443774)))

(assert (= (and b!5580071 ((_ is ElementMatch!15563) (reg!15892 (regTwo!31639 r!7292)))) b!5581146))

(assert (= (and b!5580071 ((_ is Concat!24408) (reg!15892 (regTwo!31639 r!7292)))) b!5581147))

(assert (= (and b!5580071 ((_ is Star!15563) (reg!15892 (regTwo!31639 r!7292)))) b!5581148))

(assert (= (and b!5580071 ((_ is Union!15563) (reg!15892 (regTwo!31639 r!7292)))) b!5581149))

(declare-fun b!5581151 () Bool)

(declare-fun e!3443775 () Bool)

(declare-fun tp!1544212 () Bool)

(declare-fun tp!1544209 () Bool)

(assert (=> b!5581151 (= e!3443775 (and tp!1544212 tp!1544209))))

(declare-fun b!5581150 () Bool)

(assert (=> b!5581150 (= e!3443775 tp_is_empty!40379)))

(declare-fun b!5581152 () Bool)

(declare-fun tp!1544208 () Bool)

(assert (=> b!5581152 (= e!3443775 tp!1544208)))

(declare-fun b!5581153 () Bool)

(declare-fun tp!1544210 () Bool)

(declare-fun tp!1544211 () Bool)

(assert (=> b!5581153 (= e!3443775 (and tp!1544210 tp!1544211))))

(assert (=> b!5580093 (= tp!1544001 e!3443775)))

(assert (= (and b!5580093 ((_ is ElementMatch!15563) (regOne!31639 (regOne!31638 r!7292)))) b!5581150))

(assert (= (and b!5580093 ((_ is Concat!24408) (regOne!31639 (regOne!31638 r!7292)))) b!5581151))

(assert (= (and b!5580093 ((_ is Star!15563) (regOne!31639 (regOne!31638 r!7292)))) b!5581152))

(assert (= (and b!5580093 ((_ is Union!15563) (regOne!31639 (regOne!31638 r!7292)))) b!5581153))

(declare-fun b!5581155 () Bool)

(declare-fun e!3443776 () Bool)

(declare-fun tp!1544217 () Bool)

(declare-fun tp!1544214 () Bool)

(assert (=> b!5581155 (= e!3443776 (and tp!1544217 tp!1544214))))

(declare-fun b!5581154 () Bool)

(assert (=> b!5581154 (= e!3443776 tp_is_empty!40379)))

(declare-fun b!5581156 () Bool)

(declare-fun tp!1544213 () Bool)

(assert (=> b!5581156 (= e!3443776 tp!1544213)))

(declare-fun b!5581157 () Bool)

(declare-fun tp!1544215 () Bool)

(declare-fun tp!1544216 () Bool)

(assert (=> b!5581157 (= e!3443776 (and tp!1544215 tp!1544216))))

(assert (=> b!5580093 (= tp!1544002 e!3443776)))

(assert (= (and b!5580093 ((_ is ElementMatch!15563) (regTwo!31639 (regOne!31638 r!7292)))) b!5581154))

(assert (= (and b!5580093 ((_ is Concat!24408) (regTwo!31639 (regOne!31638 r!7292)))) b!5581155))

(assert (= (and b!5580093 ((_ is Star!15563) (regTwo!31639 (regOne!31638 r!7292)))) b!5581156))

(assert (= (and b!5580093 ((_ is Union!15563) (regTwo!31639 (regOne!31638 r!7292)))) b!5581157))

(declare-fun b!5581159 () Bool)

(declare-fun e!3443777 () Bool)

(declare-fun tp!1544222 () Bool)

(declare-fun tp!1544219 () Bool)

(assert (=> b!5581159 (= e!3443777 (and tp!1544222 tp!1544219))))

(declare-fun b!5581158 () Bool)

(assert (=> b!5581158 (= e!3443777 tp_is_empty!40379)))

(declare-fun b!5581160 () Bool)

(declare-fun tp!1544218 () Bool)

(assert (=> b!5581160 (= e!3443777 tp!1544218)))

(declare-fun b!5581161 () Bool)

(declare-fun tp!1544220 () Bool)

(declare-fun tp!1544221 () Bool)

(assert (=> b!5581161 (= e!3443777 (and tp!1544220 tp!1544221))))

(assert (=> b!5580070 (= tp!1543981 e!3443777)))

(assert (= (and b!5580070 ((_ is ElementMatch!15563) (regOne!31638 (regTwo!31639 r!7292)))) b!5581158))

(assert (= (and b!5580070 ((_ is Concat!24408) (regOne!31638 (regTwo!31639 r!7292)))) b!5581159))

(assert (= (and b!5580070 ((_ is Star!15563) (regOne!31638 (regTwo!31639 r!7292)))) b!5581160))

(assert (= (and b!5580070 ((_ is Union!15563) (regOne!31638 (regTwo!31639 r!7292)))) b!5581161))

(declare-fun b!5581163 () Bool)

(declare-fun e!3443778 () Bool)

(declare-fun tp!1544227 () Bool)

(declare-fun tp!1544224 () Bool)

(assert (=> b!5581163 (= e!3443778 (and tp!1544227 tp!1544224))))

(declare-fun b!5581162 () Bool)

(assert (=> b!5581162 (= e!3443778 tp_is_empty!40379)))

(declare-fun b!5581164 () Bool)

(declare-fun tp!1544223 () Bool)

(assert (=> b!5581164 (= e!3443778 tp!1544223)))

(declare-fun b!5581165 () Bool)

(declare-fun tp!1544225 () Bool)

(declare-fun tp!1544226 () Bool)

(assert (=> b!5581165 (= e!3443778 (and tp!1544225 tp!1544226))))

(assert (=> b!5580070 (= tp!1543978 e!3443778)))

(assert (= (and b!5580070 ((_ is ElementMatch!15563) (regTwo!31638 (regTwo!31639 r!7292)))) b!5581162))

(assert (= (and b!5580070 ((_ is Concat!24408) (regTwo!31638 (regTwo!31639 r!7292)))) b!5581163))

(assert (= (and b!5580070 ((_ is Star!15563) (regTwo!31638 (regTwo!31639 r!7292)))) b!5581164))

(assert (= (and b!5580070 ((_ is Union!15563) (regTwo!31638 (regTwo!31639 r!7292)))) b!5581165))

(declare-fun b!5581167 () Bool)

(declare-fun e!3443779 () Bool)

(declare-fun tp!1544232 () Bool)

(declare-fun tp!1544229 () Bool)

(assert (=> b!5581167 (= e!3443779 (and tp!1544232 tp!1544229))))

(declare-fun b!5581166 () Bool)

(assert (=> b!5581166 (= e!3443779 tp_is_empty!40379)))

(declare-fun b!5581168 () Bool)

(declare-fun tp!1544228 () Bool)

(assert (=> b!5581168 (= e!3443779 tp!1544228)))

(declare-fun b!5581169 () Bool)

(declare-fun tp!1544230 () Bool)

(declare-fun tp!1544231 () Bool)

(assert (=> b!5581169 (= e!3443779 (and tp!1544230 tp!1544231))))

(assert (=> b!5580092 (= tp!1543999 e!3443779)))

(assert (= (and b!5580092 ((_ is ElementMatch!15563) (reg!15892 (regOne!31638 r!7292)))) b!5581166))

(assert (= (and b!5580092 ((_ is Concat!24408) (reg!15892 (regOne!31638 r!7292)))) b!5581167))

(assert (= (and b!5580092 ((_ is Star!15563) (reg!15892 (regOne!31638 r!7292)))) b!5581168))

(assert (= (and b!5580092 ((_ is Union!15563) (reg!15892 (regOne!31638 r!7292)))) b!5581169))

(declare-fun b!5581171 () Bool)

(declare-fun e!3443780 () Bool)

(declare-fun tp!1544237 () Bool)

(declare-fun tp!1544234 () Bool)

(assert (=> b!5581171 (= e!3443780 (and tp!1544237 tp!1544234))))

(declare-fun b!5581170 () Bool)

(assert (=> b!5581170 (= e!3443780 tp_is_empty!40379)))

(declare-fun b!5581172 () Bool)

(declare-fun tp!1544233 () Bool)

(assert (=> b!5581172 (= e!3443780 tp!1544233)))

(declare-fun b!5581173 () Bool)

(declare-fun tp!1544235 () Bool)

(declare-fun tp!1544236 () Bool)

(assert (=> b!5581173 (= e!3443780 (and tp!1544235 tp!1544236))))

(assert (=> b!5580091 (= tp!1544003 e!3443780)))

(assert (= (and b!5580091 ((_ is ElementMatch!15563) (regOne!31638 (regOne!31638 r!7292)))) b!5581170))

(assert (= (and b!5580091 ((_ is Concat!24408) (regOne!31638 (regOne!31638 r!7292)))) b!5581171))

(assert (= (and b!5580091 ((_ is Star!15563) (regOne!31638 (regOne!31638 r!7292)))) b!5581172))

(assert (= (and b!5580091 ((_ is Union!15563) (regOne!31638 (regOne!31638 r!7292)))) b!5581173))

(declare-fun b!5581175 () Bool)

(declare-fun e!3443781 () Bool)

(declare-fun tp!1544242 () Bool)

(declare-fun tp!1544239 () Bool)

(assert (=> b!5581175 (= e!3443781 (and tp!1544242 tp!1544239))))

(declare-fun b!5581174 () Bool)

(assert (=> b!5581174 (= e!3443781 tp_is_empty!40379)))

(declare-fun b!5581176 () Bool)

(declare-fun tp!1544238 () Bool)

(assert (=> b!5581176 (= e!3443781 tp!1544238)))

(declare-fun b!5581177 () Bool)

(declare-fun tp!1544240 () Bool)

(declare-fun tp!1544241 () Bool)

(assert (=> b!5581177 (= e!3443781 (and tp!1544240 tp!1544241))))

(assert (=> b!5580091 (= tp!1544000 e!3443781)))

(assert (= (and b!5580091 ((_ is ElementMatch!15563) (regTwo!31638 (regOne!31638 r!7292)))) b!5581174))

(assert (= (and b!5580091 ((_ is Concat!24408) (regTwo!31638 (regOne!31638 r!7292)))) b!5581175))

(assert (= (and b!5580091 ((_ is Star!15563) (regTwo!31638 (regOne!31638 r!7292)))) b!5581176))

(assert (= (and b!5580091 ((_ is Union!15563) (regTwo!31638 (regOne!31638 r!7292)))) b!5581177))

(declare-fun b!5581179 () Bool)

(declare-fun e!3443782 () Bool)

(declare-fun tp!1544247 () Bool)

(declare-fun tp!1544244 () Bool)

(assert (=> b!5581179 (= e!3443782 (and tp!1544247 tp!1544244))))

(declare-fun b!5581178 () Bool)

(assert (=> b!5581178 (= e!3443782 tp_is_empty!40379)))

(declare-fun b!5581180 () Bool)

(declare-fun tp!1544243 () Bool)

(assert (=> b!5581180 (= e!3443782 tp!1544243)))

(declare-fun b!5581181 () Bool)

(declare-fun tp!1544245 () Bool)

(declare-fun tp!1544246 () Bool)

(assert (=> b!5581181 (= e!3443782 (and tp!1544245 tp!1544246))))

(assert (=> b!5580054 (= tp!1543960 e!3443782)))

(assert (= (and b!5580054 ((_ is ElementMatch!15563) (h!69312 (exprs!5447 setElem!37131)))) b!5581178))

(assert (= (and b!5580054 ((_ is Concat!24408) (h!69312 (exprs!5447 setElem!37131)))) b!5581179))

(assert (= (and b!5580054 ((_ is Star!15563) (h!69312 (exprs!5447 setElem!37131)))) b!5581180))

(assert (= (and b!5580054 ((_ is Union!15563) (h!69312 (exprs!5447 setElem!37131)))) b!5581181))

(declare-fun b!5581182 () Bool)

(declare-fun e!3443783 () Bool)

(declare-fun tp!1544248 () Bool)

(declare-fun tp!1544249 () Bool)

(assert (=> b!5581182 (= e!3443783 (and tp!1544248 tp!1544249))))

(assert (=> b!5580054 (= tp!1543961 e!3443783)))

(assert (= (and b!5580054 ((_ is Cons!62864) (t!376259 (exprs!5447 setElem!37131)))) b!5581182))

(declare-fun b!5581184 () Bool)

(declare-fun e!3443784 () Bool)

(declare-fun tp!1544254 () Bool)

(declare-fun tp!1544251 () Bool)

(assert (=> b!5581184 (= e!3443784 (and tp!1544254 tp!1544251))))

(declare-fun b!5581183 () Bool)

(assert (=> b!5581183 (= e!3443784 tp_is_empty!40379)))

(declare-fun b!5581185 () Bool)

(declare-fun tp!1544250 () Bool)

(assert (=> b!5581185 (= e!3443784 tp!1544250)))

(declare-fun b!5581186 () Bool)

(declare-fun tp!1544252 () Bool)

(declare-fun tp!1544253 () Bool)

(assert (=> b!5581186 (= e!3443784 (and tp!1544252 tp!1544253))))

(assert (=> b!5580053 (= tp!1543958 e!3443784)))

(assert (= (and b!5580053 ((_ is ElementMatch!15563) (h!69312 (exprs!5447 (h!69314 zl!343))))) b!5581183))

(assert (= (and b!5580053 ((_ is Concat!24408) (h!69312 (exprs!5447 (h!69314 zl!343))))) b!5581184))

(assert (= (and b!5580053 ((_ is Star!15563) (h!69312 (exprs!5447 (h!69314 zl!343))))) b!5581185))

(assert (= (and b!5580053 ((_ is Union!15563) (h!69312 (exprs!5447 (h!69314 zl!343))))) b!5581186))

(declare-fun b!5581187 () Bool)

(declare-fun e!3443785 () Bool)

(declare-fun tp!1544255 () Bool)

(declare-fun tp!1544256 () Bool)

(assert (=> b!5581187 (= e!3443785 (and tp!1544255 tp!1544256))))

(assert (=> b!5580053 (= tp!1543959 e!3443785)))

(assert (= (and b!5580053 ((_ is Cons!62864) (t!376259 (exprs!5447 (h!69314 zl!343))))) b!5581187))

(declare-fun b!5581189 () Bool)

(declare-fun e!3443786 () Bool)

(declare-fun tp!1544261 () Bool)

(declare-fun tp!1544258 () Bool)

(assert (=> b!5581189 (= e!3443786 (and tp!1544261 tp!1544258))))

(declare-fun b!5581188 () Bool)

(assert (=> b!5581188 (= e!3443786 tp_is_empty!40379)))

(declare-fun b!5581190 () Bool)

(declare-fun tp!1544257 () Bool)

(assert (=> b!5581190 (= e!3443786 tp!1544257)))

(declare-fun b!5581191 () Bool)

(declare-fun tp!1544259 () Bool)

(declare-fun tp!1544260 () Bool)

(assert (=> b!5581191 (= e!3443786 (and tp!1544259 tp!1544260))))

(assert (=> b!5580068 (= tp!1543974 e!3443786)))

(assert (= (and b!5580068 ((_ is ElementMatch!15563) (regOne!31639 (regOne!31639 r!7292)))) b!5581188))

(assert (= (and b!5580068 ((_ is Concat!24408) (regOne!31639 (regOne!31639 r!7292)))) b!5581189))

(assert (= (and b!5580068 ((_ is Star!15563) (regOne!31639 (regOne!31639 r!7292)))) b!5581190))

(assert (= (and b!5580068 ((_ is Union!15563) (regOne!31639 (regOne!31639 r!7292)))) b!5581191))

(declare-fun b!5581193 () Bool)

(declare-fun e!3443787 () Bool)

(declare-fun tp!1544266 () Bool)

(declare-fun tp!1544263 () Bool)

(assert (=> b!5581193 (= e!3443787 (and tp!1544266 tp!1544263))))

(declare-fun b!5581192 () Bool)

(assert (=> b!5581192 (= e!3443787 tp_is_empty!40379)))

(declare-fun b!5581194 () Bool)

(declare-fun tp!1544262 () Bool)

(assert (=> b!5581194 (= e!3443787 tp!1544262)))

(declare-fun b!5581195 () Bool)

(declare-fun tp!1544264 () Bool)

(declare-fun tp!1544265 () Bool)

(assert (=> b!5581195 (= e!3443787 (and tp!1544264 tp!1544265))))

(assert (=> b!5580068 (= tp!1543975 e!3443787)))

(assert (= (and b!5580068 ((_ is ElementMatch!15563) (regTwo!31639 (regOne!31639 r!7292)))) b!5581192))

(assert (= (and b!5580068 ((_ is Concat!24408) (regTwo!31639 (regOne!31639 r!7292)))) b!5581193))

(assert (= (and b!5580068 ((_ is Star!15563) (regTwo!31639 (regOne!31639 r!7292)))) b!5581194))

(assert (= (and b!5580068 ((_ is Union!15563) (regTwo!31639 (regOne!31639 r!7292)))) b!5581195))

(declare-fun b!5581197 () Bool)

(declare-fun e!3443788 () Bool)

(declare-fun tp!1544271 () Bool)

(declare-fun tp!1544268 () Bool)

(assert (=> b!5581197 (= e!3443788 (and tp!1544271 tp!1544268))))

(declare-fun b!5581196 () Bool)

(assert (=> b!5581196 (= e!3443788 tp_is_empty!40379)))

(declare-fun b!5581198 () Bool)

(declare-fun tp!1544267 () Bool)

(assert (=> b!5581198 (= e!3443788 tp!1544267)))

(declare-fun b!5581199 () Bool)

(declare-fun tp!1544269 () Bool)

(declare-fun tp!1544270 () Bool)

(assert (=> b!5581199 (= e!3443788 (and tp!1544269 tp!1544270))))

(assert (=> b!5580067 (= tp!1543972 e!3443788)))

(assert (= (and b!5580067 ((_ is ElementMatch!15563) (reg!15892 (regOne!31639 r!7292)))) b!5581196))

(assert (= (and b!5580067 ((_ is Concat!24408) (reg!15892 (regOne!31639 r!7292)))) b!5581197))

(assert (= (and b!5580067 ((_ is Star!15563) (reg!15892 (regOne!31639 r!7292)))) b!5581198))

(assert (= (and b!5580067 ((_ is Union!15563) (reg!15892 (regOne!31639 r!7292)))) b!5581199))

(declare-fun b!5581201 () Bool)

(declare-fun e!3443789 () Bool)

(declare-fun tp!1544276 () Bool)

(declare-fun tp!1544273 () Bool)

(assert (=> b!5581201 (= e!3443789 (and tp!1544276 tp!1544273))))

(declare-fun b!5581200 () Bool)

(assert (=> b!5581200 (= e!3443789 tp_is_empty!40379)))

(declare-fun b!5581202 () Bool)

(declare-fun tp!1544272 () Bool)

(assert (=> b!5581202 (= e!3443789 tp!1544272)))

(declare-fun b!5581203 () Bool)

(declare-fun tp!1544274 () Bool)

(declare-fun tp!1544275 () Bool)

(assert (=> b!5581203 (= e!3443789 (and tp!1544274 tp!1544275))))

(assert (=> b!5580076 (= tp!1543984 e!3443789)))

(assert (= (and b!5580076 ((_ is ElementMatch!15563) (regOne!31639 (reg!15892 r!7292)))) b!5581200))

(assert (= (and b!5580076 ((_ is Concat!24408) (regOne!31639 (reg!15892 r!7292)))) b!5581201))

(assert (= (and b!5580076 ((_ is Star!15563) (regOne!31639 (reg!15892 r!7292)))) b!5581202))

(assert (= (and b!5580076 ((_ is Union!15563) (regOne!31639 (reg!15892 r!7292)))) b!5581203))

(declare-fun b!5581205 () Bool)

(declare-fun e!3443790 () Bool)

(declare-fun tp!1544281 () Bool)

(declare-fun tp!1544278 () Bool)

(assert (=> b!5581205 (= e!3443790 (and tp!1544281 tp!1544278))))

(declare-fun b!5581204 () Bool)

(assert (=> b!5581204 (= e!3443790 tp_is_empty!40379)))

(declare-fun b!5581206 () Bool)

(declare-fun tp!1544277 () Bool)

(assert (=> b!5581206 (= e!3443790 tp!1544277)))

(declare-fun b!5581207 () Bool)

(declare-fun tp!1544279 () Bool)

(declare-fun tp!1544280 () Bool)

(assert (=> b!5581207 (= e!3443790 (and tp!1544279 tp!1544280))))

(assert (=> b!5580076 (= tp!1543985 e!3443790)))

(assert (= (and b!5580076 ((_ is ElementMatch!15563) (regTwo!31639 (reg!15892 r!7292)))) b!5581204))

(assert (= (and b!5580076 ((_ is Concat!24408) (regTwo!31639 (reg!15892 r!7292)))) b!5581205))

(assert (= (and b!5580076 ((_ is Star!15563) (regTwo!31639 (reg!15892 r!7292)))) b!5581206))

(assert (= (and b!5580076 ((_ is Union!15563) (regTwo!31639 (reg!15892 r!7292)))) b!5581207))

(declare-fun b!5581209 () Bool)

(declare-fun e!3443791 () Bool)

(declare-fun tp!1544286 () Bool)

(declare-fun tp!1544283 () Bool)

(assert (=> b!5581209 (= e!3443791 (and tp!1544286 tp!1544283))))

(declare-fun b!5581208 () Bool)

(assert (=> b!5581208 (= e!3443791 tp_is_empty!40379)))

(declare-fun b!5581210 () Bool)

(declare-fun tp!1544282 () Bool)

(assert (=> b!5581210 (= e!3443791 tp!1544282)))

(declare-fun b!5581211 () Bool)

(declare-fun tp!1544284 () Bool)

(declare-fun tp!1544285 () Bool)

(assert (=> b!5581211 (= e!3443791 (and tp!1544284 tp!1544285))))

(assert (=> b!5580066 (= tp!1543976 e!3443791)))

(assert (= (and b!5580066 ((_ is ElementMatch!15563) (regOne!31638 (regOne!31639 r!7292)))) b!5581208))

(assert (= (and b!5580066 ((_ is Concat!24408) (regOne!31638 (regOne!31639 r!7292)))) b!5581209))

(assert (= (and b!5580066 ((_ is Star!15563) (regOne!31638 (regOne!31639 r!7292)))) b!5581210))

(assert (= (and b!5580066 ((_ is Union!15563) (regOne!31638 (regOne!31639 r!7292)))) b!5581211))

(declare-fun b!5581213 () Bool)

(declare-fun e!3443792 () Bool)

(declare-fun tp!1544291 () Bool)

(declare-fun tp!1544288 () Bool)

(assert (=> b!5581213 (= e!3443792 (and tp!1544291 tp!1544288))))

(declare-fun b!5581212 () Bool)

(assert (=> b!5581212 (= e!3443792 tp_is_empty!40379)))

(declare-fun b!5581214 () Bool)

(declare-fun tp!1544287 () Bool)

(assert (=> b!5581214 (= e!3443792 tp!1544287)))

(declare-fun b!5581215 () Bool)

(declare-fun tp!1544289 () Bool)

(declare-fun tp!1544290 () Bool)

(assert (=> b!5581215 (= e!3443792 (and tp!1544289 tp!1544290))))

(assert (=> b!5580066 (= tp!1543973 e!3443792)))

(assert (= (and b!5580066 ((_ is ElementMatch!15563) (regTwo!31638 (regOne!31639 r!7292)))) b!5581212))

(assert (= (and b!5580066 ((_ is Concat!24408) (regTwo!31638 (regOne!31639 r!7292)))) b!5581213))

(assert (= (and b!5580066 ((_ is Star!15563) (regTwo!31638 (regOne!31639 r!7292)))) b!5581214))

(assert (= (and b!5580066 ((_ is Union!15563) (regTwo!31638 (regOne!31639 r!7292)))) b!5581215))

(declare-fun b!5581217 () Bool)

(declare-fun e!3443793 () Bool)

(declare-fun tp!1544296 () Bool)

(declare-fun tp!1544293 () Bool)

(assert (=> b!5581217 (= e!3443793 (and tp!1544296 tp!1544293))))

(declare-fun b!5581216 () Bool)

(assert (=> b!5581216 (= e!3443793 tp_is_empty!40379)))

(declare-fun b!5581218 () Bool)

(declare-fun tp!1544292 () Bool)

(assert (=> b!5581218 (= e!3443793 tp!1544292)))

(declare-fun b!5581219 () Bool)

(declare-fun tp!1544294 () Bool)

(declare-fun tp!1544295 () Bool)

(assert (=> b!5581219 (= e!3443793 (and tp!1544294 tp!1544295))))

(assert (=> b!5580075 (= tp!1543982 e!3443793)))

(assert (= (and b!5580075 ((_ is ElementMatch!15563) (reg!15892 (reg!15892 r!7292)))) b!5581216))

(assert (= (and b!5580075 ((_ is Concat!24408) (reg!15892 (reg!15892 r!7292)))) b!5581217))

(assert (= (and b!5580075 ((_ is Star!15563) (reg!15892 (reg!15892 r!7292)))) b!5581218))

(assert (= (and b!5580075 ((_ is Union!15563) (reg!15892 (reg!15892 r!7292)))) b!5581219))

(declare-fun b!5581221 () Bool)

(declare-fun e!3443794 () Bool)

(declare-fun tp!1544301 () Bool)

(declare-fun tp!1544298 () Bool)

(assert (=> b!5581221 (= e!3443794 (and tp!1544301 tp!1544298))))

(declare-fun b!5581220 () Bool)

(assert (=> b!5581220 (= e!3443794 tp_is_empty!40379)))

(declare-fun b!5581222 () Bool)

(declare-fun tp!1544297 () Bool)

(assert (=> b!5581222 (= e!3443794 tp!1544297)))

(declare-fun b!5581223 () Bool)

(declare-fun tp!1544299 () Bool)

(declare-fun tp!1544300 () Bool)

(assert (=> b!5581223 (= e!3443794 (and tp!1544299 tp!1544300))))

(assert (=> b!5580097 (= tp!1544006 e!3443794)))

(assert (= (and b!5580097 ((_ is ElementMatch!15563) (regOne!31639 (regTwo!31638 r!7292)))) b!5581220))

(assert (= (and b!5580097 ((_ is Concat!24408) (regOne!31639 (regTwo!31638 r!7292)))) b!5581221))

(assert (= (and b!5580097 ((_ is Star!15563) (regOne!31639 (regTwo!31638 r!7292)))) b!5581222))

(assert (= (and b!5580097 ((_ is Union!15563) (regOne!31639 (regTwo!31638 r!7292)))) b!5581223))

(declare-fun b!5581225 () Bool)

(declare-fun e!3443795 () Bool)

(declare-fun tp!1544306 () Bool)

(declare-fun tp!1544303 () Bool)

(assert (=> b!5581225 (= e!3443795 (and tp!1544306 tp!1544303))))

(declare-fun b!5581224 () Bool)

(assert (=> b!5581224 (= e!3443795 tp_is_empty!40379)))

(declare-fun b!5581226 () Bool)

(declare-fun tp!1544302 () Bool)

(assert (=> b!5581226 (= e!3443795 tp!1544302)))

(declare-fun b!5581227 () Bool)

(declare-fun tp!1544304 () Bool)

(declare-fun tp!1544305 () Bool)

(assert (=> b!5581227 (= e!3443795 (and tp!1544304 tp!1544305))))

(assert (=> b!5580097 (= tp!1544007 e!3443795)))

(assert (= (and b!5580097 ((_ is ElementMatch!15563) (regTwo!31639 (regTwo!31638 r!7292)))) b!5581224))

(assert (= (and b!5580097 ((_ is Concat!24408) (regTwo!31639 (regTwo!31638 r!7292)))) b!5581225))

(assert (= (and b!5580097 ((_ is Star!15563) (regTwo!31639 (regTwo!31638 r!7292)))) b!5581226))

(assert (= (and b!5580097 ((_ is Union!15563) (regTwo!31639 (regTwo!31638 r!7292)))) b!5581227))

(declare-fun b!5581228 () Bool)

(declare-fun e!3443796 () Bool)

(declare-fun tp!1544307 () Bool)

(declare-fun tp!1544308 () Bool)

(assert (=> b!5581228 (= e!3443796 (and tp!1544307 tp!1544308))))

(assert (=> b!5580089 (= tp!1543997 e!3443796)))

(assert (= (and b!5580089 ((_ is Cons!62864) (exprs!5447 (h!69314 (t!376261 zl!343))))) b!5581228))

(declare-fun b!5581230 () Bool)

(declare-fun e!3443797 () Bool)

(declare-fun tp!1544313 () Bool)

(declare-fun tp!1544310 () Bool)

(assert (=> b!5581230 (= e!3443797 (and tp!1544313 tp!1544310))))

(declare-fun b!5581229 () Bool)

(assert (=> b!5581229 (= e!3443797 tp_is_empty!40379)))

(declare-fun b!5581231 () Bool)

(declare-fun tp!1544309 () Bool)

(assert (=> b!5581231 (= e!3443797 tp!1544309)))

(declare-fun b!5581232 () Bool)

(declare-fun tp!1544311 () Bool)

(declare-fun tp!1544312 () Bool)

(assert (=> b!5581232 (= e!3443797 (and tp!1544311 tp!1544312))))

(assert (=> b!5580074 (= tp!1543986 e!3443797)))

(assert (= (and b!5580074 ((_ is ElementMatch!15563) (regOne!31638 (reg!15892 r!7292)))) b!5581229))

(assert (= (and b!5580074 ((_ is Concat!24408) (regOne!31638 (reg!15892 r!7292)))) b!5581230))

(assert (= (and b!5580074 ((_ is Star!15563) (regOne!31638 (reg!15892 r!7292)))) b!5581231))

(assert (= (and b!5580074 ((_ is Union!15563) (regOne!31638 (reg!15892 r!7292)))) b!5581232))

(declare-fun b!5581234 () Bool)

(declare-fun e!3443798 () Bool)

(declare-fun tp!1544318 () Bool)

(declare-fun tp!1544315 () Bool)

(assert (=> b!5581234 (= e!3443798 (and tp!1544318 tp!1544315))))

(declare-fun b!5581233 () Bool)

(assert (=> b!5581233 (= e!3443798 tp_is_empty!40379)))

(declare-fun b!5581235 () Bool)

(declare-fun tp!1544314 () Bool)

(assert (=> b!5581235 (= e!3443798 tp!1544314)))

(declare-fun b!5581236 () Bool)

(declare-fun tp!1544316 () Bool)

(declare-fun tp!1544317 () Bool)

(assert (=> b!5581236 (= e!3443798 (and tp!1544316 tp!1544317))))

(assert (=> b!5580074 (= tp!1543983 e!3443798)))

(assert (= (and b!5580074 ((_ is ElementMatch!15563) (regTwo!31638 (reg!15892 r!7292)))) b!5581233))

(assert (= (and b!5580074 ((_ is Concat!24408) (regTwo!31638 (reg!15892 r!7292)))) b!5581234))

(assert (= (and b!5580074 ((_ is Star!15563) (regTwo!31638 (reg!15892 r!7292)))) b!5581235))

(assert (= (and b!5580074 ((_ is Union!15563) (regTwo!31638 (reg!15892 r!7292)))) b!5581236))

(declare-fun b!5581238 () Bool)

(declare-fun e!3443799 () Bool)

(declare-fun tp!1544323 () Bool)

(declare-fun tp!1544320 () Bool)

(assert (=> b!5581238 (= e!3443799 (and tp!1544323 tp!1544320))))

(declare-fun b!5581237 () Bool)

(assert (=> b!5581237 (= e!3443799 tp_is_empty!40379)))

(declare-fun b!5581239 () Bool)

(declare-fun tp!1544319 () Bool)

(assert (=> b!5581239 (= e!3443799 tp!1544319)))

(declare-fun b!5581240 () Bool)

(declare-fun tp!1544321 () Bool)

(declare-fun tp!1544322 () Bool)

(assert (=> b!5581240 (= e!3443799 (and tp!1544321 tp!1544322))))

(assert (=> b!5580096 (= tp!1544004 e!3443799)))

(assert (= (and b!5580096 ((_ is ElementMatch!15563) (reg!15892 (regTwo!31638 r!7292)))) b!5581237))

(assert (= (and b!5580096 ((_ is Concat!24408) (reg!15892 (regTwo!31638 r!7292)))) b!5581238))

(assert (= (and b!5580096 ((_ is Star!15563) (reg!15892 (regTwo!31638 r!7292)))) b!5581239))

(assert (= (and b!5580096 ((_ is Union!15563) (reg!15892 (regTwo!31638 r!7292)))) b!5581240))

(declare-fun b!5581242 () Bool)

(declare-fun e!3443800 () Bool)

(declare-fun tp!1544328 () Bool)

(declare-fun tp!1544325 () Bool)

(assert (=> b!5581242 (= e!3443800 (and tp!1544328 tp!1544325))))

(declare-fun b!5581241 () Bool)

(assert (=> b!5581241 (= e!3443800 tp_is_empty!40379)))

(declare-fun b!5581243 () Bool)

(declare-fun tp!1544324 () Bool)

(assert (=> b!5581243 (= e!3443800 tp!1544324)))

(declare-fun b!5581244 () Bool)

(declare-fun tp!1544326 () Bool)

(declare-fun tp!1544327 () Bool)

(assert (=> b!5581244 (= e!3443800 (and tp!1544326 tp!1544327))))

(assert (=> b!5580095 (= tp!1544008 e!3443800)))

(assert (= (and b!5580095 ((_ is ElementMatch!15563) (regOne!31638 (regTwo!31638 r!7292)))) b!5581241))

(assert (= (and b!5580095 ((_ is Concat!24408) (regOne!31638 (regTwo!31638 r!7292)))) b!5581242))

(assert (= (and b!5580095 ((_ is Star!15563) (regOne!31638 (regTwo!31638 r!7292)))) b!5581243))

(assert (= (and b!5580095 ((_ is Union!15563) (regOne!31638 (regTwo!31638 r!7292)))) b!5581244))

(declare-fun b!5581246 () Bool)

(declare-fun e!3443801 () Bool)

(declare-fun tp!1544333 () Bool)

(declare-fun tp!1544330 () Bool)

(assert (=> b!5581246 (= e!3443801 (and tp!1544333 tp!1544330))))

(declare-fun b!5581245 () Bool)

(assert (=> b!5581245 (= e!3443801 tp_is_empty!40379)))

(declare-fun b!5581247 () Bool)

(declare-fun tp!1544329 () Bool)

(assert (=> b!5581247 (= e!3443801 tp!1544329)))

(declare-fun b!5581248 () Bool)

(declare-fun tp!1544331 () Bool)

(declare-fun tp!1544332 () Bool)

(assert (=> b!5581248 (= e!3443801 (and tp!1544331 tp!1544332))))

(assert (=> b!5580095 (= tp!1544005 e!3443801)))

(assert (= (and b!5580095 ((_ is ElementMatch!15563) (regTwo!31638 (regTwo!31638 r!7292)))) b!5581245))

(assert (= (and b!5580095 ((_ is Concat!24408) (regTwo!31638 (regTwo!31638 r!7292)))) b!5581246))

(assert (= (and b!5580095 ((_ is Star!15563) (regTwo!31638 (regTwo!31638 r!7292)))) b!5581247))

(assert (= (and b!5580095 ((_ is Union!15563) (regTwo!31638 (regTwo!31638 r!7292)))) b!5581248))

(declare-fun b!5581250 () Bool)

(declare-fun e!3443803 () Bool)

(declare-fun tp!1544334 () Bool)

(assert (=> b!5581250 (= e!3443803 tp!1544334)))

(declare-fun e!3443802 () Bool)

(declare-fun b!5581249 () Bool)

(declare-fun tp!1544335 () Bool)

(assert (=> b!5581249 (= e!3443802 (and (inv!82154 (h!69314 (t!376261 (t!376261 zl!343)))) e!3443803 tp!1544335))))

(assert (=> b!5580088 (= tp!1543998 e!3443802)))

(assert (= b!5581249 b!5581250))

(assert (= (and b!5580088 ((_ is Cons!62866) (t!376261 (t!376261 zl!343)))) b!5581249))

(declare-fun m!6563260 () Bool)

(assert (=> b!5581249 m!6563260))

(declare-fun b_lambda!211533 () Bool)

(assert (= b_lambda!211527 (or d!1763937 b_lambda!211533)))

(declare-fun bs!1291219 () Bool)

(declare-fun d!1764441 () Bool)

(assert (= bs!1291219 (and d!1764441 d!1763937)))

(assert (=> bs!1291219 (= (dynLambda!24587 lambda!299220 (h!69312 (exprs!5447 (h!69314 zl!343)))) (validRegex!7299 (h!69312 (exprs!5447 (h!69314 zl!343)))))))

(declare-fun m!6563262 () Bool)

(assert (=> bs!1291219 m!6563262))

(assert (=> b!5580915 d!1764441))

(declare-fun b_lambda!211535 () Bool)

(assert (= b_lambda!211525 (or b!5579326 b_lambda!211535)))

(assert (=> d!1764263 d!1763953))

(declare-fun b_lambda!211537 () Bool)

(assert (= b_lambda!211529 (or d!1763945 b_lambda!211537)))

(declare-fun bs!1291220 () Bool)

(declare-fun d!1764443 () Bool)

(assert (= bs!1291220 (and d!1764443 d!1763945)))

(assert (=> bs!1291220 (= (dynLambda!24587 lambda!299223 (h!69312 (unfocusZipperList!991 zl!343))) (validRegex!7299 (h!69312 (unfocusZipperList!991 zl!343))))))

(declare-fun m!6563264 () Bool)

(assert (=> bs!1291220 m!6563264))

(assert (=> b!5581041 d!1764443))

(declare-fun b_lambda!211539 () Bool)

(assert (= b_lambda!211519 (or d!1763947 b_lambda!211539)))

(declare-fun bs!1291221 () Bool)

(declare-fun d!1764445 () Bool)

(assert (= bs!1291221 (and d!1764445 d!1763947)))

(assert (=> bs!1291221 (= (dynLambda!24587 lambda!299226 (h!69312 lt!2253426)) (validRegex!7299 (h!69312 lt!2253426)))))

(declare-fun m!6563266 () Bool)

(assert (=> bs!1291221 m!6563266))

(assert (=> b!5580692 d!1764445))

(declare-fun b_lambda!211541 () Bool)

(assert (= b_lambda!211531 (or d!1763903 b_lambda!211541)))

(declare-fun bs!1291222 () Bool)

(declare-fun d!1764447 () Bool)

(assert (= bs!1291222 (and d!1764447 d!1763903)))

(assert (=> bs!1291222 (= (dynLambda!24587 lambda!299207 (h!69312 (exprs!5447 (h!69314 zl!343)))) (validRegex!7299 (h!69312 (exprs!5447 (h!69314 zl!343)))))))

(assert (=> bs!1291222 m!6563262))

(assert (=> b!5581082 d!1764447))

(declare-fun b_lambda!211543 () Bool)

(assert (= b_lambda!211523 (or b!5579326 b_lambda!211543)))

(assert (=> d!1764257 d!1763951))

(declare-fun b_lambda!211545 () Bool)

(assert (= b_lambda!211521 (or d!1763935 b_lambda!211545)))

(declare-fun bs!1291223 () Bool)

(declare-fun d!1764449 () Bool)

(assert (= bs!1291223 (and d!1764449 d!1763935)))

(assert (=> bs!1291223 (= (dynLambda!24587 lambda!299219 (h!69312 (exprs!5447 setElem!37131))) (validRegex!7299 (h!69312 (exprs!5447 setElem!37131))))))

(declare-fun m!6563268 () Bool)

(assert (=> bs!1291223 m!6563268))

(assert (=> b!5580734 d!1764449))

(check-sat (not d!1764409) (not b!5580923) (not b!5580746) (not b!5581168) (not b!5581164) (not b_lambda!211543) (not b!5581106) (not b!5581096) (not bm!417400) (not b!5581214) (not b!5581135) (not bm!417436) (not bm!417442) (not d!1764227) (not b!5580892) (not b!5580893) (not b!5581207) (not bm!417471) (not b!5580716) (not d!1764267) (not bm!417416) (not b!5580884) (not bm!417419) (not b!5580902) (not d!1764387) (not b!5581242) (not b!5581206) (not b!5580910) (not bm!417444) (not setNonEmpty!37145) (not b!5581222) (not d!1764363) (not b!5581143) (not b!5581163) (not bm!417440) (not b!5581205) (not b_lambda!211535) (not b_lambda!211539) (not b!5581228) (not d!1764295) (not b!5581223) (not bm!417425) (not b!5580814) (not d!1764299) (not b!5581145) (not d!1764255) (not bm!417408) (not b!5580719) (not b!5580882) (not b!5581005) (not b!5580903) (not b!5580948) (not b!5580832) (not b!5580933) (not bm!417426) (not bs!1291223) (not d!1764405) (not bs!1291222) (not b!5581239) (not b!5581175) (not bs!1291220) (not b!5581227) (not bm!417428) (not b!5580683) (not b!5581225) (not b!5581137) (not b!5581236) (not b!5581215) (not b!5581042) (not d!1764421) (not bm!417479) (not b!5580706) (not b!5581232) (not b!5580867) (not b!5581148) (not b!5581119) (not b!5580982) (not b!5581009) (not b!5580800) (not bm!417457) (not b!5581171) (not bm!417399) (not b!5581181) (not d!1764417) (not b!5581155) (not b!5580790) (not b!5581203) (not d!1764361) (not b!5581151) (not d!1764359) (not b!5581172) (not b!5581201) (not b!5580750) (not b!5581189) (not b!5580693) (not b!5581194) (not d!1764337) (not d!1764415) (not b!5581230) (not b!5581240) (not d!1764437) (not b!5580843) (not d!1764277) (not b!5580935) (not b!5581193) (not bm!417387) (not b!5581006) (not b!5580819) (not b!5580925) (not b!5581190) (not b!5580780) (not b!5580736) (not b!5580927) (not bm!417434) (not b!5580751) (not b!5581185) (not b!5580872) (not b!5581250) (not d!1764301) (not bm!417381) (not b!5581187) (not b!5580916) (not bm!417449) (not b!5581032) (not b!5581248) (not b_lambda!211489) (not b!5580873) (not b!5581198) (not b!5581211) (not b!5580988) (not d!1764297) tp_is_empty!40379 (not d!1764209) (not b!5581095) (not b!5581128) (not bm!417451) (not b!5581140) (not setNonEmpty!37146) (not bm!417476) (not b!5581094) (not bm!417429) (not b!5581247) (not b!5581112) (not d!1764207) (not b!5581219) (not b!5580966) (not b!5581014) (not bm!417384) (not b!5580831) (not b!5581184) (not d!1764353) (not b!5581152) (not b!5581021) (not d!1764283) (not d!1764269) (not b!5581177) (not bm!417418) (not b!5581068) (not bm!417409) (not b!5581118) (not b!5581213) (not b!5580983) (not b!5581136) (not b!5581179) (not b!5580745) (not b!5581221) (not b!5581234) (not d!1764311) (not b!5580818) (not d!1764413) (not bm!417380) (not b!5581249) (not b!5581173) (not b!5581153) (not b!5581243) (not d!1764271) (not bm!417383) (not bm!417430) (not b!5580944) (not d!1764241) (not bm!417423) (not b_lambda!211541) (not b!5581180) (not b!5581199) (not bm!417438) (not d!1764435) (not b!5580885) (not b!5581073) (not bm!417454) (not b!5581139) (not b!5580721) (not bm!417459) (not d!1764215) (not b_lambda!211545) (not b!5581231) (not b!5581157) (not bm!417372) (not b!5580840) (not b!5581159) (not bm!417374) (not b!5580889) (not d!1764327) (not b!5581149) (not bm!417456) (not b!5581129) (not d!1764395) (not bs!1291219) (not d!1764289) (not b!5580717) (not setNonEmpty!37147) (not b!5580821) (not d!1764419) (not b!5580801) (not bm!417446) (not d!1764343) (not b!5581010) (not b!5581238) (not b!5581013) (not b!5581202) (not b!5580887) (not b!5580813) (not b!5580934) (not bm!417469) (not b!5580922) (not b!5581121) (not b!5581191) (not b!5580712) (not b!5581012) (not b!5581235) (not d!1764367) (not bm!417402) (not b!5580841) (not b!5581244) (not d!1764217) (not bm!417406) (not bs!1291221) (not b!5581113) (not b!5580877) (not bm!417474) (not b!5580878) (not bm!417370) (not d!1764389) (not b!5580698) (not b!5581147) (not bm!417478) (not d!1764391) (not b!5580868) (not b!5581099) (not d!1764261) (not d!1764383) (not d!1764291) (not b!5580808) (not b!5581156) (not b!5581023) (not b!5581016) (not b!5581114) (not b!5581165) (not b!5581019) (not b!5581083) (not b!5580879) (not d!1764323) (not b!5581123) (not bm!417417) (not d!1764273) (not bm!417386) (not bm!417453) (not bm!417414) (not d!1764253) (not b!5580918) (not b!5580753) (not b!5581111) (not bm!417388) (not bm!417465) (not b!5581210) (not b!5580842) (not b!5580977) (not b!5581097) (not bm!417378) (not d!1764345) (not b!5580735) (not b_lambda!211537) (not b!5581218) (not bm!417376) (not d!1764431) (not d!1764439) (not bm!417461) (not b!5580984) (not b!5581020) (not b!5581209) (not b!5581182) (not b!5581176) (not d!1764357) (not d!1764239) (not d!1764263) (not b!5581195) (not b!5581167) (not b!5580823) (not bm!417421) (not b!5580839) (not b!5581226) (not b!5580755) (not b_lambda!211533) (not bm!417401) (not b!5581246) (not b!5580694) (not bm!417448) (not b!5581089) (not bm!417472) (not d!1764371) (not b!5581144) (not d!1764319) (not b!5580890) (not d!1764385) (not b_lambda!211487) (not b!5580791) (not b!5581141) (not b!5581169) (not bm!417404) (not b!5581186) (not b!5581161) (not d!1764365) (not d!1764341) (not b!5580695) (not bm!417450) (not d!1764339) (not b!5580711) (not d!1764257) (not bm!417463) (not b!5581049) (not b!5581022) (not d!1764225) (not bm!417432) (not b!5581091) (not b!5581197) (not bm!417415) (not b!5580888) (not b!5580881) (not b!5580917) (not b!5580725) (not b!5581093) (not b!5580955) (not b!5581160) (not b!5581217) (not bm!417467))
(check-sat)
