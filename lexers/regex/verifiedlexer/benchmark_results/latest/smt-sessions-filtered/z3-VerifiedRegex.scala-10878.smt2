; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!562106 () Bool)

(assert start!562106)

(declare-fun b!5333795 () Bool)

(assert (=> b!5333795 true))

(assert (=> b!5333795 true))

(declare-fun lambda!272783 () Int)

(declare-fun lambda!272782 () Int)

(assert (=> b!5333795 (not (= lambda!272783 lambda!272782))))

(assert (=> b!5333795 true))

(assert (=> b!5333795 true))

(declare-fun b!5333791 () Bool)

(assert (=> b!5333791 true))

(declare-fun bs!1236970 () Bool)

(declare-fun b!5333796 () Bool)

(assert (= bs!1236970 (and b!5333796 b!5333795)))

(declare-datatypes ((C!30276 0))(
  ( (C!30277 (val!24840 Int)) )
))
(declare-datatypes ((Regex!15003 0))(
  ( (ElementMatch!15003 (c!927741 C!30276)) (Concat!23848 (regOne!30518 Regex!15003) (regTwo!30518 Regex!15003)) (EmptyExpr!15003) (Star!15003 (reg!15332 Regex!15003)) (EmptyLang!15003) (Union!15003 (regOne!30519 Regex!15003) (regTwo!30519 Regex!15003)) )
))
(declare-fun r!7292 () Regex!15003)

(declare-fun lambda!272785 () Int)

(declare-fun lt!2175377 () Regex!15003)

(assert (=> bs!1236970 (= (and (= (regOne!30518 (regOne!30518 r!7292)) (regOne!30518 r!7292)) (= lt!2175377 (regTwo!30518 r!7292))) (= lambda!272785 lambda!272782))))

(assert (=> bs!1236970 (not (= lambda!272785 lambda!272783))))

(assert (=> b!5333796 true))

(assert (=> b!5333796 true))

(assert (=> b!5333796 true))

(declare-fun lambda!272786 () Int)

(assert (=> bs!1236970 (not (= lambda!272786 lambda!272782))))

(assert (=> bs!1236970 (= (and (= (regOne!30518 (regOne!30518 r!7292)) (regOne!30518 r!7292)) (= lt!2175377 (regTwo!30518 r!7292))) (= lambda!272786 lambda!272783))))

(assert (=> b!5333796 (not (= lambda!272786 lambda!272785))))

(assert (=> b!5333796 true))

(assert (=> b!5333796 true))

(assert (=> b!5333796 true))

(declare-fun lambda!272787 () Int)

(declare-fun lt!2175361 () Regex!15003)

(assert (=> bs!1236970 (= (and (= (regTwo!30518 (regOne!30518 r!7292)) (regOne!30518 r!7292)) (= lt!2175361 (regTwo!30518 r!7292))) (= lambda!272787 lambda!272782))))

(assert (=> bs!1236970 (not (= lambda!272787 lambda!272783))))

(assert (=> b!5333796 (= (and (= (regTwo!30518 (regOne!30518 r!7292)) (regOne!30518 (regOne!30518 r!7292))) (= lt!2175361 lt!2175377)) (= lambda!272787 lambda!272785))))

(assert (=> b!5333796 (not (= lambda!272787 lambda!272786))))

(assert (=> b!5333796 true))

(assert (=> b!5333796 true))

(assert (=> b!5333796 true))

(declare-fun b!5333790 () Bool)

(declare-fun res!2262379 () Bool)

(declare-fun e!3312631 () Bool)

(assert (=> b!5333790 (=> res!2262379 e!3312631)))

(declare-datatypes ((List!61308 0))(
  ( (Nil!61184) (Cons!61184 (h!67632 Regex!15003) (t!374525 List!61308)) )
))
(declare-datatypes ((Context!8774 0))(
  ( (Context!8775 (exprs!4887 List!61308)) )
))
(declare-datatypes ((List!61309 0))(
  ( (Nil!61185) (Cons!61185 (h!67633 Context!8774) (t!374526 List!61309)) )
))
(declare-fun zl!343 () List!61309)

(declare-fun isEmpty!33155 (List!61309) Bool)

(assert (=> b!5333790 (= res!2262379 (not (isEmpty!33155 (t!374526 zl!343))))))

(declare-fun e!3312628 () Bool)

(declare-fun e!3312617 () Bool)

(assert (=> b!5333791 (= e!3312628 e!3312617)))

(declare-fun res!2262376 () Bool)

(assert (=> b!5333791 (=> res!2262376 e!3312617)))

(declare-datatypes ((List!61310 0))(
  ( (Nil!61186) (Cons!61186 (h!67634 C!30276) (t!374527 List!61310)) )
))
(declare-fun s!2326 () List!61310)

(get-info :version)

(assert (=> b!5333791 (= res!2262376 (or (and ((_ is ElementMatch!15003) (regOne!30518 r!7292)) (= (c!927741 (regOne!30518 r!7292)) (h!67634 s!2326))) ((_ is Union!15003) (regOne!30518 r!7292))))))

(declare-datatypes ((Unit!153530 0))(
  ( (Unit!153531) )
))
(declare-fun lt!2175356 () Unit!153530)

(declare-fun e!3312619 () Unit!153530)

(assert (=> b!5333791 (= lt!2175356 e!3312619)))

(declare-fun c!927740 () Bool)

(declare-fun nullable!5172 (Regex!15003) Bool)

(assert (=> b!5333791 (= c!927740 (nullable!5172 (h!67632 (exprs!4887 (h!67633 zl!343)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8774))

(declare-fun lambda!272784 () Int)

(declare-fun flatMap!730 ((InoxSet Context!8774) Int) (InoxSet Context!8774))

(declare-fun derivationStepZipperUp!375 (Context!8774 C!30276) (InoxSet Context!8774))

(assert (=> b!5333791 (= (flatMap!730 z!1189 lambda!272784) (derivationStepZipperUp!375 (h!67633 zl!343) (h!67634 s!2326)))))

(declare-fun lt!2175350 () Unit!153530)

(declare-fun lemmaFlatMapOnSingletonSet!262 ((InoxSet Context!8774) Context!8774 Int) Unit!153530)

(assert (=> b!5333791 (= lt!2175350 (lemmaFlatMapOnSingletonSet!262 z!1189 (h!67633 zl!343) lambda!272784))))

(declare-fun lt!2175365 () (InoxSet Context!8774))

(declare-fun lt!2175370 () Context!8774)

(assert (=> b!5333791 (= lt!2175365 (derivationStepZipperUp!375 lt!2175370 (h!67634 s!2326)))))

(declare-fun lt!2175367 () (InoxSet Context!8774))

(declare-fun derivationStepZipperDown!451 (Regex!15003 Context!8774 C!30276) (InoxSet Context!8774))

(assert (=> b!5333791 (= lt!2175367 (derivationStepZipperDown!451 (h!67632 (exprs!4887 (h!67633 zl!343))) lt!2175370 (h!67634 s!2326)))))

(assert (=> b!5333791 (= lt!2175370 (Context!8775 (t!374525 (exprs!4887 (h!67633 zl!343)))))))

(declare-fun lt!2175359 () (InoxSet Context!8774))

(assert (=> b!5333791 (= lt!2175359 (derivationStepZipperUp!375 (Context!8775 (Cons!61184 (h!67632 (exprs!4887 (h!67633 zl!343))) (t!374525 (exprs!4887 (h!67633 zl!343))))) (h!67634 s!2326)))))

(declare-fun b!5333792 () Bool)

(declare-fun res!2262369 () Bool)

(assert (=> b!5333792 (=> res!2262369 e!3312631)))

(assert (=> b!5333792 (= res!2262369 (not ((_ is Cons!61184) (exprs!4887 (h!67633 zl!343)))))))

(declare-fun b!5333793 () Bool)

(declare-fun e!3312629 () Bool)

(assert (=> b!5333793 (= e!3312629 (nullable!5172 (regOne!30518 (regOne!30518 r!7292))))))

(declare-fun tp!1484037 () Bool)

(declare-fun e!3312620 () Bool)

(declare-fun e!3312630 () Bool)

(declare-fun b!5333794 () Bool)

(declare-fun inv!80754 (Context!8774) Bool)

(assert (=> b!5333794 (= e!3312630 (and (inv!80754 (h!67633 zl!343)) e!3312620 tp!1484037))))

(assert (=> b!5333795 (= e!3312631 e!3312628)))

(declare-fun res!2262373 () Bool)

(assert (=> b!5333795 (=> res!2262373 e!3312628)))

(declare-fun lt!2175347 () Bool)

(declare-fun lt!2175351 () Bool)

(assert (=> b!5333795 (= res!2262373 (or (not (= lt!2175351 lt!2175347)) ((_ is Nil!61186) s!2326)))))

(declare-fun Exists!2184 (Int) Bool)

(assert (=> b!5333795 (= (Exists!2184 lambda!272782) (Exists!2184 lambda!272783))))

(declare-fun lt!2175363 () Unit!153530)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!838 (Regex!15003 Regex!15003 List!61310) Unit!153530)

(assert (=> b!5333795 (= lt!2175363 (lemmaExistCutMatchRandMatchRSpecEquivalent!838 (regOne!30518 r!7292) (regTwo!30518 r!7292) s!2326))))

(assert (=> b!5333795 (= lt!2175347 (Exists!2184 lambda!272782))))

(declare-datatypes ((tuple2!64404 0))(
  ( (tuple2!64405 (_1!35505 List!61310) (_2!35505 List!61310)) )
))
(declare-datatypes ((Option!15114 0))(
  ( (None!15113) (Some!15113 (v!51142 tuple2!64404)) )
))
(declare-fun isDefined!11817 (Option!15114) Bool)

(declare-fun findConcatSeparation!1528 (Regex!15003 Regex!15003 List!61310 List!61310 List!61310) Option!15114)

(assert (=> b!5333795 (= lt!2175347 (isDefined!11817 (findConcatSeparation!1528 (regOne!30518 r!7292) (regTwo!30518 r!7292) Nil!61186 s!2326 s!2326)))))

(declare-fun lt!2175378 () Unit!153530)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1292 (Regex!15003 Regex!15003 List!61310) Unit!153530)

(assert (=> b!5333795 (= lt!2175378 (lemmaFindConcatSeparationEquivalentToExists!1292 (regOne!30518 r!7292) (regTwo!30518 r!7292) s!2326))))

(declare-fun e!3312621 () Bool)

(assert (=> b!5333796 (= e!3312621 true)))

(assert (=> b!5333796 (= (isDefined!11817 (findConcatSeparation!1528 (regTwo!30518 (regOne!30518 r!7292)) lt!2175361 Nil!61186 s!2326 s!2326)) (Exists!2184 lambda!272787))))

(declare-fun lt!2175368 () Unit!153530)

(assert (=> b!5333796 (= lt!2175368 (lemmaFindConcatSeparationEquivalentToExists!1292 (regTwo!30518 (regOne!30518 r!7292)) lt!2175361 s!2326))))

(declare-fun generalisedConcat!672 (List!61308) Regex!15003)

(assert (=> b!5333796 (= lt!2175361 (generalisedConcat!672 (t!374525 (exprs!4887 (h!67633 zl!343)))))))

(declare-fun matchR!7188 (Regex!15003 List!61310) Bool)

(declare-fun matchRSpec!2106 (Regex!15003 List!61310) Bool)

(assert (=> b!5333796 (= (matchR!7188 lt!2175377 s!2326) (matchRSpec!2106 lt!2175377 s!2326))))

(declare-fun lt!2175355 () Unit!153530)

(declare-fun mainMatchTheorem!2106 (Regex!15003 List!61310) Unit!153530)

(assert (=> b!5333796 (= lt!2175355 (mainMatchTheorem!2106 lt!2175377 s!2326))))

(assert (=> b!5333796 (= (Exists!2184 lambda!272785) (Exists!2184 lambda!272786))))

(declare-fun lt!2175369 () Unit!153530)

(assert (=> b!5333796 (= lt!2175369 (lemmaExistCutMatchRandMatchRSpecEquivalent!838 (regOne!30518 (regOne!30518 r!7292)) lt!2175377 s!2326))))

(assert (=> b!5333796 (= (isDefined!11817 (findConcatSeparation!1528 (regOne!30518 (regOne!30518 r!7292)) lt!2175377 Nil!61186 s!2326 s!2326)) (Exists!2184 lambda!272785))))

(declare-fun lt!2175371 () Unit!153530)

(assert (=> b!5333796 (= lt!2175371 (lemmaFindConcatSeparationEquivalentToExists!1292 (regOne!30518 (regOne!30518 r!7292)) lt!2175377 s!2326))))

(declare-fun lt!2175374 () List!61308)

(assert (=> b!5333796 (= lt!2175377 (generalisedConcat!672 lt!2175374))))

(declare-fun lt!2175349 () Bool)

(declare-fun lt!2175354 () Regex!15003)

(assert (=> b!5333796 (= lt!2175349 (matchRSpec!2106 lt!2175354 s!2326))))

(declare-fun lt!2175357 () Unit!153530)

(assert (=> b!5333796 (= lt!2175357 (mainMatchTheorem!2106 lt!2175354 s!2326))))

(declare-fun lt!2175352 () (InoxSet Context!8774))

(declare-fun matchZipper!1247 ((InoxSet Context!8774) List!61310) Bool)

(assert (=> b!5333796 (= lt!2175349 (matchZipper!1247 lt!2175352 s!2326))))

(assert (=> b!5333796 (= lt!2175349 (matchR!7188 lt!2175354 s!2326))))

(declare-fun lt!2175375 () Unit!153530)

(declare-fun lt!2175366 () List!61309)

(declare-fun theoremZipperRegexEquiv!401 ((InoxSet Context!8774) List!61309 Regex!15003 List!61310) Unit!153530)

(assert (=> b!5333796 (= lt!2175375 (theoremZipperRegexEquiv!401 lt!2175352 lt!2175366 lt!2175354 s!2326))))

(declare-fun lt!2175353 () List!61308)

(assert (=> b!5333796 (= lt!2175354 (generalisedConcat!672 lt!2175353))))

(declare-fun b!5333797 () Bool)

(declare-fun e!3312626 () Bool)

(declare-fun e!3312632 () Bool)

(assert (=> b!5333797 (= e!3312626 e!3312632)))

(declare-fun res!2262387 () Bool)

(assert (=> b!5333797 (=> res!2262387 e!3312632)))

(declare-fun lt!2175372 () Bool)

(declare-fun lt!2175364 () (InoxSet Context!8774))

(assert (=> b!5333797 (= res!2262387 (not (= lt!2175372 (matchZipper!1247 lt!2175364 (t!374527 s!2326)))))))

(assert (=> b!5333797 (= lt!2175372 (matchZipper!1247 lt!2175367 (t!374527 s!2326)))))

(declare-fun b!5333798 () Bool)

(declare-fun res!2262389 () Bool)

(assert (=> b!5333798 (=> res!2262389 e!3312617)))

(assert (=> b!5333798 (= res!2262389 (not ((_ is Concat!23848) (regOne!30518 r!7292))))))

(declare-fun b!5333799 () Bool)

(declare-fun e!3312627 () Bool)

(assert (=> b!5333799 (= e!3312627 (not e!3312631))))

(declare-fun res!2262388 () Bool)

(assert (=> b!5333799 (=> res!2262388 e!3312631)))

(assert (=> b!5333799 (= res!2262388 (not ((_ is Cons!61185) zl!343)))))

(assert (=> b!5333799 (= lt!2175351 (matchRSpec!2106 r!7292 s!2326))))

(assert (=> b!5333799 (= lt!2175351 (matchR!7188 r!7292 s!2326))))

(declare-fun lt!2175373 () Unit!153530)

(assert (=> b!5333799 (= lt!2175373 (mainMatchTheorem!2106 r!7292 s!2326))))

(declare-fun b!5333800 () Bool)

(declare-fun Unit!153532 () Unit!153530)

(assert (=> b!5333800 (= e!3312619 Unit!153532)))

(declare-fun lt!2175348 () Unit!153530)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!240 ((InoxSet Context!8774) (InoxSet Context!8774) List!61310) Unit!153530)

(assert (=> b!5333800 (= lt!2175348 (lemmaZipperConcatMatchesSameAsBothZippers!240 lt!2175367 lt!2175365 (t!374527 s!2326)))))

(declare-fun res!2262367 () Bool)

(assert (=> b!5333800 (= res!2262367 (matchZipper!1247 lt!2175367 (t!374527 s!2326)))))

(declare-fun e!3312622 () Bool)

(assert (=> b!5333800 (=> res!2262367 e!3312622)))

(assert (=> b!5333800 (= (matchZipper!1247 ((_ map or) lt!2175367 lt!2175365) (t!374527 s!2326)) e!3312622)))

(declare-fun res!2262370 () Bool)

(assert (=> start!562106 (=> (not res!2262370) (not e!3312627))))

(declare-fun validRegex!6739 (Regex!15003) Bool)

(assert (=> start!562106 (= res!2262370 (validRegex!6739 r!7292))))

(assert (=> start!562106 e!3312627))

(declare-fun e!3312625 () Bool)

(assert (=> start!562106 e!3312625))

(declare-fun condSetEmpty!34393 () Bool)

(assert (=> start!562106 (= condSetEmpty!34393 (= z!1189 ((as const (Array Context!8774 Bool)) false)))))

(declare-fun setRes!34393 () Bool)

(assert (=> start!562106 setRes!34393))

(assert (=> start!562106 e!3312630))

(declare-fun e!3312623 () Bool)

(assert (=> start!562106 e!3312623))

(declare-fun b!5333801 () Bool)

(declare-fun res!2262383 () Bool)

(assert (=> b!5333801 (=> res!2262383 e!3312631)))

(assert (=> b!5333801 (= res!2262383 (not (= r!7292 (generalisedConcat!672 (exprs!4887 (h!67633 zl!343))))))))

(declare-fun e!3312624 () Bool)

(declare-fun setElem!34393 () Context!8774)

(declare-fun tp!1484041 () Bool)

(declare-fun setNonEmpty!34393 () Bool)

(assert (=> setNonEmpty!34393 (= setRes!34393 (and tp!1484041 (inv!80754 setElem!34393) e!3312624))))

(declare-fun setRest!34393 () (InoxSet Context!8774))

(assert (=> setNonEmpty!34393 (= z!1189 ((_ map or) (store ((as const (Array Context!8774 Bool)) false) setElem!34393 true) setRest!34393))))

(declare-fun b!5333802 () Bool)

(assert (=> b!5333802 (= e!3312617 e!3312626)))

(declare-fun res!2262377 () Bool)

(assert (=> b!5333802 (=> res!2262377 e!3312626)))

(assert (=> b!5333802 (= res!2262377 (not (= lt!2175367 lt!2175364)))))

(assert (=> b!5333802 (= lt!2175364 (derivationStepZipperDown!451 (regOne!30518 (regOne!30518 r!7292)) (Context!8775 lt!2175374) (h!67634 s!2326)))))

(assert (=> b!5333802 (= lt!2175374 (Cons!61184 (regTwo!30518 (regOne!30518 r!7292)) (t!374525 (exprs!4887 (h!67633 zl!343)))))))

(declare-fun b!5333803 () Bool)

(declare-fun res!2262385 () Bool)

(assert (=> b!5333803 (=> res!2262385 e!3312628)))

(declare-fun isEmpty!33156 (List!61308) Bool)

(assert (=> b!5333803 (= res!2262385 (isEmpty!33156 (t!374525 (exprs!4887 (h!67633 zl!343)))))))

(declare-fun b!5333804 () Bool)

(declare-fun res!2262371 () Bool)

(assert (=> b!5333804 (=> res!2262371 e!3312631)))

(declare-fun generalisedUnion!932 (List!61308) Regex!15003)

(declare-fun unfocusZipperList!445 (List!61309) List!61308)

(assert (=> b!5333804 (= res!2262371 (not (= r!7292 (generalisedUnion!932 (unfocusZipperList!445 zl!343)))))))

(declare-fun b!5333805 () Bool)

(declare-fun res!2262374 () Bool)

(assert (=> b!5333805 (=> res!2262374 e!3312617)))

(assert (=> b!5333805 (= res!2262374 e!3312629)))

(declare-fun res!2262366 () Bool)

(assert (=> b!5333805 (=> (not res!2262366) (not e!3312629))))

(assert (=> b!5333805 (= res!2262366 ((_ is Concat!23848) (regOne!30518 r!7292)))))

(declare-fun b!5333806 () Bool)

(declare-fun res!2262368 () Bool)

(declare-fun e!3312618 () Bool)

(assert (=> b!5333806 (=> res!2262368 e!3312618)))

(declare-fun lt!2175360 () Context!8774)

(declare-fun contextDepthTotal!136 (Context!8774) Int)

(assert (=> b!5333806 (= res!2262368 (>= (contextDepthTotal!136 lt!2175360) (contextDepthTotal!136 (h!67633 zl!343))))))

(declare-fun b!5333807 () Bool)

(declare-fun res!2262382 () Bool)

(assert (=> b!5333807 (=> res!2262382 e!3312618)))

(declare-fun lt!2175362 () (InoxSet Context!8774))

(assert (=> b!5333807 (= res!2262382 (not (= lt!2175372 (matchZipper!1247 lt!2175362 (t!374527 s!2326)))))))

(declare-fun b!5333808 () Bool)

(declare-fun tp!1484043 () Bool)

(declare-fun tp!1484038 () Bool)

(assert (=> b!5333808 (= e!3312625 (and tp!1484043 tp!1484038))))

(declare-fun b!5333809 () Bool)

(declare-fun tp!1484045 () Bool)

(assert (=> b!5333809 (= e!3312620 tp!1484045)))

(declare-fun b!5333810 () Bool)

(declare-fun tp_is_empty!39259 () Bool)

(assert (=> b!5333810 (= e!3312625 tp_is_empty!39259)))

(declare-fun b!5333811 () Bool)

(declare-fun res!2262378 () Bool)

(assert (=> b!5333811 (=> res!2262378 e!3312618)))

(assert (=> b!5333811 (= res!2262378 (not (= (exprs!4887 (h!67633 zl!343)) (Cons!61184 (Concat!23848 (regOne!30518 (regOne!30518 r!7292)) (regTwo!30518 (regOne!30518 r!7292))) (t!374525 (exprs!4887 (h!67633 zl!343)))))))))

(declare-fun b!5333812 () Bool)

(declare-fun Unit!153533 () Unit!153530)

(assert (=> b!5333812 (= e!3312619 Unit!153533)))

(declare-fun b!5333813 () Bool)

(declare-fun tp!1484040 () Bool)

(assert (=> b!5333813 (= e!3312623 (and tp_is_empty!39259 tp!1484040))))

(declare-fun setIsEmpty!34393 () Bool)

(assert (=> setIsEmpty!34393 setRes!34393))

(declare-fun b!5333814 () Bool)

(declare-fun res!2262386 () Bool)

(assert (=> b!5333814 (=> res!2262386 e!3312621)))

(declare-fun zipperDepth!112 (List!61309) Int)

(assert (=> b!5333814 (= res!2262386 (> (zipperDepth!112 lt!2175366) (zipperDepth!112 zl!343)))))

(declare-fun b!5333815 () Bool)

(declare-fun res!2262384 () Bool)

(assert (=> b!5333815 (=> (not res!2262384) (not e!3312627))))

(declare-fun toList!8787 ((InoxSet Context!8774)) List!61309)

(assert (=> b!5333815 (= res!2262384 (= (toList!8787 z!1189) zl!343))))

(declare-fun b!5333816 () Bool)

(assert (=> b!5333816 (= e!3312632 e!3312618)))

(declare-fun res!2262372 () Bool)

(assert (=> b!5333816 (=> res!2262372 e!3312618)))

(assert (=> b!5333816 (= res!2262372 (not (= lt!2175362 lt!2175364)))))

(assert (=> b!5333816 (= (flatMap!730 lt!2175352 lambda!272784) (derivationStepZipperUp!375 lt!2175360 (h!67634 s!2326)))))

(declare-fun lt!2175358 () Unit!153530)

(assert (=> b!5333816 (= lt!2175358 (lemmaFlatMapOnSingletonSet!262 lt!2175352 lt!2175360 lambda!272784))))

(declare-fun lt!2175376 () (InoxSet Context!8774))

(assert (=> b!5333816 (= lt!2175376 (derivationStepZipperUp!375 lt!2175360 (h!67634 s!2326)))))

(declare-fun derivationStepZipper!1244 ((InoxSet Context!8774) C!30276) (InoxSet Context!8774))

(assert (=> b!5333816 (= lt!2175362 (derivationStepZipper!1244 lt!2175352 (h!67634 s!2326)))))

(assert (=> b!5333816 (= lt!2175352 (store ((as const (Array Context!8774 Bool)) false) lt!2175360 true))))

(assert (=> b!5333816 (= lt!2175360 (Context!8775 lt!2175353))))

(assert (=> b!5333816 (= lt!2175353 (Cons!61184 (regOne!30518 (regOne!30518 r!7292)) lt!2175374))))

(declare-fun b!5333817 () Bool)

(assert (=> b!5333817 (= e!3312622 (matchZipper!1247 lt!2175365 (t!374527 s!2326)))))

(declare-fun b!5333818 () Bool)

(declare-fun tp!1484036 () Bool)

(declare-fun tp!1484044 () Bool)

(assert (=> b!5333818 (= e!3312625 (and tp!1484036 tp!1484044))))

(declare-fun b!5333819 () Bool)

(declare-fun tp!1484042 () Bool)

(assert (=> b!5333819 (= e!3312624 tp!1484042)))

(declare-fun b!5333820 () Bool)

(declare-fun tp!1484039 () Bool)

(assert (=> b!5333820 (= e!3312625 tp!1484039)))

(declare-fun b!5333821 () Bool)

(declare-fun res!2262375 () Bool)

(assert (=> b!5333821 (=> (not res!2262375) (not e!3312627))))

(declare-fun unfocusZipper!745 (List!61309) Regex!15003)

(assert (=> b!5333821 (= res!2262375 (= r!7292 (unfocusZipper!745 zl!343)))))

(declare-fun b!5333822 () Bool)

(declare-fun res!2262381 () Bool)

(assert (=> b!5333822 (=> res!2262381 e!3312631)))

(assert (=> b!5333822 (= res!2262381 (or ((_ is EmptyExpr!15003) r!7292) ((_ is EmptyLang!15003) r!7292) ((_ is ElementMatch!15003) r!7292) ((_ is Union!15003) r!7292) (not ((_ is Concat!23848) r!7292))))))

(declare-fun b!5333823 () Bool)

(assert (=> b!5333823 (= e!3312618 e!3312621)))

(declare-fun res!2262380 () Bool)

(assert (=> b!5333823 (=> res!2262380 e!3312621)))

(declare-fun zipperDepthTotal!156 (List!61309) Int)

(assert (=> b!5333823 (= res!2262380 (>= (zipperDepthTotal!156 lt!2175366) (zipperDepthTotal!156 zl!343)))))

(assert (=> b!5333823 (= lt!2175366 (Cons!61185 lt!2175360 Nil!61185))))

(assert (= (and start!562106 res!2262370) b!5333815))

(assert (= (and b!5333815 res!2262384) b!5333821))

(assert (= (and b!5333821 res!2262375) b!5333799))

(assert (= (and b!5333799 (not res!2262388)) b!5333790))

(assert (= (and b!5333790 (not res!2262379)) b!5333801))

(assert (= (and b!5333801 (not res!2262383)) b!5333792))

(assert (= (and b!5333792 (not res!2262369)) b!5333804))

(assert (= (and b!5333804 (not res!2262371)) b!5333822))

(assert (= (and b!5333822 (not res!2262381)) b!5333795))

(assert (= (and b!5333795 (not res!2262373)) b!5333803))

(assert (= (and b!5333803 (not res!2262385)) b!5333791))

(assert (= (and b!5333791 c!927740) b!5333800))

(assert (= (and b!5333791 (not c!927740)) b!5333812))

(assert (= (and b!5333800 (not res!2262367)) b!5333817))

(assert (= (and b!5333791 (not res!2262376)) b!5333805))

(assert (= (and b!5333805 res!2262366) b!5333793))

(assert (= (and b!5333805 (not res!2262374)) b!5333798))

(assert (= (and b!5333798 (not res!2262389)) b!5333802))

(assert (= (and b!5333802 (not res!2262377)) b!5333797))

(assert (= (and b!5333797 (not res!2262387)) b!5333816))

(assert (= (and b!5333816 (not res!2262372)) b!5333807))

(assert (= (and b!5333807 (not res!2262382)) b!5333811))

(assert (= (and b!5333811 (not res!2262378)) b!5333806))

(assert (= (and b!5333806 (not res!2262368)) b!5333823))

(assert (= (and b!5333823 (not res!2262380)) b!5333814))

(assert (= (and b!5333814 (not res!2262386)) b!5333796))

(assert (= (and start!562106 ((_ is ElementMatch!15003) r!7292)) b!5333810))

(assert (= (and start!562106 ((_ is Concat!23848) r!7292)) b!5333818))

(assert (= (and start!562106 ((_ is Star!15003) r!7292)) b!5333820))

(assert (= (and start!562106 ((_ is Union!15003) r!7292)) b!5333808))

(assert (= (and start!562106 condSetEmpty!34393) setIsEmpty!34393))

(assert (= (and start!562106 (not condSetEmpty!34393)) setNonEmpty!34393))

(assert (= setNonEmpty!34393 b!5333819))

(assert (= b!5333794 b!5333809))

(assert (= (and start!562106 ((_ is Cons!61185) zl!343)) b!5333794))

(assert (= (and start!562106 ((_ is Cons!61186) s!2326)) b!5333813))

(declare-fun m!6366884 () Bool)

(assert (=> b!5333791 m!6366884))

(declare-fun m!6366886 () Bool)

(assert (=> b!5333791 m!6366886))

(declare-fun m!6366888 () Bool)

(assert (=> b!5333791 m!6366888))

(declare-fun m!6366890 () Bool)

(assert (=> b!5333791 m!6366890))

(declare-fun m!6366892 () Bool)

(assert (=> b!5333791 m!6366892))

(declare-fun m!6366894 () Bool)

(assert (=> b!5333791 m!6366894))

(declare-fun m!6366896 () Bool)

(assert (=> b!5333791 m!6366896))

(declare-fun m!6366898 () Bool)

(assert (=> b!5333799 m!6366898))

(declare-fun m!6366900 () Bool)

(assert (=> b!5333799 m!6366900))

(declare-fun m!6366902 () Bool)

(assert (=> b!5333799 m!6366902))

(declare-fun m!6366904 () Bool)

(assert (=> setNonEmpty!34393 m!6366904))

(declare-fun m!6366906 () Bool)

(assert (=> b!5333821 m!6366906))

(declare-fun m!6366908 () Bool)

(assert (=> b!5333814 m!6366908))

(declare-fun m!6366910 () Bool)

(assert (=> b!5333814 m!6366910))

(declare-fun m!6366912 () Bool)

(assert (=> b!5333790 m!6366912))

(declare-fun m!6366914 () Bool)

(assert (=> b!5333823 m!6366914))

(declare-fun m!6366916 () Bool)

(assert (=> b!5333823 m!6366916))

(declare-fun m!6366918 () Bool)

(assert (=> b!5333817 m!6366918))

(declare-fun m!6366920 () Bool)

(assert (=> b!5333795 m!6366920))

(declare-fun m!6366922 () Bool)

(assert (=> b!5333795 m!6366922))

(declare-fun m!6366924 () Bool)

(assert (=> b!5333795 m!6366924))

(assert (=> b!5333795 m!6366920))

(declare-fun m!6366926 () Bool)

(assert (=> b!5333795 m!6366926))

(declare-fun m!6366928 () Bool)

(assert (=> b!5333795 m!6366928))

(assert (=> b!5333795 m!6366922))

(declare-fun m!6366930 () Bool)

(assert (=> b!5333795 m!6366930))

(declare-fun m!6366932 () Bool)

(assert (=> b!5333806 m!6366932))

(declare-fun m!6366934 () Bool)

(assert (=> b!5333806 m!6366934))

(declare-fun m!6366936 () Bool)

(assert (=> b!5333793 m!6366936))

(declare-fun m!6366938 () Bool)

(assert (=> b!5333816 m!6366938))

(declare-fun m!6366940 () Bool)

(assert (=> b!5333816 m!6366940))

(declare-fun m!6366942 () Bool)

(assert (=> b!5333816 m!6366942))

(declare-fun m!6366944 () Bool)

(assert (=> b!5333816 m!6366944))

(declare-fun m!6366946 () Bool)

(assert (=> b!5333816 m!6366946))

(declare-fun m!6366948 () Bool)

(assert (=> b!5333801 m!6366948))

(declare-fun m!6366950 () Bool)

(assert (=> b!5333800 m!6366950))

(declare-fun m!6366952 () Bool)

(assert (=> b!5333800 m!6366952))

(declare-fun m!6366954 () Bool)

(assert (=> b!5333800 m!6366954))

(declare-fun m!6366956 () Bool)

(assert (=> start!562106 m!6366956))

(declare-fun m!6366958 () Bool)

(assert (=> b!5333796 m!6366958))

(declare-fun m!6366960 () Bool)

(assert (=> b!5333796 m!6366960))

(declare-fun m!6366962 () Bool)

(assert (=> b!5333796 m!6366962))

(declare-fun m!6366964 () Bool)

(assert (=> b!5333796 m!6366964))

(declare-fun m!6366966 () Bool)

(assert (=> b!5333796 m!6366966))

(declare-fun m!6366968 () Bool)

(assert (=> b!5333796 m!6366968))

(declare-fun m!6366970 () Bool)

(assert (=> b!5333796 m!6366970))

(declare-fun m!6366972 () Bool)

(assert (=> b!5333796 m!6366972))

(declare-fun m!6366974 () Bool)

(assert (=> b!5333796 m!6366974))

(declare-fun m!6366976 () Bool)

(assert (=> b!5333796 m!6366976))

(declare-fun m!6366978 () Bool)

(assert (=> b!5333796 m!6366978))

(assert (=> b!5333796 m!6366962))

(declare-fun m!6366980 () Bool)

(assert (=> b!5333796 m!6366980))

(declare-fun m!6366982 () Bool)

(assert (=> b!5333796 m!6366982))

(declare-fun m!6366984 () Bool)

(assert (=> b!5333796 m!6366984))

(declare-fun m!6366986 () Bool)

(assert (=> b!5333796 m!6366986))

(declare-fun m!6366988 () Bool)

(assert (=> b!5333796 m!6366988))

(assert (=> b!5333796 m!6366964))

(declare-fun m!6366990 () Bool)

(assert (=> b!5333796 m!6366990))

(assert (=> b!5333796 m!6366968))

(declare-fun m!6366992 () Bool)

(assert (=> b!5333796 m!6366992))

(declare-fun m!6366994 () Bool)

(assert (=> b!5333796 m!6366994))

(declare-fun m!6366996 () Bool)

(assert (=> b!5333796 m!6366996))

(declare-fun m!6366998 () Bool)

(assert (=> b!5333796 m!6366998))

(declare-fun m!6367000 () Bool)

(assert (=> b!5333807 m!6367000))

(declare-fun m!6367002 () Bool)

(assert (=> b!5333797 m!6367002))

(assert (=> b!5333797 m!6366952))

(declare-fun m!6367004 () Bool)

(assert (=> b!5333794 m!6367004))

(declare-fun m!6367006 () Bool)

(assert (=> b!5333802 m!6367006))

(declare-fun m!6367008 () Bool)

(assert (=> b!5333803 m!6367008))

(declare-fun m!6367010 () Bool)

(assert (=> b!5333815 m!6367010))

(declare-fun m!6367012 () Bool)

(assert (=> b!5333804 m!6367012))

(assert (=> b!5333804 m!6367012))

(declare-fun m!6367014 () Bool)

(assert (=> b!5333804 m!6367014))

(check-sat (not b!5333820) (not b!5333802) (not b!5333806) tp_is_empty!39259 (not b!5333813) (not b!5333809) (not b!5333817) (not b!5333804) (not b!5333815) (not b!5333808) (not start!562106) (not b!5333796) (not b!5333794) (not b!5333797) (not b!5333795) (not b!5333818) (not b!5333821) (not b!5333799) (not b!5333819) (not b!5333801) (not b!5333803) (not b!5333791) (not b!5333800) (not b!5333814) (not b!5333793) (not b!5333807) (not b!5333790) (not setNonEmpty!34393) (not b!5333816) (not b!5333823))
(check-sat)
