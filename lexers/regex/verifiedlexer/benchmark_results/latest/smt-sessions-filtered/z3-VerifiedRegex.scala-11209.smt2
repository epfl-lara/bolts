; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!585780 () Bool)

(assert start!585780)

(declare-fun b!5674315 () Bool)

(assert (=> b!5674315 true))

(assert (=> b!5674315 true))

(declare-fun lambda!305576 () Int)

(declare-fun lambda!305575 () Int)

(assert (=> b!5674315 (not (= lambda!305576 lambda!305575))))

(assert (=> b!5674315 true))

(assert (=> b!5674315 true))

(declare-fun b!5674301 () Bool)

(assert (=> b!5674301 true))

(declare-fun bs!1322836 () Bool)

(declare-fun b!5674290 () Bool)

(assert (= bs!1322836 (and b!5674290 b!5674315)))

(declare-datatypes ((C!31600 0))(
  ( (C!31601 (val!25502 Int)) )
))
(declare-datatypes ((Regex!15665 0))(
  ( (ElementMatch!15665 (c!998089 C!31600)) (Concat!24510 (regOne!31842 Regex!15665) (regTwo!31842 Regex!15665)) (EmptyExpr!15665) (Star!15665 (reg!15994 Regex!15665)) (EmptyLang!15665) (Union!15665 (regOne!31843 Regex!15665) (regTwo!31843 Regex!15665)) )
))
(declare-fun r!7292 () Regex!15665)

(declare-fun lt!2269332 () Regex!15665)

(declare-fun lambda!305578 () Int)

(assert (=> bs!1322836 (= (and (= (regOne!31842 (regOne!31842 r!7292)) (regOne!31842 r!7292)) (= lt!2269332 (regTwo!31842 r!7292))) (= lambda!305578 lambda!305575))))

(assert (=> bs!1322836 (not (= lambda!305578 lambda!305576))))

(assert (=> b!5674290 true))

(assert (=> b!5674290 true))

(assert (=> b!5674290 true))

(declare-fun lambda!305579 () Int)

(assert (=> bs!1322836 (not (= lambda!305579 lambda!305575))))

(assert (=> bs!1322836 (= (and (= (regOne!31842 (regOne!31842 r!7292)) (regOne!31842 r!7292)) (= lt!2269332 (regTwo!31842 r!7292))) (= lambda!305579 lambda!305576))))

(assert (=> b!5674290 (not (= lambda!305579 lambda!305578))))

(assert (=> b!5674290 true))

(assert (=> b!5674290 true))

(assert (=> b!5674290 true))

(declare-fun lambda!305580 () Int)

(declare-fun lt!2269319 () Regex!15665)

(assert (=> bs!1322836 (= (and (= (regTwo!31842 (regOne!31842 r!7292)) (regOne!31842 r!7292)) (= lt!2269319 (regTwo!31842 r!7292))) (= lambda!305580 lambda!305575))))

(assert (=> bs!1322836 (not (= lambda!305580 lambda!305576))))

(assert (=> b!5674290 (= (and (= (regTwo!31842 (regOne!31842 r!7292)) (regOne!31842 (regOne!31842 r!7292))) (= lt!2269319 lt!2269332)) (= lambda!305580 lambda!305578))))

(assert (=> b!5674290 (not (= lambda!305580 lambda!305579))))

(assert (=> b!5674290 true))

(assert (=> b!5674290 true))

(assert (=> b!5674290 true))

(declare-fun lambda!305581 () Int)

(assert (=> b!5674290 (not (= lambda!305581 lambda!305578))))

(assert (=> bs!1322836 (not (= lambda!305581 lambda!305575))))

(assert (=> bs!1322836 (= (and (= (regTwo!31842 (regOne!31842 r!7292)) (regOne!31842 r!7292)) (= lt!2269319 (regTwo!31842 r!7292))) (= lambda!305581 lambda!305576))))

(assert (=> b!5674290 (= (and (= (regTwo!31842 (regOne!31842 r!7292)) (regOne!31842 (regOne!31842 r!7292))) (= lt!2269319 lt!2269332)) (= lambda!305581 lambda!305579))))

(assert (=> b!5674290 (not (= lambda!305581 lambda!305580))))

(assert (=> b!5674290 true))

(assert (=> b!5674290 true))

(assert (=> b!5674290 true))

(declare-fun b!5674281 () Bool)

(declare-fun e!3492777 () Bool)

(declare-fun tp_is_empty!40583 () Bool)

(declare-fun tp!1573756 () Bool)

(assert (=> b!5674281 (= e!3492777 (and tp_is_empty!40583 tp!1573756))))

(declare-fun b!5674282 () Bool)

(declare-fun e!3492788 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!63294 0))(
  ( (Nil!63170) (Cons!63170 (h!69618 Regex!15665) (t!376602 List!63294)) )
))
(declare-datatypes ((Context!10098 0))(
  ( (Context!10099 (exprs!5549 List!63294)) )
))
(declare-fun lt!2269314 () (InoxSet Context!10098))

(declare-datatypes ((List!63295 0))(
  ( (Nil!63171) (Cons!63171 (h!69619 C!31600) (t!376603 List!63295)) )
))
(declare-fun s!2326 () List!63295)

(declare-fun matchZipper!1803 ((InoxSet Context!10098) List!63295) Bool)

(assert (=> b!5674282 (= e!3492788 (matchZipper!1803 lt!2269314 (t!376603 s!2326)))))

(declare-fun b!5674283 () Bool)

(declare-fun e!3492792 () Bool)

(declare-fun e!3492784 () Bool)

(assert (=> b!5674283 (= e!3492792 e!3492784)))

(declare-fun res!2398073 () Bool)

(assert (=> b!5674283 (=> res!2398073 e!3492784)))

(declare-datatypes ((List!63296 0))(
  ( (Nil!63172) (Cons!63172 (h!69620 Context!10098) (t!376604 List!63296)) )
))
(declare-fun lt!2269304 () List!63296)

(declare-fun zl!343 () List!63296)

(declare-fun zipperDepthTotal!262 (List!63296) Int)

(assert (=> b!5674283 (= res!2398073 (>= (zipperDepthTotal!262 lt!2269304) (zipperDepthTotal!262 zl!343)))))

(declare-fun lt!2269334 () Context!10098)

(assert (=> b!5674283 (= lt!2269304 (Cons!63172 lt!2269334 Nil!63172))))

(declare-fun b!5674284 () Bool)

(declare-fun res!2398049 () Bool)

(declare-fun e!3492781 () Bool)

(assert (=> b!5674284 (=> res!2398049 e!3492781)))

(get-info :version)

(assert (=> b!5674284 (= res!2398049 (not ((_ is Cons!63170) (exprs!5549 (h!69620 zl!343)))))))

(declare-fun e!3492794 () Bool)

(declare-fun lt!2269312 () Bool)

(declare-fun b!5674285 () Bool)

(declare-fun lt!2269325 () Regex!15665)

(declare-fun matchR!7850 (Regex!15665 List!63295) Bool)

(assert (=> b!5674285 (= e!3492794 (= lt!2269312 (matchR!7850 (Concat!24510 lt!2269325 lt!2269319) s!2326)))))

(declare-fun b!5674286 () Bool)

(declare-fun res!2398063 () Bool)

(assert (=> b!5674286 (=> res!2398063 e!3492781)))

(assert (=> b!5674286 (= res!2398063 (or ((_ is EmptyExpr!15665) r!7292) ((_ is EmptyLang!15665) r!7292) ((_ is ElementMatch!15665) r!7292) ((_ is Union!15665) r!7292) (not ((_ is Concat!24510) r!7292))))))

(declare-fun b!5674287 () Bool)

(declare-fun res!2398052 () Bool)

(assert (=> b!5674287 (=> res!2398052 e!3492781)))

(declare-fun generalisedConcat!1280 (List!63294) Regex!15665)

(assert (=> b!5674287 (= res!2398052 (not (= r!7292 (generalisedConcat!1280 (exprs!5549 (h!69620 zl!343))))))))

(declare-fun b!5674288 () Bool)

(declare-fun res!2398055 () Bool)

(declare-fun e!3492791 () Bool)

(assert (=> b!5674288 (=> res!2398055 e!3492791)))

(declare-fun e!3492787 () Bool)

(assert (=> b!5674288 (= res!2398055 e!3492787)))

(declare-fun res!2398057 () Bool)

(assert (=> b!5674288 (=> (not res!2398057) (not e!3492787))))

(assert (=> b!5674288 (= res!2398057 ((_ is Concat!24510) (regOne!31842 r!7292)))))

(declare-fun b!5674289 () Bool)

(declare-fun res!2398069 () Bool)

(assert (=> b!5674289 (=> res!2398069 e!3492794)))

(assert (=> b!5674289 (= res!2398069 (not (= lt!2269312 (matchR!7850 (Concat!24510 lt!2269325 (regTwo!31842 r!7292)) s!2326))))))

(assert (=> b!5674290 (= e!3492784 e!3492794)))

(declare-fun res!2398074 () Bool)

(assert (=> b!5674290 (=> res!2398074 e!3492794)))

(declare-fun lt!2269308 () Bool)

(declare-fun lt!2269323 () Bool)

(declare-fun lt!2269327 () Bool)

(assert (=> b!5674290 (= res!2398074 (or (not (= lt!2269323 lt!2269327)) (not (= lt!2269323 lt!2269308))))))

(declare-fun z!1189 () (InoxSet Context!10098))

(assert (=> b!5674290 (= lt!2269323 (matchZipper!1803 z!1189 s!2326))))

(declare-fun Exists!2765 (Int) Bool)

(assert (=> b!5674290 (= (Exists!2765 lambda!305580) (Exists!2765 lambda!305581))))

(declare-datatypes ((Unit!156192 0))(
  ( (Unit!156193) )
))
(declare-fun lt!2269326 () Unit!156192)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1394 (Regex!15665 Regex!15665 List!63295) Unit!156192)

(assert (=> b!5674290 (= lt!2269326 (lemmaExistCutMatchRandMatchRSpecEquivalent!1394 (regTwo!31842 (regOne!31842 r!7292)) lt!2269319 s!2326))))

(declare-datatypes ((tuple2!65524 0))(
  ( (tuple2!65525 (_1!36065 List!63295) (_2!36065 List!63295)) )
))
(declare-datatypes ((Option!15674 0))(
  ( (None!15673) (Some!15673 (v!51722 tuple2!65524)) )
))
(declare-fun isDefined!12377 (Option!15674) Bool)

(declare-fun findConcatSeparation!2088 (Regex!15665 Regex!15665 List!63295 List!63295 List!63295) Option!15674)

(assert (=> b!5674290 (= (isDefined!12377 (findConcatSeparation!2088 (regTwo!31842 (regOne!31842 r!7292)) lt!2269319 Nil!63171 s!2326 s!2326)) (Exists!2765 lambda!305580))))

(declare-fun lt!2269303 () Unit!156192)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1852 (Regex!15665 Regex!15665 List!63295) Unit!156192)

(assert (=> b!5674290 (= lt!2269303 (lemmaFindConcatSeparationEquivalentToExists!1852 (regTwo!31842 (regOne!31842 r!7292)) lt!2269319 s!2326))))

(assert (=> b!5674290 (= lt!2269319 (generalisedConcat!1280 (t!376602 (exprs!5549 (h!69620 zl!343)))))))

(declare-fun matchRSpec!2768 (Regex!15665 List!63295) Bool)

(assert (=> b!5674290 (= (matchR!7850 lt!2269332 s!2326) (matchRSpec!2768 lt!2269332 s!2326))))

(declare-fun lt!2269336 () Unit!156192)

(declare-fun mainMatchTheorem!2768 (Regex!15665 List!63295) Unit!156192)

(assert (=> b!5674290 (= lt!2269336 (mainMatchTheorem!2768 lt!2269332 s!2326))))

(assert (=> b!5674290 (= (Exists!2765 lambda!305578) (Exists!2765 lambda!305579))))

(declare-fun lt!2269322 () Unit!156192)

(assert (=> b!5674290 (= lt!2269322 (lemmaExistCutMatchRandMatchRSpecEquivalent!1394 (regOne!31842 (regOne!31842 r!7292)) lt!2269332 s!2326))))

(assert (=> b!5674290 (= (isDefined!12377 (findConcatSeparation!2088 (regOne!31842 (regOne!31842 r!7292)) lt!2269332 Nil!63171 s!2326 s!2326)) (Exists!2765 lambda!305578))))

(declare-fun lt!2269306 () Unit!156192)

(assert (=> b!5674290 (= lt!2269306 (lemmaFindConcatSeparationEquivalentToExists!1852 (regOne!31842 (regOne!31842 r!7292)) lt!2269332 s!2326))))

(declare-fun lt!2269335 () List!63294)

(assert (=> b!5674290 (= lt!2269332 (generalisedConcat!1280 lt!2269335))))

(declare-fun lt!2269338 () Regex!15665)

(assert (=> b!5674290 (= lt!2269308 (matchRSpec!2768 lt!2269338 s!2326))))

(declare-fun lt!2269315 () Unit!156192)

(assert (=> b!5674290 (= lt!2269315 (mainMatchTheorem!2768 lt!2269338 s!2326))))

(assert (=> b!5674290 (= lt!2269308 lt!2269327)))

(declare-fun lt!2269321 () (InoxSet Context!10098))

(assert (=> b!5674290 (= lt!2269327 (matchZipper!1803 lt!2269321 s!2326))))

(assert (=> b!5674290 (= lt!2269308 (matchR!7850 lt!2269338 s!2326))))

(declare-fun lt!2269328 () Unit!156192)

(declare-fun theoremZipperRegexEquiv!645 ((InoxSet Context!10098) List!63296 Regex!15665 List!63295) Unit!156192)

(assert (=> b!5674290 (= lt!2269328 (theoremZipperRegexEquiv!645 lt!2269321 lt!2269304 lt!2269338 s!2326))))

(declare-fun lt!2269317 () List!63294)

(assert (=> b!5674290 (= lt!2269338 (generalisedConcat!1280 lt!2269317))))

(declare-fun b!5674291 () Bool)

(declare-fun e!3492780 () Unit!156192)

(declare-fun Unit!156194 () Unit!156192)

(assert (=> b!5674291 (= e!3492780 Unit!156194)))

(declare-fun lt!2269318 () Unit!156192)

(declare-fun lt!2269316 () (InoxSet Context!10098))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!690 ((InoxSet Context!10098) (InoxSet Context!10098) List!63295) Unit!156192)

(assert (=> b!5674291 (= lt!2269318 (lemmaZipperConcatMatchesSameAsBothZippers!690 lt!2269316 lt!2269314 (t!376603 s!2326)))))

(declare-fun res!2398050 () Bool)

(assert (=> b!5674291 (= res!2398050 (matchZipper!1803 lt!2269316 (t!376603 s!2326)))))

(assert (=> b!5674291 (=> res!2398050 e!3492788)))

(assert (=> b!5674291 (= (matchZipper!1803 ((_ map or) lt!2269316 lt!2269314) (t!376603 s!2326)) e!3492788)))

(declare-fun b!5674292 () Bool)

(declare-fun e!3492786 () Bool)

(declare-fun tp!1573755 () Bool)

(declare-fun tp!1573751 () Bool)

(assert (=> b!5674292 (= e!3492786 (and tp!1573755 tp!1573751))))

(declare-fun b!5674293 () Bool)

(declare-fun res!2398064 () Bool)

(assert (=> b!5674293 (=> res!2398064 e!3492792)))

(declare-fun contextDepthTotal!240 (Context!10098) Int)

(assert (=> b!5674293 (= res!2398064 (>= (contextDepthTotal!240 lt!2269334) (contextDepthTotal!240 (h!69620 zl!343))))))

(declare-fun b!5674294 () Bool)

(declare-fun e!3492793 () Bool)

(assert (=> b!5674294 (= e!3492793 (not e!3492781))))

(declare-fun res!2398066 () Bool)

(assert (=> b!5674294 (=> res!2398066 e!3492781)))

(assert (=> b!5674294 (= res!2398066 (not ((_ is Cons!63172) zl!343)))))

(assert (=> b!5674294 (= lt!2269312 (matchRSpec!2768 r!7292 s!2326))))

(assert (=> b!5674294 (= lt!2269312 (matchR!7850 r!7292 s!2326))))

(declare-fun lt!2269313 () Unit!156192)

(assert (=> b!5674294 (= lt!2269313 (mainMatchTheorem!2768 r!7292 s!2326))))

(declare-fun b!5674295 () Bool)

(declare-fun res!2398072 () Bool)

(declare-fun e!3492785 () Bool)

(assert (=> b!5674295 (=> res!2398072 e!3492785)))

(declare-fun isEmpty!35017 (List!63294) Bool)

(assert (=> b!5674295 (= res!2398072 (isEmpty!35017 (t!376602 (exprs!5549 (h!69620 zl!343)))))))

(declare-fun e!3492782 () Bool)

(declare-fun tp!1573749 () Bool)

(declare-fun b!5674296 () Bool)

(declare-fun e!3492783 () Bool)

(declare-fun inv!82409 (Context!10098) Bool)

(assert (=> b!5674296 (= e!3492782 (and (inv!82409 (h!69620 zl!343)) e!3492783 tp!1573749))))

(declare-fun b!5674297 () Bool)

(assert (=> b!5674297 (= e!3492786 tp_is_empty!40583)))

(declare-fun res!2398075 () Bool)

(assert (=> start!585780 (=> (not res!2398075) (not e!3492793))))

(declare-fun validRegex!7401 (Regex!15665) Bool)

(assert (=> start!585780 (= res!2398075 (validRegex!7401 r!7292))))

(assert (=> start!585780 e!3492793))

(assert (=> start!585780 e!3492786))

(declare-fun condSetEmpty!37935 () Bool)

(assert (=> start!585780 (= condSetEmpty!37935 (= z!1189 ((as const (Array Context!10098 Bool)) false)))))

(declare-fun setRes!37935 () Bool)

(assert (=> start!585780 setRes!37935))

(assert (=> start!585780 e!3492782))

(assert (=> start!585780 e!3492777))

(declare-fun setIsEmpty!37935 () Bool)

(assert (=> setIsEmpty!37935 setRes!37935))

(declare-fun b!5674298 () Bool)

(declare-fun Unit!156195 () Unit!156192)

(assert (=> b!5674298 (= e!3492780 Unit!156195)))

(declare-fun b!5674299 () Bool)

(declare-fun res!2398051 () Bool)

(assert (=> b!5674299 (=> (not res!2398051) (not e!3492793))))

(declare-fun unfocusZipper!1407 (List!63296) Regex!15665)

(assert (=> b!5674299 (= res!2398051 (= r!7292 (unfocusZipper!1407 zl!343)))))

(declare-fun b!5674300 () Bool)

(declare-fun res!2398062 () Bool)

(declare-fun e!3492778 () Bool)

(assert (=> b!5674300 (=> res!2398062 e!3492778)))

(declare-fun lt!2269310 () (InoxSet Context!10098))

(declare-fun lt!2269330 () Bool)

(assert (=> b!5674300 (= res!2398062 (not (= lt!2269330 (matchZipper!1803 lt!2269310 (t!376603 s!2326)))))))

(assert (=> b!5674301 (= e!3492785 e!3492791)))

(declare-fun res!2398058 () Bool)

(assert (=> b!5674301 (=> res!2398058 e!3492791)))

(assert (=> b!5674301 (= res!2398058 (or (and ((_ is ElementMatch!15665) (regOne!31842 r!7292)) (= (c!998089 (regOne!31842 r!7292)) (h!69619 s!2326))) ((_ is Union!15665) (regOne!31842 r!7292))))))

(declare-fun lt!2269337 () Unit!156192)

(assert (=> b!5674301 (= lt!2269337 e!3492780)))

(declare-fun c!998088 () Bool)

(declare-fun nullable!5697 (Regex!15665) Bool)

(assert (=> b!5674301 (= c!998088 (nullable!5697 (h!69618 (exprs!5549 (h!69620 zl!343)))))))

(declare-fun lambda!305577 () Int)

(declare-fun flatMap!1278 ((InoxSet Context!10098) Int) (InoxSet Context!10098))

(declare-fun derivationStepZipperUp!933 (Context!10098 C!31600) (InoxSet Context!10098))

(assert (=> b!5674301 (= (flatMap!1278 z!1189 lambda!305577) (derivationStepZipperUp!933 (h!69620 zl!343) (h!69619 s!2326)))))

(declare-fun lt!2269309 () Unit!156192)

(declare-fun lemmaFlatMapOnSingletonSet!810 ((InoxSet Context!10098) Context!10098 Int) Unit!156192)

(assert (=> b!5674301 (= lt!2269309 (lemmaFlatMapOnSingletonSet!810 z!1189 (h!69620 zl!343) lambda!305577))))

(declare-fun lt!2269307 () Context!10098)

(assert (=> b!5674301 (= lt!2269314 (derivationStepZipperUp!933 lt!2269307 (h!69619 s!2326)))))

(declare-fun derivationStepZipperDown!1007 (Regex!15665 Context!10098 C!31600) (InoxSet Context!10098))

(assert (=> b!5674301 (= lt!2269316 (derivationStepZipperDown!1007 (h!69618 (exprs!5549 (h!69620 zl!343))) lt!2269307 (h!69619 s!2326)))))

(assert (=> b!5674301 (= lt!2269307 (Context!10099 (t!376602 (exprs!5549 (h!69620 zl!343)))))))

(declare-fun lt!2269305 () (InoxSet Context!10098))

(assert (=> b!5674301 (= lt!2269305 (derivationStepZipperUp!933 (Context!10099 (Cons!63170 (h!69618 (exprs!5549 (h!69620 zl!343))) (t!376602 (exprs!5549 (h!69620 zl!343))))) (h!69619 s!2326)))))

(declare-fun b!5674302 () Bool)

(declare-fun e!3492790 () Bool)

(assert (=> b!5674302 (= e!3492791 e!3492790)))

(declare-fun res!2398054 () Bool)

(assert (=> b!5674302 (=> res!2398054 e!3492790)))

(declare-fun lt!2269333 () (InoxSet Context!10098))

(assert (=> b!5674302 (= res!2398054 (not (= lt!2269316 lt!2269333)))))

(assert (=> b!5674302 (= lt!2269333 (derivationStepZipperDown!1007 (regOne!31842 (regOne!31842 r!7292)) (Context!10099 lt!2269335) (h!69619 s!2326)))))

(assert (=> b!5674302 (= lt!2269335 (Cons!63170 (regTwo!31842 (regOne!31842 r!7292)) (t!376602 (exprs!5549 (h!69620 zl!343)))))))

(declare-fun b!5674303 () Bool)

(declare-fun res!2398059 () Bool)

(assert (=> b!5674303 (=> res!2398059 e!3492784)))

(declare-fun zipperDepth!228 (List!63296) Int)

(assert (=> b!5674303 (= res!2398059 (> (zipperDepth!228 lt!2269304) (zipperDepth!228 zl!343)))))

(declare-fun b!5674304 () Bool)

(declare-fun res!2398053 () Bool)

(assert (=> b!5674304 (=> res!2398053 e!3492781)))

(declare-fun isEmpty!35018 (List!63296) Bool)

(assert (=> b!5674304 (= res!2398053 (not (isEmpty!35018 (t!376604 zl!343))))))

(declare-fun b!5674305 () Bool)

(declare-fun res!2398068 () Bool)

(assert (=> b!5674305 (=> res!2398068 e!3492791)))

(assert (=> b!5674305 (= res!2398068 (not ((_ is Concat!24510) (regOne!31842 r!7292))))))

(declare-fun b!5674306 () Bool)

(assert (=> b!5674306 (= e!3492778 e!3492792)))

(declare-fun res!2398071 () Bool)

(assert (=> b!5674306 (=> res!2398071 e!3492792)))

(assert (=> b!5674306 (= res!2398071 (not (= (exprs!5549 (h!69620 zl!343)) (Cons!63170 lt!2269325 (t!376602 (exprs!5549 (h!69620 zl!343)))))))))

(assert (=> b!5674306 (= lt!2269325 (Concat!24510 (regOne!31842 (regOne!31842 r!7292)) (regTwo!31842 (regOne!31842 r!7292))))))

(declare-fun b!5674307 () Bool)

(declare-fun tp!1573758 () Bool)

(declare-fun tp!1573750 () Bool)

(assert (=> b!5674307 (= e!3492786 (and tp!1573758 tp!1573750))))

(declare-fun b!5674308 () Bool)

(declare-fun e!3492789 () Bool)

(declare-fun tp!1573753 () Bool)

(assert (=> b!5674308 (= e!3492789 tp!1573753)))

(declare-fun tp!1573757 () Bool)

(declare-fun setNonEmpty!37935 () Bool)

(declare-fun setElem!37935 () Context!10098)

(assert (=> setNonEmpty!37935 (= setRes!37935 (and tp!1573757 (inv!82409 setElem!37935) e!3492789))))

(declare-fun setRest!37935 () (InoxSet Context!10098))

(assert (=> setNonEmpty!37935 (= z!1189 ((_ map or) (store ((as const (Array Context!10098 Bool)) false) setElem!37935 true) setRest!37935))))

(declare-fun b!5674309 () Bool)

(declare-fun e!3492779 () Bool)

(assert (=> b!5674309 (= e!3492779 e!3492778)))

(declare-fun res!2398060 () Bool)

(assert (=> b!5674309 (=> res!2398060 e!3492778)))

(assert (=> b!5674309 (= res!2398060 (not (= lt!2269310 lt!2269333)))))

(assert (=> b!5674309 (= (flatMap!1278 lt!2269321 lambda!305577) (derivationStepZipperUp!933 lt!2269334 (h!69619 s!2326)))))

(declare-fun lt!2269311 () Unit!156192)

(assert (=> b!5674309 (= lt!2269311 (lemmaFlatMapOnSingletonSet!810 lt!2269321 lt!2269334 lambda!305577))))

(declare-fun lt!2269324 () (InoxSet Context!10098))

(assert (=> b!5674309 (= lt!2269324 (derivationStepZipperUp!933 lt!2269334 (h!69619 s!2326)))))

(declare-fun derivationStepZipper!1750 ((InoxSet Context!10098) C!31600) (InoxSet Context!10098))

(assert (=> b!5674309 (= lt!2269310 (derivationStepZipper!1750 lt!2269321 (h!69619 s!2326)))))

(assert (=> b!5674309 (= lt!2269321 (store ((as const (Array Context!10098 Bool)) false) lt!2269334 true))))

(assert (=> b!5674309 (= lt!2269334 (Context!10099 lt!2269317))))

(assert (=> b!5674309 (= lt!2269317 (Cons!63170 (regOne!31842 (regOne!31842 r!7292)) lt!2269335))))

(declare-fun b!5674310 () Bool)

(declare-fun res!2398070 () Bool)

(assert (=> b!5674310 (=> res!2398070 e!3492794)))

(assert (=> b!5674310 (= res!2398070 (not (= lt!2269312 (matchR!7850 (Concat!24510 (regOne!31842 r!7292) (regTwo!31842 r!7292)) s!2326))))))

(declare-fun b!5674311 () Bool)

(declare-fun res!2398067 () Bool)

(assert (=> b!5674311 (=> (not res!2398067) (not e!3492793))))

(declare-fun toList!9449 ((InoxSet Context!10098)) List!63296)

(assert (=> b!5674311 (= res!2398067 (= (toList!9449 z!1189) zl!343))))

(declare-fun b!5674312 () Bool)

(declare-fun res!2398065 () Bool)

(assert (=> b!5674312 (=> res!2398065 e!3492781)))

(declare-fun generalisedUnion!1528 (List!63294) Regex!15665)

(declare-fun unfocusZipperList!1093 (List!63296) List!63294)

(assert (=> b!5674312 (= res!2398065 (not (= r!7292 (generalisedUnion!1528 (unfocusZipperList!1093 zl!343)))))))

(declare-fun b!5674313 () Bool)

(declare-fun tp!1573752 () Bool)

(assert (=> b!5674313 (= e!3492783 tp!1573752)))

(declare-fun b!5674314 () Bool)

(assert (=> b!5674314 (= e!3492790 e!3492779)))

(declare-fun res!2398061 () Bool)

(assert (=> b!5674314 (=> res!2398061 e!3492779)))

(assert (=> b!5674314 (= res!2398061 (not (= lt!2269330 (matchZipper!1803 lt!2269333 (t!376603 s!2326)))))))

(assert (=> b!5674314 (= lt!2269330 (matchZipper!1803 lt!2269316 (t!376603 s!2326)))))

(assert (=> b!5674315 (= e!3492781 e!3492785)))

(declare-fun res!2398056 () Bool)

(assert (=> b!5674315 (=> res!2398056 e!3492785)))

(declare-fun lt!2269331 () Bool)

(assert (=> b!5674315 (= res!2398056 (or (not (= lt!2269312 lt!2269331)) ((_ is Nil!63171) s!2326)))))

(assert (=> b!5674315 (= (Exists!2765 lambda!305575) (Exists!2765 lambda!305576))))

(declare-fun lt!2269320 () Unit!156192)

(assert (=> b!5674315 (= lt!2269320 (lemmaExistCutMatchRandMatchRSpecEquivalent!1394 (regOne!31842 r!7292) (regTwo!31842 r!7292) s!2326))))

(assert (=> b!5674315 (= lt!2269331 (Exists!2765 lambda!305575))))

(assert (=> b!5674315 (= lt!2269331 (isDefined!12377 (findConcatSeparation!2088 (regOne!31842 r!7292) (regTwo!31842 r!7292) Nil!63171 s!2326 s!2326)))))

(declare-fun lt!2269329 () Unit!156192)

(assert (=> b!5674315 (= lt!2269329 (lemmaFindConcatSeparationEquivalentToExists!1852 (regOne!31842 r!7292) (regTwo!31842 r!7292) s!2326))))

(declare-fun b!5674316 () Bool)

(declare-fun tp!1573754 () Bool)

(assert (=> b!5674316 (= e!3492786 tp!1573754)))

(declare-fun b!5674317 () Bool)

(assert (=> b!5674317 (= e!3492787 (nullable!5697 (regOne!31842 (regOne!31842 r!7292))))))

(assert (= (and start!585780 res!2398075) b!5674311))

(assert (= (and b!5674311 res!2398067) b!5674299))

(assert (= (and b!5674299 res!2398051) b!5674294))

(assert (= (and b!5674294 (not res!2398066)) b!5674304))

(assert (= (and b!5674304 (not res!2398053)) b!5674287))

(assert (= (and b!5674287 (not res!2398052)) b!5674284))

(assert (= (and b!5674284 (not res!2398049)) b!5674312))

(assert (= (and b!5674312 (not res!2398065)) b!5674286))

(assert (= (and b!5674286 (not res!2398063)) b!5674315))

(assert (= (and b!5674315 (not res!2398056)) b!5674295))

(assert (= (and b!5674295 (not res!2398072)) b!5674301))

(assert (= (and b!5674301 c!998088) b!5674291))

(assert (= (and b!5674301 (not c!998088)) b!5674298))

(assert (= (and b!5674291 (not res!2398050)) b!5674282))

(assert (= (and b!5674301 (not res!2398058)) b!5674288))

(assert (= (and b!5674288 res!2398057) b!5674317))

(assert (= (and b!5674288 (not res!2398055)) b!5674305))

(assert (= (and b!5674305 (not res!2398068)) b!5674302))

(assert (= (and b!5674302 (not res!2398054)) b!5674314))

(assert (= (and b!5674314 (not res!2398061)) b!5674309))

(assert (= (and b!5674309 (not res!2398060)) b!5674300))

(assert (= (and b!5674300 (not res!2398062)) b!5674306))

(assert (= (and b!5674306 (not res!2398071)) b!5674293))

(assert (= (and b!5674293 (not res!2398064)) b!5674283))

(assert (= (and b!5674283 (not res!2398073)) b!5674303))

(assert (= (and b!5674303 (not res!2398059)) b!5674290))

(assert (= (and b!5674290 (not res!2398074)) b!5674310))

(assert (= (and b!5674310 (not res!2398070)) b!5674289))

(assert (= (and b!5674289 (not res!2398069)) b!5674285))

(assert (= (and start!585780 ((_ is ElementMatch!15665) r!7292)) b!5674297))

(assert (= (and start!585780 ((_ is Concat!24510) r!7292)) b!5674307))

(assert (= (and start!585780 ((_ is Star!15665) r!7292)) b!5674316))

(assert (= (and start!585780 ((_ is Union!15665) r!7292)) b!5674292))

(assert (= (and start!585780 condSetEmpty!37935) setIsEmpty!37935))

(assert (= (and start!585780 (not condSetEmpty!37935)) setNonEmpty!37935))

(assert (= setNonEmpty!37935 b!5674308))

(assert (= b!5674296 b!5674313))

(assert (= (and start!585780 ((_ is Cons!63172) zl!343)) b!5674296))

(assert (= (and start!585780 ((_ is Cons!63171) s!2326)) b!5674281))

(declare-fun m!6635238 () Bool)

(assert (=> b!5674312 m!6635238))

(assert (=> b!5674312 m!6635238))

(declare-fun m!6635240 () Bool)

(assert (=> b!5674312 m!6635240))

(declare-fun m!6635242 () Bool)

(assert (=> b!5674310 m!6635242))

(declare-fun m!6635244 () Bool)

(assert (=> start!585780 m!6635244))

(declare-fun m!6635246 () Bool)

(assert (=> b!5674289 m!6635246))

(declare-fun m!6635248 () Bool)

(assert (=> b!5674299 m!6635248))

(declare-fun m!6635250 () Bool)

(assert (=> b!5674315 m!6635250))

(declare-fun m!6635252 () Bool)

(assert (=> b!5674315 m!6635252))

(declare-fun m!6635254 () Bool)

(assert (=> b!5674315 m!6635254))

(declare-fun m!6635256 () Bool)

(assert (=> b!5674315 m!6635256))

(declare-fun m!6635258 () Bool)

(assert (=> b!5674315 m!6635258))

(assert (=> b!5674315 m!6635258))

(assert (=> b!5674315 m!6635252))

(declare-fun m!6635260 () Bool)

(assert (=> b!5674315 m!6635260))

(declare-fun m!6635262 () Bool)

(assert (=> b!5674304 m!6635262))

(declare-fun m!6635264 () Bool)

(assert (=> b!5674302 m!6635264))

(declare-fun m!6635266 () Bool)

(assert (=> b!5674300 m!6635266))

(declare-fun m!6635268 () Bool)

(assert (=> b!5674282 m!6635268))

(declare-fun m!6635270 () Bool)

(assert (=> b!5674303 m!6635270))

(declare-fun m!6635272 () Bool)

(assert (=> b!5674303 m!6635272))

(declare-fun m!6635274 () Bool)

(assert (=> b!5674301 m!6635274))

(declare-fun m!6635276 () Bool)

(assert (=> b!5674301 m!6635276))

(declare-fun m!6635278 () Bool)

(assert (=> b!5674301 m!6635278))

(declare-fun m!6635280 () Bool)

(assert (=> b!5674301 m!6635280))

(declare-fun m!6635282 () Bool)

(assert (=> b!5674301 m!6635282))

(declare-fun m!6635284 () Bool)

(assert (=> b!5674301 m!6635284))

(declare-fun m!6635286 () Bool)

(assert (=> b!5674301 m!6635286))

(declare-fun m!6635288 () Bool)

(assert (=> b!5674309 m!6635288))

(declare-fun m!6635290 () Bool)

(assert (=> b!5674309 m!6635290))

(declare-fun m!6635292 () Bool)

(assert (=> b!5674309 m!6635292))

(declare-fun m!6635294 () Bool)

(assert (=> b!5674309 m!6635294))

(declare-fun m!6635296 () Bool)

(assert (=> b!5674309 m!6635296))

(declare-fun m!6635298 () Bool)

(assert (=> b!5674290 m!6635298))

(declare-fun m!6635300 () Bool)

(assert (=> b!5674290 m!6635300))

(declare-fun m!6635302 () Bool)

(assert (=> b!5674290 m!6635302))

(declare-fun m!6635304 () Bool)

(assert (=> b!5674290 m!6635304))

(declare-fun m!6635306 () Bool)

(assert (=> b!5674290 m!6635306))

(declare-fun m!6635308 () Bool)

(assert (=> b!5674290 m!6635308))

(declare-fun m!6635310 () Bool)

(assert (=> b!5674290 m!6635310))

(declare-fun m!6635312 () Bool)

(assert (=> b!5674290 m!6635312))

(declare-fun m!6635314 () Bool)

(assert (=> b!5674290 m!6635314))

(declare-fun m!6635316 () Bool)

(assert (=> b!5674290 m!6635316))

(declare-fun m!6635318 () Bool)

(assert (=> b!5674290 m!6635318))

(declare-fun m!6635320 () Bool)

(assert (=> b!5674290 m!6635320))

(declare-fun m!6635322 () Bool)

(assert (=> b!5674290 m!6635322))

(declare-fun m!6635324 () Bool)

(assert (=> b!5674290 m!6635324))

(declare-fun m!6635326 () Bool)

(assert (=> b!5674290 m!6635326))

(declare-fun m!6635328 () Bool)

(assert (=> b!5674290 m!6635328))

(assert (=> b!5674290 m!6635300))

(assert (=> b!5674290 m!6635306))

(declare-fun m!6635330 () Bool)

(assert (=> b!5674290 m!6635330))

(declare-fun m!6635332 () Bool)

(assert (=> b!5674290 m!6635332))

(declare-fun m!6635334 () Bool)

(assert (=> b!5674290 m!6635334))

(assert (=> b!5674290 m!6635318))

(declare-fun m!6635336 () Bool)

(assert (=> b!5674290 m!6635336))

(declare-fun m!6635338 () Bool)

(assert (=> b!5674290 m!6635338))

(declare-fun m!6635340 () Bool)

(assert (=> b!5674290 m!6635340))

(assert (=> b!5674290 m!6635326))

(declare-fun m!6635342 () Bool)

(assert (=> b!5674290 m!6635342))

(declare-fun m!6635344 () Bool)

(assert (=> b!5674290 m!6635344))

(declare-fun m!6635346 () Bool)

(assert (=> b!5674295 m!6635346))

(declare-fun m!6635348 () Bool)

(assert (=> b!5674311 m!6635348))

(declare-fun m!6635350 () Bool)

(assert (=> b!5674283 m!6635350))

(declare-fun m!6635352 () Bool)

(assert (=> b!5674283 m!6635352))

(declare-fun m!6635354 () Bool)

(assert (=> setNonEmpty!37935 m!6635354))

(declare-fun m!6635356 () Bool)

(assert (=> b!5674317 m!6635356))

(declare-fun m!6635358 () Bool)

(assert (=> b!5674294 m!6635358))

(declare-fun m!6635360 () Bool)

(assert (=> b!5674294 m!6635360))

(declare-fun m!6635362 () Bool)

(assert (=> b!5674294 m!6635362))

(declare-fun m!6635364 () Bool)

(assert (=> b!5674285 m!6635364))

(declare-fun m!6635366 () Bool)

(assert (=> b!5674296 m!6635366))

(declare-fun m!6635368 () Bool)

(assert (=> b!5674314 m!6635368))

(declare-fun m!6635370 () Bool)

(assert (=> b!5674314 m!6635370))

(declare-fun m!6635372 () Bool)

(assert (=> b!5674287 m!6635372))

(declare-fun m!6635374 () Bool)

(assert (=> b!5674291 m!6635374))

(assert (=> b!5674291 m!6635370))

(declare-fun m!6635376 () Bool)

(assert (=> b!5674291 m!6635376))

(declare-fun m!6635378 () Bool)

(assert (=> b!5674293 m!6635378))

(declare-fun m!6635380 () Bool)

(assert (=> b!5674293 m!6635380))

(check-sat (not b!5674309) (not b!5674315) (not b!5674303) (not b!5674293) (not b!5674312) (not b!5674300) (not b!5674299) (not b!5674283) (not b!5674295) (not b!5674289) (not b!5674317) (not b!5674281) (not b!5674290) (not b!5674313) (not b!5674292) (not b!5674311) (not b!5674308) (not b!5674287) (not start!585780) (not b!5674307) tp_is_empty!40583 (not b!5674294) (not b!5674296) (not b!5674291) (not setNonEmpty!37935) (not b!5674302) (not b!5674316) (not b!5674282) (not b!5674310) (not b!5674301) (not b!5674314) (not b!5674304) (not b!5674285))
(check-sat)
(get-model)

(declare-fun d!1791184 () Bool)

(declare-fun lt!2269353 () Int)

(assert (=> d!1791184 (>= lt!2269353 0)))

(declare-fun e!3492877 () Int)

(assert (=> d!1791184 (= lt!2269353 e!3492877)))

(declare-fun c!998135 () Bool)

(assert (=> d!1791184 (= c!998135 ((_ is Cons!63170) (exprs!5549 lt!2269334)))))

(assert (=> d!1791184 (= (contextDepthTotal!240 lt!2269334) lt!2269353)))

(declare-fun b!5674462 () Bool)

(declare-fun regexDepthTotal!106 (Regex!15665) Int)

(assert (=> b!5674462 (= e!3492877 (+ (regexDepthTotal!106 (h!69618 (exprs!5549 lt!2269334))) (contextDepthTotal!240 (Context!10099 (t!376602 (exprs!5549 lt!2269334))))))))

(declare-fun b!5674463 () Bool)

(assert (=> b!5674463 (= e!3492877 1)))

(assert (= (and d!1791184 c!998135) b!5674462))

(assert (= (and d!1791184 (not c!998135)) b!5674463))

(declare-fun m!6635454 () Bool)

(assert (=> b!5674462 m!6635454))

(declare-fun m!6635456 () Bool)

(assert (=> b!5674462 m!6635456))

(assert (=> b!5674293 d!1791184))

(declare-fun d!1791190 () Bool)

(declare-fun lt!2269354 () Int)

(assert (=> d!1791190 (>= lt!2269354 0)))

(declare-fun e!3492878 () Int)

(assert (=> d!1791190 (= lt!2269354 e!3492878)))

(declare-fun c!998136 () Bool)

(assert (=> d!1791190 (= c!998136 ((_ is Cons!63170) (exprs!5549 (h!69620 zl!343))))))

(assert (=> d!1791190 (= (contextDepthTotal!240 (h!69620 zl!343)) lt!2269354)))

(declare-fun b!5674464 () Bool)

(assert (=> b!5674464 (= e!3492878 (+ (regexDepthTotal!106 (h!69618 (exprs!5549 (h!69620 zl!343)))) (contextDepthTotal!240 (Context!10099 (t!376602 (exprs!5549 (h!69620 zl!343)))))))))

(declare-fun b!5674465 () Bool)

(assert (=> b!5674465 (= e!3492878 1)))

(assert (= (and d!1791190 c!998136) b!5674464))

(assert (= (and d!1791190 (not c!998136)) b!5674465))

(declare-fun m!6635458 () Bool)

(assert (=> b!5674464 m!6635458))

(declare-fun m!6635460 () Bool)

(assert (=> b!5674464 m!6635460))

(assert (=> b!5674293 d!1791190))

(declare-fun b!5674511 () Bool)

(declare-fun e!3492906 () Regex!15665)

(assert (=> b!5674511 (= e!3492906 (h!69618 (unfocusZipperList!1093 zl!343)))))

(declare-fun b!5674512 () Bool)

(declare-fun e!3492909 () Regex!15665)

(assert (=> b!5674512 (= e!3492909 EmptyLang!15665)))

(declare-fun b!5674513 () Bool)

(assert (=> b!5674513 (= e!3492909 (Union!15665 (h!69618 (unfocusZipperList!1093 zl!343)) (generalisedUnion!1528 (t!376602 (unfocusZipperList!1093 zl!343)))))))

(declare-fun b!5674514 () Bool)

(declare-fun e!3492907 () Bool)

(declare-fun e!3492905 () Bool)

(assert (=> b!5674514 (= e!3492907 e!3492905)))

(declare-fun c!998165 () Bool)

(assert (=> b!5674514 (= c!998165 (isEmpty!35017 (unfocusZipperList!1093 zl!343)))))

(declare-fun b!5674515 () Bool)

(declare-fun e!3492910 () Bool)

(assert (=> b!5674515 (= e!3492905 e!3492910)))

(declare-fun c!998164 () Bool)

(declare-fun tail!11137 (List!63294) List!63294)

(assert (=> b!5674515 (= c!998164 (isEmpty!35017 (tail!11137 (unfocusZipperList!1093 zl!343))))))

(declare-fun b!5674516 () Bool)

(assert (=> b!5674516 (= e!3492906 e!3492909)))

(declare-fun c!998163 () Bool)

(assert (=> b!5674516 (= c!998163 ((_ is Cons!63170) (unfocusZipperList!1093 zl!343)))))

(declare-fun d!1791192 () Bool)

(assert (=> d!1791192 e!3492907))

(declare-fun res!2398133 () Bool)

(assert (=> d!1791192 (=> (not res!2398133) (not e!3492907))))

(declare-fun lt!2269369 () Regex!15665)

(assert (=> d!1791192 (= res!2398133 (validRegex!7401 lt!2269369))))

(assert (=> d!1791192 (= lt!2269369 e!3492906)))

(declare-fun c!998162 () Bool)

(declare-fun e!3492908 () Bool)

(assert (=> d!1791192 (= c!998162 e!3492908)))

(declare-fun res!2398134 () Bool)

(assert (=> d!1791192 (=> (not res!2398134) (not e!3492908))))

(assert (=> d!1791192 (= res!2398134 ((_ is Cons!63170) (unfocusZipperList!1093 zl!343)))))

(declare-fun lambda!305596 () Int)

(declare-fun forall!14813 (List!63294 Int) Bool)

(assert (=> d!1791192 (forall!14813 (unfocusZipperList!1093 zl!343) lambda!305596)))

(assert (=> d!1791192 (= (generalisedUnion!1528 (unfocusZipperList!1093 zl!343)) lt!2269369)))

(declare-fun b!5674517 () Bool)

(assert (=> b!5674517 (= e!3492908 (isEmpty!35017 (t!376602 (unfocusZipperList!1093 zl!343))))))

(declare-fun b!5674518 () Bool)

(declare-fun head!12042 (List!63294) Regex!15665)

(assert (=> b!5674518 (= e!3492910 (= lt!2269369 (head!12042 (unfocusZipperList!1093 zl!343))))))

(declare-fun b!5674519 () Bool)

(declare-fun isUnion!629 (Regex!15665) Bool)

(assert (=> b!5674519 (= e!3492910 (isUnion!629 lt!2269369))))

(declare-fun b!5674520 () Bool)

(declare-fun isEmptyLang!1199 (Regex!15665) Bool)

(assert (=> b!5674520 (= e!3492905 (isEmptyLang!1199 lt!2269369))))

(assert (= (and d!1791192 res!2398134) b!5674517))

(assert (= (and d!1791192 c!998162) b!5674511))

(assert (= (and d!1791192 (not c!998162)) b!5674516))

(assert (= (and b!5674516 c!998163) b!5674513))

(assert (= (and b!5674516 (not c!998163)) b!5674512))

(assert (= (and d!1791192 res!2398133) b!5674514))

(assert (= (and b!5674514 c!998165) b!5674520))

(assert (= (and b!5674514 (not c!998165)) b!5674515))

(assert (= (and b!5674515 c!998164) b!5674518))

(assert (= (and b!5674515 (not c!998164)) b!5674519))

(declare-fun m!6635478 () Bool)

(assert (=> b!5674513 m!6635478))

(declare-fun m!6635480 () Bool)

(assert (=> b!5674519 m!6635480))

(assert (=> b!5674515 m!6635238))

(declare-fun m!6635482 () Bool)

(assert (=> b!5674515 m!6635482))

(assert (=> b!5674515 m!6635482))

(declare-fun m!6635484 () Bool)

(assert (=> b!5674515 m!6635484))

(declare-fun m!6635486 () Bool)

(assert (=> d!1791192 m!6635486))

(assert (=> d!1791192 m!6635238))

(declare-fun m!6635488 () Bool)

(assert (=> d!1791192 m!6635488))

(assert (=> b!5674514 m!6635238))

(declare-fun m!6635490 () Bool)

(assert (=> b!5674514 m!6635490))

(declare-fun m!6635492 () Bool)

(assert (=> b!5674517 m!6635492))

(assert (=> b!5674518 m!6635238))

(declare-fun m!6635494 () Bool)

(assert (=> b!5674518 m!6635494))

(declare-fun m!6635496 () Bool)

(assert (=> b!5674520 m!6635496))

(assert (=> b!5674312 d!1791192))

(declare-fun bs!1322846 () Bool)

(declare-fun d!1791200 () Bool)

(assert (= bs!1322846 (and d!1791200 d!1791192)))

(declare-fun lambda!305605 () Int)

(assert (=> bs!1322846 (= lambda!305605 lambda!305596)))

(declare-fun lt!2269380 () List!63294)

(assert (=> d!1791200 (forall!14813 lt!2269380 lambda!305605)))

(declare-fun e!3492917 () List!63294)

(assert (=> d!1791200 (= lt!2269380 e!3492917)))

(declare-fun c!998170 () Bool)

(assert (=> d!1791200 (= c!998170 ((_ is Cons!63172) zl!343))))

(assert (=> d!1791200 (= (unfocusZipperList!1093 zl!343) lt!2269380)))

(declare-fun b!5674533 () Bool)

(assert (=> b!5674533 (= e!3492917 (Cons!63170 (generalisedConcat!1280 (exprs!5549 (h!69620 zl!343))) (unfocusZipperList!1093 (t!376604 zl!343))))))

(declare-fun b!5674534 () Bool)

(assert (=> b!5674534 (= e!3492917 Nil!63170)))

(assert (= (and d!1791200 c!998170) b!5674533))

(assert (= (and d!1791200 (not c!998170)) b!5674534))

(declare-fun m!6635522 () Bool)

(assert (=> d!1791200 m!6635522))

(assert (=> b!5674533 m!6635372))

(declare-fun m!6635524 () Bool)

(assert (=> b!5674533 m!6635524))

(assert (=> b!5674312 d!1791200))

(declare-fun e!3492938 () Bool)

(declare-fun d!1791206 () Bool)

(assert (=> d!1791206 (= (matchZipper!1803 ((_ map or) lt!2269316 lt!2269314) (t!376603 s!2326)) e!3492938)))

(declare-fun res!2398155 () Bool)

(assert (=> d!1791206 (=> res!2398155 e!3492938)))

(assert (=> d!1791206 (= res!2398155 (matchZipper!1803 lt!2269316 (t!376603 s!2326)))))

(declare-fun lt!2269383 () Unit!156192)

(declare-fun choose!42912 ((InoxSet Context!10098) (InoxSet Context!10098) List!63295) Unit!156192)

(assert (=> d!1791206 (= lt!2269383 (choose!42912 lt!2269316 lt!2269314 (t!376603 s!2326)))))

(assert (=> d!1791206 (= (lemmaZipperConcatMatchesSameAsBothZippers!690 lt!2269316 lt!2269314 (t!376603 s!2326)) lt!2269383)))

(declare-fun b!5674569 () Bool)

(assert (=> b!5674569 (= e!3492938 (matchZipper!1803 lt!2269314 (t!376603 s!2326)))))

(assert (= (and d!1791206 (not res!2398155)) b!5674569))

(assert (=> d!1791206 m!6635376))

(assert (=> d!1791206 m!6635370))

(declare-fun m!6635526 () Bool)

(assert (=> d!1791206 m!6635526))

(assert (=> b!5674569 m!6635268))

(assert (=> b!5674291 d!1791206))

(declare-fun d!1791208 () Bool)

(declare-fun c!998188 () Bool)

(declare-fun isEmpty!35020 (List!63295) Bool)

(assert (=> d!1791208 (= c!998188 (isEmpty!35020 (t!376603 s!2326)))))

(declare-fun e!3492955 () Bool)

(assert (=> d!1791208 (= (matchZipper!1803 lt!2269316 (t!376603 s!2326)) e!3492955)))

(declare-fun b!5674599 () Bool)

(declare-fun nullableZipper!1631 ((InoxSet Context!10098)) Bool)

(assert (=> b!5674599 (= e!3492955 (nullableZipper!1631 lt!2269316))))

(declare-fun b!5674600 () Bool)

(declare-fun head!12043 (List!63295) C!31600)

(declare-fun tail!11138 (List!63295) List!63295)

(assert (=> b!5674600 (= e!3492955 (matchZipper!1803 (derivationStepZipper!1750 lt!2269316 (head!12043 (t!376603 s!2326))) (tail!11138 (t!376603 s!2326))))))

(assert (= (and d!1791208 c!998188) b!5674599))

(assert (= (and d!1791208 (not c!998188)) b!5674600))

(declare-fun m!6635540 () Bool)

(assert (=> d!1791208 m!6635540))

(declare-fun m!6635542 () Bool)

(assert (=> b!5674599 m!6635542))

(declare-fun m!6635544 () Bool)

(assert (=> b!5674600 m!6635544))

(assert (=> b!5674600 m!6635544))

(declare-fun m!6635546 () Bool)

(assert (=> b!5674600 m!6635546))

(declare-fun m!6635548 () Bool)

(assert (=> b!5674600 m!6635548))

(assert (=> b!5674600 m!6635546))

(assert (=> b!5674600 m!6635548))

(declare-fun m!6635550 () Bool)

(assert (=> b!5674600 m!6635550))

(assert (=> b!5674291 d!1791208))

(declare-fun d!1791214 () Bool)

(declare-fun c!998189 () Bool)

(assert (=> d!1791214 (= c!998189 (isEmpty!35020 (t!376603 s!2326)))))

(declare-fun e!3492956 () Bool)

(assert (=> d!1791214 (= (matchZipper!1803 ((_ map or) lt!2269316 lt!2269314) (t!376603 s!2326)) e!3492956)))

(declare-fun b!5674601 () Bool)

(assert (=> b!5674601 (= e!3492956 (nullableZipper!1631 ((_ map or) lt!2269316 lt!2269314)))))

(declare-fun b!5674602 () Bool)

(assert (=> b!5674602 (= e!3492956 (matchZipper!1803 (derivationStepZipper!1750 ((_ map or) lt!2269316 lt!2269314) (head!12043 (t!376603 s!2326))) (tail!11138 (t!376603 s!2326))))))

(assert (= (and d!1791214 c!998189) b!5674601))

(assert (= (and d!1791214 (not c!998189)) b!5674602))

(assert (=> d!1791214 m!6635540))

(declare-fun m!6635552 () Bool)

(assert (=> b!5674601 m!6635552))

(assert (=> b!5674602 m!6635544))

(assert (=> b!5674602 m!6635544))

(declare-fun m!6635554 () Bool)

(assert (=> b!5674602 m!6635554))

(assert (=> b!5674602 m!6635548))

(assert (=> b!5674602 m!6635554))

(assert (=> b!5674602 m!6635548))

(declare-fun m!6635556 () Bool)

(assert (=> b!5674602 m!6635556))

(assert (=> b!5674291 d!1791214))

(declare-fun bs!1322853 () Bool)

(declare-fun d!1791216 () Bool)

(assert (= bs!1322853 (and d!1791216 d!1791192)))

(declare-fun lambda!305614 () Int)

(assert (=> bs!1322853 (= lambda!305614 lambda!305596)))

(declare-fun bs!1322854 () Bool)

(assert (= bs!1322854 (and d!1791216 d!1791200)))

(assert (=> bs!1322854 (= lambda!305614 lambda!305605)))

(assert (=> d!1791216 (= (inv!82409 (h!69620 zl!343)) (forall!14813 (exprs!5549 (h!69620 zl!343)) lambda!305614))))

(declare-fun bs!1322855 () Bool)

(assert (= bs!1322855 d!1791216))

(declare-fun m!6635560 () Bool)

(assert (=> bs!1322855 m!6635560))

(assert (=> b!5674296 d!1791216))

(declare-fun d!1791222 () Bool)

(assert (=> d!1791222 (= (isEmpty!35017 (t!376602 (exprs!5549 (h!69620 zl!343)))) ((_ is Nil!63170) (t!376602 (exprs!5549 (h!69620 zl!343)))))))

(assert (=> b!5674295 d!1791222))

(declare-fun b!5674657 () Bool)

(declare-fun res!2398192 () Bool)

(declare-fun e!3492986 () Bool)

(assert (=> b!5674657 (=> (not res!2398192) (not e!3492986))))

(declare-fun lt!2269407 () Option!15674)

(declare-fun get!21764 (Option!15674) tuple2!65524)

(assert (=> b!5674657 (= res!2398192 (matchR!7850 (regOne!31842 r!7292) (_1!36065 (get!21764 lt!2269407))))))

(declare-fun b!5674659 () Bool)

(declare-fun e!3492990 () Option!15674)

(assert (=> b!5674659 (= e!3492990 None!15673)))

(declare-fun b!5674660 () Bool)

(declare-fun res!2398194 () Bool)

(assert (=> b!5674660 (=> (not res!2398194) (not e!3492986))))

(assert (=> b!5674660 (= res!2398194 (matchR!7850 (regTwo!31842 r!7292) (_2!36065 (get!21764 lt!2269407))))))

(declare-fun b!5674661 () Bool)

(declare-fun e!3492987 () Option!15674)

(assert (=> b!5674661 (= e!3492987 (Some!15673 (tuple2!65525 Nil!63171 s!2326)))))

(declare-fun b!5674662 () Bool)

(declare-fun lt!2269408 () Unit!156192)

(declare-fun lt!2269409 () Unit!156192)

(assert (=> b!5674662 (= lt!2269408 lt!2269409)))

(declare-fun ++!13864 (List!63295 List!63295) List!63295)

(assert (=> b!5674662 (= (++!13864 (++!13864 Nil!63171 (Cons!63171 (h!69619 s!2326) Nil!63171)) (t!376603 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2033 (List!63295 C!31600 List!63295 List!63295) Unit!156192)

(assert (=> b!5674662 (= lt!2269409 (lemmaMoveElementToOtherListKeepsConcatEq!2033 Nil!63171 (h!69619 s!2326) (t!376603 s!2326) s!2326))))

(assert (=> b!5674662 (= e!3492990 (findConcatSeparation!2088 (regOne!31842 r!7292) (regTwo!31842 r!7292) (++!13864 Nil!63171 (Cons!63171 (h!69619 s!2326) Nil!63171)) (t!376603 s!2326) s!2326))))

(declare-fun b!5674663 () Bool)

(declare-fun e!3492988 () Bool)

(assert (=> b!5674663 (= e!3492988 (matchR!7850 (regTwo!31842 r!7292) s!2326))))

(declare-fun d!1791224 () Bool)

(declare-fun e!3492989 () Bool)

(assert (=> d!1791224 e!3492989))

(declare-fun res!2398193 () Bool)

(assert (=> d!1791224 (=> res!2398193 e!3492989)))

(assert (=> d!1791224 (= res!2398193 e!3492986)))

(declare-fun res!2398195 () Bool)

(assert (=> d!1791224 (=> (not res!2398195) (not e!3492986))))

(assert (=> d!1791224 (= res!2398195 (isDefined!12377 lt!2269407))))

(assert (=> d!1791224 (= lt!2269407 e!3492987)))

(declare-fun c!998207 () Bool)

(assert (=> d!1791224 (= c!998207 e!3492988)))

(declare-fun res!2398191 () Bool)

(assert (=> d!1791224 (=> (not res!2398191) (not e!3492988))))

(assert (=> d!1791224 (= res!2398191 (matchR!7850 (regOne!31842 r!7292) Nil!63171))))

(assert (=> d!1791224 (validRegex!7401 (regOne!31842 r!7292))))

(assert (=> d!1791224 (= (findConcatSeparation!2088 (regOne!31842 r!7292) (regTwo!31842 r!7292) Nil!63171 s!2326 s!2326) lt!2269407)))

(declare-fun b!5674658 () Bool)

(assert (=> b!5674658 (= e!3492986 (= (++!13864 (_1!36065 (get!21764 lt!2269407)) (_2!36065 (get!21764 lt!2269407))) s!2326))))

(declare-fun b!5674664 () Bool)

(assert (=> b!5674664 (= e!3492989 (not (isDefined!12377 lt!2269407)))))

(declare-fun b!5674665 () Bool)

(assert (=> b!5674665 (= e!3492987 e!3492990)))

(declare-fun c!998206 () Bool)

(assert (=> b!5674665 (= c!998206 ((_ is Nil!63171) s!2326))))

(assert (= (and d!1791224 res!2398191) b!5674663))

(assert (= (and d!1791224 c!998207) b!5674661))

(assert (= (and d!1791224 (not c!998207)) b!5674665))

(assert (= (and b!5674665 c!998206) b!5674659))

(assert (= (and b!5674665 (not c!998206)) b!5674662))

(assert (= (and d!1791224 res!2398195) b!5674657))

(assert (= (and b!5674657 res!2398192) b!5674660))

(assert (= (and b!5674660 res!2398194) b!5674658))

(assert (= (and d!1791224 (not res!2398193)) b!5674664))

(declare-fun m!6635614 () Bool)

(assert (=> b!5674658 m!6635614))

(declare-fun m!6635616 () Bool)

(assert (=> b!5674658 m!6635616))

(declare-fun m!6635618 () Bool)

(assert (=> b!5674663 m!6635618))

(declare-fun m!6635620 () Bool)

(assert (=> d!1791224 m!6635620))

(declare-fun m!6635622 () Bool)

(assert (=> d!1791224 m!6635622))

(declare-fun m!6635624 () Bool)

(assert (=> d!1791224 m!6635624))

(assert (=> b!5674657 m!6635614))

(declare-fun m!6635626 () Bool)

(assert (=> b!5674657 m!6635626))

(declare-fun m!6635628 () Bool)

(assert (=> b!5674662 m!6635628))

(assert (=> b!5674662 m!6635628))

(declare-fun m!6635630 () Bool)

(assert (=> b!5674662 m!6635630))

(declare-fun m!6635632 () Bool)

(assert (=> b!5674662 m!6635632))

(assert (=> b!5674662 m!6635628))

(declare-fun m!6635634 () Bool)

(assert (=> b!5674662 m!6635634))

(assert (=> b!5674660 m!6635614))

(declare-fun m!6635636 () Bool)

(assert (=> b!5674660 m!6635636))

(assert (=> b!5674664 m!6635620))

(assert (=> b!5674315 d!1791224))

(declare-fun d!1791244 () Bool)

(declare-fun choose!42914 (Int) Bool)

(assert (=> d!1791244 (= (Exists!2765 lambda!305576) (choose!42914 lambda!305576))))

(declare-fun bs!1322875 () Bool)

(assert (= bs!1322875 d!1791244))

(declare-fun m!6635638 () Bool)

(assert (=> bs!1322875 m!6635638))

(assert (=> b!5674315 d!1791244))

(declare-fun bs!1322890 () Bool)

(declare-fun d!1791246 () Bool)

(assert (= bs!1322890 (and d!1791246 b!5674290)))

(declare-fun lambda!305625 () Int)

(assert (=> bs!1322890 (= (and (= (regOne!31842 r!7292) (regOne!31842 (regOne!31842 r!7292))) (= (regTwo!31842 r!7292) lt!2269332)) (= lambda!305625 lambda!305578))))

(assert (=> bs!1322890 (not (= lambda!305625 lambda!305581))))

(declare-fun bs!1322891 () Bool)

(assert (= bs!1322891 (and d!1791246 b!5674315)))

(assert (=> bs!1322891 (= lambda!305625 lambda!305575)))

(assert (=> bs!1322891 (not (= lambda!305625 lambda!305576))))

(assert (=> bs!1322890 (not (= lambda!305625 lambda!305579))))

(assert (=> bs!1322890 (= (and (= (regOne!31842 r!7292) (regTwo!31842 (regOne!31842 r!7292))) (= (regTwo!31842 r!7292) lt!2269319)) (= lambda!305625 lambda!305580))))

(assert (=> d!1791246 true))

(assert (=> d!1791246 true))

(assert (=> d!1791246 true))

(assert (=> d!1791246 (= (isDefined!12377 (findConcatSeparation!2088 (regOne!31842 r!7292) (regTwo!31842 r!7292) Nil!63171 s!2326 s!2326)) (Exists!2765 lambda!305625))))

(declare-fun lt!2269421 () Unit!156192)

(declare-fun choose!42915 (Regex!15665 Regex!15665 List!63295) Unit!156192)

(assert (=> d!1791246 (= lt!2269421 (choose!42915 (regOne!31842 r!7292) (regTwo!31842 r!7292) s!2326))))

(assert (=> d!1791246 (validRegex!7401 (regOne!31842 r!7292))))

(assert (=> d!1791246 (= (lemmaFindConcatSeparationEquivalentToExists!1852 (regOne!31842 r!7292) (regTwo!31842 r!7292) s!2326) lt!2269421)))

(declare-fun bs!1322892 () Bool)

(assert (= bs!1322892 d!1791246))

(declare-fun m!6635670 () Bool)

(assert (=> bs!1322892 m!6635670))

(assert (=> bs!1322892 m!6635624))

(assert (=> bs!1322892 m!6635252))

(assert (=> bs!1322892 m!6635254))

(assert (=> bs!1322892 m!6635252))

(declare-fun m!6635672 () Bool)

(assert (=> bs!1322892 m!6635672))

(assert (=> b!5674315 d!1791246))

(declare-fun d!1791254 () Bool)

(assert (=> d!1791254 (= (Exists!2765 lambda!305575) (choose!42914 lambda!305575))))

(declare-fun bs!1322893 () Bool)

(assert (= bs!1322893 d!1791254))

(declare-fun m!6635674 () Bool)

(assert (=> bs!1322893 m!6635674))

(assert (=> b!5674315 d!1791254))

(declare-fun bs!1322894 () Bool)

(declare-fun d!1791256 () Bool)

(assert (= bs!1322894 (and d!1791256 b!5674290)))

(declare-fun lambda!305634 () Int)

(assert (=> bs!1322894 (= (and (= (regOne!31842 r!7292) (regOne!31842 (regOne!31842 r!7292))) (= (regTwo!31842 r!7292) lt!2269332)) (= lambda!305634 lambda!305578))))

(assert (=> bs!1322894 (not (= lambda!305634 lambda!305581))))

(declare-fun bs!1322895 () Bool)

(assert (= bs!1322895 (and d!1791256 d!1791246)))

(assert (=> bs!1322895 (= lambda!305634 lambda!305625)))

(declare-fun bs!1322896 () Bool)

(assert (= bs!1322896 (and d!1791256 b!5674315)))

(assert (=> bs!1322896 (= lambda!305634 lambda!305575)))

(assert (=> bs!1322896 (not (= lambda!305634 lambda!305576))))

(assert (=> bs!1322894 (not (= lambda!305634 lambda!305579))))

(assert (=> bs!1322894 (= (and (= (regOne!31842 r!7292) (regTwo!31842 (regOne!31842 r!7292))) (= (regTwo!31842 r!7292) lt!2269319)) (= lambda!305634 lambda!305580))))

(assert (=> d!1791256 true))

(assert (=> d!1791256 true))

(assert (=> d!1791256 true))

(declare-fun lambda!305636 () Int)

(assert (=> bs!1322894 (not (= lambda!305636 lambda!305578))))

(assert (=> bs!1322894 (= (and (= (regOne!31842 r!7292) (regTwo!31842 (regOne!31842 r!7292))) (= (regTwo!31842 r!7292) lt!2269319)) (= lambda!305636 lambda!305581))))

(assert (=> bs!1322895 (not (= lambda!305636 lambda!305625))))

(assert (=> bs!1322896 (not (= lambda!305636 lambda!305575))))

(declare-fun bs!1322905 () Bool)

(assert (= bs!1322905 d!1791256))

(assert (=> bs!1322905 (not (= lambda!305636 lambda!305634))))

(assert (=> bs!1322896 (= lambda!305636 lambda!305576)))

(assert (=> bs!1322894 (= (and (= (regOne!31842 r!7292) (regOne!31842 (regOne!31842 r!7292))) (= (regTwo!31842 r!7292) lt!2269332)) (= lambda!305636 lambda!305579))))

(assert (=> bs!1322894 (not (= lambda!305636 lambda!305580))))

(assert (=> d!1791256 true))

(assert (=> d!1791256 true))

(assert (=> d!1791256 true))

(assert (=> d!1791256 (= (Exists!2765 lambda!305634) (Exists!2765 lambda!305636))))

(declare-fun lt!2269427 () Unit!156192)

(declare-fun choose!42917 (Regex!15665 Regex!15665 List!63295) Unit!156192)

(assert (=> d!1791256 (= lt!2269427 (choose!42917 (regOne!31842 r!7292) (regTwo!31842 r!7292) s!2326))))

(assert (=> d!1791256 (validRegex!7401 (regOne!31842 r!7292))))

(assert (=> d!1791256 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1394 (regOne!31842 r!7292) (regTwo!31842 r!7292) s!2326) lt!2269427)))

(declare-fun m!6635684 () Bool)

(assert (=> bs!1322905 m!6635684))

(declare-fun m!6635686 () Bool)

(assert (=> bs!1322905 m!6635686))

(declare-fun m!6635688 () Bool)

(assert (=> bs!1322905 m!6635688))

(assert (=> bs!1322905 m!6635624))

(assert (=> b!5674315 d!1791256))

(declare-fun d!1791260 () Bool)

(declare-fun isEmpty!35021 (Option!15674) Bool)

(assert (=> d!1791260 (= (isDefined!12377 (findConcatSeparation!2088 (regOne!31842 r!7292) (regTwo!31842 r!7292) Nil!63171 s!2326 s!2326)) (not (isEmpty!35021 (findConcatSeparation!2088 (regOne!31842 r!7292) (regTwo!31842 r!7292) Nil!63171 s!2326 s!2326))))))

(declare-fun bs!1322906 () Bool)

(assert (= bs!1322906 d!1791260))

(assert (=> bs!1322906 m!6635252))

(declare-fun m!6635690 () Bool)

(assert (=> bs!1322906 m!6635690))

(assert (=> b!5674315 d!1791260))

(declare-fun b!5674777 () Bool)

(declare-fun e!3493061 () Bool)

(declare-fun call!430538 () Bool)

(assert (=> b!5674777 (= e!3493061 call!430538)))

(declare-fun bm!430533 () Bool)

(declare-fun c!998232 () Bool)

(declare-fun c!998233 () Bool)

(assert (=> bm!430533 (= call!430538 (validRegex!7401 (ite c!998233 (reg!15994 r!7292) (ite c!998232 (regTwo!31843 r!7292) (regTwo!31842 r!7292)))))))

(declare-fun b!5674778 () Bool)

(declare-fun e!3493056 () Bool)

(declare-fun call!430539 () Bool)

(assert (=> b!5674778 (= e!3493056 call!430539)))

(declare-fun b!5674779 () Bool)

(declare-fun e!3493058 () Bool)

(declare-fun e!3493059 () Bool)

(assert (=> b!5674779 (= e!3493058 e!3493059)))

(assert (=> b!5674779 (= c!998233 ((_ is Star!15665) r!7292))))

(declare-fun b!5674780 () Bool)

(declare-fun e!3493062 () Bool)

(declare-fun e!3493060 () Bool)

(assert (=> b!5674780 (= e!3493062 e!3493060)))

(declare-fun res!2398263 () Bool)

(assert (=> b!5674780 (=> (not res!2398263) (not e!3493060))))

(declare-fun call!430540 () Bool)

(assert (=> b!5674780 (= res!2398263 call!430540)))

(declare-fun bm!430534 () Bool)

(assert (=> bm!430534 (= call!430540 (validRegex!7401 (ite c!998232 (regOne!31843 r!7292) (regOne!31842 r!7292))))))

(declare-fun bm!430535 () Bool)

(assert (=> bm!430535 (= call!430539 call!430538)))

(declare-fun d!1791262 () Bool)

(declare-fun res!2398261 () Bool)

(assert (=> d!1791262 (=> res!2398261 e!3493058)))

(assert (=> d!1791262 (= res!2398261 ((_ is ElementMatch!15665) r!7292))))

(assert (=> d!1791262 (= (validRegex!7401 r!7292) e!3493058)))

(declare-fun b!5674781 () Bool)

(declare-fun res!2398260 () Bool)

(assert (=> b!5674781 (=> (not res!2398260) (not e!3493056))))

(assert (=> b!5674781 (= res!2398260 call!430540)))

(declare-fun e!3493057 () Bool)

(assert (=> b!5674781 (= e!3493057 e!3493056)))

(declare-fun b!5674782 () Bool)

(assert (=> b!5674782 (= e!3493059 e!3493057)))

(assert (=> b!5674782 (= c!998232 ((_ is Union!15665) r!7292))))

(declare-fun b!5674783 () Bool)

(assert (=> b!5674783 (= e!3493060 call!430539)))

(declare-fun b!5674784 () Bool)

(assert (=> b!5674784 (= e!3493059 e!3493061)))

(declare-fun res!2398262 () Bool)

(assert (=> b!5674784 (= res!2398262 (not (nullable!5697 (reg!15994 r!7292))))))

(assert (=> b!5674784 (=> (not res!2398262) (not e!3493061))))

(declare-fun b!5674785 () Bool)

(declare-fun res!2398259 () Bool)

(assert (=> b!5674785 (=> res!2398259 e!3493062)))

(assert (=> b!5674785 (= res!2398259 (not ((_ is Concat!24510) r!7292)))))

(assert (=> b!5674785 (= e!3493057 e!3493062)))

(assert (= (and d!1791262 (not res!2398261)) b!5674779))

(assert (= (and b!5674779 c!998233) b!5674784))

(assert (= (and b!5674779 (not c!998233)) b!5674782))

(assert (= (and b!5674784 res!2398262) b!5674777))

(assert (= (and b!5674782 c!998232) b!5674781))

(assert (= (and b!5674782 (not c!998232)) b!5674785))

(assert (= (and b!5674781 res!2398260) b!5674778))

(assert (= (and b!5674785 (not res!2398259)) b!5674780))

(assert (= (and b!5674780 res!2398263) b!5674783))

(assert (= (or b!5674778 b!5674783) bm!430535))

(assert (= (or b!5674781 b!5674780) bm!430534))

(assert (= (or b!5674777 bm!430535) bm!430533))

(declare-fun m!6635744 () Bool)

(assert (=> bm!430533 m!6635744))

(declare-fun m!6635746 () Bool)

(assert (=> bm!430534 m!6635746))

(declare-fun m!6635748 () Bool)

(assert (=> b!5674784 m!6635748))

(assert (=> start!585780 d!1791262))

(declare-fun d!1791278 () Bool)

(declare-fun c!998234 () Bool)

(assert (=> d!1791278 (= c!998234 (isEmpty!35020 (t!376603 s!2326)))))

(declare-fun e!3493063 () Bool)

(assert (=> d!1791278 (= (matchZipper!1803 lt!2269333 (t!376603 s!2326)) e!3493063)))

(declare-fun b!5674786 () Bool)

(assert (=> b!5674786 (= e!3493063 (nullableZipper!1631 lt!2269333))))

(declare-fun b!5674787 () Bool)

(assert (=> b!5674787 (= e!3493063 (matchZipper!1803 (derivationStepZipper!1750 lt!2269333 (head!12043 (t!376603 s!2326))) (tail!11138 (t!376603 s!2326))))))

(assert (= (and d!1791278 c!998234) b!5674786))

(assert (= (and d!1791278 (not c!998234)) b!5674787))

(assert (=> d!1791278 m!6635540))

(declare-fun m!6635750 () Bool)

(assert (=> b!5674786 m!6635750))

(assert (=> b!5674787 m!6635544))

(assert (=> b!5674787 m!6635544))

(declare-fun m!6635752 () Bool)

(assert (=> b!5674787 m!6635752))

(assert (=> b!5674787 m!6635548))

(assert (=> b!5674787 m!6635752))

(assert (=> b!5674787 m!6635548))

(declare-fun m!6635754 () Bool)

(assert (=> b!5674787 m!6635754))

(assert (=> b!5674314 d!1791278))

(assert (=> b!5674314 d!1791208))

(declare-fun bs!1322954 () Bool)

(declare-fun b!5674852 () Bool)

(assert (= bs!1322954 (and b!5674852 b!5674290)))

(declare-fun lambda!305648 () Int)

(assert (=> bs!1322954 (not (= lambda!305648 lambda!305578))))

(assert (=> bs!1322954 (not (= lambda!305648 lambda!305581))))

(declare-fun bs!1322955 () Bool)

(assert (= bs!1322955 (and b!5674852 d!1791246)))

(assert (=> bs!1322955 (not (= lambda!305648 lambda!305625))))

(declare-fun bs!1322956 () Bool)

(assert (= bs!1322956 (and b!5674852 b!5674315)))

(assert (=> bs!1322956 (not (= lambda!305648 lambda!305575))))

(declare-fun bs!1322957 () Bool)

(assert (= bs!1322957 (and b!5674852 d!1791256)))

(assert (=> bs!1322957 (not (= lambda!305648 lambda!305636))))

(assert (=> bs!1322957 (not (= lambda!305648 lambda!305634))))

(assert (=> bs!1322956 (not (= lambda!305648 lambda!305576))))

(assert (=> bs!1322954 (not (= lambda!305648 lambda!305579))))

(assert (=> bs!1322954 (not (= lambda!305648 lambda!305580))))

(assert (=> b!5674852 true))

(assert (=> b!5674852 true))

(declare-fun bs!1322958 () Bool)

(declare-fun b!5674853 () Bool)

(assert (= bs!1322958 (and b!5674853 b!5674290)))

(declare-fun lambda!305649 () Int)

(assert (=> bs!1322958 (= (and (= (regOne!31842 r!7292) (regTwo!31842 (regOne!31842 r!7292))) (= (regTwo!31842 r!7292) lt!2269319)) (= lambda!305649 lambda!305581))))

(declare-fun bs!1322959 () Bool)

(assert (= bs!1322959 (and b!5674853 d!1791246)))

(assert (=> bs!1322959 (not (= lambda!305649 lambda!305625))))

(declare-fun bs!1322960 () Bool)

(assert (= bs!1322960 (and b!5674853 b!5674315)))

(assert (=> bs!1322960 (not (= lambda!305649 lambda!305575))))

(declare-fun bs!1322961 () Bool)

(assert (= bs!1322961 (and b!5674853 d!1791256)))

(assert (=> bs!1322961 (= lambda!305649 lambda!305636)))

(assert (=> bs!1322958 (not (= lambda!305649 lambda!305578))))

(declare-fun bs!1322962 () Bool)

(assert (= bs!1322962 (and b!5674853 b!5674852)))

(assert (=> bs!1322962 (not (= lambda!305649 lambda!305648))))

(assert (=> bs!1322961 (not (= lambda!305649 lambda!305634))))

(assert (=> bs!1322960 (= lambda!305649 lambda!305576)))

(assert (=> bs!1322958 (= (and (= (regOne!31842 r!7292) (regOne!31842 (regOne!31842 r!7292))) (= (regTwo!31842 r!7292) lt!2269332)) (= lambda!305649 lambda!305579))))

(assert (=> bs!1322958 (not (= lambda!305649 lambda!305580))))

(assert (=> b!5674853 true))

(assert (=> b!5674853 true))

(declare-fun b!5674843 () Bool)

(declare-fun e!3493099 () Bool)

(declare-fun e!3493098 () Bool)

(assert (=> b!5674843 (= e!3493099 e!3493098)))

(declare-fun res!2398287 () Bool)

(assert (=> b!5674843 (= res!2398287 (matchRSpec!2768 (regOne!31843 r!7292) s!2326))))

(assert (=> b!5674843 (=> res!2398287 e!3493098)))

(declare-fun b!5674844 () Bool)

(declare-fun c!998253 () Bool)

(assert (=> b!5674844 (= c!998253 ((_ is Union!15665) r!7292))))

(declare-fun e!3493096 () Bool)

(assert (=> b!5674844 (= e!3493096 e!3493099)))

(declare-fun b!5674845 () Bool)

(declare-fun e!3493097 () Bool)

(declare-fun e!3493100 () Bool)

(assert (=> b!5674845 (= e!3493097 e!3493100)))

(declare-fun res!2398286 () Bool)

(assert (=> b!5674845 (= res!2398286 (not ((_ is EmptyLang!15665) r!7292)))))

(assert (=> b!5674845 (=> (not res!2398286) (not e!3493100))))

(declare-fun b!5674846 () Bool)

(declare-fun c!998254 () Bool)

(assert (=> b!5674846 (= c!998254 ((_ is ElementMatch!15665) r!7292))))

(assert (=> b!5674846 (= e!3493100 e!3493096)))

(declare-fun b!5674847 () Bool)

(assert (=> b!5674847 (= e!3493098 (matchRSpec!2768 (regTwo!31843 r!7292) s!2326))))

(declare-fun c!998255 () Bool)

(declare-fun call!430548 () Bool)

(declare-fun bm!430542 () Bool)

(assert (=> bm!430542 (= call!430548 (Exists!2765 (ite c!998255 lambda!305648 lambda!305649)))))

(declare-fun b!5674849 () Bool)

(declare-fun e!3493102 () Bool)

(assert (=> b!5674849 (= e!3493099 e!3493102)))

(assert (=> b!5674849 (= c!998255 ((_ is Star!15665) r!7292))))

(declare-fun b!5674850 () Bool)

(assert (=> b!5674850 (= e!3493096 (= s!2326 (Cons!63171 (c!998089 r!7292) Nil!63171)))))

(declare-fun bm!430543 () Bool)

(declare-fun call!430547 () Bool)

(assert (=> bm!430543 (= call!430547 (isEmpty!35020 s!2326))))

(declare-fun b!5674851 () Bool)

(assert (=> b!5674851 (= e!3493097 call!430547)))

(declare-fun e!3493101 () Bool)

(assert (=> b!5674852 (= e!3493101 call!430548)))

(assert (=> b!5674853 (= e!3493102 call!430548)))

(declare-fun b!5674848 () Bool)

(declare-fun res!2398285 () Bool)

(assert (=> b!5674848 (=> res!2398285 e!3493101)))

(assert (=> b!5674848 (= res!2398285 call!430547)))

(assert (=> b!5674848 (= e!3493102 e!3493101)))

(declare-fun d!1791280 () Bool)

(declare-fun c!998252 () Bool)

(assert (=> d!1791280 (= c!998252 ((_ is EmptyExpr!15665) r!7292))))

(assert (=> d!1791280 (= (matchRSpec!2768 r!7292 s!2326) e!3493097)))

(assert (= (and d!1791280 c!998252) b!5674851))

(assert (= (and d!1791280 (not c!998252)) b!5674845))

(assert (= (and b!5674845 res!2398286) b!5674846))

(assert (= (and b!5674846 c!998254) b!5674850))

(assert (= (and b!5674846 (not c!998254)) b!5674844))

(assert (= (and b!5674844 c!998253) b!5674843))

(assert (= (and b!5674844 (not c!998253)) b!5674849))

(assert (= (and b!5674843 (not res!2398287)) b!5674847))

(assert (= (and b!5674849 c!998255) b!5674848))

(assert (= (and b!5674849 (not c!998255)) b!5674853))

(assert (= (and b!5674848 (not res!2398285)) b!5674852))

(assert (= (or b!5674852 b!5674853) bm!430542))

(assert (= (or b!5674851 b!5674848) bm!430543))

(declare-fun m!6635816 () Bool)

(assert (=> b!5674843 m!6635816))

(declare-fun m!6635818 () Bool)

(assert (=> b!5674847 m!6635818))

(declare-fun m!6635820 () Bool)

(assert (=> bm!430542 m!6635820))

(declare-fun m!6635822 () Bool)

(assert (=> bm!430543 m!6635822))

(assert (=> b!5674294 d!1791280))

(declare-fun bm!430547 () Bool)

(declare-fun call!430552 () Bool)

(assert (=> bm!430547 (= call!430552 (isEmpty!35020 s!2326))))

(declare-fun b!5674932 () Bool)

(declare-fun e!3493152 () Bool)

(assert (=> b!5674932 (= e!3493152 (not (= (head!12043 s!2326) (c!998089 r!7292))))))

(declare-fun b!5674933 () Bool)

(declare-fun e!3493146 () Bool)

(declare-fun derivativeStep!4484 (Regex!15665 C!31600) Regex!15665)

(assert (=> b!5674933 (= e!3493146 (matchR!7850 (derivativeStep!4484 r!7292 (head!12043 s!2326)) (tail!11138 s!2326)))))

(declare-fun b!5674934 () Bool)

(declare-fun res!2398323 () Bool)

(declare-fun e!3493150 () Bool)

(assert (=> b!5674934 (=> res!2398323 e!3493150)))

(assert (=> b!5674934 (= res!2398323 (not ((_ is ElementMatch!15665) r!7292)))))

(declare-fun e!3493147 () Bool)

(assert (=> b!5674934 (= e!3493147 e!3493150)))

(declare-fun b!5674935 () Bool)

(declare-fun res!2398328 () Bool)

(assert (=> b!5674935 (=> res!2398328 e!3493152)))

(assert (=> b!5674935 (= res!2398328 (not (isEmpty!35020 (tail!11138 s!2326))))))

(declare-fun b!5674936 () Bool)

(declare-fun res!2398321 () Bool)

(assert (=> b!5674936 (=> res!2398321 e!3493150)))

(declare-fun e!3493149 () Bool)

(assert (=> b!5674936 (= res!2398321 e!3493149)))

(declare-fun res!2398324 () Bool)

(assert (=> b!5674936 (=> (not res!2398324) (not e!3493149))))

(declare-fun lt!2269446 () Bool)

(assert (=> b!5674936 (= res!2398324 lt!2269446)))

(declare-fun b!5674937 () Bool)

(declare-fun e!3493151 () Bool)

(assert (=> b!5674937 (= e!3493150 e!3493151)))

(declare-fun res!2398326 () Bool)

(assert (=> b!5674937 (=> (not res!2398326) (not e!3493151))))

(assert (=> b!5674937 (= res!2398326 (not lt!2269446))))

(declare-fun b!5674938 () Bool)

(assert (=> b!5674938 (= e!3493147 (not lt!2269446))))

(declare-fun b!5674939 () Bool)

(assert (=> b!5674939 (= e!3493146 (nullable!5697 r!7292))))

(declare-fun b!5674940 () Bool)

(assert (=> b!5674940 (= e!3493149 (= (head!12043 s!2326) (c!998089 r!7292)))))

(declare-fun b!5674941 () Bool)

(assert (=> b!5674941 (= e!3493151 e!3493152)))

(declare-fun res!2398325 () Bool)

(assert (=> b!5674941 (=> res!2398325 e!3493152)))

(assert (=> b!5674941 (= res!2398325 call!430552)))

(declare-fun b!5674942 () Bool)

(declare-fun res!2398327 () Bool)

(assert (=> b!5674942 (=> (not res!2398327) (not e!3493149))))

(assert (=> b!5674942 (= res!2398327 (not call!430552))))

(declare-fun b!5674931 () Bool)

(declare-fun e!3493148 () Bool)

(assert (=> b!5674931 (= e!3493148 e!3493147)))

(declare-fun c!998278 () Bool)

(assert (=> b!5674931 (= c!998278 ((_ is EmptyLang!15665) r!7292))))

(declare-fun d!1791304 () Bool)

(assert (=> d!1791304 e!3493148))

(declare-fun c!998279 () Bool)

(assert (=> d!1791304 (= c!998279 ((_ is EmptyExpr!15665) r!7292))))

(assert (=> d!1791304 (= lt!2269446 e!3493146)))

(declare-fun c!998280 () Bool)

(assert (=> d!1791304 (= c!998280 (isEmpty!35020 s!2326))))

(assert (=> d!1791304 (validRegex!7401 r!7292)))

(assert (=> d!1791304 (= (matchR!7850 r!7292 s!2326) lt!2269446)))

(declare-fun b!5674943 () Bool)

(assert (=> b!5674943 (= e!3493148 (= lt!2269446 call!430552))))

(declare-fun b!5674944 () Bool)

(declare-fun res!2398322 () Bool)

(assert (=> b!5674944 (=> (not res!2398322) (not e!3493149))))

(assert (=> b!5674944 (= res!2398322 (isEmpty!35020 (tail!11138 s!2326)))))

(assert (= (and d!1791304 c!998280) b!5674939))

(assert (= (and d!1791304 (not c!998280)) b!5674933))

(assert (= (and d!1791304 c!998279) b!5674943))

(assert (= (and d!1791304 (not c!998279)) b!5674931))

(assert (= (and b!5674931 c!998278) b!5674938))

(assert (= (and b!5674931 (not c!998278)) b!5674934))

(assert (= (and b!5674934 (not res!2398323)) b!5674936))

(assert (= (and b!5674936 res!2398324) b!5674942))

(assert (= (and b!5674942 res!2398327) b!5674944))

(assert (= (and b!5674944 res!2398322) b!5674940))

(assert (= (and b!5674936 (not res!2398321)) b!5674937))

(assert (= (and b!5674937 res!2398326) b!5674941))

(assert (= (and b!5674941 (not res!2398325)) b!5674935))

(assert (= (and b!5674935 (not res!2398328)) b!5674932))

(assert (= (or b!5674943 b!5674941 b!5674942) bm!430547))

(declare-fun m!6635844 () Bool)

(assert (=> b!5674940 m!6635844))

(declare-fun m!6635846 () Bool)

(assert (=> b!5674935 m!6635846))

(assert (=> b!5674935 m!6635846))

(declare-fun m!6635848 () Bool)

(assert (=> b!5674935 m!6635848))

(assert (=> b!5674933 m!6635844))

(assert (=> b!5674933 m!6635844))

(declare-fun m!6635850 () Bool)

(assert (=> b!5674933 m!6635850))

(assert (=> b!5674933 m!6635846))

(assert (=> b!5674933 m!6635850))

(assert (=> b!5674933 m!6635846))

(declare-fun m!6635852 () Bool)

(assert (=> b!5674933 m!6635852))

(assert (=> bm!430547 m!6635822))

(assert (=> d!1791304 m!6635822))

(assert (=> d!1791304 m!6635244))

(declare-fun m!6635854 () Bool)

(assert (=> b!5674939 m!6635854))

(assert (=> b!5674944 m!6635846))

(assert (=> b!5674944 m!6635846))

(assert (=> b!5674944 m!6635848))

(assert (=> b!5674932 m!6635844))

(assert (=> b!5674294 d!1791304))

(declare-fun d!1791308 () Bool)

(assert (=> d!1791308 (= (matchR!7850 r!7292 s!2326) (matchRSpec!2768 r!7292 s!2326))))

(declare-fun lt!2269453 () Unit!156192)

(declare-fun choose!42920 (Regex!15665 List!63295) Unit!156192)

(assert (=> d!1791308 (= lt!2269453 (choose!42920 r!7292 s!2326))))

(assert (=> d!1791308 (validRegex!7401 r!7292)))

(assert (=> d!1791308 (= (mainMatchTheorem!2768 r!7292 s!2326) lt!2269453)))

(declare-fun bs!1322976 () Bool)

(assert (= bs!1322976 d!1791308))

(assert (=> bs!1322976 m!6635360))

(assert (=> bs!1322976 m!6635358))

(declare-fun m!6635866 () Bool)

(assert (=> bs!1322976 m!6635866))

(assert (=> bs!1322976 m!6635244))

(assert (=> b!5674294 d!1791308))

(declare-fun bs!1322977 () Bool)

(declare-fun d!1791314 () Bool)

(assert (= bs!1322977 (and d!1791314 d!1791192)))

(declare-fun lambda!305656 () Int)

(assert (=> bs!1322977 (= lambda!305656 lambda!305596)))

(declare-fun bs!1322978 () Bool)

(assert (= bs!1322978 (and d!1791314 d!1791200)))

(assert (=> bs!1322978 (= lambda!305656 lambda!305605)))

(declare-fun bs!1322979 () Bool)

(assert (= bs!1322979 (and d!1791314 d!1791216)))

(assert (=> bs!1322979 (= lambda!305656 lambda!305614)))

(assert (=> d!1791314 (= (inv!82409 setElem!37935) (forall!14813 (exprs!5549 setElem!37935) lambda!305656))))

(declare-fun bs!1322980 () Bool)

(assert (= bs!1322980 d!1791314))

(declare-fun m!6635872 () Bool)

(assert (=> bs!1322980 m!6635872))

(assert (=> setNonEmpty!37935 d!1791314))

(declare-fun bs!1323009 () Bool)

(declare-fun d!1791316 () Bool)

(assert (= bs!1323009 (and d!1791316 d!1791192)))

(declare-fun lambda!305661 () Int)

(assert (=> bs!1323009 (= lambda!305661 lambda!305596)))

(declare-fun bs!1323010 () Bool)

(assert (= bs!1323010 (and d!1791316 d!1791200)))

(assert (=> bs!1323010 (= lambda!305661 lambda!305605)))

(declare-fun bs!1323011 () Bool)

(assert (= bs!1323011 (and d!1791316 d!1791216)))

(assert (=> bs!1323011 (= lambda!305661 lambda!305614)))

(declare-fun bs!1323012 () Bool)

(assert (= bs!1323012 (and d!1791316 d!1791314)))

(assert (=> bs!1323012 (= lambda!305661 lambda!305656)))

(declare-fun b!5674996 () Bool)

(declare-fun e!3493184 () Bool)

(declare-fun lt!2269461 () Regex!15665)

(assert (=> b!5674996 (= e!3493184 (= lt!2269461 (head!12042 (exprs!5549 (h!69620 zl!343)))))))

(declare-fun b!5674997 () Bool)

(declare-fun e!3493182 () Regex!15665)

(assert (=> b!5674997 (= e!3493182 (h!69618 (exprs!5549 (h!69620 zl!343))))))

(declare-fun b!5674998 () Bool)

(declare-fun e!3493185 () Bool)

(assert (=> b!5674998 (= e!3493185 (isEmpty!35017 (t!376602 (exprs!5549 (h!69620 zl!343)))))))

(declare-fun b!5674999 () Bool)

(declare-fun e!3493181 () Bool)

(assert (=> b!5674999 (= e!3493181 e!3493184)))

(declare-fun c!998301 () Bool)

(assert (=> b!5674999 (= c!998301 (isEmpty!35017 (tail!11137 (exprs!5549 (h!69620 zl!343)))))))

(declare-fun b!5675000 () Bool)

(declare-fun isEmptyExpr!1189 (Regex!15665) Bool)

(assert (=> b!5675000 (= e!3493181 (isEmptyExpr!1189 lt!2269461))))

(declare-fun b!5675001 () Bool)

(declare-fun e!3493183 () Regex!15665)

(assert (=> b!5675001 (= e!3493183 (Concat!24510 (h!69618 (exprs!5549 (h!69620 zl!343))) (generalisedConcat!1280 (t!376602 (exprs!5549 (h!69620 zl!343))))))))

(declare-fun b!5675002 () Bool)

(assert (=> b!5675002 (= e!3493183 EmptyExpr!15665)))

(declare-fun e!3493186 () Bool)

(assert (=> d!1791316 e!3493186))

(declare-fun res!2398346 () Bool)

(assert (=> d!1791316 (=> (not res!2398346) (not e!3493186))))

(assert (=> d!1791316 (= res!2398346 (validRegex!7401 lt!2269461))))

(assert (=> d!1791316 (= lt!2269461 e!3493182)))

(declare-fun c!998298 () Bool)

(assert (=> d!1791316 (= c!998298 e!3493185)))

(declare-fun res!2398347 () Bool)

(assert (=> d!1791316 (=> (not res!2398347) (not e!3493185))))

(assert (=> d!1791316 (= res!2398347 ((_ is Cons!63170) (exprs!5549 (h!69620 zl!343))))))

(assert (=> d!1791316 (forall!14813 (exprs!5549 (h!69620 zl!343)) lambda!305661)))

(assert (=> d!1791316 (= (generalisedConcat!1280 (exprs!5549 (h!69620 zl!343))) lt!2269461)))

(declare-fun b!5675003 () Bool)

(assert (=> b!5675003 (= e!3493182 e!3493183)))

(declare-fun c!998299 () Bool)

(assert (=> b!5675003 (= c!998299 ((_ is Cons!63170) (exprs!5549 (h!69620 zl!343))))))

(declare-fun b!5675004 () Bool)

(declare-fun isConcat!712 (Regex!15665) Bool)

(assert (=> b!5675004 (= e!3493184 (isConcat!712 lt!2269461))))

(declare-fun b!5675005 () Bool)

(assert (=> b!5675005 (= e!3493186 e!3493181)))

(declare-fun c!998300 () Bool)

(assert (=> b!5675005 (= c!998300 (isEmpty!35017 (exprs!5549 (h!69620 zl!343))))))

(assert (= (and d!1791316 res!2398347) b!5674998))

(assert (= (and d!1791316 c!998298) b!5674997))

(assert (= (and d!1791316 (not c!998298)) b!5675003))

(assert (= (and b!5675003 c!998299) b!5675001))

(assert (= (and b!5675003 (not c!998299)) b!5675002))

(assert (= (and d!1791316 res!2398346) b!5675005))

(assert (= (and b!5675005 c!998300) b!5675000))

(assert (= (and b!5675005 (not c!998300)) b!5674999))

(assert (= (and b!5674999 c!998301) b!5674996))

(assert (= (and b!5674999 (not c!998301)) b!5675004))

(declare-fun m!6635904 () Bool)

(assert (=> b!5674996 m!6635904))

(declare-fun m!6635906 () Bool)

(assert (=> b!5675004 m!6635906))

(assert (=> b!5675001 m!6635332))

(declare-fun m!6635908 () Bool)

(assert (=> b!5674999 m!6635908))

(assert (=> b!5674999 m!6635908))

(declare-fun m!6635910 () Bool)

(assert (=> b!5674999 m!6635910))

(declare-fun m!6635912 () Bool)

(assert (=> b!5675005 m!6635912))

(declare-fun m!6635914 () Bool)

(assert (=> d!1791316 m!6635914))

(declare-fun m!6635916 () Bool)

(assert (=> d!1791316 m!6635916))

(assert (=> b!5674998 m!6635346))

(declare-fun m!6635918 () Bool)

(assert (=> b!5675000 m!6635918))

(assert (=> b!5674287 d!1791316))

(declare-fun d!1791328 () Bool)

(declare-fun e!3493189 () Bool)

(assert (=> d!1791328 e!3493189))

(declare-fun res!2398350 () Bool)

(assert (=> d!1791328 (=> (not res!2398350) (not e!3493189))))

(declare-fun lt!2269464 () List!63296)

(declare-fun noDuplicate!1611 (List!63296) Bool)

(assert (=> d!1791328 (= res!2398350 (noDuplicate!1611 lt!2269464))))

(declare-fun choose!42921 ((InoxSet Context!10098)) List!63296)

(assert (=> d!1791328 (= lt!2269464 (choose!42921 z!1189))))

(assert (=> d!1791328 (= (toList!9449 z!1189) lt!2269464)))

(declare-fun b!5675008 () Bool)

(declare-fun content!11438 (List!63296) (InoxSet Context!10098))

(assert (=> b!5675008 (= e!3493189 (= (content!11438 lt!2269464) z!1189))))

(assert (= (and d!1791328 res!2398350) b!5675008))

(declare-fun m!6635928 () Bool)

(assert (=> d!1791328 m!6635928))

(declare-fun m!6635930 () Bool)

(assert (=> d!1791328 m!6635930))

(declare-fun m!6635932 () Bool)

(assert (=> b!5675008 m!6635932))

(assert (=> b!5674311 d!1791328))

(declare-fun bm!430549 () Bool)

(declare-fun call!430554 () Bool)

(assert (=> bm!430549 (= call!430554 (isEmpty!35020 s!2326))))

(declare-fun b!5675010 () Bool)

(declare-fun e!3493196 () Bool)

(assert (=> b!5675010 (= e!3493196 (not (= (head!12043 s!2326) (c!998089 (Concat!24510 (regOne!31842 r!7292) (regTwo!31842 r!7292))))))))

(declare-fun b!5675011 () Bool)

(declare-fun e!3493190 () Bool)

(assert (=> b!5675011 (= e!3493190 (matchR!7850 (derivativeStep!4484 (Concat!24510 (regOne!31842 r!7292) (regTwo!31842 r!7292)) (head!12043 s!2326)) (tail!11138 s!2326)))))

(declare-fun b!5675012 () Bool)

(declare-fun res!2398353 () Bool)

(declare-fun e!3493194 () Bool)

(assert (=> b!5675012 (=> res!2398353 e!3493194)))

(assert (=> b!5675012 (= res!2398353 (not ((_ is ElementMatch!15665) (Concat!24510 (regOne!31842 r!7292) (regTwo!31842 r!7292)))))))

(declare-fun e!3493191 () Bool)

(assert (=> b!5675012 (= e!3493191 e!3493194)))

(declare-fun b!5675013 () Bool)

(declare-fun res!2398358 () Bool)

(assert (=> b!5675013 (=> res!2398358 e!3493196)))

(assert (=> b!5675013 (= res!2398358 (not (isEmpty!35020 (tail!11138 s!2326))))))

(declare-fun b!5675014 () Bool)

(declare-fun res!2398351 () Bool)

(assert (=> b!5675014 (=> res!2398351 e!3493194)))

(declare-fun e!3493193 () Bool)

(assert (=> b!5675014 (= res!2398351 e!3493193)))

(declare-fun res!2398354 () Bool)

(assert (=> b!5675014 (=> (not res!2398354) (not e!3493193))))

(declare-fun lt!2269465 () Bool)

(assert (=> b!5675014 (= res!2398354 lt!2269465)))

(declare-fun b!5675015 () Bool)

(declare-fun e!3493195 () Bool)

(assert (=> b!5675015 (= e!3493194 e!3493195)))

(declare-fun res!2398356 () Bool)

(assert (=> b!5675015 (=> (not res!2398356) (not e!3493195))))

(assert (=> b!5675015 (= res!2398356 (not lt!2269465))))

(declare-fun b!5675016 () Bool)

(assert (=> b!5675016 (= e!3493191 (not lt!2269465))))

(declare-fun b!5675017 () Bool)

(assert (=> b!5675017 (= e!3493190 (nullable!5697 (Concat!24510 (regOne!31842 r!7292) (regTwo!31842 r!7292))))))

(declare-fun b!5675018 () Bool)

(assert (=> b!5675018 (= e!3493193 (= (head!12043 s!2326) (c!998089 (Concat!24510 (regOne!31842 r!7292) (regTwo!31842 r!7292)))))))

(declare-fun b!5675019 () Bool)

(assert (=> b!5675019 (= e!3493195 e!3493196)))

(declare-fun res!2398355 () Bool)

(assert (=> b!5675019 (=> res!2398355 e!3493196)))

(assert (=> b!5675019 (= res!2398355 call!430554)))

(declare-fun b!5675020 () Bool)

(declare-fun res!2398357 () Bool)

(assert (=> b!5675020 (=> (not res!2398357) (not e!3493193))))

(assert (=> b!5675020 (= res!2398357 (not call!430554))))

(declare-fun b!5675009 () Bool)

(declare-fun e!3493192 () Bool)

(assert (=> b!5675009 (= e!3493192 e!3493191)))

(declare-fun c!998302 () Bool)

(assert (=> b!5675009 (= c!998302 ((_ is EmptyLang!15665) (Concat!24510 (regOne!31842 r!7292) (regTwo!31842 r!7292))))))

(declare-fun d!1791334 () Bool)

(assert (=> d!1791334 e!3493192))

(declare-fun c!998303 () Bool)

(assert (=> d!1791334 (= c!998303 ((_ is EmptyExpr!15665) (Concat!24510 (regOne!31842 r!7292) (regTwo!31842 r!7292))))))

(assert (=> d!1791334 (= lt!2269465 e!3493190)))

(declare-fun c!998304 () Bool)

(assert (=> d!1791334 (= c!998304 (isEmpty!35020 s!2326))))

(assert (=> d!1791334 (validRegex!7401 (Concat!24510 (regOne!31842 r!7292) (regTwo!31842 r!7292)))))

(assert (=> d!1791334 (= (matchR!7850 (Concat!24510 (regOne!31842 r!7292) (regTwo!31842 r!7292)) s!2326) lt!2269465)))

(declare-fun b!5675021 () Bool)

(assert (=> b!5675021 (= e!3493192 (= lt!2269465 call!430554))))

(declare-fun b!5675022 () Bool)

(declare-fun res!2398352 () Bool)

(assert (=> b!5675022 (=> (not res!2398352) (not e!3493193))))

(assert (=> b!5675022 (= res!2398352 (isEmpty!35020 (tail!11138 s!2326)))))

(assert (= (and d!1791334 c!998304) b!5675017))

(assert (= (and d!1791334 (not c!998304)) b!5675011))

(assert (= (and d!1791334 c!998303) b!5675021))

(assert (= (and d!1791334 (not c!998303)) b!5675009))

(assert (= (and b!5675009 c!998302) b!5675016))

(assert (= (and b!5675009 (not c!998302)) b!5675012))

(assert (= (and b!5675012 (not res!2398353)) b!5675014))

(assert (= (and b!5675014 res!2398354) b!5675020))

(assert (= (and b!5675020 res!2398357) b!5675022))

(assert (= (and b!5675022 res!2398352) b!5675018))

(assert (= (and b!5675014 (not res!2398351)) b!5675015))

(assert (= (and b!5675015 res!2398356) b!5675019))

(assert (= (and b!5675019 (not res!2398355)) b!5675013))

(assert (= (and b!5675013 (not res!2398358)) b!5675010))

(assert (= (or b!5675021 b!5675019 b!5675020) bm!430549))

(assert (=> b!5675018 m!6635844))

(assert (=> b!5675013 m!6635846))

(assert (=> b!5675013 m!6635846))

(assert (=> b!5675013 m!6635848))

(assert (=> b!5675011 m!6635844))

(assert (=> b!5675011 m!6635844))

(declare-fun m!6635936 () Bool)

(assert (=> b!5675011 m!6635936))

(assert (=> b!5675011 m!6635846))

(assert (=> b!5675011 m!6635936))

(assert (=> b!5675011 m!6635846))

(declare-fun m!6635938 () Bool)

(assert (=> b!5675011 m!6635938))

(assert (=> bm!430549 m!6635822))

(assert (=> d!1791334 m!6635822))

(declare-fun m!6635940 () Bool)

(assert (=> d!1791334 m!6635940))

(declare-fun m!6635942 () Bool)

(assert (=> b!5675017 m!6635942))

(assert (=> b!5675022 m!6635846))

(assert (=> b!5675022 m!6635846))

(assert (=> b!5675022 m!6635848))

(assert (=> b!5675010 m!6635844))

(assert (=> b!5674310 d!1791334))

(declare-fun d!1791338 () Bool)

(assert (=> d!1791338 (= (Exists!2765 lambda!305579) (choose!42914 lambda!305579))))

(declare-fun bs!1323016 () Bool)

(assert (= bs!1323016 d!1791338))

(declare-fun m!6635944 () Bool)

(assert (=> bs!1323016 m!6635944))

(assert (=> b!5674290 d!1791338))

(declare-fun bs!1323017 () Bool)

(declare-fun d!1791340 () Bool)

(assert (= bs!1323017 (and d!1791340 d!1791316)))

(declare-fun lambda!305663 () Int)

(assert (=> bs!1323017 (= lambda!305663 lambda!305661)))

(declare-fun bs!1323018 () Bool)

(assert (= bs!1323018 (and d!1791340 d!1791216)))

(assert (=> bs!1323018 (= lambda!305663 lambda!305614)))

(declare-fun bs!1323019 () Bool)

(assert (= bs!1323019 (and d!1791340 d!1791200)))

(assert (=> bs!1323019 (= lambda!305663 lambda!305605)))

(declare-fun bs!1323020 () Bool)

(assert (= bs!1323020 (and d!1791340 d!1791192)))

(assert (=> bs!1323020 (= lambda!305663 lambda!305596)))

(declare-fun bs!1323021 () Bool)

(assert (= bs!1323021 (and d!1791340 d!1791314)))

(assert (=> bs!1323021 (= lambda!305663 lambda!305656)))

(declare-fun b!5675023 () Bool)

(declare-fun e!3493200 () Bool)

(declare-fun lt!2269466 () Regex!15665)

(assert (=> b!5675023 (= e!3493200 (= lt!2269466 (head!12042 (t!376602 (exprs!5549 (h!69620 zl!343))))))))

(declare-fun b!5675024 () Bool)

(declare-fun e!3493198 () Regex!15665)

(assert (=> b!5675024 (= e!3493198 (h!69618 (t!376602 (exprs!5549 (h!69620 zl!343)))))))

(declare-fun b!5675025 () Bool)

(declare-fun e!3493201 () Bool)

(assert (=> b!5675025 (= e!3493201 (isEmpty!35017 (t!376602 (t!376602 (exprs!5549 (h!69620 zl!343))))))))

(declare-fun b!5675026 () Bool)

(declare-fun e!3493197 () Bool)

(assert (=> b!5675026 (= e!3493197 e!3493200)))

(declare-fun c!998308 () Bool)

(assert (=> b!5675026 (= c!998308 (isEmpty!35017 (tail!11137 (t!376602 (exprs!5549 (h!69620 zl!343))))))))

(declare-fun b!5675027 () Bool)

(assert (=> b!5675027 (= e!3493197 (isEmptyExpr!1189 lt!2269466))))

(declare-fun b!5675028 () Bool)

(declare-fun e!3493199 () Regex!15665)

(assert (=> b!5675028 (= e!3493199 (Concat!24510 (h!69618 (t!376602 (exprs!5549 (h!69620 zl!343)))) (generalisedConcat!1280 (t!376602 (t!376602 (exprs!5549 (h!69620 zl!343)))))))))

(declare-fun b!5675029 () Bool)

(assert (=> b!5675029 (= e!3493199 EmptyExpr!15665)))

(declare-fun e!3493202 () Bool)

(assert (=> d!1791340 e!3493202))

(declare-fun res!2398359 () Bool)

(assert (=> d!1791340 (=> (not res!2398359) (not e!3493202))))

(assert (=> d!1791340 (= res!2398359 (validRegex!7401 lt!2269466))))

(assert (=> d!1791340 (= lt!2269466 e!3493198)))

(declare-fun c!998305 () Bool)

(assert (=> d!1791340 (= c!998305 e!3493201)))

(declare-fun res!2398360 () Bool)

(assert (=> d!1791340 (=> (not res!2398360) (not e!3493201))))

(assert (=> d!1791340 (= res!2398360 ((_ is Cons!63170) (t!376602 (exprs!5549 (h!69620 zl!343)))))))

(assert (=> d!1791340 (forall!14813 (t!376602 (exprs!5549 (h!69620 zl!343))) lambda!305663)))

(assert (=> d!1791340 (= (generalisedConcat!1280 (t!376602 (exprs!5549 (h!69620 zl!343)))) lt!2269466)))

(declare-fun b!5675030 () Bool)

(assert (=> b!5675030 (= e!3493198 e!3493199)))

(declare-fun c!998306 () Bool)

(assert (=> b!5675030 (= c!998306 ((_ is Cons!63170) (t!376602 (exprs!5549 (h!69620 zl!343)))))))

(declare-fun b!5675031 () Bool)

(assert (=> b!5675031 (= e!3493200 (isConcat!712 lt!2269466))))

(declare-fun b!5675032 () Bool)

(assert (=> b!5675032 (= e!3493202 e!3493197)))

(declare-fun c!998307 () Bool)

(assert (=> b!5675032 (= c!998307 (isEmpty!35017 (t!376602 (exprs!5549 (h!69620 zl!343)))))))

(assert (= (and d!1791340 res!2398360) b!5675025))

(assert (= (and d!1791340 c!998305) b!5675024))

(assert (= (and d!1791340 (not c!998305)) b!5675030))

(assert (= (and b!5675030 c!998306) b!5675028))

(assert (= (and b!5675030 (not c!998306)) b!5675029))

(assert (= (and d!1791340 res!2398359) b!5675032))

(assert (= (and b!5675032 c!998307) b!5675027))

(assert (= (and b!5675032 (not c!998307)) b!5675026))

(assert (= (and b!5675026 c!998308) b!5675023))

(assert (= (and b!5675026 (not c!998308)) b!5675031))

(declare-fun m!6635946 () Bool)

(assert (=> b!5675023 m!6635946))

(declare-fun m!6635948 () Bool)

(assert (=> b!5675031 m!6635948))

(declare-fun m!6635950 () Bool)

(assert (=> b!5675028 m!6635950))

(declare-fun m!6635952 () Bool)

(assert (=> b!5675026 m!6635952))

(assert (=> b!5675026 m!6635952))

(declare-fun m!6635954 () Bool)

(assert (=> b!5675026 m!6635954))

(assert (=> b!5675032 m!6635346))

(declare-fun m!6635956 () Bool)

(assert (=> d!1791340 m!6635956))

(declare-fun m!6635958 () Bool)

(assert (=> d!1791340 m!6635958))

(declare-fun m!6635960 () Bool)

(assert (=> b!5675025 m!6635960))

(declare-fun m!6635962 () Bool)

(assert (=> b!5675027 m!6635962))

(assert (=> b!5674290 d!1791340))

(declare-fun d!1791342 () Bool)

(assert (=> d!1791342 (= (Exists!2765 lambda!305581) (choose!42914 lambda!305581))))

(declare-fun bs!1323022 () Bool)

(assert (= bs!1323022 d!1791342))

(declare-fun m!6635964 () Bool)

(assert (=> bs!1323022 m!6635964))

(assert (=> b!5674290 d!1791342))

(declare-fun bs!1323023 () Bool)

(declare-fun d!1791344 () Bool)

(assert (= bs!1323023 (and d!1791344 d!1791316)))

(declare-fun lambda!305664 () Int)

(assert (=> bs!1323023 (= lambda!305664 lambda!305661)))

(declare-fun bs!1323024 () Bool)

(assert (= bs!1323024 (and d!1791344 d!1791340)))

(assert (=> bs!1323024 (= lambda!305664 lambda!305663)))

(declare-fun bs!1323025 () Bool)

(assert (= bs!1323025 (and d!1791344 d!1791216)))

(assert (=> bs!1323025 (= lambda!305664 lambda!305614)))

(declare-fun bs!1323026 () Bool)

(assert (= bs!1323026 (and d!1791344 d!1791200)))

(assert (=> bs!1323026 (= lambda!305664 lambda!305605)))

(declare-fun bs!1323027 () Bool)

(assert (= bs!1323027 (and d!1791344 d!1791192)))

(assert (=> bs!1323027 (= lambda!305664 lambda!305596)))

(declare-fun bs!1323028 () Bool)

(assert (= bs!1323028 (and d!1791344 d!1791314)))

(assert (=> bs!1323028 (= lambda!305664 lambda!305656)))

(declare-fun b!5675043 () Bool)

(declare-fun e!3493212 () Bool)

(declare-fun lt!2269467 () Regex!15665)

(assert (=> b!5675043 (= e!3493212 (= lt!2269467 (head!12042 lt!2269317)))))

(declare-fun b!5675044 () Bool)

(declare-fun e!3493210 () Regex!15665)

(assert (=> b!5675044 (= e!3493210 (h!69618 lt!2269317))))

(declare-fun b!5675045 () Bool)

(declare-fun e!3493213 () Bool)

(assert (=> b!5675045 (= e!3493213 (isEmpty!35017 (t!376602 lt!2269317)))))

(declare-fun b!5675046 () Bool)

(declare-fun e!3493209 () Bool)

(assert (=> b!5675046 (= e!3493209 e!3493212)))

(declare-fun c!998316 () Bool)

(assert (=> b!5675046 (= c!998316 (isEmpty!35017 (tail!11137 lt!2269317)))))

(declare-fun b!5675047 () Bool)

(assert (=> b!5675047 (= e!3493209 (isEmptyExpr!1189 lt!2269467))))

(declare-fun b!5675048 () Bool)

(declare-fun e!3493211 () Regex!15665)

(assert (=> b!5675048 (= e!3493211 (Concat!24510 (h!69618 lt!2269317) (generalisedConcat!1280 (t!376602 lt!2269317))))))

(declare-fun b!5675049 () Bool)

(assert (=> b!5675049 (= e!3493211 EmptyExpr!15665)))

(declare-fun e!3493214 () Bool)

(assert (=> d!1791344 e!3493214))

(declare-fun res!2398363 () Bool)

(assert (=> d!1791344 (=> (not res!2398363) (not e!3493214))))

(assert (=> d!1791344 (= res!2398363 (validRegex!7401 lt!2269467))))

(assert (=> d!1791344 (= lt!2269467 e!3493210)))

(declare-fun c!998313 () Bool)

(assert (=> d!1791344 (= c!998313 e!3493213)))

(declare-fun res!2398364 () Bool)

(assert (=> d!1791344 (=> (not res!2398364) (not e!3493213))))

(assert (=> d!1791344 (= res!2398364 ((_ is Cons!63170) lt!2269317))))

(assert (=> d!1791344 (forall!14813 lt!2269317 lambda!305664)))

(assert (=> d!1791344 (= (generalisedConcat!1280 lt!2269317) lt!2269467)))

(declare-fun b!5675050 () Bool)

(assert (=> b!5675050 (= e!3493210 e!3493211)))

(declare-fun c!998314 () Bool)

(assert (=> b!5675050 (= c!998314 ((_ is Cons!63170) lt!2269317))))

(declare-fun b!5675051 () Bool)

(assert (=> b!5675051 (= e!3493212 (isConcat!712 lt!2269467))))

(declare-fun b!5675052 () Bool)

(assert (=> b!5675052 (= e!3493214 e!3493209)))

(declare-fun c!998315 () Bool)

(assert (=> b!5675052 (= c!998315 (isEmpty!35017 lt!2269317))))

(assert (= (and d!1791344 res!2398364) b!5675045))

(assert (= (and d!1791344 c!998313) b!5675044))

(assert (= (and d!1791344 (not c!998313)) b!5675050))

(assert (= (and b!5675050 c!998314) b!5675048))

(assert (= (and b!5675050 (not c!998314)) b!5675049))

(assert (= (and d!1791344 res!2398363) b!5675052))

(assert (= (and b!5675052 c!998315) b!5675047))

(assert (= (and b!5675052 (not c!998315)) b!5675046))

(assert (= (and b!5675046 c!998316) b!5675043))

(assert (= (and b!5675046 (not c!998316)) b!5675051))

(declare-fun m!6635966 () Bool)

(assert (=> b!5675043 m!6635966))

(declare-fun m!6635968 () Bool)

(assert (=> b!5675051 m!6635968))

(declare-fun m!6635970 () Bool)

(assert (=> b!5675048 m!6635970))

(declare-fun m!6635972 () Bool)

(assert (=> b!5675046 m!6635972))

(assert (=> b!5675046 m!6635972))

(declare-fun m!6635974 () Bool)

(assert (=> b!5675046 m!6635974))

(declare-fun m!6635976 () Bool)

(assert (=> b!5675052 m!6635976))

(declare-fun m!6635978 () Bool)

(assert (=> d!1791344 m!6635978))

(declare-fun m!6635980 () Bool)

(assert (=> d!1791344 m!6635980))

(declare-fun m!6635982 () Bool)

(assert (=> b!5675045 m!6635982))

(declare-fun m!6635984 () Bool)

(assert (=> b!5675047 m!6635984))

(assert (=> b!5674290 d!1791344))

(declare-fun bs!1323029 () Bool)

(declare-fun d!1791346 () Bool)

(assert (= bs!1323029 (and d!1791346 b!5674853)))

(declare-fun lambda!305665 () Int)

(assert (=> bs!1323029 (not (= lambda!305665 lambda!305649))))

(declare-fun bs!1323030 () Bool)

(assert (= bs!1323030 (and d!1791346 b!5674290)))

(assert (=> bs!1323030 (not (= lambda!305665 lambda!305581))))

(declare-fun bs!1323031 () Bool)

(assert (= bs!1323031 (and d!1791346 d!1791246)))

(assert (=> bs!1323031 (= (and (= (regOne!31842 (regOne!31842 r!7292)) (regOne!31842 r!7292)) (= lt!2269332 (regTwo!31842 r!7292))) (= lambda!305665 lambda!305625))))

(declare-fun bs!1323032 () Bool)

(assert (= bs!1323032 (and d!1791346 b!5674315)))

(assert (=> bs!1323032 (= (and (= (regOne!31842 (regOne!31842 r!7292)) (regOne!31842 r!7292)) (= lt!2269332 (regTwo!31842 r!7292))) (= lambda!305665 lambda!305575))))

(declare-fun bs!1323033 () Bool)

(assert (= bs!1323033 (and d!1791346 d!1791256)))

(assert (=> bs!1323033 (not (= lambda!305665 lambda!305636))))

(assert (=> bs!1323030 (= lambda!305665 lambda!305578)))

(declare-fun bs!1323034 () Bool)

(assert (= bs!1323034 (and d!1791346 b!5674852)))

(assert (=> bs!1323034 (not (= lambda!305665 lambda!305648))))

(assert (=> bs!1323033 (= (and (= (regOne!31842 (regOne!31842 r!7292)) (regOne!31842 r!7292)) (= lt!2269332 (regTwo!31842 r!7292))) (= lambda!305665 lambda!305634))))

(assert (=> bs!1323032 (not (= lambda!305665 lambda!305576))))

(assert (=> bs!1323030 (not (= lambda!305665 lambda!305579))))

(assert (=> bs!1323030 (= (and (= (regOne!31842 (regOne!31842 r!7292)) (regTwo!31842 (regOne!31842 r!7292))) (= lt!2269332 lt!2269319)) (= lambda!305665 lambda!305580))))

(assert (=> d!1791346 true))

(assert (=> d!1791346 true))

(assert (=> d!1791346 true))

(declare-fun bs!1323035 () Bool)

(assert (= bs!1323035 d!1791346))

(declare-fun lambda!305666 () Int)

(assert (=> bs!1323035 (not (= lambda!305666 lambda!305665))))

(assert (=> bs!1323029 (= (and (= (regOne!31842 (regOne!31842 r!7292)) (regOne!31842 r!7292)) (= lt!2269332 (regTwo!31842 r!7292))) (= lambda!305666 lambda!305649))))

(assert (=> bs!1323030 (= (and (= (regOne!31842 (regOne!31842 r!7292)) (regTwo!31842 (regOne!31842 r!7292))) (= lt!2269332 lt!2269319)) (= lambda!305666 lambda!305581))))

(assert (=> bs!1323031 (not (= lambda!305666 lambda!305625))))

(assert (=> bs!1323032 (not (= lambda!305666 lambda!305575))))

(assert (=> bs!1323033 (= (and (= (regOne!31842 (regOne!31842 r!7292)) (regOne!31842 r!7292)) (= lt!2269332 (regTwo!31842 r!7292))) (= lambda!305666 lambda!305636))))

(assert (=> bs!1323030 (not (= lambda!305666 lambda!305578))))

(assert (=> bs!1323034 (not (= lambda!305666 lambda!305648))))

(assert (=> bs!1323033 (not (= lambda!305666 lambda!305634))))

(assert (=> bs!1323032 (= (and (= (regOne!31842 (regOne!31842 r!7292)) (regOne!31842 r!7292)) (= lt!2269332 (regTwo!31842 r!7292))) (= lambda!305666 lambda!305576))))

(assert (=> bs!1323030 (= lambda!305666 lambda!305579)))

(assert (=> bs!1323030 (not (= lambda!305666 lambda!305580))))

(assert (=> d!1791346 true))

(assert (=> d!1791346 true))

(assert (=> d!1791346 true))

(assert (=> d!1791346 (= (Exists!2765 lambda!305665) (Exists!2765 lambda!305666))))

(declare-fun lt!2269468 () Unit!156192)

(assert (=> d!1791346 (= lt!2269468 (choose!42917 (regOne!31842 (regOne!31842 r!7292)) lt!2269332 s!2326))))

(assert (=> d!1791346 (validRegex!7401 (regOne!31842 (regOne!31842 r!7292)))))

(assert (=> d!1791346 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1394 (regOne!31842 (regOne!31842 r!7292)) lt!2269332 s!2326) lt!2269468)))

(declare-fun m!6635994 () Bool)

(assert (=> bs!1323035 m!6635994))

(declare-fun m!6635998 () Bool)

(assert (=> bs!1323035 m!6635998))

(declare-fun m!6636000 () Bool)

(assert (=> bs!1323035 m!6636000))

(declare-fun m!6636002 () Bool)

(assert (=> bs!1323035 m!6636002))

(assert (=> b!5674290 d!1791346))

(declare-fun bs!1323037 () Bool)

(declare-fun d!1791352 () Bool)

(assert (= bs!1323037 (and d!1791352 d!1791346)))

(declare-fun lambda!305667 () Int)

(assert (=> bs!1323037 (= lambda!305667 lambda!305665)))

(declare-fun bs!1323038 () Bool)

(assert (= bs!1323038 (and d!1791352 b!5674853)))

(assert (=> bs!1323038 (not (= lambda!305667 lambda!305649))))

(declare-fun bs!1323039 () Bool)

(assert (= bs!1323039 (and d!1791352 b!5674290)))

(assert (=> bs!1323039 (not (= lambda!305667 lambda!305581))))

(declare-fun bs!1323040 () Bool)

(assert (= bs!1323040 (and d!1791352 d!1791246)))

(assert (=> bs!1323040 (= (and (= (regOne!31842 (regOne!31842 r!7292)) (regOne!31842 r!7292)) (= lt!2269332 (regTwo!31842 r!7292))) (= lambda!305667 lambda!305625))))

(declare-fun bs!1323041 () Bool)

(assert (= bs!1323041 (and d!1791352 b!5674315)))

(assert (=> bs!1323041 (= (and (= (regOne!31842 (regOne!31842 r!7292)) (regOne!31842 r!7292)) (= lt!2269332 (regTwo!31842 r!7292))) (= lambda!305667 lambda!305575))))

(declare-fun bs!1323042 () Bool)

(assert (= bs!1323042 (and d!1791352 d!1791256)))

(assert (=> bs!1323042 (not (= lambda!305667 lambda!305636))))

(assert (=> bs!1323037 (not (= lambda!305667 lambda!305666))))

(assert (=> bs!1323039 (= lambda!305667 lambda!305578)))

(declare-fun bs!1323043 () Bool)

(assert (= bs!1323043 (and d!1791352 b!5674852)))

(assert (=> bs!1323043 (not (= lambda!305667 lambda!305648))))

(assert (=> bs!1323042 (= (and (= (regOne!31842 (regOne!31842 r!7292)) (regOne!31842 r!7292)) (= lt!2269332 (regTwo!31842 r!7292))) (= lambda!305667 lambda!305634))))

(assert (=> bs!1323041 (not (= lambda!305667 lambda!305576))))

(assert (=> bs!1323039 (not (= lambda!305667 lambda!305579))))

(assert (=> bs!1323039 (= (and (= (regOne!31842 (regOne!31842 r!7292)) (regTwo!31842 (regOne!31842 r!7292))) (= lt!2269332 lt!2269319)) (= lambda!305667 lambda!305580))))

(assert (=> d!1791352 true))

(assert (=> d!1791352 true))

(assert (=> d!1791352 true))

(assert (=> d!1791352 (= (isDefined!12377 (findConcatSeparation!2088 (regOne!31842 (regOne!31842 r!7292)) lt!2269332 Nil!63171 s!2326 s!2326)) (Exists!2765 lambda!305667))))

(declare-fun lt!2269472 () Unit!156192)

(assert (=> d!1791352 (= lt!2269472 (choose!42915 (regOne!31842 (regOne!31842 r!7292)) lt!2269332 s!2326))))

(assert (=> d!1791352 (validRegex!7401 (regOne!31842 (regOne!31842 r!7292)))))

(assert (=> d!1791352 (= (lemmaFindConcatSeparationEquivalentToExists!1852 (regOne!31842 (regOne!31842 r!7292)) lt!2269332 s!2326) lt!2269472)))

(declare-fun bs!1323046 () Bool)

(assert (= bs!1323046 d!1791352))

(declare-fun m!6636006 () Bool)

(assert (=> bs!1323046 m!6636006))

(assert (=> bs!1323046 m!6636002))

(assert (=> bs!1323046 m!6635326))

(assert (=> bs!1323046 m!6635342))

(assert (=> bs!1323046 m!6635326))

(declare-fun m!6636008 () Bool)

(assert (=> bs!1323046 m!6636008))

(assert (=> b!5674290 d!1791352))

(declare-fun bs!1323047 () Bool)

(declare-fun d!1791356 () Bool)

(assert (= bs!1323047 (and d!1791356 d!1791316)))

(declare-fun lambda!305671 () Int)

(assert (=> bs!1323047 (= lambda!305671 lambda!305661)))

(declare-fun bs!1323049 () Bool)

(assert (= bs!1323049 (and d!1791356 d!1791340)))

(assert (=> bs!1323049 (= lambda!305671 lambda!305663)))

(declare-fun bs!1323050 () Bool)

(assert (= bs!1323050 (and d!1791356 d!1791344)))

(assert (=> bs!1323050 (= lambda!305671 lambda!305664)))

(declare-fun bs!1323051 () Bool)

(assert (= bs!1323051 (and d!1791356 d!1791216)))

(assert (=> bs!1323051 (= lambda!305671 lambda!305614)))

(declare-fun bs!1323052 () Bool)

(assert (= bs!1323052 (and d!1791356 d!1791200)))

(assert (=> bs!1323052 (= lambda!305671 lambda!305605)))

(declare-fun bs!1323053 () Bool)

(assert (= bs!1323053 (and d!1791356 d!1791192)))

(assert (=> bs!1323053 (= lambda!305671 lambda!305596)))

(declare-fun bs!1323054 () Bool)

(assert (= bs!1323054 (and d!1791356 d!1791314)))

(assert (=> bs!1323054 (= lambda!305671 lambda!305656)))

(declare-fun b!5675060 () Bool)

(declare-fun e!3493221 () Bool)

(declare-fun lt!2269473 () Regex!15665)

(assert (=> b!5675060 (= e!3493221 (= lt!2269473 (head!12042 lt!2269335)))))

(declare-fun b!5675061 () Bool)

(declare-fun e!3493219 () Regex!15665)

(assert (=> b!5675061 (= e!3493219 (h!69618 lt!2269335))))

(declare-fun b!5675062 () Bool)

(declare-fun e!3493222 () Bool)

(assert (=> b!5675062 (= e!3493222 (isEmpty!35017 (t!376602 lt!2269335)))))

(declare-fun b!5675063 () Bool)

(declare-fun e!3493218 () Bool)

(assert (=> b!5675063 (= e!3493218 e!3493221)))

(declare-fun c!998324 () Bool)

(assert (=> b!5675063 (= c!998324 (isEmpty!35017 (tail!11137 lt!2269335)))))

(declare-fun b!5675064 () Bool)

(assert (=> b!5675064 (= e!3493218 (isEmptyExpr!1189 lt!2269473))))

(declare-fun b!5675065 () Bool)

(declare-fun e!3493220 () Regex!15665)

(assert (=> b!5675065 (= e!3493220 (Concat!24510 (h!69618 lt!2269335) (generalisedConcat!1280 (t!376602 lt!2269335))))))

(declare-fun b!5675066 () Bool)

(assert (=> b!5675066 (= e!3493220 EmptyExpr!15665)))

(declare-fun e!3493223 () Bool)

(assert (=> d!1791356 e!3493223))

(declare-fun res!2398366 () Bool)

(assert (=> d!1791356 (=> (not res!2398366) (not e!3493223))))

(assert (=> d!1791356 (= res!2398366 (validRegex!7401 lt!2269473))))

(assert (=> d!1791356 (= lt!2269473 e!3493219)))

(declare-fun c!998321 () Bool)

(assert (=> d!1791356 (= c!998321 e!3493222)))

(declare-fun res!2398367 () Bool)

(assert (=> d!1791356 (=> (not res!2398367) (not e!3493222))))

(assert (=> d!1791356 (= res!2398367 ((_ is Cons!63170) lt!2269335))))

(assert (=> d!1791356 (forall!14813 lt!2269335 lambda!305671)))

(assert (=> d!1791356 (= (generalisedConcat!1280 lt!2269335) lt!2269473)))

(declare-fun b!5675067 () Bool)

(assert (=> b!5675067 (= e!3493219 e!3493220)))

(declare-fun c!998322 () Bool)

(assert (=> b!5675067 (= c!998322 ((_ is Cons!63170) lt!2269335))))

(declare-fun b!5675068 () Bool)

(assert (=> b!5675068 (= e!3493221 (isConcat!712 lt!2269473))))

(declare-fun b!5675069 () Bool)

(assert (=> b!5675069 (= e!3493223 e!3493218)))

(declare-fun c!998323 () Bool)

(assert (=> b!5675069 (= c!998323 (isEmpty!35017 lt!2269335))))

(assert (= (and d!1791356 res!2398367) b!5675062))

(assert (= (and d!1791356 c!998321) b!5675061))

(assert (= (and d!1791356 (not c!998321)) b!5675067))

(assert (= (and b!5675067 c!998322) b!5675065))

(assert (= (and b!5675067 (not c!998322)) b!5675066))

(assert (= (and d!1791356 res!2398366) b!5675069))

(assert (= (and b!5675069 c!998323) b!5675064))

(assert (= (and b!5675069 (not c!998323)) b!5675063))

(assert (= (and b!5675063 c!998324) b!5675060))

(assert (= (and b!5675063 (not c!998324)) b!5675068))

(declare-fun m!6636018 () Bool)

(assert (=> b!5675060 m!6636018))

(declare-fun m!6636020 () Bool)

(assert (=> b!5675068 m!6636020))

(declare-fun m!6636022 () Bool)

(assert (=> b!5675065 m!6636022))

(declare-fun m!6636024 () Bool)

(assert (=> b!5675063 m!6636024))

(assert (=> b!5675063 m!6636024))

(declare-fun m!6636026 () Bool)

(assert (=> b!5675063 m!6636026))

(declare-fun m!6636028 () Bool)

(assert (=> b!5675069 m!6636028))

(declare-fun m!6636030 () Bool)

(assert (=> d!1791356 m!6636030))

(declare-fun m!6636032 () Bool)

(assert (=> d!1791356 m!6636032))

(declare-fun m!6636034 () Bool)

(assert (=> b!5675062 m!6636034))

(declare-fun m!6636036 () Bool)

(assert (=> b!5675064 m!6636036))

(assert (=> b!5674290 d!1791356))

(declare-fun bs!1323055 () Bool)

(declare-fun d!1791362 () Bool)

(assert (= bs!1323055 (and d!1791362 d!1791346)))

(declare-fun lambda!305672 () Int)

(assert (=> bs!1323055 (= (and (= (regTwo!31842 (regOne!31842 r!7292)) (regOne!31842 (regOne!31842 r!7292))) (= lt!2269319 lt!2269332)) (= lambda!305672 lambda!305665))))

(declare-fun bs!1323056 () Bool)

(assert (= bs!1323056 (and d!1791362 d!1791352)))

(assert (=> bs!1323056 (= (and (= (regTwo!31842 (regOne!31842 r!7292)) (regOne!31842 (regOne!31842 r!7292))) (= lt!2269319 lt!2269332)) (= lambda!305672 lambda!305667))))

(declare-fun bs!1323057 () Bool)

(assert (= bs!1323057 (and d!1791362 b!5674853)))

(assert (=> bs!1323057 (not (= lambda!305672 lambda!305649))))

(declare-fun bs!1323058 () Bool)

(assert (= bs!1323058 (and d!1791362 b!5674290)))

(assert (=> bs!1323058 (not (= lambda!305672 lambda!305581))))

(declare-fun bs!1323059 () Bool)

(assert (= bs!1323059 (and d!1791362 d!1791246)))

(assert (=> bs!1323059 (= (and (= (regTwo!31842 (regOne!31842 r!7292)) (regOne!31842 r!7292)) (= lt!2269319 (regTwo!31842 r!7292))) (= lambda!305672 lambda!305625))))

(declare-fun bs!1323060 () Bool)

(assert (= bs!1323060 (and d!1791362 b!5674315)))

(assert (=> bs!1323060 (= (and (= (regTwo!31842 (regOne!31842 r!7292)) (regOne!31842 r!7292)) (= lt!2269319 (regTwo!31842 r!7292))) (= lambda!305672 lambda!305575))))

(declare-fun bs!1323061 () Bool)

(assert (= bs!1323061 (and d!1791362 d!1791256)))

(assert (=> bs!1323061 (not (= lambda!305672 lambda!305636))))

(assert (=> bs!1323055 (not (= lambda!305672 lambda!305666))))

(assert (=> bs!1323058 (= (and (= (regTwo!31842 (regOne!31842 r!7292)) (regOne!31842 (regOne!31842 r!7292))) (= lt!2269319 lt!2269332)) (= lambda!305672 lambda!305578))))

(declare-fun bs!1323062 () Bool)

(assert (= bs!1323062 (and d!1791362 b!5674852)))

(assert (=> bs!1323062 (not (= lambda!305672 lambda!305648))))

(assert (=> bs!1323061 (= (and (= (regTwo!31842 (regOne!31842 r!7292)) (regOne!31842 r!7292)) (= lt!2269319 (regTwo!31842 r!7292))) (= lambda!305672 lambda!305634))))

(assert (=> bs!1323060 (not (= lambda!305672 lambda!305576))))

(assert (=> bs!1323058 (not (= lambda!305672 lambda!305579))))

(assert (=> bs!1323058 (= lambda!305672 lambda!305580)))

(assert (=> d!1791362 true))

(assert (=> d!1791362 true))

(assert (=> d!1791362 true))

(assert (=> d!1791362 (= (isDefined!12377 (findConcatSeparation!2088 (regTwo!31842 (regOne!31842 r!7292)) lt!2269319 Nil!63171 s!2326 s!2326)) (Exists!2765 lambda!305672))))

(declare-fun lt!2269474 () Unit!156192)

(assert (=> d!1791362 (= lt!2269474 (choose!42915 (regTwo!31842 (regOne!31842 r!7292)) lt!2269319 s!2326))))

(assert (=> d!1791362 (validRegex!7401 (regTwo!31842 (regOne!31842 r!7292)))))

(assert (=> d!1791362 (= (lemmaFindConcatSeparationEquivalentToExists!1852 (regTwo!31842 (regOne!31842 r!7292)) lt!2269319 s!2326) lt!2269474)))

(declare-fun bs!1323064 () Bool)

(assert (= bs!1323064 d!1791362))

(declare-fun m!6636060 () Bool)

(assert (=> bs!1323064 m!6636060))

(declare-fun m!6636062 () Bool)

(assert (=> bs!1323064 m!6636062))

(assert (=> bs!1323064 m!6635306))

(assert (=> bs!1323064 m!6635308))

(assert (=> bs!1323064 m!6635306))

(declare-fun m!6636070 () Bool)

(assert (=> bs!1323064 m!6636070))

(assert (=> b!5674290 d!1791362))

(declare-fun d!1791374 () Bool)

(declare-fun c!998336 () Bool)

(assert (=> d!1791374 (= c!998336 (isEmpty!35020 s!2326))))

(declare-fun e!3493239 () Bool)

(assert (=> d!1791374 (= (matchZipper!1803 lt!2269321 s!2326) e!3493239)))

(declare-fun b!5675096 () Bool)

(assert (=> b!5675096 (= e!3493239 (nullableZipper!1631 lt!2269321))))

(declare-fun b!5675097 () Bool)

(assert (=> b!5675097 (= e!3493239 (matchZipper!1803 (derivationStepZipper!1750 lt!2269321 (head!12043 s!2326)) (tail!11138 s!2326)))))

(assert (= (and d!1791374 c!998336) b!5675096))

(assert (= (and d!1791374 (not c!998336)) b!5675097))

(assert (=> d!1791374 m!6635822))

(declare-fun m!6636074 () Bool)

(assert (=> b!5675096 m!6636074))

(assert (=> b!5675097 m!6635844))

(assert (=> b!5675097 m!6635844))

(declare-fun m!6636076 () Bool)

(assert (=> b!5675097 m!6636076))

(assert (=> b!5675097 m!6635846))

(assert (=> b!5675097 m!6636076))

(assert (=> b!5675097 m!6635846))

(declare-fun m!6636078 () Bool)

(assert (=> b!5675097 m!6636078))

(assert (=> b!5674290 d!1791374))

(declare-fun d!1791376 () Bool)

(assert (=> d!1791376 (= (matchR!7850 lt!2269338 s!2326) (matchZipper!1803 lt!2269321 s!2326))))

(declare-fun lt!2269478 () Unit!156192)

(declare-fun choose!42923 ((InoxSet Context!10098) List!63296 Regex!15665 List!63295) Unit!156192)

(assert (=> d!1791376 (= lt!2269478 (choose!42923 lt!2269321 lt!2269304 lt!2269338 s!2326))))

(assert (=> d!1791376 (validRegex!7401 lt!2269338)))

(assert (=> d!1791376 (= (theoremZipperRegexEquiv!645 lt!2269321 lt!2269304 lt!2269338 s!2326) lt!2269478)))

(declare-fun bs!1323068 () Bool)

(assert (= bs!1323068 d!1791376))

(assert (=> bs!1323068 m!6635314))

(assert (=> bs!1323068 m!6635344))

(declare-fun m!6636084 () Bool)

(assert (=> bs!1323068 m!6636084))

(declare-fun m!6636086 () Bool)

(assert (=> bs!1323068 m!6636086))

(assert (=> b!5674290 d!1791376))

(declare-fun bs!1323070 () Bool)

(declare-fun b!5675161 () Bool)

(assert (= bs!1323070 (and b!5675161 d!1791346)))

(declare-fun lambda!305673 () Int)

(assert (=> bs!1323070 (not (= lambda!305673 lambda!305665))))

(declare-fun bs!1323071 () Bool)

(assert (= bs!1323071 (and b!5675161 d!1791352)))

(assert (=> bs!1323071 (not (= lambda!305673 lambda!305667))))

(declare-fun bs!1323072 () Bool)

(assert (= bs!1323072 (and b!5675161 b!5674853)))

(assert (=> bs!1323072 (not (= lambda!305673 lambda!305649))))

(declare-fun bs!1323073 () Bool)

(assert (= bs!1323073 (and b!5675161 b!5674290)))

(assert (=> bs!1323073 (not (= lambda!305673 lambda!305581))))

(declare-fun bs!1323074 () Bool)

(assert (= bs!1323074 (and b!5675161 d!1791362)))

(assert (=> bs!1323074 (not (= lambda!305673 lambda!305672))))

(declare-fun bs!1323075 () Bool)

(assert (= bs!1323075 (and b!5675161 d!1791246)))

(assert (=> bs!1323075 (not (= lambda!305673 lambda!305625))))

(declare-fun bs!1323076 () Bool)

(assert (= bs!1323076 (and b!5675161 b!5674315)))

(assert (=> bs!1323076 (not (= lambda!305673 lambda!305575))))

(declare-fun bs!1323077 () Bool)

(assert (= bs!1323077 (and b!5675161 d!1791256)))

(assert (=> bs!1323077 (not (= lambda!305673 lambda!305636))))

(assert (=> bs!1323070 (not (= lambda!305673 lambda!305666))))

(assert (=> bs!1323073 (not (= lambda!305673 lambda!305578))))

(declare-fun bs!1323078 () Bool)

(assert (= bs!1323078 (and b!5675161 b!5674852)))

(assert (=> bs!1323078 (= (and (= (reg!15994 lt!2269338) (reg!15994 r!7292)) (= lt!2269338 r!7292)) (= lambda!305673 lambda!305648))))

(assert (=> bs!1323077 (not (= lambda!305673 lambda!305634))))

(assert (=> bs!1323076 (not (= lambda!305673 lambda!305576))))

(assert (=> bs!1323073 (not (= lambda!305673 lambda!305579))))

(assert (=> bs!1323073 (not (= lambda!305673 lambda!305580))))

(assert (=> b!5675161 true))

(assert (=> b!5675161 true))

(declare-fun bs!1323079 () Bool)

(declare-fun b!5675162 () Bool)

(assert (= bs!1323079 (and b!5675162 d!1791346)))

(declare-fun lambda!305674 () Int)

(assert (=> bs!1323079 (not (= lambda!305674 lambda!305665))))

(declare-fun bs!1323080 () Bool)

(assert (= bs!1323080 (and b!5675162 d!1791352)))

(assert (=> bs!1323080 (not (= lambda!305674 lambda!305667))))

(declare-fun bs!1323081 () Bool)

(assert (= bs!1323081 (and b!5675162 b!5674853)))

(assert (=> bs!1323081 (= (and (= (regOne!31842 lt!2269338) (regOne!31842 r!7292)) (= (regTwo!31842 lt!2269338) (regTwo!31842 r!7292))) (= lambda!305674 lambda!305649))))

(declare-fun bs!1323082 () Bool)

(assert (= bs!1323082 (and b!5675162 d!1791362)))

(assert (=> bs!1323082 (not (= lambda!305674 lambda!305672))))

(declare-fun bs!1323083 () Bool)

(assert (= bs!1323083 (and b!5675162 d!1791246)))

(assert (=> bs!1323083 (not (= lambda!305674 lambda!305625))))

(declare-fun bs!1323084 () Bool)

(assert (= bs!1323084 (and b!5675162 b!5674315)))

(assert (=> bs!1323084 (not (= lambda!305674 lambda!305575))))

(declare-fun bs!1323085 () Bool)

(assert (= bs!1323085 (and b!5675162 d!1791256)))

(assert (=> bs!1323085 (= (and (= (regOne!31842 lt!2269338) (regOne!31842 r!7292)) (= (regTwo!31842 lt!2269338) (regTwo!31842 r!7292))) (= lambda!305674 lambda!305636))))

(assert (=> bs!1323079 (= (and (= (regOne!31842 lt!2269338) (regOne!31842 (regOne!31842 r!7292))) (= (regTwo!31842 lt!2269338) lt!2269332)) (= lambda!305674 lambda!305666))))

(declare-fun bs!1323086 () Bool)

(assert (= bs!1323086 (and b!5675162 b!5674290)))

(assert (=> bs!1323086 (not (= lambda!305674 lambda!305578))))

(declare-fun bs!1323087 () Bool)

(assert (= bs!1323087 (and b!5675162 b!5674852)))

(assert (=> bs!1323087 (not (= lambda!305674 lambda!305648))))

(assert (=> bs!1323086 (= (and (= (regOne!31842 lt!2269338) (regTwo!31842 (regOne!31842 r!7292))) (= (regTwo!31842 lt!2269338) lt!2269319)) (= lambda!305674 lambda!305581))))

(declare-fun bs!1323088 () Bool)

(assert (= bs!1323088 (and b!5675162 b!5675161)))

(assert (=> bs!1323088 (not (= lambda!305674 lambda!305673))))

(assert (=> bs!1323085 (not (= lambda!305674 lambda!305634))))

(assert (=> bs!1323084 (= (and (= (regOne!31842 lt!2269338) (regOne!31842 r!7292)) (= (regTwo!31842 lt!2269338) (regTwo!31842 r!7292))) (= lambda!305674 lambda!305576))))

(assert (=> bs!1323086 (= (and (= (regOne!31842 lt!2269338) (regOne!31842 (regOne!31842 r!7292))) (= (regTwo!31842 lt!2269338) lt!2269332)) (= lambda!305674 lambda!305579))))

(assert (=> bs!1323086 (not (= lambda!305674 lambda!305580))))

(assert (=> b!5675162 true))

(assert (=> b!5675162 true))

(declare-fun b!5675152 () Bool)

(declare-fun e!3493266 () Bool)

(declare-fun e!3493265 () Bool)

(assert (=> b!5675152 (= e!3493266 e!3493265)))

(declare-fun res!2398374 () Bool)

(assert (=> b!5675152 (= res!2398374 (matchRSpec!2768 (regOne!31843 lt!2269338) s!2326))))

(assert (=> b!5675152 (=> res!2398374 e!3493265)))

(declare-fun b!5675153 () Bool)

(declare-fun c!998338 () Bool)

(assert (=> b!5675153 (= c!998338 ((_ is Union!15665) lt!2269338))))

(declare-fun e!3493263 () Bool)

(assert (=> b!5675153 (= e!3493263 e!3493266)))

(declare-fun b!5675154 () Bool)

(declare-fun e!3493264 () Bool)

(declare-fun e!3493267 () Bool)

(assert (=> b!5675154 (= e!3493264 e!3493267)))

(declare-fun res!2398373 () Bool)

(assert (=> b!5675154 (= res!2398373 (not ((_ is EmptyLang!15665) lt!2269338)))))

(assert (=> b!5675154 (=> (not res!2398373) (not e!3493267))))

(declare-fun b!5675155 () Bool)

(declare-fun c!998339 () Bool)

(assert (=> b!5675155 (= c!998339 ((_ is ElementMatch!15665) lt!2269338))))

(assert (=> b!5675155 (= e!3493267 e!3493263)))

(declare-fun b!5675156 () Bool)

(assert (=> b!5675156 (= e!3493265 (matchRSpec!2768 (regTwo!31843 lt!2269338) s!2326))))

(declare-fun call!430568 () Bool)

(declare-fun c!998340 () Bool)

(declare-fun bm!430562 () Bool)

(assert (=> bm!430562 (= call!430568 (Exists!2765 (ite c!998340 lambda!305673 lambda!305674)))))

(declare-fun b!5675158 () Bool)

(declare-fun e!3493269 () Bool)

(assert (=> b!5675158 (= e!3493266 e!3493269)))

(assert (=> b!5675158 (= c!998340 ((_ is Star!15665) lt!2269338))))

(declare-fun b!5675159 () Bool)

(assert (=> b!5675159 (= e!3493263 (= s!2326 (Cons!63171 (c!998089 lt!2269338) Nil!63171)))))

(declare-fun bm!430563 () Bool)

(declare-fun call!430567 () Bool)

(assert (=> bm!430563 (= call!430567 (isEmpty!35020 s!2326))))

(declare-fun b!5675160 () Bool)

(assert (=> b!5675160 (= e!3493264 call!430567)))

(declare-fun e!3493268 () Bool)

(assert (=> b!5675161 (= e!3493268 call!430568)))

(assert (=> b!5675162 (= e!3493269 call!430568)))

(declare-fun b!5675157 () Bool)

(declare-fun res!2398372 () Bool)

(assert (=> b!5675157 (=> res!2398372 e!3493268)))

(assert (=> b!5675157 (= res!2398372 call!430567)))

(assert (=> b!5675157 (= e!3493269 e!3493268)))

(declare-fun d!1791382 () Bool)

(declare-fun c!998337 () Bool)

(assert (=> d!1791382 (= c!998337 ((_ is EmptyExpr!15665) lt!2269338))))

(assert (=> d!1791382 (= (matchRSpec!2768 lt!2269338 s!2326) e!3493264)))

(assert (= (and d!1791382 c!998337) b!5675160))

(assert (= (and d!1791382 (not c!998337)) b!5675154))

(assert (= (and b!5675154 res!2398373) b!5675155))

(assert (= (and b!5675155 c!998339) b!5675159))

(assert (= (and b!5675155 (not c!998339)) b!5675153))

(assert (= (and b!5675153 c!998338) b!5675152))

(assert (= (and b!5675153 (not c!998338)) b!5675158))

(assert (= (and b!5675152 (not res!2398374)) b!5675156))

(assert (= (and b!5675158 c!998340) b!5675157))

(assert (= (and b!5675158 (not c!998340)) b!5675162))

(assert (= (and b!5675157 (not res!2398372)) b!5675161))

(assert (= (or b!5675161 b!5675162) bm!430562))

(assert (= (or b!5675160 b!5675157) bm!430563))

(declare-fun m!6636088 () Bool)

(assert (=> b!5675152 m!6636088))

(declare-fun m!6636090 () Bool)

(assert (=> b!5675156 m!6636090))

(declare-fun m!6636092 () Bool)

(assert (=> bm!430562 m!6636092))

(assert (=> bm!430563 m!6635822))

(assert (=> b!5674290 d!1791382))

(declare-fun bm!430564 () Bool)

(declare-fun call!430569 () Bool)

(assert (=> bm!430564 (= call!430569 (isEmpty!35020 s!2326))))

(declare-fun b!5675164 () Bool)

(declare-fun e!3493276 () Bool)

(assert (=> b!5675164 (= e!3493276 (not (= (head!12043 s!2326) (c!998089 lt!2269332))))))

(declare-fun b!5675165 () Bool)

(declare-fun e!3493270 () Bool)

(assert (=> b!5675165 (= e!3493270 (matchR!7850 (derivativeStep!4484 lt!2269332 (head!12043 s!2326)) (tail!11138 s!2326)))))

(declare-fun b!5675166 () Bool)

(declare-fun res!2398377 () Bool)

(declare-fun e!3493274 () Bool)

(assert (=> b!5675166 (=> res!2398377 e!3493274)))

(assert (=> b!5675166 (= res!2398377 (not ((_ is ElementMatch!15665) lt!2269332)))))

(declare-fun e!3493271 () Bool)

(assert (=> b!5675166 (= e!3493271 e!3493274)))

(declare-fun b!5675167 () Bool)

(declare-fun res!2398382 () Bool)

(assert (=> b!5675167 (=> res!2398382 e!3493276)))

(assert (=> b!5675167 (= res!2398382 (not (isEmpty!35020 (tail!11138 s!2326))))))

(declare-fun b!5675168 () Bool)

(declare-fun res!2398375 () Bool)

(assert (=> b!5675168 (=> res!2398375 e!3493274)))

(declare-fun e!3493273 () Bool)

(assert (=> b!5675168 (= res!2398375 e!3493273)))

(declare-fun res!2398378 () Bool)

(assert (=> b!5675168 (=> (not res!2398378) (not e!3493273))))

(declare-fun lt!2269479 () Bool)

(assert (=> b!5675168 (= res!2398378 lt!2269479)))

(declare-fun b!5675169 () Bool)

(declare-fun e!3493275 () Bool)

(assert (=> b!5675169 (= e!3493274 e!3493275)))

(declare-fun res!2398380 () Bool)

(assert (=> b!5675169 (=> (not res!2398380) (not e!3493275))))

(assert (=> b!5675169 (= res!2398380 (not lt!2269479))))

(declare-fun b!5675170 () Bool)

(assert (=> b!5675170 (= e!3493271 (not lt!2269479))))

(declare-fun b!5675171 () Bool)

(assert (=> b!5675171 (= e!3493270 (nullable!5697 lt!2269332))))

(declare-fun b!5675172 () Bool)

(assert (=> b!5675172 (= e!3493273 (= (head!12043 s!2326) (c!998089 lt!2269332)))))

(declare-fun b!5675173 () Bool)

(assert (=> b!5675173 (= e!3493275 e!3493276)))

(declare-fun res!2398379 () Bool)

(assert (=> b!5675173 (=> res!2398379 e!3493276)))

(assert (=> b!5675173 (= res!2398379 call!430569)))

(declare-fun b!5675174 () Bool)

(declare-fun res!2398381 () Bool)

(assert (=> b!5675174 (=> (not res!2398381) (not e!3493273))))

(assert (=> b!5675174 (= res!2398381 (not call!430569))))

(declare-fun b!5675163 () Bool)

(declare-fun e!3493272 () Bool)

(assert (=> b!5675163 (= e!3493272 e!3493271)))

(declare-fun c!998341 () Bool)

(assert (=> b!5675163 (= c!998341 ((_ is EmptyLang!15665) lt!2269332))))

(declare-fun d!1791384 () Bool)

(assert (=> d!1791384 e!3493272))

(declare-fun c!998342 () Bool)

(assert (=> d!1791384 (= c!998342 ((_ is EmptyExpr!15665) lt!2269332))))

(assert (=> d!1791384 (= lt!2269479 e!3493270)))

(declare-fun c!998343 () Bool)

(assert (=> d!1791384 (= c!998343 (isEmpty!35020 s!2326))))

(assert (=> d!1791384 (validRegex!7401 lt!2269332)))

(assert (=> d!1791384 (= (matchR!7850 lt!2269332 s!2326) lt!2269479)))

(declare-fun b!5675175 () Bool)

(assert (=> b!5675175 (= e!3493272 (= lt!2269479 call!430569))))

(declare-fun b!5675176 () Bool)

(declare-fun res!2398376 () Bool)

(assert (=> b!5675176 (=> (not res!2398376) (not e!3493273))))

(assert (=> b!5675176 (= res!2398376 (isEmpty!35020 (tail!11138 s!2326)))))

(assert (= (and d!1791384 c!998343) b!5675171))

(assert (= (and d!1791384 (not c!998343)) b!5675165))

(assert (= (and d!1791384 c!998342) b!5675175))

(assert (= (and d!1791384 (not c!998342)) b!5675163))

(assert (= (and b!5675163 c!998341) b!5675170))

(assert (= (and b!5675163 (not c!998341)) b!5675166))

(assert (= (and b!5675166 (not res!2398377)) b!5675168))

(assert (= (and b!5675168 res!2398378) b!5675174))

(assert (= (and b!5675174 res!2398381) b!5675176))

(assert (= (and b!5675176 res!2398376) b!5675172))

(assert (= (and b!5675168 (not res!2398375)) b!5675169))

(assert (= (and b!5675169 res!2398380) b!5675173))

(assert (= (and b!5675173 (not res!2398379)) b!5675167))

(assert (= (and b!5675167 (not res!2398382)) b!5675164))

(assert (= (or b!5675175 b!5675173 b!5675174) bm!430564))

(assert (=> b!5675172 m!6635844))

(assert (=> b!5675167 m!6635846))

(assert (=> b!5675167 m!6635846))

(assert (=> b!5675167 m!6635848))

(assert (=> b!5675165 m!6635844))

(assert (=> b!5675165 m!6635844))

(declare-fun m!6636094 () Bool)

(assert (=> b!5675165 m!6636094))

(assert (=> b!5675165 m!6635846))

(assert (=> b!5675165 m!6636094))

(assert (=> b!5675165 m!6635846))

(declare-fun m!6636096 () Bool)

(assert (=> b!5675165 m!6636096))

(assert (=> bm!430564 m!6635822))

(assert (=> d!1791384 m!6635822))

(declare-fun m!6636098 () Bool)

(assert (=> d!1791384 m!6636098))

(declare-fun m!6636100 () Bool)

(assert (=> b!5675171 m!6636100))

(assert (=> b!5675176 m!6635846))

(assert (=> b!5675176 m!6635846))

(assert (=> b!5675176 m!6635848))

(assert (=> b!5675164 m!6635844))

(assert (=> b!5674290 d!1791384))

(declare-fun d!1791386 () Bool)

(assert (=> d!1791386 (= (isDefined!12377 (findConcatSeparation!2088 (regOne!31842 (regOne!31842 r!7292)) lt!2269332 Nil!63171 s!2326 s!2326)) (not (isEmpty!35021 (findConcatSeparation!2088 (regOne!31842 (regOne!31842 r!7292)) lt!2269332 Nil!63171 s!2326 s!2326))))))

(declare-fun bs!1323089 () Bool)

(assert (= bs!1323089 d!1791386))

(assert (=> bs!1323089 m!6635326))

(declare-fun m!6636102 () Bool)

(assert (=> bs!1323089 m!6636102))

(assert (=> b!5674290 d!1791386))

(declare-fun d!1791388 () Bool)

(assert (=> d!1791388 (= (Exists!2765 lambda!305578) (choose!42914 lambda!305578))))

(declare-fun bs!1323090 () Bool)

(assert (= bs!1323090 d!1791388))

(declare-fun m!6636104 () Bool)

(assert (=> bs!1323090 m!6636104))

(assert (=> b!5674290 d!1791388))

(declare-fun d!1791390 () Bool)

(assert (=> d!1791390 (= (matchR!7850 lt!2269332 s!2326) (matchRSpec!2768 lt!2269332 s!2326))))

(declare-fun lt!2269480 () Unit!156192)

(assert (=> d!1791390 (= lt!2269480 (choose!42920 lt!2269332 s!2326))))

(assert (=> d!1791390 (validRegex!7401 lt!2269332)))

(assert (=> d!1791390 (= (mainMatchTheorem!2768 lt!2269332 s!2326) lt!2269480)))

(declare-fun bs!1323091 () Bool)

(assert (= bs!1323091 d!1791390))

(assert (=> bs!1323091 m!6635324))

(assert (=> bs!1323091 m!6635310))

(declare-fun m!6636106 () Bool)

(assert (=> bs!1323091 m!6636106))

(assert (=> bs!1323091 m!6636098))

(assert (=> b!5674290 d!1791390))

(declare-fun bs!1323092 () Bool)

(declare-fun d!1791392 () Bool)

(assert (= bs!1323092 (and d!1791392 d!1791346)))

(declare-fun lambda!305675 () Int)

(assert (=> bs!1323092 (= (and (= (regTwo!31842 (regOne!31842 r!7292)) (regOne!31842 (regOne!31842 r!7292))) (= lt!2269319 lt!2269332)) (= lambda!305675 lambda!305665))))

(declare-fun bs!1323093 () Bool)

(assert (= bs!1323093 (and d!1791392 d!1791352)))

(assert (=> bs!1323093 (= (and (= (regTwo!31842 (regOne!31842 r!7292)) (regOne!31842 (regOne!31842 r!7292))) (= lt!2269319 lt!2269332)) (= lambda!305675 lambda!305667))))

(declare-fun bs!1323094 () Bool)

(assert (= bs!1323094 (and d!1791392 b!5674853)))

(assert (=> bs!1323094 (not (= lambda!305675 lambda!305649))))

(declare-fun bs!1323095 () Bool)

(assert (= bs!1323095 (and d!1791392 d!1791246)))

(assert (=> bs!1323095 (= (and (= (regTwo!31842 (regOne!31842 r!7292)) (regOne!31842 r!7292)) (= lt!2269319 (regTwo!31842 r!7292))) (= lambda!305675 lambda!305625))))

(declare-fun bs!1323096 () Bool)

(assert (= bs!1323096 (and d!1791392 b!5674315)))

(assert (=> bs!1323096 (= (and (= (regTwo!31842 (regOne!31842 r!7292)) (regOne!31842 r!7292)) (= lt!2269319 (regTwo!31842 r!7292))) (= lambda!305675 lambda!305575))))

(declare-fun bs!1323097 () Bool)

(assert (= bs!1323097 (and d!1791392 d!1791256)))

(assert (=> bs!1323097 (not (= lambda!305675 lambda!305636))))

(assert (=> bs!1323092 (not (= lambda!305675 lambda!305666))))

(declare-fun bs!1323098 () Bool)

(assert (= bs!1323098 (and d!1791392 b!5674290)))

(assert (=> bs!1323098 (= (and (= (regTwo!31842 (regOne!31842 r!7292)) (regOne!31842 (regOne!31842 r!7292))) (= lt!2269319 lt!2269332)) (= lambda!305675 lambda!305578))))

(declare-fun bs!1323099 () Bool)

(assert (= bs!1323099 (and d!1791392 b!5674852)))

(assert (=> bs!1323099 (not (= lambda!305675 lambda!305648))))

(assert (=> bs!1323098 (not (= lambda!305675 lambda!305581))))

(declare-fun bs!1323100 () Bool)

(assert (= bs!1323100 (and d!1791392 b!5675161)))

(assert (=> bs!1323100 (not (= lambda!305675 lambda!305673))))

(declare-fun bs!1323101 () Bool)

(assert (= bs!1323101 (and d!1791392 d!1791362)))

(assert (=> bs!1323101 (= lambda!305675 lambda!305672)))

(declare-fun bs!1323102 () Bool)

(assert (= bs!1323102 (and d!1791392 b!5675162)))

(assert (=> bs!1323102 (not (= lambda!305675 lambda!305674))))

(assert (=> bs!1323097 (= (and (= (regTwo!31842 (regOne!31842 r!7292)) (regOne!31842 r!7292)) (= lt!2269319 (regTwo!31842 r!7292))) (= lambda!305675 lambda!305634))))

(assert (=> bs!1323096 (not (= lambda!305675 lambda!305576))))

(assert (=> bs!1323098 (not (= lambda!305675 lambda!305579))))

(assert (=> bs!1323098 (= lambda!305675 lambda!305580)))

(assert (=> d!1791392 true))

(assert (=> d!1791392 true))

(assert (=> d!1791392 true))

(declare-fun lambda!305676 () Int)

(assert (=> bs!1323092 (not (= lambda!305676 lambda!305665))))

(assert (=> bs!1323093 (not (= lambda!305676 lambda!305667))))

(assert (=> bs!1323094 (= (and (= (regTwo!31842 (regOne!31842 r!7292)) (regOne!31842 r!7292)) (= lt!2269319 (regTwo!31842 r!7292))) (= lambda!305676 lambda!305649))))

(assert (=> bs!1323095 (not (= lambda!305676 lambda!305625))))

(assert (=> bs!1323096 (not (= lambda!305676 lambda!305575))))

(assert (=> bs!1323097 (= (and (= (regTwo!31842 (regOne!31842 r!7292)) (regOne!31842 r!7292)) (= lt!2269319 (regTwo!31842 r!7292))) (= lambda!305676 lambda!305636))))

(assert (=> bs!1323098 (not (= lambda!305676 lambda!305578))))

(assert (=> bs!1323099 (not (= lambda!305676 lambda!305648))))

(assert (=> bs!1323098 (= lambda!305676 lambda!305581)))

(assert (=> bs!1323100 (not (= lambda!305676 lambda!305673))))

(assert (=> bs!1323101 (not (= lambda!305676 lambda!305672))))

(assert (=> bs!1323102 (= (and (= (regTwo!31842 (regOne!31842 r!7292)) (regOne!31842 lt!2269338)) (= lt!2269319 (regTwo!31842 lt!2269338))) (= lambda!305676 lambda!305674))))

(assert (=> bs!1323097 (not (= lambda!305676 lambda!305634))))

(assert (=> bs!1323096 (= (and (= (regTwo!31842 (regOne!31842 r!7292)) (regOne!31842 r!7292)) (= lt!2269319 (regTwo!31842 r!7292))) (= lambda!305676 lambda!305576))))

(assert (=> bs!1323098 (= (and (= (regTwo!31842 (regOne!31842 r!7292)) (regOne!31842 (regOne!31842 r!7292))) (= lt!2269319 lt!2269332)) (= lambda!305676 lambda!305579))))

(assert (=> bs!1323098 (not (= lambda!305676 lambda!305580))))

(assert (=> bs!1323092 (= (and (= (regTwo!31842 (regOne!31842 r!7292)) (regOne!31842 (regOne!31842 r!7292))) (= lt!2269319 lt!2269332)) (= lambda!305676 lambda!305666))))

(declare-fun bs!1323103 () Bool)

(assert (= bs!1323103 d!1791392))

(assert (=> bs!1323103 (not (= lambda!305676 lambda!305675))))

(assert (=> d!1791392 true))

(assert (=> d!1791392 true))

(assert (=> d!1791392 true))

(assert (=> d!1791392 (= (Exists!2765 lambda!305675) (Exists!2765 lambda!305676))))

(declare-fun lt!2269481 () Unit!156192)

(assert (=> d!1791392 (= lt!2269481 (choose!42917 (regTwo!31842 (regOne!31842 r!7292)) lt!2269319 s!2326))))

(assert (=> d!1791392 (validRegex!7401 (regTwo!31842 (regOne!31842 r!7292)))))

(assert (=> d!1791392 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1394 (regTwo!31842 (regOne!31842 r!7292)) lt!2269319 s!2326) lt!2269481)))

(declare-fun m!6636108 () Bool)

(assert (=> bs!1323103 m!6636108))

(declare-fun m!6636110 () Bool)

(assert (=> bs!1323103 m!6636110))

(declare-fun m!6636112 () Bool)

(assert (=> bs!1323103 m!6636112))

(assert (=> bs!1323103 m!6636062))

(assert (=> b!5674290 d!1791392))

(declare-fun bs!1323104 () Bool)

(declare-fun b!5675186 () Bool)

(assert (= bs!1323104 (and b!5675186 d!1791346)))

(declare-fun lambda!305677 () Int)

(assert (=> bs!1323104 (not (= lambda!305677 lambda!305665))))

(declare-fun bs!1323105 () Bool)

(assert (= bs!1323105 (and b!5675186 d!1791352)))

(assert (=> bs!1323105 (not (= lambda!305677 lambda!305667))))

(declare-fun bs!1323106 () Bool)

(assert (= bs!1323106 (and b!5675186 b!5674853)))

(assert (=> bs!1323106 (not (= lambda!305677 lambda!305649))))

(declare-fun bs!1323107 () Bool)

(assert (= bs!1323107 (and b!5675186 d!1791392)))

(assert (=> bs!1323107 (not (= lambda!305677 lambda!305676))))

(declare-fun bs!1323108 () Bool)

(assert (= bs!1323108 (and b!5675186 d!1791246)))

(assert (=> bs!1323108 (not (= lambda!305677 lambda!305625))))

(declare-fun bs!1323109 () Bool)

(assert (= bs!1323109 (and b!5675186 b!5674315)))

(assert (=> bs!1323109 (not (= lambda!305677 lambda!305575))))

(declare-fun bs!1323110 () Bool)

(assert (= bs!1323110 (and b!5675186 d!1791256)))

(assert (=> bs!1323110 (not (= lambda!305677 lambda!305636))))

(declare-fun bs!1323111 () Bool)

(assert (= bs!1323111 (and b!5675186 b!5674290)))

(assert (=> bs!1323111 (not (= lambda!305677 lambda!305578))))

(declare-fun bs!1323112 () Bool)

(assert (= bs!1323112 (and b!5675186 b!5674852)))

(assert (=> bs!1323112 (= (and (= (reg!15994 lt!2269332) (reg!15994 r!7292)) (= lt!2269332 r!7292)) (= lambda!305677 lambda!305648))))

(assert (=> bs!1323111 (not (= lambda!305677 lambda!305581))))

(declare-fun bs!1323113 () Bool)

(assert (= bs!1323113 (and b!5675186 b!5675161)))

(assert (=> bs!1323113 (= (and (= (reg!15994 lt!2269332) (reg!15994 lt!2269338)) (= lt!2269332 lt!2269338)) (= lambda!305677 lambda!305673))))

(declare-fun bs!1323114 () Bool)

(assert (= bs!1323114 (and b!5675186 d!1791362)))

(assert (=> bs!1323114 (not (= lambda!305677 lambda!305672))))

(declare-fun bs!1323115 () Bool)

(assert (= bs!1323115 (and b!5675186 b!5675162)))

(assert (=> bs!1323115 (not (= lambda!305677 lambda!305674))))

(assert (=> bs!1323110 (not (= lambda!305677 lambda!305634))))

(assert (=> bs!1323109 (not (= lambda!305677 lambda!305576))))

(assert (=> bs!1323111 (not (= lambda!305677 lambda!305579))))

(assert (=> bs!1323111 (not (= lambda!305677 lambda!305580))))

(assert (=> bs!1323104 (not (= lambda!305677 lambda!305666))))

(assert (=> bs!1323107 (not (= lambda!305677 lambda!305675))))

(assert (=> b!5675186 true))

(assert (=> b!5675186 true))

(declare-fun bs!1323116 () Bool)

(declare-fun b!5675187 () Bool)

(assert (= bs!1323116 (and b!5675187 d!1791346)))

(declare-fun lambda!305678 () Int)

(assert (=> bs!1323116 (not (= lambda!305678 lambda!305665))))

(declare-fun bs!1323117 () Bool)

(assert (= bs!1323117 (and b!5675187 d!1791352)))

(assert (=> bs!1323117 (not (= lambda!305678 lambda!305667))))

(declare-fun bs!1323118 () Bool)

(assert (= bs!1323118 (and b!5675187 b!5674853)))

(assert (=> bs!1323118 (= (and (= (regOne!31842 lt!2269332) (regOne!31842 r!7292)) (= (regTwo!31842 lt!2269332) (regTwo!31842 r!7292))) (= lambda!305678 lambda!305649))))

(declare-fun bs!1323119 () Bool)

(assert (= bs!1323119 (and b!5675187 d!1791392)))

(assert (=> bs!1323119 (= (and (= (regOne!31842 lt!2269332) (regTwo!31842 (regOne!31842 r!7292))) (= (regTwo!31842 lt!2269332) lt!2269319)) (= lambda!305678 lambda!305676))))

(declare-fun bs!1323120 () Bool)

(assert (= bs!1323120 (and b!5675187 b!5674315)))

(assert (=> bs!1323120 (not (= lambda!305678 lambda!305575))))

(declare-fun bs!1323121 () Bool)

(assert (= bs!1323121 (and b!5675187 d!1791256)))

(assert (=> bs!1323121 (= (and (= (regOne!31842 lt!2269332) (regOne!31842 r!7292)) (= (regTwo!31842 lt!2269332) (regTwo!31842 r!7292))) (= lambda!305678 lambda!305636))))

(declare-fun bs!1323122 () Bool)

(assert (= bs!1323122 (and b!5675187 b!5674290)))

(assert (=> bs!1323122 (not (= lambda!305678 lambda!305578))))

(declare-fun bs!1323123 () Bool)

(assert (= bs!1323123 (and b!5675187 b!5674852)))

(assert (=> bs!1323123 (not (= lambda!305678 lambda!305648))))

(assert (=> bs!1323122 (= (and (= (regOne!31842 lt!2269332) (regTwo!31842 (regOne!31842 r!7292))) (= (regTwo!31842 lt!2269332) lt!2269319)) (= lambda!305678 lambda!305581))))

(declare-fun bs!1323124 () Bool)

(assert (= bs!1323124 (and b!5675187 b!5675161)))

(assert (=> bs!1323124 (not (= lambda!305678 lambda!305673))))

(declare-fun bs!1323125 () Bool)

(assert (= bs!1323125 (and b!5675187 d!1791362)))

(assert (=> bs!1323125 (not (= lambda!305678 lambda!305672))))

(declare-fun bs!1323126 () Bool)

(assert (= bs!1323126 (and b!5675187 b!5675162)))

(assert (=> bs!1323126 (= (and (= (regOne!31842 lt!2269332) (regOne!31842 lt!2269338)) (= (regTwo!31842 lt!2269332) (regTwo!31842 lt!2269338))) (= lambda!305678 lambda!305674))))

(declare-fun bs!1323127 () Bool)

(assert (= bs!1323127 (and b!5675187 b!5675186)))

(assert (=> bs!1323127 (not (= lambda!305678 lambda!305677))))

(declare-fun bs!1323128 () Bool)

(assert (= bs!1323128 (and b!5675187 d!1791246)))

(assert (=> bs!1323128 (not (= lambda!305678 lambda!305625))))

(assert (=> bs!1323121 (not (= lambda!305678 lambda!305634))))

(assert (=> bs!1323120 (= (and (= (regOne!31842 lt!2269332) (regOne!31842 r!7292)) (= (regTwo!31842 lt!2269332) (regTwo!31842 r!7292))) (= lambda!305678 lambda!305576))))

(assert (=> bs!1323122 (= (and (= (regOne!31842 lt!2269332) (regOne!31842 (regOne!31842 r!7292))) (= (regTwo!31842 lt!2269332) lt!2269332)) (= lambda!305678 lambda!305579))))

(assert (=> bs!1323122 (not (= lambda!305678 lambda!305580))))

(assert (=> bs!1323116 (= (and (= (regOne!31842 lt!2269332) (regOne!31842 (regOne!31842 r!7292))) (= (regTwo!31842 lt!2269332) lt!2269332)) (= lambda!305678 lambda!305666))))

(assert (=> bs!1323119 (not (= lambda!305678 lambda!305675))))

(assert (=> b!5675187 true))

(assert (=> b!5675187 true))

(declare-fun b!5675177 () Bool)

(declare-fun e!3493280 () Bool)

(declare-fun e!3493279 () Bool)

(assert (=> b!5675177 (= e!3493280 e!3493279)))

(declare-fun res!2398385 () Bool)

(assert (=> b!5675177 (= res!2398385 (matchRSpec!2768 (regOne!31843 lt!2269332) s!2326))))

(assert (=> b!5675177 (=> res!2398385 e!3493279)))

(declare-fun b!5675178 () Bool)

(declare-fun c!998345 () Bool)

(assert (=> b!5675178 (= c!998345 ((_ is Union!15665) lt!2269332))))

(declare-fun e!3493277 () Bool)

(assert (=> b!5675178 (= e!3493277 e!3493280)))

(declare-fun b!5675179 () Bool)

(declare-fun e!3493278 () Bool)

(declare-fun e!3493281 () Bool)

(assert (=> b!5675179 (= e!3493278 e!3493281)))

(declare-fun res!2398384 () Bool)

(assert (=> b!5675179 (= res!2398384 (not ((_ is EmptyLang!15665) lt!2269332)))))

(assert (=> b!5675179 (=> (not res!2398384) (not e!3493281))))

(declare-fun b!5675180 () Bool)

(declare-fun c!998346 () Bool)

(assert (=> b!5675180 (= c!998346 ((_ is ElementMatch!15665) lt!2269332))))

(assert (=> b!5675180 (= e!3493281 e!3493277)))

(declare-fun b!5675181 () Bool)

(assert (=> b!5675181 (= e!3493279 (matchRSpec!2768 (regTwo!31843 lt!2269332) s!2326))))

(declare-fun c!998347 () Bool)

(declare-fun bm!430565 () Bool)

(declare-fun call!430571 () Bool)

(assert (=> bm!430565 (= call!430571 (Exists!2765 (ite c!998347 lambda!305677 lambda!305678)))))

(declare-fun b!5675183 () Bool)

(declare-fun e!3493283 () Bool)

(assert (=> b!5675183 (= e!3493280 e!3493283)))

(assert (=> b!5675183 (= c!998347 ((_ is Star!15665) lt!2269332))))

(declare-fun b!5675184 () Bool)

(assert (=> b!5675184 (= e!3493277 (= s!2326 (Cons!63171 (c!998089 lt!2269332) Nil!63171)))))

(declare-fun bm!430566 () Bool)

(declare-fun call!430570 () Bool)

(assert (=> bm!430566 (= call!430570 (isEmpty!35020 s!2326))))

(declare-fun b!5675185 () Bool)

(assert (=> b!5675185 (= e!3493278 call!430570)))

(declare-fun e!3493282 () Bool)

(assert (=> b!5675186 (= e!3493282 call!430571)))

(assert (=> b!5675187 (= e!3493283 call!430571)))

(declare-fun b!5675182 () Bool)

(declare-fun res!2398383 () Bool)

(assert (=> b!5675182 (=> res!2398383 e!3493282)))

(assert (=> b!5675182 (= res!2398383 call!430570)))

(assert (=> b!5675182 (= e!3493283 e!3493282)))

(declare-fun d!1791394 () Bool)

(declare-fun c!998344 () Bool)

(assert (=> d!1791394 (= c!998344 ((_ is EmptyExpr!15665) lt!2269332))))

(assert (=> d!1791394 (= (matchRSpec!2768 lt!2269332 s!2326) e!3493278)))

(assert (= (and d!1791394 c!998344) b!5675185))

(assert (= (and d!1791394 (not c!998344)) b!5675179))

(assert (= (and b!5675179 res!2398384) b!5675180))

(assert (= (and b!5675180 c!998346) b!5675184))

(assert (= (and b!5675180 (not c!998346)) b!5675178))

(assert (= (and b!5675178 c!998345) b!5675177))

(assert (= (and b!5675178 (not c!998345)) b!5675183))

(assert (= (and b!5675177 (not res!2398385)) b!5675181))

(assert (= (and b!5675183 c!998347) b!5675182))

(assert (= (and b!5675183 (not c!998347)) b!5675187))

(assert (= (and b!5675182 (not res!2398383)) b!5675186))

(assert (= (or b!5675186 b!5675187) bm!430565))

(assert (= (or b!5675185 b!5675182) bm!430566))

(declare-fun m!6636114 () Bool)

(assert (=> b!5675177 m!6636114))

(declare-fun m!6636116 () Bool)

(assert (=> b!5675181 m!6636116))

(declare-fun m!6636118 () Bool)

(assert (=> bm!430565 m!6636118))

(assert (=> bm!430566 m!6635822))

(assert (=> b!5674290 d!1791394))

(declare-fun d!1791396 () Bool)

(assert (=> d!1791396 (= (isDefined!12377 (findConcatSeparation!2088 (regTwo!31842 (regOne!31842 r!7292)) lt!2269319 Nil!63171 s!2326 s!2326)) (not (isEmpty!35021 (findConcatSeparation!2088 (regTwo!31842 (regOne!31842 r!7292)) lt!2269319 Nil!63171 s!2326 s!2326))))))

(declare-fun bs!1323129 () Bool)

(assert (= bs!1323129 d!1791396))

(assert (=> bs!1323129 m!6635306))

(declare-fun m!6636120 () Bool)

(assert (=> bs!1323129 m!6636120))

(assert (=> b!5674290 d!1791396))

(declare-fun bm!430567 () Bool)

(declare-fun call!430572 () Bool)

(assert (=> bm!430567 (= call!430572 (isEmpty!35020 s!2326))))

(declare-fun b!5675189 () Bool)

(declare-fun e!3493290 () Bool)

(assert (=> b!5675189 (= e!3493290 (not (= (head!12043 s!2326) (c!998089 lt!2269338))))))

(declare-fun b!5675190 () Bool)

(declare-fun e!3493284 () Bool)

(assert (=> b!5675190 (= e!3493284 (matchR!7850 (derivativeStep!4484 lt!2269338 (head!12043 s!2326)) (tail!11138 s!2326)))))

(declare-fun b!5675191 () Bool)

(declare-fun res!2398388 () Bool)

(declare-fun e!3493288 () Bool)

(assert (=> b!5675191 (=> res!2398388 e!3493288)))

(assert (=> b!5675191 (= res!2398388 (not ((_ is ElementMatch!15665) lt!2269338)))))

(declare-fun e!3493285 () Bool)

(assert (=> b!5675191 (= e!3493285 e!3493288)))

(declare-fun b!5675192 () Bool)

(declare-fun res!2398393 () Bool)

(assert (=> b!5675192 (=> res!2398393 e!3493290)))

(assert (=> b!5675192 (= res!2398393 (not (isEmpty!35020 (tail!11138 s!2326))))))

(declare-fun b!5675193 () Bool)

(declare-fun res!2398386 () Bool)

(assert (=> b!5675193 (=> res!2398386 e!3493288)))

(declare-fun e!3493287 () Bool)

(assert (=> b!5675193 (= res!2398386 e!3493287)))

(declare-fun res!2398389 () Bool)

(assert (=> b!5675193 (=> (not res!2398389) (not e!3493287))))

(declare-fun lt!2269482 () Bool)

(assert (=> b!5675193 (= res!2398389 lt!2269482)))

(declare-fun b!5675194 () Bool)

(declare-fun e!3493289 () Bool)

(assert (=> b!5675194 (= e!3493288 e!3493289)))

(declare-fun res!2398391 () Bool)

(assert (=> b!5675194 (=> (not res!2398391) (not e!3493289))))

(assert (=> b!5675194 (= res!2398391 (not lt!2269482))))

(declare-fun b!5675195 () Bool)

(assert (=> b!5675195 (= e!3493285 (not lt!2269482))))

(declare-fun b!5675196 () Bool)

(assert (=> b!5675196 (= e!3493284 (nullable!5697 lt!2269338))))

(declare-fun b!5675197 () Bool)

(assert (=> b!5675197 (= e!3493287 (= (head!12043 s!2326) (c!998089 lt!2269338)))))

(declare-fun b!5675198 () Bool)

(assert (=> b!5675198 (= e!3493289 e!3493290)))

(declare-fun res!2398390 () Bool)

(assert (=> b!5675198 (=> res!2398390 e!3493290)))

(assert (=> b!5675198 (= res!2398390 call!430572)))

(declare-fun b!5675199 () Bool)

(declare-fun res!2398392 () Bool)

(assert (=> b!5675199 (=> (not res!2398392) (not e!3493287))))

(assert (=> b!5675199 (= res!2398392 (not call!430572))))

(declare-fun b!5675188 () Bool)

(declare-fun e!3493286 () Bool)

(assert (=> b!5675188 (= e!3493286 e!3493285)))

(declare-fun c!998348 () Bool)

(assert (=> b!5675188 (= c!998348 ((_ is EmptyLang!15665) lt!2269338))))

(declare-fun d!1791398 () Bool)

(assert (=> d!1791398 e!3493286))

(declare-fun c!998349 () Bool)

(assert (=> d!1791398 (= c!998349 ((_ is EmptyExpr!15665) lt!2269338))))

(assert (=> d!1791398 (= lt!2269482 e!3493284)))

(declare-fun c!998350 () Bool)

(assert (=> d!1791398 (= c!998350 (isEmpty!35020 s!2326))))

(assert (=> d!1791398 (validRegex!7401 lt!2269338)))

(assert (=> d!1791398 (= (matchR!7850 lt!2269338 s!2326) lt!2269482)))

(declare-fun b!5675200 () Bool)

(assert (=> b!5675200 (= e!3493286 (= lt!2269482 call!430572))))

(declare-fun b!5675201 () Bool)

(declare-fun res!2398387 () Bool)

(assert (=> b!5675201 (=> (not res!2398387) (not e!3493287))))

(assert (=> b!5675201 (= res!2398387 (isEmpty!35020 (tail!11138 s!2326)))))

(assert (= (and d!1791398 c!998350) b!5675196))

(assert (= (and d!1791398 (not c!998350)) b!5675190))

(assert (= (and d!1791398 c!998349) b!5675200))

(assert (= (and d!1791398 (not c!998349)) b!5675188))

(assert (= (and b!5675188 c!998348) b!5675195))

(assert (= (and b!5675188 (not c!998348)) b!5675191))

(assert (= (and b!5675191 (not res!2398388)) b!5675193))

(assert (= (and b!5675193 res!2398389) b!5675199))

(assert (= (and b!5675199 res!2398392) b!5675201))

(assert (= (and b!5675201 res!2398387) b!5675197))

(assert (= (and b!5675193 (not res!2398386)) b!5675194))

(assert (= (and b!5675194 res!2398391) b!5675198))

(assert (= (and b!5675198 (not res!2398390)) b!5675192))

(assert (= (and b!5675192 (not res!2398393)) b!5675189))

(assert (= (or b!5675200 b!5675198 b!5675199) bm!430567))

(assert (=> b!5675197 m!6635844))

(assert (=> b!5675192 m!6635846))

(assert (=> b!5675192 m!6635846))

(assert (=> b!5675192 m!6635848))

(assert (=> b!5675190 m!6635844))

(assert (=> b!5675190 m!6635844))

(declare-fun m!6636122 () Bool)

(assert (=> b!5675190 m!6636122))

(assert (=> b!5675190 m!6635846))

(assert (=> b!5675190 m!6636122))

(assert (=> b!5675190 m!6635846))

(declare-fun m!6636124 () Bool)

(assert (=> b!5675190 m!6636124))

(assert (=> bm!430567 m!6635822))

(assert (=> d!1791398 m!6635822))

(assert (=> d!1791398 m!6636086))

(declare-fun m!6636126 () Bool)

(assert (=> b!5675196 m!6636126))

(assert (=> b!5675201 m!6635846))

(assert (=> b!5675201 m!6635846))

(assert (=> b!5675201 m!6635848))

(assert (=> b!5675189 m!6635844))

(assert (=> b!5674290 d!1791398))

(declare-fun d!1791400 () Bool)

(declare-fun c!998351 () Bool)

(assert (=> d!1791400 (= c!998351 (isEmpty!35020 s!2326))))

(declare-fun e!3493291 () Bool)

(assert (=> d!1791400 (= (matchZipper!1803 z!1189 s!2326) e!3493291)))

(declare-fun b!5675202 () Bool)

(assert (=> b!5675202 (= e!3493291 (nullableZipper!1631 z!1189))))

(declare-fun b!5675203 () Bool)

(assert (=> b!5675203 (= e!3493291 (matchZipper!1803 (derivationStepZipper!1750 z!1189 (head!12043 s!2326)) (tail!11138 s!2326)))))

(assert (= (and d!1791400 c!998351) b!5675202))

(assert (= (and d!1791400 (not c!998351)) b!5675203))

(assert (=> d!1791400 m!6635822))

(declare-fun m!6636128 () Bool)

(assert (=> b!5675202 m!6636128))

(assert (=> b!5675203 m!6635844))

(assert (=> b!5675203 m!6635844))

(declare-fun m!6636130 () Bool)

(assert (=> b!5675203 m!6636130))

(assert (=> b!5675203 m!6635846))

(assert (=> b!5675203 m!6636130))

(assert (=> b!5675203 m!6635846))

(declare-fun m!6636132 () Bool)

(assert (=> b!5675203 m!6636132))

(assert (=> b!5674290 d!1791400))

(declare-fun b!5675204 () Bool)

(declare-fun res!2398395 () Bool)

(declare-fun e!3493292 () Bool)

(assert (=> b!5675204 (=> (not res!2398395) (not e!3493292))))

(declare-fun lt!2269483 () Option!15674)

(assert (=> b!5675204 (= res!2398395 (matchR!7850 (regTwo!31842 (regOne!31842 r!7292)) (_1!36065 (get!21764 lt!2269483))))))

(declare-fun b!5675206 () Bool)

(declare-fun e!3493296 () Option!15674)

(assert (=> b!5675206 (= e!3493296 None!15673)))

(declare-fun b!5675207 () Bool)

(declare-fun res!2398397 () Bool)

(assert (=> b!5675207 (=> (not res!2398397) (not e!3493292))))

(assert (=> b!5675207 (= res!2398397 (matchR!7850 lt!2269319 (_2!36065 (get!21764 lt!2269483))))))

(declare-fun b!5675208 () Bool)

(declare-fun e!3493293 () Option!15674)

(assert (=> b!5675208 (= e!3493293 (Some!15673 (tuple2!65525 Nil!63171 s!2326)))))

(declare-fun b!5675209 () Bool)

(declare-fun lt!2269484 () Unit!156192)

(declare-fun lt!2269485 () Unit!156192)

(assert (=> b!5675209 (= lt!2269484 lt!2269485)))

(assert (=> b!5675209 (= (++!13864 (++!13864 Nil!63171 (Cons!63171 (h!69619 s!2326) Nil!63171)) (t!376603 s!2326)) s!2326)))

(assert (=> b!5675209 (= lt!2269485 (lemmaMoveElementToOtherListKeepsConcatEq!2033 Nil!63171 (h!69619 s!2326) (t!376603 s!2326) s!2326))))

(assert (=> b!5675209 (= e!3493296 (findConcatSeparation!2088 (regTwo!31842 (regOne!31842 r!7292)) lt!2269319 (++!13864 Nil!63171 (Cons!63171 (h!69619 s!2326) Nil!63171)) (t!376603 s!2326) s!2326))))

(declare-fun b!5675210 () Bool)

(declare-fun e!3493294 () Bool)

(assert (=> b!5675210 (= e!3493294 (matchR!7850 lt!2269319 s!2326))))

(declare-fun d!1791402 () Bool)

(declare-fun e!3493295 () Bool)

(assert (=> d!1791402 e!3493295))

(declare-fun res!2398396 () Bool)

(assert (=> d!1791402 (=> res!2398396 e!3493295)))

(assert (=> d!1791402 (= res!2398396 e!3493292)))

(declare-fun res!2398398 () Bool)

(assert (=> d!1791402 (=> (not res!2398398) (not e!3493292))))

(assert (=> d!1791402 (= res!2398398 (isDefined!12377 lt!2269483))))

(assert (=> d!1791402 (= lt!2269483 e!3493293)))

(declare-fun c!998353 () Bool)

(assert (=> d!1791402 (= c!998353 e!3493294)))

(declare-fun res!2398394 () Bool)

(assert (=> d!1791402 (=> (not res!2398394) (not e!3493294))))

(assert (=> d!1791402 (= res!2398394 (matchR!7850 (regTwo!31842 (regOne!31842 r!7292)) Nil!63171))))

(assert (=> d!1791402 (validRegex!7401 (regTwo!31842 (regOne!31842 r!7292)))))

(assert (=> d!1791402 (= (findConcatSeparation!2088 (regTwo!31842 (regOne!31842 r!7292)) lt!2269319 Nil!63171 s!2326 s!2326) lt!2269483)))

(declare-fun b!5675205 () Bool)

(assert (=> b!5675205 (= e!3493292 (= (++!13864 (_1!36065 (get!21764 lt!2269483)) (_2!36065 (get!21764 lt!2269483))) s!2326))))

(declare-fun b!5675211 () Bool)

(assert (=> b!5675211 (= e!3493295 (not (isDefined!12377 lt!2269483)))))

(declare-fun b!5675212 () Bool)

(assert (=> b!5675212 (= e!3493293 e!3493296)))

(declare-fun c!998352 () Bool)

(assert (=> b!5675212 (= c!998352 ((_ is Nil!63171) s!2326))))

(assert (= (and d!1791402 res!2398394) b!5675210))

(assert (= (and d!1791402 c!998353) b!5675208))

(assert (= (and d!1791402 (not c!998353)) b!5675212))

(assert (= (and b!5675212 c!998352) b!5675206))

(assert (= (and b!5675212 (not c!998352)) b!5675209))

(assert (= (and d!1791402 res!2398398) b!5675204))

(assert (= (and b!5675204 res!2398395) b!5675207))

(assert (= (and b!5675207 res!2398397) b!5675205))

(assert (= (and d!1791402 (not res!2398396)) b!5675211))

(declare-fun m!6636134 () Bool)

(assert (=> b!5675205 m!6636134))

(declare-fun m!6636136 () Bool)

(assert (=> b!5675205 m!6636136))

(declare-fun m!6636138 () Bool)

(assert (=> b!5675210 m!6636138))

(declare-fun m!6636140 () Bool)

(assert (=> d!1791402 m!6636140))

(declare-fun m!6636142 () Bool)

(assert (=> d!1791402 m!6636142))

(assert (=> d!1791402 m!6636062))

(assert (=> b!5675204 m!6636134))

(declare-fun m!6636144 () Bool)

(assert (=> b!5675204 m!6636144))

(assert (=> b!5675209 m!6635628))

(assert (=> b!5675209 m!6635628))

(assert (=> b!5675209 m!6635630))

(assert (=> b!5675209 m!6635632))

(assert (=> b!5675209 m!6635628))

(declare-fun m!6636146 () Bool)

(assert (=> b!5675209 m!6636146))

(assert (=> b!5675207 m!6636134))

(declare-fun m!6636148 () Bool)

(assert (=> b!5675207 m!6636148))

(assert (=> b!5675211 m!6636140))

(assert (=> b!5674290 d!1791402))

(declare-fun b!5675213 () Bool)

(declare-fun res!2398400 () Bool)

(declare-fun e!3493297 () Bool)

(assert (=> b!5675213 (=> (not res!2398400) (not e!3493297))))

(declare-fun lt!2269486 () Option!15674)

(assert (=> b!5675213 (= res!2398400 (matchR!7850 (regOne!31842 (regOne!31842 r!7292)) (_1!36065 (get!21764 lt!2269486))))))

(declare-fun b!5675215 () Bool)

(declare-fun e!3493301 () Option!15674)

(assert (=> b!5675215 (= e!3493301 None!15673)))

(declare-fun b!5675216 () Bool)

(declare-fun res!2398402 () Bool)

(assert (=> b!5675216 (=> (not res!2398402) (not e!3493297))))

(assert (=> b!5675216 (= res!2398402 (matchR!7850 lt!2269332 (_2!36065 (get!21764 lt!2269486))))))

(declare-fun b!5675217 () Bool)

(declare-fun e!3493298 () Option!15674)

(assert (=> b!5675217 (= e!3493298 (Some!15673 (tuple2!65525 Nil!63171 s!2326)))))

(declare-fun b!5675218 () Bool)

(declare-fun lt!2269487 () Unit!156192)

(declare-fun lt!2269488 () Unit!156192)

(assert (=> b!5675218 (= lt!2269487 lt!2269488)))

(assert (=> b!5675218 (= (++!13864 (++!13864 Nil!63171 (Cons!63171 (h!69619 s!2326) Nil!63171)) (t!376603 s!2326)) s!2326)))

(assert (=> b!5675218 (= lt!2269488 (lemmaMoveElementToOtherListKeepsConcatEq!2033 Nil!63171 (h!69619 s!2326) (t!376603 s!2326) s!2326))))

(assert (=> b!5675218 (= e!3493301 (findConcatSeparation!2088 (regOne!31842 (regOne!31842 r!7292)) lt!2269332 (++!13864 Nil!63171 (Cons!63171 (h!69619 s!2326) Nil!63171)) (t!376603 s!2326) s!2326))))

(declare-fun b!5675219 () Bool)

(declare-fun e!3493299 () Bool)

(assert (=> b!5675219 (= e!3493299 (matchR!7850 lt!2269332 s!2326))))

(declare-fun d!1791404 () Bool)

(declare-fun e!3493300 () Bool)

(assert (=> d!1791404 e!3493300))

(declare-fun res!2398401 () Bool)

(assert (=> d!1791404 (=> res!2398401 e!3493300)))

(assert (=> d!1791404 (= res!2398401 e!3493297)))

(declare-fun res!2398403 () Bool)

(assert (=> d!1791404 (=> (not res!2398403) (not e!3493297))))

(assert (=> d!1791404 (= res!2398403 (isDefined!12377 lt!2269486))))

(assert (=> d!1791404 (= lt!2269486 e!3493298)))

(declare-fun c!998355 () Bool)

(assert (=> d!1791404 (= c!998355 e!3493299)))

(declare-fun res!2398399 () Bool)

(assert (=> d!1791404 (=> (not res!2398399) (not e!3493299))))

(assert (=> d!1791404 (= res!2398399 (matchR!7850 (regOne!31842 (regOne!31842 r!7292)) Nil!63171))))

(assert (=> d!1791404 (validRegex!7401 (regOne!31842 (regOne!31842 r!7292)))))

(assert (=> d!1791404 (= (findConcatSeparation!2088 (regOne!31842 (regOne!31842 r!7292)) lt!2269332 Nil!63171 s!2326 s!2326) lt!2269486)))

(declare-fun b!5675214 () Bool)

(assert (=> b!5675214 (= e!3493297 (= (++!13864 (_1!36065 (get!21764 lt!2269486)) (_2!36065 (get!21764 lt!2269486))) s!2326))))

(declare-fun b!5675220 () Bool)

(assert (=> b!5675220 (= e!3493300 (not (isDefined!12377 lt!2269486)))))

(declare-fun b!5675221 () Bool)

(assert (=> b!5675221 (= e!3493298 e!3493301)))

(declare-fun c!998354 () Bool)

(assert (=> b!5675221 (= c!998354 ((_ is Nil!63171) s!2326))))

(assert (= (and d!1791404 res!2398399) b!5675219))

(assert (= (and d!1791404 c!998355) b!5675217))

(assert (= (and d!1791404 (not c!998355)) b!5675221))

(assert (= (and b!5675221 c!998354) b!5675215))

(assert (= (and b!5675221 (not c!998354)) b!5675218))

(assert (= (and d!1791404 res!2398403) b!5675213))

(assert (= (and b!5675213 res!2398400) b!5675216))

(assert (= (and b!5675216 res!2398402) b!5675214))

(assert (= (and d!1791404 (not res!2398401)) b!5675220))

(declare-fun m!6636150 () Bool)

(assert (=> b!5675214 m!6636150))

(declare-fun m!6636152 () Bool)

(assert (=> b!5675214 m!6636152))

(assert (=> b!5675219 m!6635324))

(declare-fun m!6636154 () Bool)

(assert (=> d!1791404 m!6636154))

(declare-fun m!6636156 () Bool)

(assert (=> d!1791404 m!6636156))

(assert (=> d!1791404 m!6636002))

(assert (=> b!5675213 m!6636150))

(declare-fun m!6636158 () Bool)

(assert (=> b!5675213 m!6636158))

(assert (=> b!5675218 m!6635628))

(assert (=> b!5675218 m!6635628))

(assert (=> b!5675218 m!6635630))

(assert (=> b!5675218 m!6635632))

(assert (=> b!5675218 m!6635628))

(declare-fun m!6636160 () Bool)

(assert (=> b!5675218 m!6636160))

(assert (=> b!5675216 m!6636150))

(declare-fun m!6636162 () Bool)

(assert (=> b!5675216 m!6636162))

(assert (=> b!5675220 m!6636154))

(assert (=> b!5674290 d!1791404))

(declare-fun d!1791406 () Bool)

(assert (=> d!1791406 (= (Exists!2765 lambda!305580) (choose!42914 lambda!305580))))

(declare-fun bs!1323130 () Bool)

(assert (= bs!1323130 d!1791406))

(declare-fun m!6636164 () Bool)

(assert (=> bs!1323130 m!6636164))

(assert (=> b!5674290 d!1791406))

(declare-fun d!1791408 () Bool)

(assert (=> d!1791408 (= (matchR!7850 lt!2269338 s!2326) (matchRSpec!2768 lt!2269338 s!2326))))

(declare-fun lt!2269489 () Unit!156192)

(assert (=> d!1791408 (= lt!2269489 (choose!42920 lt!2269338 s!2326))))

(assert (=> d!1791408 (validRegex!7401 lt!2269338)))

(assert (=> d!1791408 (= (mainMatchTheorem!2768 lt!2269338 s!2326) lt!2269489)))

(declare-fun bs!1323131 () Bool)

(assert (= bs!1323131 d!1791408))

(assert (=> bs!1323131 m!6635314))

(assert (=> bs!1323131 m!6635312))

(declare-fun m!6636166 () Bool)

(assert (=> bs!1323131 m!6636166))

(assert (=> bs!1323131 m!6636086))

(assert (=> b!5674290 d!1791408))

(declare-fun bm!430568 () Bool)

(declare-fun call!430573 () Bool)

(assert (=> bm!430568 (= call!430573 (isEmpty!35020 s!2326))))

(declare-fun b!5675223 () Bool)

(declare-fun e!3493308 () Bool)

(assert (=> b!5675223 (= e!3493308 (not (= (head!12043 s!2326) (c!998089 (Concat!24510 lt!2269325 (regTwo!31842 r!7292))))))))

(declare-fun e!3493302 () Bool)

(declare-fun b!5675224 () Bool)

(assert (=> b!5675224 (= e!3493302 (matchR!7850 (derivativeStep!4484 (Concat!24510 lt!2269325 (regTwo!31842 r!7292)) (head!12043 s!2326)) (tail!11138 s!2326)))))

(declare-fun b!5675225 () Bool)

(declare-fun res!2398406 () Bool)

(declare-fun e!3493306 () Bool)

(assert (=> b!5675225 (=> res!2398406 e!3493306)))

(assert (=> b!5675225 (= res!2398406 (not ((_ is ElementMatch!15665) (Concat!24510 lt!2269325 (regTwo!31842 r!7292)))))))

(declare-fun e!3493303 () Bool)

(assert (=> b!5675225 (= e!3493303 e!3493306)))

(declare-fun b!5675226 () Bool)

(declare-fun res!2398411 () Bool)

(assert (=> b!5675226 (=> res!2398411 e!3493308)))

(assert (=> b!5675226 (= res!2398411 (not (isEmpty!35020 (tail!11138 s!2326))))))

(declare-fun b!5675227 () Bool)

(declare-fun res!2398404 () Bool)

(assert (=> b!5675227 (=> res!2398404 e!3493306)))

(declare-fun e!3493305 () Bool)

(assert (=> b!5675227 (= res!2398404 e!3493305)))

(declare-fun res!2398407 () Bool)

(assert (=> b!5675227 (=> (not res!2398407) (not e!3493305))))

(declare-fun lt!2269490 () Bool)

(assert (=> b!5675227 (= res!2398407 lt!2269490)))

(declare-fun b!5675228 () Bool)

(declare-fun e!3493307 () Bool)

(assert (=> b!5675228 (= e!3493306 e!3493307)))

(declare-fun res!2398409 () Bool)

(assert (=> b!5675228 (=> (not res!2398409) (not e!3493307))))

(assert (=> b!5675228 (= res!2398409 (not lt!2269490))))

(declare-fun b!5675229 () Bool)

(assert (=> b!5675229 (= e!3493303 (not lt!2269490))))

(declare-fun b!5675230 () Bool)

(assert (=> b!5675230 (= e!3493302 (nullable!5697 (Concat!24510 lt!2269325 (regTwo!31842 r!7292))))))

(declare-fun b!5675231 () Bool)

(assert (=> b!5675231 (= e!3493305 (= (head!12043 s!2326) (c!998089 (Concat!24510 lt!2269325 (regTwo!31842 r!7292)))))))

(declare-fun b!5675232 () Bool)

(assert (=> b!5675232 (= e!3493307 e!3493308)))

(declare-fun res!2398408 () Bool)

(assert (=> b!5675232 (=> res!2398408 e!3493308)))

(assert (=> b!5675232 (= res!2398408 call!430573)))

(declare-fun b!5675233 () Bool)

(declare-fun res!2398410 () Bool)

(assert (=> b!5675233 (=> (not res!2398410) (not e!3493305))))

(assert (=> b!5675233 (= res!2398410 (not call!430573))))

(declare-fun b!5675222 () Bool)

(declare-fun e!3493304 () Bool)

(assert (=> b!5675222 (= e!3493304 e!3493303)))

(declare-fun c!998356 () Bool)

(assert (=> b!5675222 (= c!998356 ((_ is EmptyLang!15665) (Concat!24510 lt!2269325 (regTwo!31842 r!7292))))))

(declare-fun d!1791410 () Bool)

(assert (=> d!1791410 e!3493304))

(declare-fun c!998357 () Bool)

(assert (=> d!1791410 (= c!998357 ((_ is EmptyExpr!15665) (Concat!24510 lt!2269325 (regTwo!31842 r!7292))))))

(assert (=> d!1791410 (= lt!2269490 e!3493302)))

(declare-fun c!998358 () Bool)

(assert (=> d!1791410 (= c!998358 (isEmpty!35020 s!2326))))

(assert (=> d!1791410 (validRegex!7401 (Concat!24510 lt!2269325 (regTwo!31842 r!7292)))))

(assert (=> d!1791410 (= (matchR!7850 (Concat!24510 lt!2269325 (regTwo!31842 r!7292)) s!2326) lt!2269490)))

(declare-fun b!5675234 () Bool)

(assert (=> b!5675234 (= e!3493304 (= lt!2269490 call!430573))))

(declare-fun b!5675235 () Bool)

(declare-fun res!2398405 () Bool)

(assert (=> b!5675235 (=> (not res!2398405) (not e!3493305))))

(assert (=> b!5675235 (= res!2398405 (isEmpty!35020 (tail!11138 s!2326)))))

(assert (= (and d!1791410 c!998358) b!5675230))

(assert (= (and d!1791410 (not c!998358)) b!5675224))

(assert (= (and d!1791410 c!998357) b!5675234))

(assert (= (and d!1791410 (not c!998357)) b!5675222))

(assert (= (and b!5675222 c!998356) b!5675229))

(assert (= (and b!5675222 (not c!998356)) b!5675225))

(assert (= (and b!5675225 (not res!2398406)) b!5675227))

(assert (= (and b!5675227 res!2398407) b!5675233))

(assert (= (and b!5675233 res!2398410) b!5675235))

(assert (= (and b!5675235 res!2398405) b!5675231))

(assert (= (and b!5675227 (not res!2398404)) b!5675228))

(assert (= (and b!5675228 res!2398409) b!5675232))

(assert (= (and b!5675232 (not res!2398408)) b!5675226))

(assert (= (and b!5675226 (not res!2398411)) b!5675223))

(assert (= (or b!5675234 b!5675232 b!5675233) bm!430568))

(assert (=> b!5675231 m!6635844))

(assert (=> b!5675226 m!6635846))

(assert (=> b!5675226 m!6635846))

(assert (=> b!5675226 m!6635848))

(assert (=> b!5675224 m!6635844))

(assert (=> b!5675224 m!6635844))

(declare-fun m!6636168 () Bool)

(assert (=> b!5675224 m!6636168))

(assert (=> b!5675224 m!6635846))

(assert (=> b!5675224 m!6636168))

(assert (=> b!5675224 m!6635846))

(declare-fun m!6636170 () Bool)

(assert (=> b!5675224 m!6636170))

(assert (=> bm!430568 m!6635822))

(assert (=> d!1791410 m!6635822))

(declare-fun m!6636172 () Bool)

(assert (=> d!1791410 m!6636172))

(declare-fun m!6636174 () Bool)

(assert (=> b!5675230 m!6636174))

(assert (=> b!5675235 m!6635846))

(assert (=> b!5675235 m!6635846))

(assert (=> b!5675235 m!6635848))

(assert (=> b!5675223 m!6635844))

(assert (=> b!5674289 d!1791410))

(declare-fun d!1791412 () Bool)

(declare-fun choose!42925 ((InoxSet Context!10098) Int) (InoxSet Context!10098))

(assert (=> d!1791412 (= (flatMap!1278 lt!2269321 lambda!305577) (choose!42925 lt!2269321 lambda!305577))))

(declare-fun bs!1323132 () Bool)

(assert (= bs!1323132 d!1791412))

(declare-fun m!6636176 () Bool)

(assert (=> bs!1323132 m!6636176))

(assert (=> b!5674309 d!1791412))

(declare-fun b!5675246 () Bool)

(declare-fun e!3493317 () (InoxSet Context!10098))

(declare-fun e!3493316 () (InoxSet Context!10098))

(assert (=> b!5675246 (= e!3493317 e!3493316)))

(declare-fun c!998364 () Bool)

(assert (=> b!5675246 (= c!998364 ((_ is Cons!63170) (exprs!5549 lt!2269334)))))

(declare-fun bm!430571 () Bool)

(declare-fun call!430576 () (InoxSet Context!10098))

(assert (=> bm!430571 (= call!430576 (derivationStepZipperDown!1007 (h!69618 (exprs!5549 lt!2269334)) (Context!10099 (t!376602 (exprs!5549 lt!2269334))) (h!69619 s!2326)))))

(declare-fun b!5675247 () Bool)

(assert (=> b!5675247 (= e!3493317 ((_ map or) call!430576 (derivationStepZipperUp!933 (Context!10099 (t!376602 (exprs!5549 lt!2269334))) (h!69619 s!2326))))))

(declare-fun b!5675248 () Bool)

(assert (=> b!5675248 (= e!3493316 ((as const (Array Context!10098 Bool)) false))))

(declare-fun b!5675249 () Bool)

(assert (=> b!5675249 (= e!3493316 call!430576)))

(declare-fun b!5675250 () Bool)

(declare-fun e!3493315 () Bool)

(assert (=> b!5675250 (= e!3493315 (nullable!5697 (h!69618 (exprs!5549 lt!2269334))))))

(declare-fun d!1791414 () Bool)

(declare-fun c!998363 () Bool)

(assert (=> d!1791414 (= c!998363 e!3493315)))

(declare-fun res!2398414 () Bool)

(assert (=> d!1791414 (=> (not res!2398414) (not e!3493315))))

(assert (=> d!1791414 (= res!2398414 ((_ is Cons!63170) (exprs!5549 lt!2269334)))))

(assert (=> d!1791414 (= (derivationStepZipperUp!933 lt!2269334 (h!69619 s!2326)) e!3493317)))

(assert (= (and d!1791414 res!2398414) b!5675250))

(assert (= (and d!1791414 c!998363) b!5675247))

(assert (= (and d!1791414 (not c!998363)) b!5675246))

(assert (= (and b!5675246 c!998364) b!5675249))

(assert (= (and b!5675246 (not c!998364)) b!5675248))

(assert (= (or b!5675247 b!5675249) bm!430571))

(declare-fun m!6636178 () Bool)

(assert (=> bm!430571 m!6636178))

(declare-fun m!6636180 () Bool)

(assert (=> b!5675247 m!6636180))

(declare-fun m!6636182 () Bool)

(assert (=> b!5675250 m!6636182))

(assert (=> b!5674309 d!1791414))

(declare-fun d!1791416 () Bool)

(declare-fun dynLambda!24719 (Int Context!10098) (InoxSet Context!10098))

(assert (=> d!1791416 (= (flatMap!1278 lt!2269321 lambda!305577) (dynLambda!24719 lambda!305577 lt!2269334))))

(declare-fun lt!2269493 () Unit!156192)

(declare-fun choose!42926 ((InoxSet Context!10098) Context!10098 Int) Unit!156192)

(assert (=> d!1791416 (= lt!2269493 (choose!42926 lt!2269321 lt!2269334 lambda!305577))))

(assert (=> d!1791416 (= lt!2269321 (store ((as const (Array Context!10098 Bool)) false) lt!2269334 true))))

(assert (=> d!1791416 (= (lemmaFlatMapOnSingletonSet!810 lt!2269321 lt!2269334 lambda!305577) lt!2269493)))

(declare-fun b_lambda!214631 () Bool)

(assert (=> (not b_lambda!214631) (not d!1791416)))

(declare-fun bs!1323133 () Bool)

(assert (= bs!1323133 d!1791416))

(assert (=> bs!1323133 m!6635292))

(declare-fun m!6636184 () Bool)

(assert (=> bs!1323133 m!6636184))

(declare-fun m!6636186 () Bool)

(assert (=> bs!1323133 m!6636186))

(assert (=> bs!1323133 m!6635294))

(assert (=> b!5674309 d!1791416))

(declare-fun bs!1323134 () Bool)

(declare-fun d!1791418 () Bool)

(assert (= bs!1323134 (and d!1791418 b!5674301)))

(declare-fun lambda!305681 () Int)

(assert (=> bs!1323134 (= lambda!305681 lambda!305577)))

(assert (=> d!1791418 true))

(assert (=> d!1791418 (= (derivationStepZipper!1750 lt!2269321 (h!69619 s!2326)) (flatMap!1278 lt!2269321 lambda!305681))))

(declare-fun bs!1323135 () Bool)

(assert (= bs!1323135 d!1791418))

(declare-fun m!6636188 () Bool)

(assert (=> bs!1323135 m!6636188))

(assert (=> b!5674309 d!1791418))

(declare-fun d!1791420 () Bool)

(assert (=> d!1791420 (= (isEmpty!35018 (t!376604 zl!343)) ((_ is Nil!63172) (t!376604 zl!343)))))

(assert (=> b!5674304 d!1791420))

(declare-fun b!5675259 () Bool)

(assert (=> b!5675259 true))

(declare-fun bs!1323136 () Bool)

(declare-fun b!5675261 () Bool)

(assert (= bs!1323136 (and b!5675261 b!5675259)))

(declare-fun lt!2269502 () Int)

(declare-fun lambda!305690 () Int)

(declare-fun lambda!305689 () Int)

(declare-fun lt!2269503 () Int)

(assert (=> bs!1323136 (= (= lt!2269502 lt!2269503) (= lambda!305690 lambda!305689))))

(assert (=> b!5675261 true))

(declare-fun d!1791422 () Bool)

(declare-fun e!3493322 () Bool)

(assert (=> d!1791422 e!3493322))

(declare-fun res!2398417 () Bool)

(assert (=> d!1791422 (=> (not res!2398417) (not e!3493322))))

(assert (=> d!1791422 (= res!2398417 (>= lt!2269502 0))))

(declare-fun e!3493323 () Int)

(assert (=> d!1791422 (= lt!2269502 e!3493323)))

(declare-fun c!998375 () Bool)

(assert (=> d!1791422 (= c!998375 ((_ is Cons!63172) lt!2269304))))

(assert (=> d!1791422 (= (zipperDepth!228 lt!2269304) lt!2269502)))

(assert (=> b!5675259 (= e!3493323 lt!2269503)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!126 (Context!10098) Int)

(assert (=> b!5675259 (= lt!2269503 (maxBigInt!0 (contextDepth!126 (h!69620 lt!2269304)) (zipperDepth!228 (t!376604 lt!2269304))))))

(declare-fun lt!2269505 () Unit!156192)

(declare-fun lambda!305688 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!116 (List!63296 Int Int Int) Unit!156192)

(assert (=> b!5675259 (= lt!2269505 (lemmaForallContextDepthBiggerThanTransitive!116 (t!376604 lt!2269304) lt!2269503 (zipperDepth!228 (t!376604 lt!2269304)) lambda!305688))))

(declare-fun forall!14814 (List!63296 Int) Bool)

(assert (=> b!5675259 (forall!14814 (t!376604 lt!2269304) lambda!305689)))

(declare-fun lt!2269504 () Unit!156192)

(assert (=> b!5675259 (= lt!2269504 lt!2269505)))

(declare-fun b!5675260 () Bool)

(assert (=> b!5675260 (= e!3493323 0)))

(assert (=> b!5675261 (= e!3493322 (forall!14814 lt!2269304 lambda!305690))))

(assert (= (and d!1791422 c!998375) b!5675259))

(assert (= (and d!1791422 (not c!998375)) b!5675260))

(assert (= (and d!1791422 res!2398417) b!5675261))

(declare-fun m!6636190 () Bool)

(assert (=> b!5675259 m!6636190))

(declare-fun m!6636192 () Bool)

(assert (=> b!5675259 m!6636192))

(declare-fun m!6636194 () Bool)

(assert (=> b!5675259 m!6636194))

(assert (=> b!5675259 m!6636190))

(declare-fun m!6636196 () Bool)

(assert (=> b!5675259 m!6636196))

(assert (=> b!5675259 m!6636190))

(assert (=> b!5675259 m!6636194))

(declare-fun m!6636198 () Bool)

(assert (=> b!5675259 m!6636198))

(declare-fun m!6636200 () Bool)

(assert (=> b!5675261 m!6636200))

(assert (=> b!5674303 d!1791422))

(declare-fun bs!1323137 () Bool)

(declare-fun b!5675264 () Bool)

(assert (= bs!1323137 (and b!5675264 b!5675259)))

(declare-fun lambda!305691 () Int)

(assert (=> bs!1323137 (= lambda!305691 lambda!305688)))

(declare-fun lambda!305692 () Int)

(declare-fun lt!2269507 () Int)

(assert (=> bs!1323137 (= (= lt!2269507 lt!2269503) (= lambda!305692 lambda!305689))))

(declare-fun bs!1323138 () Bool)

(assert (= bs!1323138 (and b!5675264 b!5675261)))

(assert (=> bs!1323138 (= (= lt!2269507 lt!2269502) (= lambda!305692 lambda!305690))))

(assert (=> b!5675264 true))

(declare-fun bs!1323139 () Bool)

(declare-fun b!5675266 () Bool)

(assert (= bs!1323139 (and b!5675266 b!5675259)))

(declare-fun lt!2269506 () Int)

(declare-fun lambda!305693 () Int)

(assert (=> bs!1323139 (= (= lt!2269506 lt!2269503) (= lambda!305693 lambda!305689))))

(declare-fun bs!1323140 () Bool)

(assert (= bs!1323140 (and b!5675266 b!5675261)))

(assert (=> bs!1323140 (= (= lt!2269506 lt!2269502) (= lambda!305693 lambda!305690))))

(declare-fun bs!1323141 () Bool)

(assert (= bs!1323141 (and b!5675266 b!5675264)))

(assert (=> bs!1323141 (= (= lt!2269506 lt!2269507) (= lambda!305693 lambda!305692))))

(assert (=> b!5675266 true))

(declare-fun d!1791424 () Bool)

(declare-fun e!3493324 () Bool)

(assert (=> d!1791424 e!3493324))

(declare-fun res!2398418 () Bool)

(assert (=> d!1791424 (=> (not res!2398418) (not e!3493324))))

(assert (=> d!1791424 (= res!2398418 (>= lt!2269506 0))))

(declare-fun e!3493325 () Int)

(assert (=> d!1791424 (= lt!2269506 e!3493325)))

(declare-fun c!998376 () Bool)

(assert (=> d!1791424 (= c!998376 ((_ is Cons!63172) zl!343))))

(assert (=> d!1791424 (= (zipperDepth!228 zl!343) lt!2269506)))

(assert (=> b!5675264 (= e!3493325 lt!2269507)))

(assert (=> b!5675264 (= lt!2269507 (maxBigInt!0 (contextDepth!126 (h!69620 zl!343)) (zipperDepth!228 (t!376604 zl!343))))))

(declare-fun lt!2269509 () Unit!156192)

(assert (=> b!5675264 (= lt!2269509 (lemmaForallContextDepthBiggerThanTransitive!116 (t!376604 zl!343) lt!2269507 (zipperDepth!228 (t!376604 zl!343)) lambda!305691))))

(assert (=> b!5675264 (forall!14814 (t!376604 zl!343) lambda!305692)))

(declare-fun lt!2269508 () Unit!156192)

(assert (=> b!5675264 (= lt!2269508 lt!2269509)))

(declare-fun b!5675265 () Bool)

(assert (=> b!5675265 (= e!3493325 0)))

(assert (=> b!5675266 (= e!3493324 (forall!14814 zl!343 lambda!305693))))

(assert (= (and d!1791424 c!998376) b!5675264))

(assert (= (and d!1791424 (not c!998376)) b!5675265))

(assert (= (and d!1791424 res!2398418) b!5675266))

(declare-fun m!6636202 () Bool)

(assert (=> b!5675264 m!6636202))

(declare-fun m!6636204 () Bool)

(assert (=> b!5675264 m!6636204))

(declare-fun m!6636206 () Bool)

(assert (=> b!5675264 m!6636206))

(assert (=> b!5675264 m!6636202))

(declare-fun m!6636208 () Bool)

(assert (=> b!5675264 m!6636208))

(assert (=> b!5675264 m!6636202))

(assert (=> b!5675264 m!6636206))

(declare-fun m!6636210 () Bool)

(assert (=> b!5675264 m!6636210))

(declare-fun m!6636212 () Bool)

(assert (=> b!5675266 m!6636212))

(assert (=> b!5674303 d!1791424))

(declare-fun d!1791426 () Bool)

(declare-fun lt!2269512 () Int)

(assert (=> d!1791426 (>= lt!2269512 0)))

(declare-fun e!3493328 () Int)

(assert (=> d!1791426 (= lt!2269512 e!3493328)))

(declare-fun c!998379 () Bool)

(assert (=> d!1791426 (= c!998379 ((_ is Cons!63172) lt!2269304))))

(assert (=> d!1791426 (= (zipperDepthTotal!262 lt!2269304) lt!2269512)))

(declare-fun b!5675271 () Bool)

(assert (=> b!5675271 (= e!3493328 (+ (contextDepthTotal!240 (h!69620 lt!2269304)) (zipperDepthTotal!262 (t!376604 lt!2269304))))))

(declare-fun b!5675272 () Bool)

(assert (=> b!5675272 (= e!3493328 0)))

(assert (= (and d!1791426 c!998379) b!5675271))

(assert (= (and d!1791426 (not c!998379)) b!5675272))

(declare-fun m!6636214 () Bool)

(assert (=> b!5675271 m!6636214))

(declare-fun m!6636216 () Bool)

(assert (=> b!5675271 m!6636216))

(assert (=> b!5674283 d!1791426))

(declare-fun d!1791428 () Bool)

(declare-fun lt!2269513 () Int)

(assert (=> d!1791428 (>= lt!2269513 0)))

(declare-fun e!3493329 () Int)

(assert (=> d!1791428 (= lt!2269513 e!3493329)))

(declare-fun c!998380 () Bool)

(assert (=> d!1791428 (= c!998380 ((_ is Cons!63172) zl!343))))

(assert (=> d!1791428 (= (zipperDepthTotal!262 zl!343) lt!2269513)))

(declare-fun b!5675273 () Bool)

(assert (=> b!5675273 (= e!3493329 (+ (contextDepthTotal!240 (h!69620 zl!343)) (zipperDepthTotal!262 (t!376604 zl!343))))))

(declare-fun b!5675274 () Bool)

(assert (=> b!5675274 (= e!3493329 0)))

(assert (= (and d!1791428 c!998380) b!5675273))

(assert (= (and d!1791428 (not c!998380)) b!5675274))

(assert (=> b!5675273 m!6635380))

(declare-fun m!6636218 () Bool)

(assert (=> b!5675273 m!6636218))

(assert (=> b!5674283 d!1791428))

(declare-fun d!1791430 () Bool)

(declare-fun c!998381 () Bool)

(assert (=> d!1791430 (= c!998381 (isEmpty!35020 (t!376603 s!2326)))))

(declare-fun e!3493330 () Bool)

(assert (=> d!1791430 (= (matchZipper!1803 lt!2269314 (t!376603 s!2326)) e!3493330)))

(declare-fun b!5675275 () Bool)

(assert (=> b!5675275 (= e!3493330 (nullableZipper!1631 lt!2269314))))

(declare-fun b!5675276 () Bool)

(assert (=> b!5675276 (= e!3493330 (matchZipper!1803 (derivationStepZipper!1750 lt!2269314 (head!12043 (t!376603 s!2326))) (tail!11138 (t!376603 s!2326))))))

(assert (= (and d!1791430 c!998381) b!5675275))

(assert (= (and d!1791430 (not c!998381)) b!5675276))

(assert (=> d!1791430 m!6635540))

(declare-fun m!6636220 () Bool)

(assert (=> b!5675275 m!6636220))

(assert (=> b!5675276 m!6635544))

(assert (=> b!5675276 m!6635544))

(declare-fun m!6636222 () Bool)

(assert (=> b!5675276 m!6636222))

(assert (=> b!5675276 m!6635548))

(assert (=> b!5675276 m!6636222))

(assert (=> b!5675276 m!6635548))

(declare-fun m!6636224 () Bool)

(assert (=> b!5675276 m!6636224))

(assert (=> b!5674282 d!1791430))

(declare-fun b!5675299 () Bool)

(declare-fun e!3493343 () (InoxSet Context!10098))

(declare-fun e!3493348 () (InoxSet Context!10098))

(assert (=> b!5675299 (= e!3493343 e!3493348)))

(declare-fun c!998394 () Bool)

(assert (=> b!5675299 (= c!998394 ((_ is Union!15665) (regOne!31842 (regOne!31842 r!7292))))))

(declare-fun bm!430584 () Bool)

(declare-fun call!430590 () List!63294)

(declare-fun call!430589 () (InoxSet Context!10098))

(assert (=> bm!430584 (= call!430589 (derivationStepZipperDown!1007 (ite c!998394 (regOne!31843 (regOne!31842 (regOne!31842 r!7292))) (regOne!31842 (regOne!31842 (regOne!31842 r!7292)))) (ite c!998394 (Context!10099 lt!2269335) (Context!10099 call!430590)) (h!69619 s!2326)))))

(declare-fun b!5675300 () Bool)

(declare-fun e!3493346 () (InoxSet Context!10098))

(declare-fun call!430594 () (InoxSet Context!10098))

(assert (=> b!5675300 (= e!3493346 call!430594)))

(declare-fun bm!430585 () Bool)

(declare-fun call!430591 () (InoxSet Context!10098))

(declare-fun call!430592 () (InoxSet Context!10098))

(assert (=> bm!430585 (= call!430591 call!430592)))

(declare-fun b!5675301 () Bool)

(assert (=> b!5675301 (= e!3493343 (store ((as const (Array Context!10098 Bool)) false) (Context!10099 lt!2269335) true))))

(declare-fun bm!430586 () Bool)

(assert (=> bm!430586 (= call!430594 call!430591)))

(declare-fun c!998396 () Bool)

(declare-fun call!430593 () List!63294)

(declare-fun c!998393 () Bool)

(declare-fun bm!430587 () Bool)

(assert (=> bm!430587 (= call!430592 (derivationStepZipperDown!1007 (ite c!998394 (regTwo!31843 (regOne!31842 (regOne!31842 r!7292))) (ite c!998396 (regTwo!31842 (regOne!31842 (regOne!31842 r!7292))) (ite c!998393 (regOne!31842 (regOne!31842 (regOne!31842 r!7292))) (reg!15994 (regOne!31842 (regOne!31842 r!7292)))))) (ite (or c!998394 c!998396) (Context!10099 lt!2269335) (Context!10099 call!430593)) (h!69619 s!2326)))))

(declare-fun b!5675302 () Bool)

(declare-fun e!3493347 () Bool)

(assert (=> b!5675302 (= c!998396 e!3493347)))

(declare-fun res!2398421 () Bool)

(assert (=> b!5675302 (=> (not res!2398421) (not e!3493347))))

(assert (=> b!5675302 (= res!2398421 ((_ is Concat!24510) (regOne!31842 (regOne!31842 r!7292))))))

(declare-fun e!3493344 () (InoxSet Context!10098))

(assert (=> b!5675302 (= e!3493348 e!3493344)))

(declare-fun b!5675304 () Bool)

(assert (=> b!5675304 (= e!3493344 ((_ map or) call!430589 call!430591))))

(declare-fun b!5675305 () Bool)

(declare-fun e!3493345 () (InoxSet Context!10098))

(assert (=> b!5675305 (= e!3493345 call!430594)))

(declare-fun b!5675306 () Bool)

(assert (=> b!5675306 (= e!3493344 e!3493345)))

(assert (=> b!5675306 (= c!998393 ((_ is Concat!24510) (regOne!31842 (regOne!31842 r!7292))))))

(declare-fun b!5675307 () Bool)

(declare-fun c!998395 () Bool)

(assert (=> b!5675307 (= c!998395 ((_ is Star!15665) (regOne!31842 (regOne!31842 r!7292))))))

(assert (=> b!5675307 (= e!3493345 e!3493346)))

(declare-fun b!5675308 () Bool)

(assert (=> b!5675308 (= e!3493348 ((_ map or) call!430589 call!430592))))

(declare-fun bm!430588 () Bool)

(declare-fun $colon$colon!1698 (List!63294 Regex!15665) List!63294)

(assert (=> bm!430588 (= call!430590 ($colon$colon!1698 (exprs!5549 (Context!10099 lt!2269335)) (ite (or c!998396 c!998393) (regTwo!31842 (regOne!31842 (regOne!31842 r!7292))) (regOne!31842 (regOne!31842 r!7292)))))))

(declare-fun b!5675303 () Bool)

(assert (=> b!5675303 (= e!3493346 ((as const (Array Context!10098 Bool)) false))))

(declare-fun d!1791432 () Bool)

(declare-fun c!998392 () Bool)

(assert (=> d!1791432 (= c!998392 (and ((_ is ElementMatch!15665) (regOne!31842 (regOne!31842 r!7292))) (= (c!998089 (regOne!31842 (regOne!31842 r!7292))) (h!69619 s!2326))))))

(assert (=> d!1791432 (= (derivationStepZipperDown!1007 (regOne!31842 (regOne!31842 r!7292)) (Context!10099 lt!2269335) (h!69619 s!2326)) e!3493343)))

(declare-fun bm!430589 () Bool)

(assert (=> bm!430589 (= call!430593 call!430590)))

(declare-fun b!5675309 () Bool)

(assert (=> b!5675309 (= e!3493347 (nullable!5697 (regOne!31842 (regOne!31842 (regOne!31842 r!7292)))))))

(assert (= (and d!1791432 c!998392) b!5675301))

(assert (= (and d!1791432 (not c!998392)) b!5675299))

(assert (= (and b!5675299 c!998394) b!5675308))

(assert (= (and b!5675299 (not c!998394)) b!5675302))

(assert (= (and b!5675302 res!2398421) b!5675309))

(assert (= (and b!5675302 c!998396) b!5675304))

(assert (= (and b!5675302 (not c!998396)) b!5675306))

(assert (= (and b!5675306 c!998393) b!5675305))

(assert (= (and b!5675306 (not c!998393)) b!5675307))

(assert (= (and b!5675307 c!998395) b!5675300))

(assert (= (and b!5675307 (not c!998395)) b!5675303))

(assert (= (or b!5675305 b!5675300) bm!430589))

(assert (= (or b!5675305 b!5675300) bm!430586))

(assert (= (or b!5675304 bm!430589) bm!430588))

(assert (= (or b!5675304 bm!430586) bm!430585))

(assert (= (or b!5675308 bm!430585) bm!430587))

(assert (= (or b!5675308 b!5675304) bm!430584))

(declare-fun m!6636226 () Bool)

(assert (=> b!5675301 m!6636226))

(declare-fun m!6636228 () Bool)

(assert (=> bm!430584 m!6636228))

(declare-fun m!6636230 () Bool)

(assert (=> b!5675309 m!6636230))

(declare-fun m!6636232 () Bool)

(assert (=> bm!430588 m!6636232))

(declare-fun m!6636234 () Bool)

(assert (=> bm!430587 m!6636234))

(assert (=> b!5674302 d!1791432))

(declare-fun bm!430590 () Bool)

(declare-fun call!430595 () Bool)

(assert (=> bm!430590 (= call!430595 (isEmpty!35020 s!2326))))

(declare-fun b!5675311 () Bool)

(declare-fun e!3493355 () Bool)

(assert (=> b!5675311 (= e!3493355 (not (= (head!12043 s!2326) (c!998089 (Concat!24510 lt!2269325 lt!2269319)))))))

(declare-fun e!3493349 () Bool)

(declare-fun b!5675312 () Bool)

(assert (=> b!5675312 (= e!3493349 (matchR!7850 (derivativeStep!4484 (Concat!24510 lt!2269325 lt!2269319) (head!12043 s!2326)) (tail!11138 s!2326)))))

(declare-fun b!5675313 () Bool)

(declare-fun res!2398424 () Bool)

(declare-fun e!3493353 () Bool)

(assert (=> b!5675313 (=> res!2398424 e!3493353)))

(assert (=> b!5675313 (= res!2398424 (not ((_ is ElementMatch!15665) (Concat!24510 lt!2269325 lt!2269319))))))

(declare-fun e!3493350 () Bool)

(assert (=> b!5675313 (= e!3493350 e!3493353)))

(declare-fun b!5675314 () Bool)

(declare-fun res!2398429 () Bool)

(assert (=> b!5675314 (=> res!2398429 e!3493355)))

(assert (=> b!5675314 (= res!2398429 (not (isEmpty!35020 (tail!11138 s!2326))))))

(declare-fun b!5675315 () Bool)

(declare-fun res!2398422 () Bool)

(assert (=> b!5675315 (=> res!2398422 e!3493353)))

(declare-fun e!3493352 () Bool)

(assert (=> b!5675315 (= res!2398422 e!3493352)))

(declare-fun res!2398425 () Bool)

(assert (=> b!5675315 (=> (not res!2398425) (not e!3493352))))

(declare-fun lt!2269514 () Bool)

(assert (=> b!5675315 (= res!2398425 lt!2269514)))

(declare-fun b!5675316 () Bool)

(declare-fun e!3493354 () Bool)

(assert (=> b!5675316 (= e!3493353 e!3493354)))

(declare-fun res!2398427 () Bool)

(assert (=> b!5675316 (=> (not res!2398427) (not e!3493354))))

(assert (=> b!5675316 (= res!2398427 (not lt!2269514))))

(declare-fun b!5675317 () Bool)

(assert (=> b!5675317 (= e!3493350 (not lt!2269514))))

(declare-fun b!5675318 () Bool)

(assert (=> b!5675318 (= e!3493349 (nullable!5697 (Concat!24510 lt!2269325 lt!2269319)))))

(declare-fun b!5675319 () Bool)

(assert (=> b!5675319 (= e!3493352 (= (head!12043 s!2326) (c!998089 (Concat!24510 lt!2269325 lt!2269319))))))

(declare-fun b!5675320 () Bool)

(assert (=> b!5675320 (= e!3493354 e!3493355)))

(declare-fun res!2398426 () Bool)

(assert (=> b!5675320 (=> res!2398426 e!3493355)))

(assert (=> b!5675320 (= res!2398426 call!430595)))

(declare-fun b!5675321 () Bool)

(declare-fun res!2398428 () Bool)

(assert (=> b!5675321 (=> (not res!2398428) (not e!3493352))))

(assert (=> b!5675321 (= res!2398428 (not call!430595))))

(declare-fun b!5675310 () Bool)

(declare-fun e!3493351 () Bool)

(assert (=> b!5675310 (= e!3493351 e!3493350)))

(declare-fun c!998397 () Bool)

(assert (=> b!5675310 (= c!998397 ((_ is EmptyLang!15665) (Concat!24510 lt!2269325 lt!2269319)))))

(declare-fun d!1791434 () Bool)

(assert (=> d!1791434 e!3493351))

(declare-fun c!998398 () Bool)

(assert (=> d!1791434 (= c!998398 ((_ is EmptyExpr!15665) (Concat!24510 lt!2269325 lt!2269319)))))

(assert (=> d!1791434 (= lt!2269514 e!3493349)))

(declare-fun c!998399 () Bool)

(assert (=> d!1791434 (= c!998399 (isEmpty!35020 s!2326))))

(assert (=> d!1791434 (validRegex!7401 (Concat!24510 lt!2269325 lt!2269319))))

(assert (=> d!1791434 (= (matchR!7850 (Concat!24510 lt!2269325 lt!2269319) s!2326) lt!2269514)))

(declare-fun b!5675322 () Bool)

(assert (=> b!5675322 (= e!3493351 (= lt!2269514 call!430595))))

(declare-fun b!5675323 () Bool)

(declare-fun res!2398423 () Bool)

(assert (=> b!5675323 (=> (not res!2398423) (not e!3493352))))

(assert (=> b!5675323 (= res!2398423 (isEmpty!35020 (tail!11138 s!2326)))))

(assert (= (and d!1791434 c!998399) b!5675318))

(assert (= (and d!1791434 (not c!998399)) b!5675312))

(assert (= (and d!1791434 c!998398) b!5675322))

(assert (= (and d!1791434 (not c!998398)) b!5675310))

(assert (= (and b!5675310 c!998397) b!5675317))

(assert (= (and b!5675310 (not c!998397)) b!5675313))

(assert (= (and b!5675313 (not res!2398424)) b!5675315))

(assert (= (and b!5675315 res!2398425) b!5675321))

(assert (= (and b!5675321 res!2398428) b!5675323))

(assert (= (and b!5675323 res!2398423) b!5675319))

(assert (= (and b!5675315 (not res!2398422)) b!5675316))

(assert (= (and b!5675316 res!2398427) b!5675320))

(assert (= (and b!5675320 (not res!2398426)) b!5675314))

(assert (= (and b!5675314 (not res!2398429)) b!5675311))

(assert (= (or b!5675322 b!5675320 b!5675321) bm!430590))

(assert (=> b!5675319 m!6635844))

(assert (=> b!5675314 m!6635846))

(assert (=> b!5675314 m!6635846))

(assert (=> b!5675314 m!6635848))

(assert (=> b!5675312 m!6635844))

(assert (=> b!5675312 m!6635844))

(declare-fun m!6636236 () Bool)

(assert (=> b!5675312 m!6636236))

(assert (=> b!5675312 m!6635846))

(assert (=> b!5675312 m!6636236))

(assert (=> b!5675312 m!6635846))

(declare-fun m!6636238 () Bool)

(assert (=> b!5675312 m!6636238))

(assert (=> bm!430590 m!6635822))

(assert (=> d!1791434 m!6635822))

(declare-fun m!6636240 () Bool)

(assert (=> d!1791434 m!6636240))

(declare-fun m!6636242 () Bool)

(assert (=> b!5675318 m!6636242))

(assert (=> b!5675323 m!6635846))

(assert (=> b!5675323 m!6635846))

(assert (=> b!5675323 m!6635848))

(assert (=> b!5675311 m!6635844))

(assert (=> b!5674285 d!1791434))

(declare-fun d!1791436 () Bool)

(declare-fun nullableFct!1777 (Regex!15665) Bool)

(assert (=> d!1791436 (= (nullable!5697 (regOne!31842 (regOne!31842 r!7292))) (nullableFct!1777 (regOne!31842 (regOne!31842 r!7292))))))

(declare-fun bs!1323142 () Bool)

(assert (= bs!1323142 d!1791436))

(declare-fun m!6636244 () Bool)

(assert (=> bs!1323142 m!6636244))

(assert (=> b!5674317 d!1791436))

(declare-fun d!1791438 () Bool)

(assert (=> d!1791438 (= (flatMap!1278 z!1189 lambda!305577) (choose!42925 z!1189 lambda!305577))))

(declare-fun bs!1323143 () Bool)

(assert (= bs!1323143 d!1791438))

(declare-fun m!6636246 () Bool)

(assert (=> bs!1323143 m!6636246))

(assert (=> b!5674301 d!1791438))

(declare-fun d!1791440 () Bool)

(assert (=> d!1791440 (= (nullable!5697 (h!69618 (exprs!5549 (h!69620 zl!343)))) (nullableFct!1777 (h!69618 (exprs!5549 (h!69620 zl!343)))))))

(declare-fun bs!1323144 () Bool)

(assert (= bs!1323144 d!1791440))

(declare-fun m!6636248 () Bool)

(assert (=> bs!1323144 m!6636248))

(assert (=> b!5674301 d!1791440))

(declare-fun b!5675324 () Bool)

(declare-fun e!3493358 () (InoxSet Context!10098))

(declare-fun e!3493357 () (InoxSet Context!10098))

(assert (=> b!5675324 (= e!3493358 e!3493357)))

(declare-fun c!998401 () Bool)

(assert (=> b!5675324 (= c!998401 ((_ is Cons!63170) (exprs!5549 (Context!10099 (Cons!63170 (h!69618 (exprs!5549 (h!69620 zl!343))) (t!376602 (exprs!5549 (h!69620 zl!343))))))))))

(declare-fun bm!430591 () Bool)

(declare-fun call!430596 () (InoxSet Context!10098))

(assert (=> bm!430591 (= call!430596 (derivationStepZipperDown!1007 (h!69618 (exprs!5549 (Context!10099 (Cons!63170 (h!69618 (exprs!5549 (h!69620 zl!343))) (t!376602 (exprs!5549 (h!69620 zl!343))))))) (Context!10099 (t!376602 (exprs!5549 (Context!10099 (Cons!63170 (h!69618 (exprs!5549 (h!69620 zl!343))) (t!376602 (exprs!5549 (h!69620 zl!343)))))))) (h!69619 s!2326)))))

(declare-fun b!5675325 () Bool)

(assert (=> b!5675325 (= e!3493358 ((_ map or) call!430596 (derivationStepZipperUp!933 (Context!10099 (t!376602 (exprs!5549 (Context!10099 (Cons!63170 (h!69618 (exprs!5549 (h!69620 zl!343))) (t!376602 (exprs!5549 (h!69620 zl!343)))))))) (h!69619 s!2326))))))

(declare-fun b!5675326 () Bool)

(assert (=> b!5675326 (= e!3493357 ((as const (Array Context!10098 Bool)) false))))

(declare-fun b!5675327 () Bool)

(assert (=> b!5675327 (= e!3493357 call!430596)))

(declare-fun b!5675328 () Bool)

(declare-fun e!3493356 () Bool)

(assert (=> b!5675328 (= e!3493356 (nullable!5697 (h!69618 (exprs!5549 (Context!10099 (Cons!63170 (h!69618 (exprs!5549 (h!69620 zl!343))) (t!376602 (exprs!5549 (h!69620 zl!343)))))))))))

(declare-fun d!1791442 () Bool)

(declare-fun c!998400 () Bool)

(assert (=> d!1791442 (= c!998400 e!3493356)))

(declare-fun res!2398430 () Bool)

(assert (=> d!1791442 (=> (not res!2398430) (not e!3493356))))

(assert (=> d!1791442 (= res!2398430 ((_ is Cons!63170) (exprs!5549 (Context!10099 (Cons!63170 (h!69618 (exprs!5549 (h!69620 zl!343))) (t!376602 (exprs!5549 (h!69620 zl!343))))))))))

(assert (=> d!1791442 (= (derivationStepZipperUp!933 (Context!10099 (Cons!63170 (h!69618 (exprs!5549 (h!69620 zl!343))) (t!376602 (exprs!5549 (h!69620 zl!343))))) (h!69619 s!2326)) e!3493358)))

(assert (= (and d!1791442 res!2398430) b!5675328))

(assert (= (and d!1791442 c!998400) b!5675325))

(assert (= (and d!1791442 (not c!998400)) b!5675324))

(assert (= (and b!5675324 c!998401) b!5675327))

(assert (= (and b!5675324 (not c!998401)) b!5675326))

(assert (= (or b!5675325 b!5675327) bm!430591))

(declare-fun m!6636250 () Bool)

(assert (=> bm!430591 m!6636250))

(declare-fun m!6636252 () Bool)

(assert (=> b!5675325 m!6636252))

(declare-fun m!6636254 () Bool)

(assert (=> b!5675328 m!6636254))

(assert (=> b!5674301 d!1791442))

(declare-fun b!5675329 () Bool)

(declare-fun e!3493359 () (InoxSet Context!10098))

(declare-fun e!3493364 () (InoxSet Context!10098))

(assert (=> b!5675329 (= e!3493359 e!3493364)))

(declare-fun c!998404 () Bool)

(assert (=> b!5675329 (= c!998404 ((_ is Union!15665) (h!69618 (exprs!5549 (h!69620 zl!343)))))))

(declare-fun call!430597 () (InoxSet Context!10098))

(declare-fun bm!430592 () Bool)

(declare-fun call!430598 () List!63294)

(assert (=> bm!430592 (= call!430597 (derivationStepZipperDown!1007 (ite c!998404 (regOne!31843 (h!69618 (exprs!5549 (h!69620 zl!343)))) (regOne!31842 (h!69618 (exprs!5549 (h!69620 zl!343))))) (ite c!998404 lt!2269307 (Context!10099 call!430598)) (h!69619 s!2326)))))

(declare-fun b!5675330 () Bool)

(declare-fun e!3493362 () (InoxSet Context!10098))

(declare-fun call!430602 () (InoxSet Context!10098))

(assert (=> b!5675330 (= e!3493362 call!430602)))

(declare-fun bm!430593 () Bool)

(declare-fun call!430599 () (InoxSet Context!10098))

(declare-fun call!430600 () (InoxSet Context!10098))

(assert (=> bm!430593 (= call!430599 call!430600)))

(declare-fun b!5675331 () Bool)

(assert (=> b!5675331 (= e!3493359 (store ((as const (Array Context!10098 Bool)) false) lt!2269307 true))))

(declare-fun bm!430594 () Bool)

(assert (=> bm!430594 (= call!430602 call!430599)))

(declare-fun c!998406 () Bool)

(declare-fun bm!430595 () Bool)

(declare-fun c!998403 () Bool)

(declare-fun call!430601 () List!63294)

(assert (=> bm!430595 (= call!430600 (derivationStepZipperDown!1007 (ite c!998404 (regTwo!31843 (h!69618 (exprs!5549 (h!69620 zl!343)))) (ite c!998406 (regTwo!31842 (h!69618 (exprs!5549 (h!69620 zl!343)))) (ite c!998403 (regOne!31842 (h!69618 (exprs!5549 (h!69620 zl!343)))) (reg!15994 (h!69618 (exprs!5549 (h!69620 zl!343))))))) (ite (or c!998404 c!998406) lt!2269307 (Context!10099 call!430601)) (h!69619 s!2326)))))

(declare-fun b!5675332 () Bool)

(declare-fun e!3493363 () Bool)

(assert (=> b!5675332 (= c!998406 e!3493363)))

(declare-fun res!2398431 () Bool)

(assert (=> b!5675332 (=> (not res!2398431) (not e!3493363))))

(assert (=> b!5675332 (= res!2398431 ((_ is Concat!24510) (h!69618 (exprs!5549 (h!69620 zl!343)))))))

(declare-fun e!3493360 () (InoxSet Context!10098))

(assert (=> b!5675332 (= e!3493364 e!3493360)))

(declare-fun b!5675334 () Bool)

(assert (=> b!5675334 (= e!3493360 ((_ map or) call!430597 call!430599))))

(declare-fun b!5675335 () Bool)

(declare-fun e!3493361 () (InoxSet Context!10098))

(assert (=> b!5675335 (= e!3493361 call!430602)))

(declare-fun b!5675336 () Bool)

(assert (=> b!5675336 (= e!3493360 e!3493361)))

(assert (=> b!5675336 (= c!998403 ((_ is Concat!24510) (h!69618 (exprs!5549 (h!69620 zl!343)))))))

(declare-fun b!5675337 () Bool)

(declare-fun c!998405 () Bool)

(assert (=> b!5675337 (= c!998405 ((_ is Star!15665) (h!69618 (exprs!5549 (h!69620 zl!343)))))))

(assert (=> b!5675337 (= e!3493361 e!3493362)))

(declare-fun b!5675338 () Bool)

(assert (=> b!5675338 (= e!3493364 ((_ map or) call!430597 call!430600))))

(declare-fun bm!430596 () Bool)

(assert (=> bm!430596 (= call!430598 ($colon$colon!1698 (exprs!5549 lt!2269307) (ite (or c!998406 c!998403) (regTwo!31842 (h!69618 (exprs!5549 (h!69620 zl!343)))) (h!69618 (exprs!5549 (h!69620 zl!343))))))))

(declare-fun b!5675333 () Bool)

(assert (=> b!5675333 (= e!3493362 ((as const (Array Context!10098 Bool)) false))))

(declare-fun d!1791444 () Bool)

(declare-fun c!998402 () Bool)

(assert (=> d!1791444 (= c!998402 (and ((_ is ElementMatch!15665) (h!69618 (exprs!5549 (h!69620 zl!343)))) (= (c!998089 (h!69618 (exprs!5549 (h!69620 zl!343)))) (h!69619 s!2326))))))

(assert (=> d!1791444 (= (derivationStepZipperDown!1007 (h!69618 (exprs!5549 (h!69620 zl!343))) lt!2269307 (h!69619 s!2326)) e!3493359)))

(declare-fun bm!430597 () Bool)

(assert (=> bm!430597 (= call!430601 call!430598)))

(declare-fun b!5675339 () Bool)

(assert (=> b!5675339 (= e!3493363 (nullable!5697 (regOne!31842 (h!69618 (exprs!5549 (h!69620 zl!343))))))))

(assert (= (and d!1791444 c!998402) b!5675331))

(assert (= (and d!1791444 (not c!998402)) b!5675329))

(assert (= (and b!5675329 c!998404) b!5675338))

(assert (= (and b!5675329 (not c!998404)) b!5675332))

(assert (= (and b!5675332 res!2398431) b!5675339))

(assert (= (and b!5675332 c!998406) b!5675334))

(assert (= (and b!5675332 (not c!998406)) b!5675336))

(assert (= (and b!5675336 c!998403) b!5675335))

(assert (= (and b!5675336 (not c!998403)) b!5675337))

(assert (= (and b!5675337 c!998405) b!5675330))

(assert (= (and b!5675337 (not c!998405)) b!5675333))

(assert (= (or b!5675335 b!5675330) bm!430597))

(assert (= (or b!5675335 b!5675330) bm!430594))

(assert (= (or b!5675334 bm!430597) bm!430596))

(assert (= (or b!5675334 bm!430594) bm!430593))

(assert (= (or b!5675338 bm!430593) bm!430595))

(assert (= (or b!5675338 b!5675334) bm!430592))

(declare-fun m!6636256 () Bool)

(assert (=> b!5675331 m!6636256))

(declare-fun m!6636258 () Bool)

(assert (=> bm!430592 m!6636258))

(declare-fun m!6636260 () Bool)

(assert (=> b!5675339 m!6636260))

(declare-fun m!6636262 () Bool)

(assert (=> bm!430596 m!6636262))

(declare-fun m!6636264 () Bool)

(assert (=> bm!430595 m!6636264))

(assert (=> b!5674301 d!1791444))

(declare-fun d!1791446 () Bool)

(assert (=> d!1791446 (= (flatMap!1278 z!1189 lambda!305577) (dynLambda!24719 lambda!305577 (h!69620 zl!343)))))

(declare-fun lt!2269515 () Unit!156192)

(assert (=> d!1791446 (= lt!2269515 (choose!42926 z!1189 (h!69620 zl!343) lambda!305577))))

(assert (=> d!1791446 (= z!1189 (store ((as const (Array Context!10098 Bool)) false) (h!69620 zl!343) true))))

(assert (=> d!1791446 (= (lemmaFlatMapOnSingletonSet!810 z!1189 (h!69620 zl!343) lambda!305577) lt!2269515)))

(declare-fun b_lambda!214633 () Bool)

(assert (=> (not b_lambda!214633) (not d!1791446)))

(declare-fun bs!1323145 () Bool)

(assert (= bs!1323145 d!1791446))

(assert (=> bs!1323145 m!6635282))

(declare-fun m!6636266 () Bool)

(assert (=> bs!1323145 m!6636266))

(declare-fun m!6636268 () Bool)

(assert (=> bs!1323145 m!6636268))

(declare-fun m!6636270 () Bool)

(assert (=> bs!1323145 m!6636270))

(assert (=> b!5674301 d!1791446))

(declare-fun b!5675340 () Bool)

(declare-fun e!3493367 () (InoxSet Context!10098))

(declare-fun e!3493366 () (InoxSet Context!10098))

(assert (=> b!5675340 (= e!3493367 e!3493366)))

(declare-fun c!998408 () Bool)

(assert (=> b!5675340 (= c!998408 ((_ is Cons!63170) (exprs!5549 (h!69620 zl!343))))))

(declare-fun bm!430598 () Bool)

(declare-fun call!430603 () (InoxSet Context!10098))

(assert (=> bm!430598 (= call!430603 (derivationStepZipperDown!1007 (h!69618 (exprs!5549 (h!69620 zl!343))) (Context!10099 (t!376602 (exprs!5549 (h!69620 zl!343)))) (h!69619 s!2326)))))

(declare-fun b!5675341 () Bool)

(assert (=> b!5675341 (= e!3493367 ((_ map or) call!430603 (derivationStepZipperUp!933 (Context!10099 (t!376602 (exprs!5549 (h!69620 zl!343)))) (h!69619 s!2326))))))

(declare-fun b!5675342 () Bool)

(assert (=> b!5675342 (= e!3493366 ((as const (Array Context!10098 Bool)) false))))

(declare-fun b!5675343 () Bool)

(assert (=> b!5675343 (= e!3493366 call!430603)))

(declare-fun b!5675344 () Bool)

(declare-fun e!3493365 () Bool)

(assert (=> b!5675344 (= e!3493365 (nullable!5697 (h!69618 (exprs!5549 (h!69620 zl!343)))))))

(declare-fun d!1791448 () Bool)

(declare-fun c!998407 () Bool)

(assert (=> d!1791448 (= c!998407 e!3493365)))

(declare-fun res!2398432 () Bool)

(assert (=> d!1791448 (=> (not res!2398432) (not e!3493365))))

(assert (=> d!1791448 (= res!2398432 ((_ is Cons!63170) (exprs!5549 (h!69620 zl!343))))))

(assert (=> d!1791448 (= (derivationStepZipperUp!933 (h!69620 zl!343) (h!69619 s!2326)) e!3493367)))

(assert (= (and d!1791448 res!2398432) b!5675344))

(assert (= (and d!1791448 c!998407) b!5675341))

(assert (= (and d!1791448 (not c!998407)) b!5675340))

(assert (= (and b!5675340 c!998408) b!5675343))

(assert (= (and b!5675340 (not c!998408)) b!5675342))

(assert (= (or b!5675341 b!5675343) bm!430598))

(declare-fun m!6636272 () Bool)

(assert (=> bm!430598 m!6636272))

(declare-fun m!6636274 () Bool)

(assert (=> b!5675341 m!6636274))

(assert (=> b!5675344 m!6635284))

(assert (=> b!5674301 d!1791448))

(declare-fun b!5675345 () Bool)

(declare-fun e!3493370 () (InoxSet Context!10098))

(declare-fun e!3493369 () (InoxSet Context!10098))

(assert (=> b!5675345 (= e!3493370 e!3493369)))

(declare-fun c!998410 () Bool)

(assert (=> b!5675345 (= c!998410 ((_ is Cons!63170) (exprs!5549 lt!2269307)))))

(declare-fun bm!430599 () Bool)

(declare-fun call!430604 () (InoxSet Context!10098))

(assert (=> bm!430599 (= call!430604 (derivationStepZipperDown!1007 (h!69618 (exprs!5549 lt!2269307)) (Context!10099 (t!376602 (exprs!5549 lt!2269307))) (h!69619 s!2326)))))

(declare-fun b!5675346 () Bool)

(assert (=> b!5675346 (= e!3493370 ((_ map or) call!430604 (derivationStepZipperUp!933 (Context!10099 (t!376602 (exprs!5549 lt!2269307))) (h!69619 s!2326))))))

(declare-fun b!5675347 () Bool)

(assert (=> b!5675347 (= e!3493369 ((as const (Array Context!10098 Bool)) false))))

(declare-fun b!5675348 () Bool)

(assert (=> b!5675348 (= e!3493369 call!430604)))

(declare-fun b!5675349 () Bool)

(declare-fun e!3493368 () Bool)

(assert (=> b!5675349 (= e!3493368 (nullable!5697 (h!69618 (exprs!5549 lt!2269307))))))

(declare-fun d!1791450 () Bool)

(declare-fun c!998409 () Bool)

(assert (=> d!1791450 (= c!998409 e!3493368)))

(declare-fun res!2398433 () Bool)

(assert (=> d!1791450 (=> (not res!2398433) (not e!3493368))))

(assert (=> d!1791450 (= res!2398433 ((_ is Cons!63170) (exprs!5549 lt!2269307)))))

(assert (=> d!1791450 (= (derivationStepZipperUp!933 lt!2269307 (h!69619 s!2326)) e!3493370)))

(assert (= (and d!1791450 res!2398433) b!5675349))

(assert (= (and d!1791450 c!998409) b!5675346))

(assert (= (and d!1791450 (not c!998409)) b!5675345))

(assert (= (and b!5675345 c!998410) b!5675348))

(assert (= (and b!5675345 (not c!998410)) b!5675347))

(assert (= (or b!5675346 b!5675348) bm!430599))

(declare-fun m!6636276 () Bool)

(assert (=> bm!430599 m!6636276))

(declare-fun m!6636278 () Bool)

(assert (=> b!5675346 m!6636278))

(declare-fun m!6636280 () Bool)

(assert (=> b!5675349 m!6636280))

(assert (=> b!5674301 d!1791450))

(declare-fun d!1791452 () Bool)

(declare-fun c!998411 () Bool)

(assert (=> d!1791452 (= c!998411 (isEmpty!35020 (t!376603 s!2326)))))

(declare-fun e!3493371 () Bool)

(assert (=> d!1791452 (= (matchZipper!1803 lt!2269310 (t!376603 s!2326)) e!3493371)))

(declare-fun b!5675350 () Bool)

(assert (=> b!5675350 (= e!3493371 (nullableZipper!1631 lt!2269310))))

(declare-fun b!5675351 () Bool)

(assert (=> b!5675351 (= e!3493371 (matchZipper!1803 (derivationStepZipper!1750 lt!2269310 (head!12043 (t!376603 s!2326))) (tail!11138 (t!376603 s!2326))))))

(assert (= (and d!1791452 c!998411) b!5675350))

(assert (= (and d!1791452 (not c!998411)) b!5675351))

(assert (=> d!1791452 m!6635540))

(declare-fun m!6636282 () Bool)

(assert (=> b!5675350 m!6636282))

(assert (=> b!5675351 m!6635544))

(assert (=> b!5675351 m!6635544))

(declare-fun m!6636284 () Bool)

(assert (=> b!5675351 m!6636284))

(assert (=> b!5675351 m!6635548))

(assert (=> b!5675351 m!6636284))

(assert (=> b!5675351 m!6635548))

(declare-fun m!6636286 () Bool)

(assert (=> b!5675351 m!6636286))

(assert (=> b!5674300 d!1791452))

(declare-fun d!1791454 () Bool)

(declare-fun lt!2269518 () Regex!15665)

(assert (=> d!1791454 (validRegex!7401 lt!2269518)))

(assert (=> d!1791454 (= lt!2269518 (generalisedUnion!1528 (unfocusZipperList!1093 zl!343)))))

(assert (=> d!1791454 (= (unfocusZipper!1407 zl!343) lt!2269518)))

(declare-fun bs!1323146 () Bool)

(assert (= bs!1323146 d!1791454))

(declare-fun m!6636288 () Bool)

(assert (=> bs!1323146 m!6636288))

(assert (=> bs!1323146 m!6635238))

(assert (=> bs!1323146 m!6635238))

(assert (=> bs!1323146 m!6635240))

(assert (=> b!5674299 d!1791454))

(declare-fun condSetEmpty!37941 () Bool)

(assert (=> setNonEmpty!37935 (= condSetEmpty!37941 (= setRest!37935 ((as const (Array Context!10098 Bool)) false)))))

(declare-fun setRes!37941 () Bool)

(assert (=> setNonEmpty!37935 (= tp!1573757 setRes!37941)))

(declare-fun setIsEmpty!37941 () Bool)

(assert (=> setIsEmpty!37941 setRes!37941))

(declare-fun setElem!37941 () Context!10098)

(declare-fun tp!1573822 () Bool)

(declare-fun setNonEmpty!37941 () Bool)

(declare-fun e!3493374 () Bool)

(assert (=> setNonEmpty!37941 (= setRes!37941 (and tp!1573822 (inv!82409 setElem!37941) e!3493374))))

(declare-fun setRest!37941 () (InoxSet Context!10098))

(assert (=> setNonEmpty!37941 (= setRest!37935 ((_ map or) (store ((as const (Array Context!10098 Bool)) false) setElem!37941 true) setRest!37941))))

(declare-fun b!5675356 () Bool)

(declare-fun tp!1573821 () Bool)

(assert (=> b!5675356 (= e!3493374 tp!1573821)))

(assert (= (and setNonEmpty!37935 condSetEmpty!37941) setIsEmpty!37941))

(assert (= (and setNonEmpty!37935 (not condSetEmpty!37941)) setNonEmpty!37941))

(assert (= setNonEmpty!37941 b!5675356))

(declare-fun m!6636290 () Bool)

(assert (=> setNonEmpty!37941 m!6636290))

(declare-fun b!5675361 () Bool)

(declare-fun e!3493377 () Bool)

(declare-fun tp!1573827 () Bool)

(declare-fun tp!1573828 () Bool)

(assert (=> b!5675361 (= e!3493377 (and tp!1573827 tp!1573828))))

(assert (=> b!5674313 (= tp!1573752 e!3493377)))

(assert (= (and b!5674313 ((_ is Cons!63170) (exprs!5549 (h!69620 zl!343)))) b!5675361))

(declare-fun b!5675373 () Bool)

(declare-fun e!3493380 () Bool)

(declare-fun tp!1573843 () Bool)

(declare-fun tp!1573839 () Bool)

(assert (=> b!5675373 (= e!3493380 (and tp!1573843 tp!1573839))))

(declare-fun b!5675372 () Bool)

(assert (=> b!5675372 (= e!3493380 tp_is_empty!40583)))

(assert (=> b!5674292 (= tp!1573755 e!3493380)))

(declare-fun b!5675375 () Bool)

(declare-fun tp!1573841 () Bool)

(declare-fun tp!1573840 () Bool)

(assert (=> b!5675375 (= e!3493380 (and tp!1573841 tp!1573840))))

(declare-fun b!5675374 () Bool)

(declare-fun tp!1573842 () Bool)

(assert (=> b!5675374 (= e!3493380 tp!1573842)))

(assert (= (and b!5674292 ((_ is ElementMatch!15665) (regOne!31843 r!7292))) b!5675372))

(assert (= (and b!5674292 ((_ is Concat!24510) (regOne!31843 r!7292))) b!5675373))

(assert (= (and b!5674292 ((_ is Star!15665) (regOne!31843 r!7292))) b!5675374))

(assert (= (and b!5674292 ((_ is Union!15665) (regOne!31843 r!7292))) b!5675375))

(declare-fun b!5675377 () Bool)

(declare-fun e!3493381 () Bool)

(declare-fun tp!1573848 () Bool)

(declare-fun tp!1573844 () Bool)

(assert (=> b!5675377 (= e!3493381 (and tp!1573848 tp!1573844))))

(declare-fun b!5675376 () Bool)

(assert (=> b!5675376 (= e!3493381 tp_is_empty!40583)))

(assert (=> b!5674292 (= tp!1573751 e!3493381)))

(declare-fun b!5675379 () Bool)

(declare-fun tp!1573846 () Bool)

(declare-fun tp!1573845 () Bool)

(assert (=> b!5675379 (= e!3493381 (and tp!1573846 tp!1573845))))

(declare-fun b!5675378 () Bool)

(declare-fun tp!1573847 () Bool)

(assert (=> b!5675378 (= e!3493381 tp!1573847)))

(assert (= (and b!5674292 ((_ is ElementMatch!15665) (regTwo!31843 r!7292))) b!5675376))

(assert (= (and b!5674292 ((_ is Concat!24510) (regTwo!31843 r!7292))) b!5675377))

(assert (= (and b!5674292 ((_ is Star!15665) (regTwo!31843 r!7292))) b!5675378))

(assert (= (and b!5674292 ((_ is Union!15665) (regTwo!31843 r!7292))) b!5675379))

(declare-fun b!5675380 () Bool)

(declare-fun e!3493382 () Bool)

(declare-fun tp!1573849 () Bool)

(declare-fun tp!1573850 () Bool)

(assert (=> b!5675380 (= e!3493382 (and tp!1573849 tp!1573850))))

(assert (=> b!5674308 (= tp!1573753 e!3493382)))

(assert (= (and b!5674308 ((_ is Cons!63170) (exprs!5549 setElem!37935))) b!5675380))

(declare-fun b!5675382 () Bool)

(declare-fun e!3493383 () Bool)

(declare-fun tp!1573855 () Bool)

(declare-fun tp!1573851 () Bool)

(assert (=> b!5675382 (= e!3493383 (and tp!1573855 tp!1573851))))

(declare-fun b!5675381 () Bool)

(assert (=> b!5675381 (= e!3493383 tp_is_empty!40583)))

(assert (=> b!5674307 (= tp!1573758 e!3493383)))

(declare-fun b!5675384 () Bool)

(declare-fun tp!1573853 () Bool)

(declare-fun tp!1573852 () Bool)

(assert (=> b!5675384 (= e!3493383 (and tp!1573853 tp!1573852))))

(declare-fun b!5675383 () Bool)

(declare-fun tp!1573854 () Bool)

(assert (=> b!5675383 (= e!3493383 tp!1573854)))

(assert (= (and b!5674307 ((_ is ElementMatch!15665) (regOne!31842 r!7292))) b!5675381))

(assert (= (and b!5674307 ((_ is Concat!24510) (regOne!31842 r!7292))) b!5675382))

(assert (= (and b!5674307 ((_ is Star!15665) (regOne!31842 r!7292))) b!5675383))

(assert (= (and b!5674307 ((_ is Union!15665) (regOne!31842 r!7292))) b!5675384))

(declare-fun b!5675386 () Bool)

(declare-fun e!3493384 () Bool)

(declare-fun tp!1573860 () Bool)

(declare-fun tp!1573856 () Bool)

(assert (=> b!5675386 (= e!3493384 (and tp!1573860 tp!1573856))))

(declare-fun b!5675385 () Bool)

(assert (=> b!5675385 (= e!3493384 tp_is_empty!40583)))

(assert (=> b!5674307 (= tp!1573750 e!3493384)))

(declare-fun b!5675388 () Bool)

(declare-fun tp!1573858 () Bool)

(declare-fun tp!1573857 () Bool)

(assert (=> b!5675388 (= e!3493384 (and tp!1573858 tp!1573857))))

(declare-fun b!5675387 () Bool)

(declare-fun tp!1573859 () Bool)

(assert (=> b!5675387 (= e!3493384 tp!1573859)))

(assert (= (and b!5674307 ((_ is ElementMatch!15665) (regTwo!31842 r!7292))) b!5675385))

(assert (= (and b!5674307 ((_ is Concat!24510) (regTwo!31842 r!7292))) b!5675386))

(assert (= (and b!5674307 ((_ is Star!15665) (regTwo!31842 r!7292))) b!5675387))

(assert (= (and b!5674307 ((_ is Union!15665) (regTwo!31842 r!7292))) b!5675388))

(declare-fun b!5675390 () Bool)

(declare-fun e!3493385 () Bool)

(declare-fun tp!1573865 () Bool)

(declare-fun tp!1573861 () Bool)

(assert (=> b!5675390 (= e!3493385 (and tp!1573865 tp!1573861))))

(declare-fun b!5675389 () Bool)

(assert (=> b!5675389 (= e!3493385 tp_is_empty!40583)))

(assert (=> b!5674316 (= tp!1573754 e!3493385)))

(declare-fun b!5675392 () Bool)

(declare-fun tp!1573863 () Bool)

(declare-fun tp!1573862 () Bool)

(assert (=> b!5675392 (= e!3493385 (and tp!1573863 tp!1573862))))

(declare-fun b!5675391 () Bool)

(declare-fun tp!1573864 () Bool)

(assert (=> b!5675391 (= e!3493385 tp!1573864)))

(assert (= (and b!5674316 ((_ is ElementMatch!15665) (reg!15994 r!7292))) b!5675389))

(assert (= (and b!5674316 ((_ is Concat!24510) (reg!15994 r!7292))) b!5675390))

(assert (= (and b!5674316 ((_ is Star!15665) (reg!15994 r!7292))) b!5675391))

(assert (= (and b!5674316 ((_ is Union!15665) (reg!15994 r!7292))) b!5675392))

(declare-fun b!5675397 () Bool)

(declare-fun e!3493388 () Bool)

(declare-fun tp!1573868 () Bool)

(assert (=> b!5675397 (= e!3493388 (and tp_is_empty!40583 tp!1573868))))

(assert (=> b!5674281 (= tp!1573756 e!3493388)))

(assert (= (and b!5674281 ((_ is Cons!63171) (t!376603 s!2326))) b!5675397))

(declare-fun b!5675405 () Bool)

(declare-fun e!3493394 () Bool)

(declare-fun tp!1573873 () Bool)

(assert (=> b!5675405 (= e!3493394 tp!1573873)))

(declare-fun e!3493393 () Bool)

(declare-fun b!5675404 () Bool)

(declare-fun tp!1573874 () Bool)

(assert (=> b!5675404 (= e!3493393 (and (inv!82409 (h!69620 (t!376604 zl!343))) e!3493394 tp!1573874))))

(assert (=> b!5674296 (= tp!1573749 e!3493393)))

(assert (= b!5675404 b!5675405))

(assert (= (and b!5674296 ((_ is Cons!63172) (t!376604 zl!343))) b!5675404))

(declare-fun m!6636292 () Bool)

(assert (=> b!5675404 m!6636292))

(declare-fun b_lambda!214635 () Bool)

(assert (= b_lambda!214631 (or b!5674301 b_lambda!214635)))

(declare-fun bs!1323147 () Bool)

(declare-fun d!1791456 () Bool)

(assert (= bs!1323147 (and d!1791456 b!5674301)))

(assert (=> bs!1323147 (= (dynLambda!24719 lambda!305577 lt!2269334) (derivationStepZipperUp!933 lt!2269334 (h!69619 s!2326)))))

(assert (=> bs!1323147 m!6635290))

(assert (=> d!1791416 d!1791456))

(declare-fun b_lambda!214637 () Bool)

(assert (= b_lambda!214633 (or b!5674301 b_lambda!214637)))

(declare-fun bs!1323148 () Bool)

(declare-fun d!1791458 () Bool)

(assert (= bs!1323148 (and d!1791458 b!5674301)))

(assert (=> bs!1323148 (= (dynLambda!24719 lambda!305577 (h!69620 zl!343)) (derivationStepZipperUp!933 (h!69620 zl!343) (h!69619 s!2326)))))

(assert (=> bs!1323148 m!6635278))

(assert (=> d!1791446 d!1791458))

(check-sat (not bm!430565) (not b!5675250) (not b!5675196) (not d!1791396) (not b!5675210) (not bm!430543) (not b!5675220) (not d!1791438) (not bm!430599) (not b!5675048) (not b!5675350) (not bm!430587) (not d!1791386) (not b!5675096) (not b!5674657) (not b!5675201) (not b!5675047) (not d!1791314) (not b!5675356) (not d!1791334) (not d!1791402) (not bm!430533) (not b!5675397) (not b!5675043) (not b!5674662) (not b!5675167) (not b!5675022) (not b!5675046) (not b!5675318) (not b!5675390) (not b!5675213) (not b!5675205) (not b!5675391) (not b!5675341) (not bm!430592) (not b!5674939) (not b!5675323) (not b!5674600) (not b!5675152) (not b!5675202) (not b!5674847) (not d!1791410) (not d!1791436) (not b!5675010) (not b!5675197) (not b!5675211) (not d!1791338) (not b!5675259) (not bm!430571) tp_is_empty!40583 (not d!1791316) (not b!5675271) (not b!5675325) (not b!5674513) (not b!5675361) (not d!1791362) (not d!1791254) (not b!5675218) (not b!5675309) (not d!1791192) (not d!1791404) (not bm!430596) (not b!5675031) (not d!1791434) (not b!5675374) (not d!1791304) (not b!5674464) (not b!5675384) (not b!5674660) (not d!1791374) (not b!5674515) (not b!5675380) (not bm!430542) (not d!1791344) (not b!5674996) (not b!5675064) (not b!5675065) (not b!5675319) (not b!5675349) (not b!5675189) (not b!5675164) (not b_lambda!214637) (not setNonEmpty!37941) (not b!5674664) (not bm!430598) (not b!5675314) (not d!1791328) (not d!1791390) (not d!1791244) (not bm!430568) (not b!5675203) (not b!5675000) (not b!5675339) (not b!5675378) (not bm!430549) (not b!5675171) (not b!5675026) (not b!5674933) (not bm!430562) (not d!1791224) (not b!5675346) (not b!5675216) (not b!5675017) (not b!5675192) (not b!5674602) (not b!5675377) (not b!5675176) (not b!5674998) (not b!5674462) (not bm!430564) (not b!5675209) (not bm!430595) (not b!5675190) (not b!5675069) (not bm!430590) (not b_lambda!214635) (not b!5675219) (not b!5675312) (not b!5675060) (not b!5675266) (not b!5675025) (not b!5674663) (not bm!430591) (not d!1791406) (not b!5675261) (not b!5675387) (not d!1791206) (not b!5675172) (not d!1791440) (not b!5675051) (not d!1791430) (not bm!430563) (not b!5675027) (not d!1791278) (not b!5675165) (not d!1791400) (not d!1791246) (not d!1791256) (not b!5675273) (not b!5675068) (not d!1791412) (not b!5675382) (not b!5675351) (not b!5675386) (not b!5675405) (not bm!430547) (not b!5675177) (not b!5675311) (not b!5675001) (not b!5675373) (not bm!430534) (not d!1791398) (not b!5675028) (not b!5675344) (not b!5675018) (not d!1791452) (not b!5675379) (not b!5674658) (not b!5674517) (not b!5675388) (not d!1791308) (not b!5675226) (not d!1791454) (not b!5674520) (not b!5675230) (not d!1791418) (not b!5674784) (not b!5675214) (not b!5675404) (not b!5675032) (not b!5675328) (not b!5675231) (not d!1791342) (not d!1791214) (not d!1791216) (not b!5675052) (not b!5675156) (not b!5674601) (not b!5674999) (not b!5675004) (not b!5674944) (not b!5675375) (not bs!1323148) (not b!5675097) (not b!5675005) (not d!1791208) (not b!5675181) (not d!1791388) (not b!5675023) (not d!1791416) (not d!1791392) (not b!5675383) (not d!1791352) (not d!1791356) (not d!1791340) (not bm!430584) (not b!5674786) (not b!5674519) (not bm!430566) (not b!5675063) (not bs!1323147) (not d!1791200) (not b!5675013) (not b!5674569) (not d!1791376) (not b!5675276) (not b!5674599) (not b!5675011) (not b!5675235) (not b!5675204) (not b!5674940) (not b!5674518) (not b!5674787) (not d!1791408) (not b!5675223) (not bm!430588) (not b!5675008) (not b!5674935) (not d!1791260) (not b!5675045) (not b!5675062) (not b!5675275) (not b!5674932) (not b!5674514) (not b!5674533) (not b!5675207) (not b!5675247) (not b!5675264) (not d!1791346) (not d!1791446) (not d!1791384) (not bm!430567) (not b!5675224) (not b!5675392) (not b!5674843))
(check-sat)
