; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!559038 () Bool)

(assert start!559038)

(declare-fun b!5298263 () Bool)

(assert (=> b!5298263 true))

(assert (=> b!5298263 true))

(declare-fun lambda!268844 () Int)

(declare-fun lambda!268843 () Int)

(assert (=> b!5298263 (not (= lambda!268844 lambda!268843))))

(assert (=> b!5298263 true))

(assert (=> b!5298263 true))

(declare-fun b!5298283 () Bool)

(assert (=> b!5298283 true))

(declare-fun bs!1228868 () Bool)

(declare-fun b!5298281 () Bool)

(assert (= bs!1228868 (and b!5298281 b!5298263)))

(declare-datatypes ((C!30144 0))(
  ( (C!30145 (val!24774 Int)) )
))
(declare-datatypes ((Regex!14937 0))(
  ( (ElementMatch!14937 (c!919613 C!30144)) (Concat!23782 (regOne!30386 Regex!14937) (regTwo!30386 Regex!14937)) (EmptyExpr!14937) (Star!14937 (reg!15266 Regex!14937)) (EmptyLang!14937) (Union!14937 (regOne!30387 Regex!14937) (regTwo!30387 Regex!14937)) )
))
(declare-fun r!7292 () Regex!14937)

(declare-fun lt!2164707 () Regex!14937)

(declare-fun lambda!268846 () Int)

(assert (=> bs!1228868 (= (and (= (regOne!30386 (regOne!30386 r!7292)) (regOne!30386 r!7292)) (= lt!2164707 (regTwo!30386 r!7292))) (= lambda!268846 lambda!268843))))

(assert (=> bs!1228868 (not (= lambda!268846 lambda!268844))))

(assert (=> b!5298281 true))

(assert (=> b!5298281 true))

(assert (=> b!5298281 true))

(declare-fun lambda!268847 () Int)

(assert (=> bs!1228868 (not (= lambda!268847 lambda!268843))))

(assert (=> bs!1228868 (= (and (= (regOne!30386 (regOne!30386 r!7292)) (regOne!30386 r!7292)) (= lt!2164707 (regTwo!30386 r!7292))) (= lambda!268847 lambda!268844))))

(assert (=> b!5298281 (not (= lambda!268847 lambda!268846))))

(assert (=> b!5298281 true))

(assert (=> b!5298281 true))

(assert (=> b!5298281 true))

(declare-fun lt!2164726 () Regex!14937)

(declare-fun lambda!268848 () Int)

(assert (=> bs!1228868 (= (and (= (regTwo!30386 (regOne!30386 r!7292)) (regOne!30386 r!7292)) (= lt!2164726 (regTwo!30386 r!7292))) (= lambda!268848 lambda!268843))))

(assert (=> bs!1228868 (not (= lambda!268848 lambda!268844))))

(assert (=> b!5298281 (= (and (= (regTwo!30386 (regOne!30386 r!7292)) (regOne!30386 (regOne!30386 r!7292))) (= lt!2164726 lt!2164707)) (= lambda!268848 lambda!268846))))

(assert (=> b!5298281 (not (= lambda!268848 lambda!268847))))

(assert (=> b!5298281 true))

(assert (=> b!5298281 true))

(assert (=> b!5298281 true))

(declare-fun lambda!268849 () Int)

(assert (=> b!5298281 (= (and (= (regTwo!30386 (regOne!30386 r!7292)) (regOne!30386 (regOne!30386 r!7292))) (= lt!2164726 lt!2164707)) (= lambda!268849 lambda!268847))))

(assert (=> bs!1228868 (not (= lambda!268849 lambda!268843))))

(assert (=> b!5298281 (not (= lambda!268849 lambda!268846))))

(assert (=> b!5298281 (not (= lambda!268849 lambda!268848))))

(assert (=> bs!1228868 (= (and (= (regTwo!30386 (regOne!30386 r!7292)) (regOne!30386 r!7292)) (= lt!2164726 (regTwo!30386 r!7292))) (= lambda!268849 lambda!268844))))

(assert (=> b!5298281 true))

(assert (=> b!5298281 true))

(assert (=> b!5298281 true))

(declare-fun b!5298254 () Bool)

(declare-fun res!2247099 () Bool)

(declare-fun e!3293257 () Bool)

(assert (=> b!5298254 (=> res!2247099 e!3293257)))

(declare-fun nullable!5106 (Regex!14937) Bool)

(assert (=> b!5298254 (= res!2247099 (not (nullable!5106 (regOne!30386 (regOne!30386 r!7292)))))))

(declare-fun b!5298255 () Bool)

(declare-fun res!2247118 () Bool)

(declare-fun e!3293258 () Bool)

(assert (=> b!5298255 (=> res!2247118 e!3293258)))

(declare-datatypes ((List!61110 0))(
  ( (Nil!60986) (Cons!60986 (h!67434 Regex!14937) (t!374315 List!61110)) )
))
(declare-datatypes ((Context!8642 0))(
  ( (Context!8643 (exprs!4821 List!61110)) )
))
(declare-datatypes ((List!61111 0))(
  ( (Nil!60987) (Cons!60987 (h!67435 Context!8642) (t!374316 List!61111)) )
))
(declare-fun zl!343 () List!61111)

(declare-fun generalisedUnion!866 (List!61110) Regex!14937)

(declare-fun unfocusZipperList!379 (List!61111) List!61110)

(assert (=> b!5298255 (= res!2247118 (not (= r!7292 (generalisedUnion!866 (unfocusZipperList!379 zl!343)))))))

(declare-fun b!5298256 () Bool)

(declare-fun e!3293266 () Bool)

(assert (=> b!5298256 (= e!3293266 (not e!3293258))))

(declare-fun res!2247102 () Bool)

(assert (=> b!5298256 (=> res!2247102 e!3293258)))

(get-info :version)

(assert (=> b!5298256 (= res!2247102 (not ((_ is Cons!60987) zl!343)))))

(declare-fun lt!2164701 () Bool)

(declare-datatypes ((List!61112 0))(
  ( (Nil!60988) (Cons!60988 (h!67436 C!30144) (t!374317 List!61112)) )
))
(declare-fun s!2326 () List!61112)

(declare-fun matchRSpec!2040 (Regex!14937 List!61112) Bool)

(assert (=> b!5298256 (= lt!2164701 (matchRSpec!2040 r!7292 s!2326))))

(declare-fun matchR!7122 (Regex!14937 List!61112) Bool)

(assert (=> b!5298256 (= lt!2164701 (matchR!7122 r!7292 s!2326))))

(declare-datatypes ((Unit!153266 0))(
  ( (Unit!153267) )
))
(declare-fun lt!2164729 () Unit!153266)

(declare-fun mainMatchTheorem!2040 (Regex!14937 List!61112) Unit!153266)

(assert (=> b!5298256 (= lt!2164729 (mainMatchTheorem!2040 r!7292 s!2326))))

(declare-fun b!5298257 () Bool)

(declare-fun e!3293270 () Bool)

(declare-fun e!3293262 () Bool)

(assert (=> b!5298257 (= e!3293270 e!3293262)))

(declare-fun res!2247121 () Bool)

(assert (=> b!5298257 (=> res!2247121 e!3293262)))

(declare-fun e!3293252 () Bool)

(assert (=> b!5298257 (= res!2247121 e!3293252)))

(declare-fun res!2247115 () Bool)

(assert (=> b!5298257 (=> (not res!2247115) (not e!3293252))))

(declare-fun lt!2164698 () Bool)

(declare-fun lt!2164704 () Bool)

(assert (=> b!5298257 (= res!2247115 (not (= lt!2164698 lt!2164704)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2164696 () (InoxSet Context!8642))

(declare-fun matchZipper!1181 ((InoxSet Context!8642) List!61112) Bool)

(assert (=> b!5298257 (= lt!2164698 (matchZipper!1181 lt!2164696 (t!374317 s!2326)))))

(declare-fun lt!2164720 () (InoxSet Context!8642))

(declare-fun e!3293268 () Bool)

(assert (=> b!5298257 (= (matchZipper!1181 lt!2164720 (t!374317 s!2326)) e!3293268)))

(declare-fun res!2247101 () Bool)

(assert (=> b!5298257 (=> res!2247101 e!3293268)))

(assert (=> b!5298257 (= res!2247101 lt!2164704)))

(declare-fun lt!2164685 () (InoxSet Context!8642))

(assert (=> b!5298257 (= lt!2164704 (matchZipper!1181 lt!2164685 (t!374317 s!2326)))))

(declare-fun lt!2164723 () Unit!153266)

(declare-fun lt!2164692 () (InoxSet Context!8642))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!174 ((InoxSet Context!8642) (InoxSet Context!8642) List!61112) Unit!153266)

(assert (=> b!5298257 (= lt!2164723 (lemmaZipperConcatMatchesSameAsBothZippers!174 lt!2164685 lt!2164692 (t!374317 s!2326)))))

(declare-fun b!5298258 () Bool)

(declare-fun e!3293251 () Bool)

(declare-fun tp!1477923 () Bool)

(declare-fun tp!1477922 () Bool)

(assert (=> b!5298258 (= e!3293251 (and tp!1477923 tp!1477922))))

(declare-fun b!5298259 () Bool)

(assert (=> b!5298259 (= e!3293252 (not (matchZipper!1181 lt!2164692 (t!374317 s!2326))))))

(declare-fun b!5298261 () Bool)

(declare-fun tp!1477918 () Bool)

(assert (=> b!5298261 (= e!3293251 tp!1477918)))

(declare-fun b!5298262 () Bool)

(declare-fun e!3293253 () Bool)

(declare-fun e!3293259 () Bool)

(assert (=> b!5298262 (= e!3293253 e!3293259)))

(declare-fun res!2247098 () Bool)

(assert (=> b!5298262 (=> res!2247098 e!3293259)))

(declare-fun e!3293264 () Bool)

(assert (=> b!5298262 (= res!2247098 e!3293264)))

(declare-fun res!2247104 () Bool)

(assert (=> b!5298262 (=> (not res!2247104) (not e!3293264))))

(declare-fun lt!2164730 () (InoxSet Context!8642))

(assert (=> b!5298262 (= res!2247104 (not (= lt!2164698 (matchZipper!1181 lt!2164730 (t!374317 s!2326)))))))

(declare-fun lt!2164695 () (InoxSet Context!8642))

(declare-fun e!3293265 () Bool)

(assert (=> b!5298262 (= (matchZipper!1181 lt!2164695 (t!374317 s!2326)) e!3293265)))

(declare-fun res!2247117 () Bool)

(assert (=> b!5298262 (=> res!2247117 e!3293265)))

(assert (=> b!5298262 (= res!2247117 lt!2164704)))

(declare-fun lt!2164688 () (InoxSet Context!8642))

(declare-fun lt!2164700 () Unit!153266)

(assert (=> b!5298262 (= lt!2164700 (lemmaZipperConcatMatchesSameAsBothZippers!174 lt!2164685 lt!2164688 (t!374317 s!2326)))))

(declare-fun lambda!268845 () Int)

(declare-fun lt!2164725 () (InoxSet Context!8642))

(declare-fun lt!2164703 () Context!8642)

(declare-fun flatMap!664 ((InoxSet Context!8642) Int) (InoxSet Context!8642))

(declare-fun derivationStepZipperUp!309 (Context!8642 C!30144) (InoxSet Context!8642))

(assert (=> b!5298262 (= (flatMap!664 lt!2164725 lambda!268845) (derivationStepZipperUp!309 lt!2164703 (h!67436 s!2326)))))

(declare-fun lt!2164713 () Unit!153266)

(declare-fun lemmaFlatMapOnSingletonSet!196 ((InoxSet Context!8642) Context!8642 Int) Unit!153266)

(assert (=> b!5298262 (= lt!2164713 (lemmaFlatMapOnSingletonSet!196 lt!2164725 lt!2164703 lambda!268845))))

(declare-fun e!3293260 () Bool)

(assert (=> b!5298263 (= e!3293258 e!3293260)))

(declare-fun res!2247106 () Bool)

(assert (=> b!5298263 (=> res!2247106 e!3293260)))

(declare-fun lt!2164689 () Bool)

(assert (=> b!5298263 (= res!2247106 (or (not (= lt!2164701 lt!2164689)) ((_ is Nil!60988) s!2326)))))

(declare-fun Exists!2118 (Int) Bool)

(assert (=> b!5298263 (= (Exists!2118 lambda!268843) (Exists!2118 lambda!268844))))

(declare-fun lt!2164710 () Unit!153266)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!772 (Regex!14937 Regex!14937 List!61112) Unit!153266)

(assert (=> b!5298263 (= lt!2164710 (lemmaExistCutMatchRandMatchRSpecEquivalent!772 (regOne!30386 r!7292) (regTwo!30386 r!7292) s!2326))))

(assert (=> b!5298263 (= lt!2164689 (Exists!2118 lambda!268843))))

(declare-datatypes ((tuple2!64272 0))(
  ( (tuple2!64273 (_1!35439 List!61112) (_2!35439 List!61112)) )
))
(declare-datatypes ((Option!15048 0))(
  ( (None!15047) (Some!15047 (v!51076 tuple2!64272)) )
))
(declare-fun isDefined!11751 (Option!15048) Bool)

(declare-fun findConcatSeparation!1462 (Regex!14937 Regex!14937 List!61112 List!61112 List!61112) Option!15048)

(assert (=> b!5298263 (= lt!2164689 (isDefined!11751 (findConcatSeparation!1462 (regOne!30386 r!7292) (regTwo!30386 r!7292) Nil!60988 s!2326 s!2326)))))

(declare-fun lt!2164706 () Unit!153266)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1226 (Regex!14937 Regex!14937 List!61112) Unit!153266)

(assert (=> b!5298263 (= lt!2164706 (lemmaFindConcatSeparationEquivalentToExists!1226 (regOne!30386 r!7292) (regTwo!30386 r!7292) s!2326))))

(declare-fun b!5298264 () Bool)

(declare-fun res!2247123 () Bool)

(declare-fun e!3293261 () Bool)

(assert (=> b!5298264 (=> res!2247123 e!3293261)))

(declare-fun lt!2164693 () List!61111)

(declare-fun zipperDepth!54 (List!61111) Int)

(assert (=> b!5298264 (= res!2247123 (> (zipperDepth!54 lt!2164693) (zipperDepth!54 zl!343)))))

(declare-fun b!5298265 () Bool)

(assert (=> b!5298265 (= e!3293265 (matchZipper!1181 lt!2164688 (t!374317 s!2326)))))

(declare-fun b!5298266 () Bool)

(declare-fun res!2247110 () Bool)

(assert (=> b!5298266 (=> res!2247110 e!3293258)))

(declare-fun isEmpty!32947 (List!61111) Bool)

(assert (=> b!5298266 (= res!2247110 (not (isEmpty!32947 (t!374316 zl!343))))))

(declare-fun b!5298267 () Bool)

(assert (=> b!5298267 (= e!3293268 (matchZipper!1181 lt!2164692 (t!374317 s!2326)))))

(declare-fun b!5298268 () Bool)

(declare-fun e!3293254 () Unit!153266)

(declare-fun Unit!153268 () Unit!153266)

(assert (=> b!5298268 (= e!3293254 Unit!153268)))

(declare-fun b!5298269 () Bool)

(declare-fun tp!1477924 () Bool)

(declare-fun tp!1477917 () Bool)

(assert (=> b!5298269 (= e!3293251 (and tp!1477924 tp!1477917))))

(declare-fun b!5298270 () Bool)

(assert (=> b!5298270 (= e!3293257 e!3293270)))

(declare-fun res!2247113 () Bool)

(assert (=> b!5298270 (=> res!2247113 e!3293270)))

(assert (=> b!5298270 (= res!2247113 (not (= lt!2164696 lt!2164720)))))

(assert (=> b!5298270 (= lt!2164720 ((_ map or) lt!2164685 lt!2164692))))

(declare-fun lt!2164712 () Context!8642)

(declare-fun derivationStepZipperDown!385 (Regex!14937 Context!8642 C!30144) (InoxSet Context!8642))

(assert (=> b!5298270 (= lt!2164692 (derivationStepZipperDown!385 (regTwo!30386 (regOne!30386 r!7292)) lt!2164712 (h!67436 s!2326)))))

(assert (=> b!5298270 (= lt!2164685 (derivationStepZipperDown!385 (regOne!30386 (regOne!30386 r!7292)) lt!2164703 (h!67436 s!2326)))))

(declare-fun lt!2164728 () List!61110)

(assert (=> b!5298270 (= lt!2164703 (Context!8643 lt!2164728))))

(assert (=> b!5298270 (= lt!2164728 (Cons!60986 (regTwo!30386 (regOne!30386 r!7292)) (t!374315 (exprs!4821 (h!67435 zl!343)))))))

(declare-fun res!2247105 () Bool)

(assert (=> start!559038 (=> (not res!2247105) (not e!3293266))))

(declare-fun validRegex!6673 (Regex!14937) Bool)

(assert (=> start!559038 (= res!2247105 (validRegex!6673 r!7292))))

(assert (=> start!559038 e!3293266))

(assert (=> start!559038 e!3293251))

(declare-fun condSetEmpty!34025 () Bool)

(declare-fun z!1189 () (InoxSet Context!8642))

(assert (=> start!559038 (= condSetEmpty!34025 (= z!1189 ((as const (Array Context!8642 Bool)) false)))))

(declare-fun setRes!34025 () Bool)

(assert (=> start!559038 setRes!34025))

(declare-fun e!3293269 () Bool)

(assert (=> start!559038 e!3293269))

(declare-fun e!3293256 () Bool)

(assert (=> start!559038 e!3293256))

(declare-fun b!5298260 () Bool)

(declare-fun res!2247107 () Bool)

(assert (=> b!5298260 (=> res!2247107 e!3293260)))

(declare-fun isEmpty!32948 (List!61110) Bool)

(assert (=> b!5298260 (= res!2247107 (isEmpty!32948 (t!374315 (exprs!4821 (h!67435 zl!343)))))))

(declare-fun b!5298271 () Bool)

(declare-fun e!3293255 () Bool)

(declare-fun tp!1477925 () Bool)

(assert (=> b!5298271 (= e!3293255 tp!1477925)))

(declare-fun b!5298272 () Bool)

(declare-fun res!2247111 () Bool)

(assert (=> b!5298272 (=> res!2247111 e!3293258)))

(assert (=> b!5298272 (= res!2247111 (not ((_ is Cons!60986) (exprs!4821 (h!67435 zl!343)))))))

(declare-fun setIsEmpty!34025 () Bool)

(assert (=> setIsEmpty!34025 setRes!34025))

(declare-fun b!5298273 () Bool)

(declare-fun res!2247108 () Bool)

(assert (=> b!5298273 (=> res!2247108 e!3293259)))

(declare-fun lt!2164727 () Context!8642)

(declare-fun contextDepthTotal!78 (Context!8642) Int)

(assert (=> b!5298273 (= res!2247108 (>= (contextDepthTotal!78 lt!2164727) (contextDepthTotal!78 (h!67435 zl!343))))))

(declare-fun b!5298274 () Bool)

(declare-fun Unit!153269 () Unit!153266)

(assert (=> b!5298274 (= e!3293254 Unit!153269)))

(declare-fun lt!2164708 () Unit!153266)

(declare-fun lt!2164714 () (InoxSet Context!8642))

(assert (=> b!5298274 (= lt!2164708 (lemmaZipperConcatMatchesSameAsBothZippers!174 lt!2164696 lt!2164714 (t!374317 s!2326)))))

(declare-fun res!2247114 () Bool)

(assert (=> b!5298274 (= res!2247114 (matchZipper!1181 lt!2164696 (t!374317 s!2326)))))

(declare-fun e!3293267 () Bool)

(assert (=> b!5298274 (=> res!2247114 e!3293267)))

(assert (=> b!5298274 (= (matchZipper!1181 ((_ map or) lt!2164696 lt!2164714) (t!374317 s!2326)) e!3293267)))

(declare-fun b!5298275 () Bool)

(declare-fun tp!1477921 () Bool)

(declare-fun e!3293263 () Bool)

(declare-fun inv!80589 (Context!8642) Bool)

(assert (=> b!5298275 (= e!3293269 (and (inv!80589 (h!67435 zl!343)) e!3293263 tp!1477921))))

(declare-fun b!5298276 () Bool)

(declare-fun derivationStepZipper!1180 ((InoxSet Context!8642) C!30144) (InoxSet Context!8642))

(assert (=> b!5298276 (= e!3293264 (not (matchZipper!1181 (derivationStepZipper!1180 lt!2164725 (h!67436 s!2326)) (t!374317 s!2326))))))

(declare-fun b!5298277 () Bool)

(declare-fun res!2247112 () Bool)

(assert (=> b!5298277 (=> res!2247112 e!3293258)))

(assert (=> b!5298277 (= res!2247112 (or ((_ is EmptyExpr!14937) r!7292) ((_ is EmptyLang!14937) r!7292) ((_ is ElementMatch!14937) r!7292) ((_ is Union!14937) r!7292) (not ((_ is Concat!23782) r!7292))))))

(declare-fun b!5298278 () Bool)

(assert (=> b!5298278 (= e!3293259 e!3293261)))

(declare-fun res!2247103 () Bool)

(assert (=> b!5298278 (=> res!2247103 e!3293261)))

(declare-fun zipperDepthTotal!98 (List!61111) Int)

(assert (=> b!5298278 (= res!2247103 (>= (zipperDepthTotal!98 lt!2164693) (zipperDepthTotal!98 zl!343)))))

(assert (=> b!5298278 (= lt!2164693 (Cons!60987 lt!2164727 Nil!60987))))

(declare-fun b!5298279 () Bool)

(declare-fun tp!1477919 () Bool)

(assert (=> b!5298279 (= e!3293263 tp!1477919)))

(declare-fun b!5298280 () Bool)

(declare-fun res!2247100 () Bool)

(assert (=> b!5298280 (=> (not res!2247100) (not e!3293266))))

(declare-fun unfocusZipper!679 (List!61111) Regex!14937)

(assert (=> b!5298280 (= res!2247100 (= r!7292 (unfocusZipper!679 zl!343)))))

(declare-fun tp!1477920 () Bool)

(declare-fun setNonEmpty!34025 () Bool)

(declare-fun setElem!34025 () Context!8642)

(assert (=> setNonEmpty!34025 (= setRes!34025 (and tp!1477920 (inv!80589 setElem!34025) e!3293255))))

(declare-fun setRest!34025 () (InoxSet Context!8642))

(assert (=> setNonEmpty!34025 (= z!1189 ((_ map or) (store ((as const (Array Context!8642 Bool)) false) setElem!34025 true) setRest!34025))))

(assert (=> b!5298281 (= e!3293261 true)))

(declare-fun lt!2164687 () Bool)

(assert (=> b!5298281 (= lt!2164687 (matchZipper!1181 z!1189 s!2326))))

(assert (=> b!5298281 (= (Exists!2118 lambda!268848) (Exists!2118 lambda!268849))))

(declare-fun lt!2164718 () Unit!153266)

(assert (=> b!5298281 (= lt!2164718 (lemmaExistCutMatchRandMatchRSpecEquivalent!772 (regTwo!30386 (regOne!30386 r!7292)) lt!2164726 s!2326))))

(assert (=> b!5298281 (= (isDefined!11751 (findConcatSeparation!1462 (regTwo!30386 (regOne!30386 r!7292)) lt!2164726 Nil!60988 s!2326 s!2326)) (Exists!2118 lambda!268848))))

(declare-fun lt!2164705 () Unit!153266)

(assert (=> b!5298281 (= lt!2164705 (lemmaFindConcatSeparationEquivalentToExists!1226 (regTwo!30386 (regOne!30386 r!7292)) lt!2164726 s!2326))))

(declare-fun generalisedConcat!606 (List!61110) Regex!14937)

(assert (=> b!5298281 (= lt!2164726 (generalisedConcat!606 (t!374315 (exprs!4821 (h!67435 zl!343)))))))

(declare-fun lt!2164722 () Bool)

(assert (=> b!5298281 (= lt!2164722 (matchRSpec!2040 lt!2164707 s!2326))))

(declare-fun lt!2164697 () Unit!153266)

(assert (=> b!5298281 (= lt!2164697 (mainMatchTheorem!2040 lt!2164707 s!2326))))

(assert (=> b!5298281 (= (Exists!2118 lambda!268846) (Exists!2118 lambda!268847))))

(declare-fun lt!2164690 () Unit!153266)

(assert (=> b!5298281 (= lt!2164690 (lemmaExistCutMatchRandMatchRSpecEquivalent!772 (regOne!30386 (regOne!30386 r!7292)) lt!2164707 s!2326))))

(assert (=> b!5298281 (= (isDefined!11751 (findConcatSeparation!1462 (regOne!30386 (regOne!30386 r!7292)) lt!2164707 Nil!60988 s!2326 s!2326)) (Exists!2118 lambda!268846))))

(declare-fun lt!2164724 () Unit!153266)

(assert (=> b!5298281 (= lt!2164724 (lemmaFindConcatSeparationEquivalentToExists!1226 (regOne!30386 (regOne!30386 r!7292)) lt!2164707 s!2326))))

(declare-fun lt!2164699 () Bool)

(declare-fun lt!2164702 () Regex!14937)

(assert (=> b!5298281 (= lt!2164699 (matchRSpec!2040 lt!2164702 s!2326))))

(declare-fun lt!2164694 () Unit!153266)

(assert (=> b!5298281 (= lt!2164694 (mainMatchTheorem!2040 lt!2164702 s!2326))))

(assert (=> b!5298281 (= lt!2164722 (matchZipper!1181 lt!2164725 s!2326))))

(assert (=> b!5298281 (= lt!2164722 (matchR!7122 lt!2164707 s!2326))))

(declare-fun lt!2164716 () Unit!153266)

(declare-fun theoremZipperRegexEquiv!347 ((InoxSet Context!8642) List!61111 Regex!14937 List!61112) Unit!153266)

(assert (=> b!5298281 (= lt!2164716 (theoremZipperRegexEquiv!347 lt!2164725 (Cons!60987 lt!2164703 Nil!60987) lt!2164707 s!2326))))

(assert (=> b!5298281 (= lt!2164707 (generalisedConcat!606 lt!2164728))))

(declare-fun lt!2164686 () (InoxSet Context!8642))

(assert (=> b!5298281 (= lt!2164699 (matchZipper!1181 lt!2164686 s!2326))))

(assert (=> b!5298281 (= lt!2164699 (matchR!7122 lt!2164702 s!2326))))

(declare-fun lt!2164719 () Unit!153266)

(assert (=> b!5298281 (= lt!2164719 (theoremZipperRegexEquiv!347 lt!2164686 lt!2164693 lt!2164702 s!2326))))

(declare-fun lt!2164717 () List!61110)

(assert (=> b!5298281 (= lt!2164702 (generalisedConcat!606 lt!2164717))))

(declare-fun b!5298282 () Bool)

(declare-fun res!2247120 () Bool)

(assert (=> b!5298282 (=> res!2247120 e!3293258)))

(assert (=> b!5298282 (= res!2247120 (not (= r!7292 (generalisedConcat!606 (exprs!4821 (h!67435 zl!343))))))))

(assert (=> b!5298283 (= e!3293260 e!3293257)))

(declare-fun res!2247122 () Bool)

(assert (=> b!5298283 (=> res!2247122 e!3293257)))

(assert (=> b!5298283 (= res!2247122 (or (and ((_ is ElementMatch!14937) (regOne!30386 r!7292)) (= (c!919613 (regOne!30386 r!7292)) (h!67436 s!2326))) ((_ is Union!14937) (regOne!30386 r!7292)) (not ((_ is Concat!23782) (regOne!30386 r!7292)))))))

(declare-fun lt!2164711 () Unit!153266)

(assert (=> b!5298283 (= lt!2164711 e!3293254)))

(declare-fun c!919612 () Bool)

(assert (=> b!5298283 (= c!919612 (nullable!5106 (h!67434 (exprs!4821 (h!67435 zl!343)))))))

(assert (=> b!5298283 (= (flatMap!664 z!1189 lambda!268845) (derivationStepZipperUp!309 (h!67435 zl!343) (h!67436 s!2326)))))

(declare-fun lt!2164709 () Unit!153266)

(assert (=> b!5298283 (= lt!2164709 (lemmaFlatMapOnSingletonSet!196 z!1189 (h!67435 zl!343) lambda!268845))))

(assert (=> b!5298283 (= lt!2164714 (derivationStepZipperUp!309 lt!2164712 (h!67436 s!2326)))))

(assert (=> b!5298283 (= lt!2164696 (derivationStepZipperDown!385 (h!67434 (exprs!4821 (h!67435 zl!343))) lt!2164712 (h!67436 s!2326)))))

(assert (=> b!5298283 (= lt!2164712 (Context!8643 (t!374315 (exprs!4821 (h!67435 zl!343)))))))

(declare-fun lt!2164721 () (InoxSet Context!8642))

(assert (=> b!5298283 (= lt!2164721 (derivationStepZipperUp!309 (Context!8643 (Cons!60986 (h!67434 (exprs!4821 (h!67435 zl!343))) (t!374315 (exprs!4821 (h!67435 zl!343))))) (h!67436 s!2326)))))

(declare-fun b!5298284 () Bool)

(declare-fun tp_is_empty!39127 () Bool)

(assert (=> b!5298284 (= e!3293251 tp_is_empty!39127)))

(declare-fun b!5298285 () Bool)

(declare-fun tp!1477916 () Bool)

(assert (=> b!5298285 (= e!3293256 (and tp_is_empty!39127 tp!1477916))))

(declare-fun b!5298286 () Bool)

(assert (=> b!5298286 (= e!3293262 e!3293253)))

(declare-fun res!2247109 () Bool)

(assert (=> b!5298286 (=> res!2247109 e!3293253)))

(assert (=> b!5298286 (= res!2247109 (not (= lt!2164730 lt!2164695)))))

(assert (=> b!5298286 (= lt!2164695 ((_ map or) lt!2164685 lt!2164688))))

(assert (=> b!5298286 (= lt!2164688 (derivationStepZipperUp!309 lt!2164703 (h!67436 s!2326)))))

(assert (=> b!5298286 (= (flatMap!664 lt!2164686 lambda!268845) (derivationStepZipperUp!309 lt!2164727 (h!67436 s!2326)))))

(declare-fun lt!2164715 () Unit!153266)

(assert (=> b!5298286 (= lt!2164715 (lemmaFlatMapOnSingletonSet!196 lt!2164686 lt!2164727 lambda!268845))))

(declare-fun lt!2164691 () (InoxSet Context!8642))

(assert (=> b!5298286 (= lt!2164691 (derivationStepZipperUp!309 lt!2164727 (h!67436 s!2326)))))

(assert (=> b!5298286 (= lt!2164730 (derivationStepZipper!1180 lt!2164686 (h!67436 s!2326)))))

(assert (=> b!5298286 (= lt!2164725 (store ((as const (Array Context!8642 Bool)) false) lt!2164703 true))))

(assert (=> b!5298286 (= lt!2164686 (store ((as const (Array Context!8642 Bool)) false) lt!2164727 true))))

(assert (=> b!5298286 (= lt!2164727 (Context!8643 lt!2164717))))

(assert (=> b!5298286 (= lt!2164717 (Cons!60986 (regOne!30386 (regOne!30386 r!7292)) lt!2164728))))

(declare-fun b!5298287 () Bool)

(declare-fun res!2247116 () Bool)

(assert (=> b!5298287 (=> res!2247116 e!3293259)))

(assert (=> b!5298287 (= res!2247116 (not (= (exprs!4821 (h!67435 zl!343)) (Cons!60986 (Concat!23782 (regOne!30386 (regOne!30386 r!7292)) (regTwo!30386 (regOne!30386 r!7292))) (t!374315 (exprs!4821 (h!67435 zl!343)))))))))

(declare-fun b!5298288 () Bool)

(assert (=> b!5298288 (= e!3293267 (matchZipper!1181 lt!2164714 (t!374317 s!2326)))))

(declare-fun b!5298289 () Bool)

(declare-fun res!2247119 () Bool)

(assert (=> b!5298289 (=> (not res!2247119) (not e!3293266))))

(declare-fun toList!8721 ((InoxSet Context!8642)) List!61111)

(assert (=> b!5298289 (= res!2247119 (= (toList!8721 z!1189) zl!343))))

(assert (= (and start!559038 res!2247105) b!5298289))

(assert (= (and b!5298289 res!2247119) b!5298280))

(assert (= (and b!5298280 res!2247100) b!5298256))

(assert (= (and b!5298256 (not res!2247102)) b!5298266))

(assert (= (and b!5298266 (not res!2247110)) b!5298282))

(assert (= (and b!5298282 (not res!2247120)) b!5298272))

(assert (= (and b!5298272 (not res!2247111)) b!5298255))

(assert (= (and b!5298255 (not res!2247118)) b!5298277))

(assert (= (and b!5298277 (not res!2247112)) b!5298263))

(assert (= (and b!5298263 (not res!2247106)) b!5298260))

(assert (= (and b!5298260 (not res!2247107)) b!5298283))

(assert (= (and b!5298283 c!919612) b!5298274))

(assert (= (and b!5298283 (not c!919612)) b!5298268))

(assert (= (and b!5298274 (not res!2247114)) b!5298288))

(assert (= (and b!5298283 (not res!2247122)) b!5298254))

(assert (= (and b!5298254 (not res!2247099)) b!5298270))

(assert (= (and b!5298270 (not res!2247113)) b!5298257))

(assert (= (and b!5298257 (not res!2247101)) b!5298267))

(assert (= (and b!5298257 res!2247115) b!5298259))

(assert (= (and b!5298257 (not res!2247121)) b!5298286))

(assert (= (and b!5298286 (not res!2247109)) b!5298262))

(assert (= (and b!5298262 (not res!2247117)) b!5298265))

(assert (= (and b!5298262 res!2247104) b!5298276))

(assert (= (and b!5298262 (not res!2247098)) b!5298287))

(assert (= (and b!5298287 (not res!2247116)) b!5298273))

(assert (= (and b!5298273 (not res!2247108)) b!5298278))

(assert (= (and b!5298278 (not res!2247103)) b!5298264))

(assert (= (and b!5298264 (not res!2247123)) b!5298281))

(assert (= (and start!559038 ((_ is ElementMatch!14937) r!7292)) b!5298284))

(assert (= (and start!559038 ((_ is Concat!23782) r!7292)) b!5298269))

(assert (= (and start!559038 ((_ is Star!14937) r!7292)) b!5298261))

(assert (= (and start!559038 ((_ is Union!14937) r!7292)) b!5298258))

(assert (= (and start!559038 condSetEmpty!34025) setIsEmpty!34025))

(assert (= (and start!559038 (not condSetEmpty!34025)) setNonEmpty!34025))

(assert (= setNonEmpty!34025 b!5298271))

(assert (= b!5298275 b!5298279))

(assert (= (and start!559038 ((_ is Cons!60987) zl!343)) b!5298275))

(assert (= (and start!559038 ((_ is Cons!60988) s!2326)) b!5298285))

(declare-fun m!6335544 () Bool)

(assert (=> b!5298264 m!6335544))

(declare-fun m!6335546 () Bool)

(assert (=> b!5298264 m!6335546))

(declare-fun m!6335548 () Bool)

(assert (=> b!5298265 m!6335548))

(declare-fun m!6335550 () Bool)

(assert (=> b!5298257 m!6335550))

(declare-fun m!6335552 () Bool)

(assert (=> b!5298257 m!6335552))

(declare-fun m!6335554 () Bool)

(assert (=> b!5298257 m!6335554))

(declare-fun m!6335556 () Bool)

(assert (=> b!5298257 m!6335556))

(declare-fun m!6335558 () Bool)

(assert (=> b!5298260 m!6335558))

(declare-fun m!6335560 () Bool)

(assert (=> b!5298286 m!6335560))

(declare-fun m!6335562 () Bool)

(assert (=> b!5298286 m!6335562))

(declare-fun m!6335564 () Bool)

(assert (=> b!5298286 m!6335564))

(declare-fun m!6335566 () Bool)

(assert (=> b!5298286 m!6335566))

(declare-fun m!6335568 () Bool)

(assert (=> b!5298286 m!6335568))

(declare-fun m!6335570 () Bool)

(assert (=> b!5298286 m!6335570))

(declare-fun m!6335572 () Bool)

(assert (=> b!5298286 m!6335572))

(declare-fun m!6335574 () Bool)

(assert (=> b!5298256 m!6335574))

(declare-fun m!6335576 () Bool)

(assert (=> b!5298256 m!6335576))

(declare-fun m!6335578 () Bool)

(assert (=> b!5298256 m!6335578))

(declare-fun m!6335580 () Bool)

(assert (=> b!5298280 m!6335580))

(declare-fun m!6335582 () Bool)

(assert (=> start!559038 m!6335582))

(declare-fun m!6335584 () Bool)

(assert (=> b!5298267 m!6335584))

(declare-fun m!6335586 () Bool)

(assert (=> b!5298278 m!6335586))

(declare-fun m!6335588 () Bool)

(assert (=> b!5298278 m!6335588))

(declare-fun m!6335590 () Bool)

(assert (=> b!5298283 m!6335590))

(declare-fun m!6335592 () Bool)

(assert (=> b!5298283 m!6335592))

(declare-fun m!6335594 () Bool)

(assert (=> b!5298283 m!6335594))

(declare-fun m!6335596 () Bool)

(assert (=> b!5298283 m!6335596))

(declare-fun m!6335598 () Bool)

(assert (=> b!5298283 m!6335598))

(declare-fun m!6335600 () Bool)

(assert (=> b!5298283 m!6335600))

(declare-fun m!6335602 () Bool)

(assert (=> b!5298283 m!6335602))

(declare-fun m!6335604 () Bool)

(assert (=> b!5298263 m!6335604))

(declare-fun m!6335606 () Bool)

(assert (=> b!5298263 m!6335606))

(declare-fun m!6335608 () Bool)

(assert (=> b!5298263 m!6335608))

(assert (=> b!5298263 m!6335604))

(declare-fun m!6335610 () Bool)

(assert (=> b!5298263 m!6335610))

(declare-fun m!6335612 () Bool)

(assert (=> b!5298263 m!6335612))

(assert (=> b!5298263 m!6335606))

(declare-fun m!6335614 () Bool)

(assert (=> b!5298263 m!6335614))

(declare-fun m!6335616 () Bool)

(assert (=> b!5298274 m!6335616))

(assert (=> b!5298274 m!6335550))

(declare-fun m!6335618 () Bool)

(assert (=> b!5298274 m!6335618))

(declare-fun m!6335620 () Bool)

(assert (=> b!5298282 m!6335620))

(declare-fun m!6335622 () Bool)

(assert (=> b!5298254 m!6335622))

(declare-fun m!6335624 () Bool)

(assert (=> b!5298281 m!6335624))

(declare-fun m!6335626 () Bool)

(assert (=> b!5298281 m!6335626))

(declare-fun m!6335628 () Bool)

(assert (=> b!5298281 m!6335628))

(declare-fun m!6335630 () Bool)

(assert (=> b!5298281 m!6335630))

(declare-fun m!6335632 () Bool)

(assert (=> b!5298281 m!6335632))

(declare-fun m!6335634 () Bool)

(assert (=> b!5298281 m!6335634))

(declare-fun m!6335636 () Bool)

(assert (=> b!5298281 m!6335636))

(declare-fun m!6335638 () Bool)

(assert (=> b!5298281 m!6335638))

(declare-fun m!6335640 () Bool)

(assert (=> b!5298281 m!6335640))

(declare-fun m!6335642 () Bool)

(assert (=> b!5298281 m!6335642))

(declare-fun m!6335644 () Bool)

(assert (=> b!5298281 m!6335644))

(declare-fun m!6335646 () Bool)

(assert (=> b!5298281 m!6335646))

(declare-fun m!6335648 () Bool)

(assert (=> b!5298281 m!6335648))

(declare-fun m!6335650 () Bool)

(assert (=> b!5298281 m!6335650))

(declare-fun m!6335652 () Bool)

(assert (=> b!5298281 m!6335652))

(declare-fun m!6335654 () Bool)

(assert (=> b!5298281 m!6335654))

(assert (=> b!5298281 m!6335654))

(declare-fun m!6335656 () Bool)

(assert (=> b!5298281 m!6335656))

(declare-fun m!6335658 () Bool)

(assert (=> b!5298281 m!6335658))

(declare-fun m!6335660 () Bool)

(assert (=> b!5298281 m!6335660))

(assert (=> b!5298281 m!6335624))

(declare-fun m!6335662 () Bool)

(assert (=> b!5298281 m!6335662))

(declare-fun m!6335664 () Bool)

(assert (=> b!5298281 m!6335664))

(declare-fun m!6335666 () Bool)

(assert (=> b!5298281 m!6335666))

(assert (=> b!5298281 m!6335638))

(declare-fun m!6335668 () Bool)

(assert (=> b!5298281 m!6335668))

(declare-fun m!6335670 () Bool)

(assert (=> b!5298281 m!6335670))

(declare-fun m!6335672 () Bool)

(assert (=> b!5298281 m!6335672))

(assert (=> b!5298281 m!6335646))

(declare-fun m!6335674 () Bool)

(assert (=> b!5298281 m!6335674))

(declare-fun m!6335676 () Bool)

(assert (=> b!5298273 m!6335676))

(declare-fun m!6335678 () Bool)

(assert (=> b!5298273 m!6335678))

(declare-fun m!6335680 () Bool)

(assert (=> b!5298289 m!6335680))

(declare-fun m!6335682 () Bool)

(assert (=> b!5298255 m!6335682))

(assert (=> b!5298255 m!6335682))

(declare-fun m!6335684 () Bool)

(assert (=> b!5298255 m!6335684))

(declare-fun m!6335686 () Bool)

(assert (=> b!5298275 m!6335686))

(declare-fun m!6335688 () Bool)

(assert (=> b!5298262 m!6335688))

(assert (=> b!5298262 m!6335568))

(declare-fun m!6335690 () Bool)

(assert (=> b!5298262 m!6335690))

(declare-fun m!6335692 () Bool)

(assert (=> b!5298262 m!6335692))

(declare-fun m!6335694 () Bool)

(assert (=> b!5298262 m!6335694))

(declare-fun m!6335696 () Bool)

(assert (=> b!5298262 m!6335696))

(declare-fun m!6335698 () Bool)

(assert (=> b!5298276 m!6335698))

(assert (=> b!5298276 m!6335698))

(declare-fun m!6335700 () Bool)

(assert (=> b!5298276 m!6335700))

(declare-fun m!6335702 () Bool)

(assert (=> b!5298266 m!6335702))

(declare-fun m!6335704 () Bool)

(assert (=> setNonEmpty!34025 m!6335704))

(declare-fun m!6335706 () Bool)

(assert (=> b!5298288 m!6335706))

(assert (=> b!5298259 m!6335584))

(declare-fun m!6335708 () Bool)

(assert (=> b!5298270 m!6335708))

(declare-fun m!6335710 () Bool)

(assert (=> b!5298270 m!6335710))

(check-sat (not b!5298281) (not b!5298270) (not b!5298280) (not b!5298286) (not b!5298256) (not b!5298258) (not b!5298271) (not b!5298283) (not b!5298273) (not b!5298265) (not b!5298276) (not b!5298279) (not start!559038) (not b!5298263) (not b!5298289) (not b!5298262) (not b!5298278) (not b!5298282) (not b!5298255) (not b!5298260) (not b!5298285) (not b!5298259) (not b!5298254) (not b!5298275) (not b!5298261) (not setNonEmpty!34025) (not b!5298264) tp_is_empty!39127 (not b!5298266) (not b!5298269) (not b!5298257) (not b!5298288) (not b!5298274) (not b!5298267))
(check-sat)
